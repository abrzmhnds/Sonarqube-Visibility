# requirements: curl, jq
USER=user
PASSWORD=password
SONAR_URL=https://sonarqube-url.com
PAGE_SIZE=500
page=1
file=example.json

for pkey in `jq -r .components[].key ${file}`; do 
  curl -X POST -s -u ${USER}:${PASSWORD} ${SONAR_URL}/api/projects/update_visibility?project=${pkey}\&visibility=private; 
done