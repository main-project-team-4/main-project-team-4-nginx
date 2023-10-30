TARGET_IMAGE=nginx-reuse:1.0.0
PUSH_IMAGE=iksadnorth/nginx-reuse:1.0.0
DIR_DOCKERFILE=./

docker build --tag $TARGET_IMAGE $DIR_DOCKERFILE
docker tag $TARGET_IMAGE $PUSH_IMAGE
docker push $PUSH_IMAGE
