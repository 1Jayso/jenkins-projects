export CATALINA_OPTS="$CATALINA_OPTS -Dorg.apache.el.parser.SKIP_IDENTIFIER_CHECK=true"
export CATALINA_OPTS="$CATALINA_OPTS -Djava.awt.headless=true -Dfile.encoding=UTF-8 -server -Xms2048m -Xmx2048m -XX:NewSize=1024m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=256m -XX:+DisableExplicitGC"
export CATALINA_OPTS="$CATALINA_OPTS -Djava.library.path=/usr/java/latest/lib/amd64/ -Djava.awt.headless=true -Dfile.encoding=UTF-8 -server -Xms2048m -Xmx2048m -XX:NewSize=1024m -XX:MaxNewSize=1024m -XX:PermSize=512m -XX:MaxPermSize=256m"
