set -x
df -h | grep -v "overlay" | grep G
docker rmi -f $(docker images -f "dangling=true" -q)
docker network prune -f
docker container prune -f
docker volume prune -f
df -h | grep -v "overlay" | grep G
set +x
