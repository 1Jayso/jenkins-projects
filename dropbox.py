
import requests

import json

path = "/RELEASES/MISC/adjudication-gateway-nhif-3.2.3-20210730.113452-39.jar"
json_string = json.dumps({"path": path})

url = 'https://content.dropboxapi.com/2/files/download'
headers = {
    'Authorization': 'Bearer sl.BY-fRMx7A07OCovNIk60wMtBlPzmZrn5M3LJjUeyXXGNiY7vqT8L2AbHyygR3KOf7lAtExrbBsAg51MePH_jEyNAuzLeZX54pR28X4a9fBHDnoKHJuT0z8Z5kHfCUsodQCRPb4B0',
    'Dropbox-API-Arg': json_string
}
response = requests.post(url, headers=headers)

if response.status_code == 200:
    with open('/home/jenkins-projects', 'wb') as f:
        f.write(response.content)
else:
    print('Error downloading file:', response.text)
