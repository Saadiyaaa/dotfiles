#!/bin/bash
hostip=$(netstat -rn | grep 0.0.0.0 -m 1| awk '{print $2}')
wslip=$(hostname -I | awk '{print $1}')

port=7890

PROXY_HTTP="http://${hostip}:${port}"

set_proxy(){
    export all_proxy="${PROXY_HTTP}" 
    export ALL_PROXY="${PROXY_HTTP}" 
    git config --global http.proxy ${PROXY_HTTP}
    git config --global https.proxy ${PROXY_HTTP}
}

unset_proxy(){
    unset all_proxy
    unset ALL_PROXY
    git config ---global -unset http.proxy
    git config ---global -unset https.proxy
}

test_setting(){
    echo "Host ip:${hostip}" 
    echo "WSL ip:${wslip}" 
    echo "Current proxy:${all_proxy}" 
}

if [  "$1" = "set" ];
then
    set_proxy

elif [  "$1" = "unset" ];
then
    unset_proxy

elif [  "$1" = "test" ];
then
    test_setting
else
    echo "Unsupported arguments."
fi
