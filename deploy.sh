aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 585407675451.dkr.ecr.us-east-2.amazonaws.com
docker pull  585407675451.dkr.ecr.us-east-2.amazonaws.com/dockersample:$1
echo "docker pull succeeded"
docker ps -a
echo "previous commands shows if existing docker is present or not"
docker rm -f dotnet-app
echo "previous show if it is there it gets deleted "
docker ps -a
echo "empty docker"
docker run -itd -p 3000:3000 --name dotnet-app 585407675451.dkr.ecr.us-east-2.amazonaws.com/docker1:$1
docker ps -a
