#!/bin/sh

case $1 in
    'enter')

    docker exec -it $2 bash
    ;;

    'rebuild')
    serviceName=$2
    configName=$3
    err=0
    if [[ -z $serviceName ]]; then
        serviceName="[配置定义的服务名]"
    fi
    if [[ -z $configName ]]; then
        configName="[配置文件名]"
    fi
    if [[ 1 == $err ]]; then
        echo "$0 $1 $serviceName $configName"
        exit 1
    fi
    configParam=" -f $3"

    docker-compose $configParam stop $serviceName && docker-compose $configParam build $2 && docker-compose $configParam up -d $2
    ;;

    'push-git-all')

    if [[ -z $2 ]]; then
        echo "$0 $1 [该次git提交的备注说明]"
        exit 1
    fi
    git add -A . && git commit -m "$2" && git push

    ;;

    'login-txyun')

    docker login -u 100004077552 -p `cat ~/Work/pwd` ccr.ccs.tencentyun.com
    ;;
esac