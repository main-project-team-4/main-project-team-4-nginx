TARGET_IMAGE=nginx-reuse;
PUSH_IMAGE=iksadnorth/nginx-reuse;
DIR_DOCKERFILE=./;

# Get Version Of Image
VERSION_IMAGE=$(source ./script/count_image_version.sh)
echo "This Version Of Image is $VERSION_IMAGE"

docker build --tag $TARGET_IMAGE:$VERSION_IMAGE $DIR_DOCKERFILE
docker tag $TARGET_IMAGE:$VERSION_IMAGE $PUSH_IMAGE:$VERSION_IMAGE
docker push $PUSH_IMAGE:$VERSION_IMAGE
docker tag $TARGET_IMAGE:$VERSION_IMAGE $PUSH_IMAGE:latest
docker push $PUSH_IMAGE:latest
