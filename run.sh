#!/bin/sh

case $1 in
    'enter')

    docker exec -it $2 bash
    ;;

    'rebuild')
    docker-compose stop $2 && docker-compose build $2
    ;;

    'push-git-all')
    git add -A . && git commit -m "$2" && git push
    ;;
esac