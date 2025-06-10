docker-compose up -d --build

docker-compose logs -f cube_api

docker exec -it cube-core-cube_api-1 sh
apt update && apt install curl -y
curl http://cubestore_router:3030


docker ps | grep cubestore_router


docker exec -it cube-core-cubestore_router-1 bash
ps aux | grep cubestored


docker-compose down --volumes --remove-orphans
docker-compose up -d --build
docker-compose logs -f cubestore_router
