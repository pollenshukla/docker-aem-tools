docker build -f base -t aem-base .
docker build -f author -t aem-author .
docker build -f publish -t aem-publish .
docker network create adobe
docker run -d --name author -p 4502:4502 --network adobe aem-author
docker run -d --name publish -p 4503:4503 --network adobe aem-publish
