#!/usr/bin/bash

# Check that one argument was provided
if [ $# -ne 1 ]; then
  echo "Usage: $0 <PROJECT>"
  exit 1
fi

# Set the project name and remove any trailing spaces
PROJECT=$(echo $1 | xargs)

# Check that the project name is in all uppercase
if [ "$PROJECT" != "${PROJECT^^}" ]; then
  echo "Error: project name must be in all uppercase"
  exit 1
fi

# Convert the project name to lowercase
PROJECT_LOWER=$(echo $PROJECT | tr '[:upper:]' '[:lower:]')

# Find the base folder using a wildcard pattern
BASE_DIR=$(find . -type d -name "gk-environment-*" | sort | tail -n 1)

# Find the extension folder using a wildcard pattern and the project name
EXTENSION_DIR=$(find . -type d -name "${PROJECT_LOWER}-*" | sort | tail -n 1)

# Check if an extension folder was found based on the project name provided
if [ -z "$EXTENSION_DIR" ]; then
  echo "Error: could not find an extension folder for project '${PROJECT}'"
  exit 1
fi

# Check if the final folder already exists and rename it with date prefix
if [ -d "$PROJECT" ]; then
  BACKUP_NAME="$(date +'%Y%m%d')_$PROJECT"
  echo "Backing up existing $PROJECT folder to $BACKUP_NAME"
  mv "$PROJECT" "$BACKUP_NAME"
fi

# Combine the base and extension folders
mkdir "$PROJECT"
cp -R "${BASE_DIR}"/* "$PROJECT"/
cp -Rf "${EXTENSION_DIR}"/* "$PROJECT"/

# Rename .props.txt files to .properties.template
for file in "$PWD/$PROJECT"/*.props.txt; do
  mv "$file" "${file%.props.txt}.properties.template"
done

# Append ".template" to the file name of /runtime/adjudication/cluster.properties
if [ -f "$PWD/$PROJECT/runtime/adjudication/cluster.properties" ]; then
  mv "$PWD/$PROJECT/runtime/adjudication/cluster.properties" "$PWD/$PROJECT/runtime/adjudication/cluster.properties.template"
fi

# Print a success message
echo "The genkey_internal '${PROJECT}' has been successfully created"
