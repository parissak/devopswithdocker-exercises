#!/bin/sh

if [ "$#" -ne 2 ]; then
    echo "Error: expected syntax is $0 <github-username/repository> <dockerhub-username/repository>"
    exit 1
fi

GITHUB_REPO=$1
DOCKERHUB_REPO=$2

git clone https://github.com/$GITHUB_REPO.git
REPO_NAME=$(basename $GITHUB_REPO)

cd $REPO_NAME

docker build -t $DOCKERHUB_REPO .

echo $DOCKER_PWD | docker login --username $DOCKER_USER --password-stdin

docker push $DOCKERHUB_REPO

docker logout

cd ..
rm -rf $REPO_NAME
