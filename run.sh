#!/bin/sh

case $1 in
    'enter')

    docker exec -it $2 bash
    ;;

    'rebuild')
    docker-compose stop $2 && docker-compose build $2 && docker-compose up -d $2
    ;;

    'push-git-all')

    if [[ -z $2 ]]; then
        echo "$0 $1 [该次git提交的备注说明]"
        exit 1
    fi
    git add -A . && git commit -m "$2" && git push

    ;;
esac