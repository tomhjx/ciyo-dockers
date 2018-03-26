#!/bin/sh

case $1 in
    'enter')

    docker exec -it $2 bash
    ;;

    'rebuild')
    docker-compose stop $2 && docker-compose build $2
    ;;

    'push-git-all')
    read -p  "输入该次git提交的备注说明：" msg

    git config --global user.name "疯狂的茶几"
    git config --global user.email tom_hejiaxi@163.com
    
    git add -A . && git commit -m "$msg" && git push
    ;;
esac