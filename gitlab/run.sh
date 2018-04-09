#!/bin/sh
IMG_NAME='ccr.ccs.tencentyun.com/ciyo/gitlab:latest'

start(){
    install_start >/dev/null 2>&1
    docker start gitlab
}

stop() {
    docker stop gitlab
}

restart() {
    docker restart gitlab
}

status() {
    docker ps -l | grep $IMG_NAME
}

status_q() {
    status >/dev/null 2>&1
}


install_start() {
    docker run --detach \
    --hostname gitlab.ciyo.work.net \
    --env GITLAB_OMNIBUS_CONFIG="external_url 'http://gitlab.ciyo.work.net/'; gitlab_rails['gitlab_shell_ssh_port'] = 19901;" \
    --publish 19900:80 --publish 19901:22 --publish 19902:443 \
    --name gitlab \
    --restart always \
    --volume /data/server/gitlab/config:/etc/gitlab \
    --volume /data/log/gitlab:/var/log/gitlab \
    --volume /data/server/gitlab/data:/var/opt/gitlab \
    $IMG_NAME
}

reinstall() {
    uninstall
    install_start
}

uninstall() {
    stop
    docker rm gitlab
}



case "$1" in
    'start')
        $1
        ;;
    'stop')
        $1
        ;;
    'restart')
        $1
        ;;
    'reinstall')
        reinstall
        ;;
    'uninstall')
        $1
        ;;
    'status')
        $1
        ;;
    *)
        echo $"Usage: $0 {start|stop|status|restart|reinstall|uninstall}"
        exit 2
esac