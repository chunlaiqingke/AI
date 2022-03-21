#!/bin/bash

select item in "自定义" "默认 10.110.117.119:9090"
do
    case $REPLY in
      1) echo "请输入ip："; read ip
        ;;
      2) ip=10.110.117.119:9090
        ;;
      *)
        echo "请选择正确的序号"
        exit 1
    esac
break
done

echo "服务列表 : $ip"
grpcurl --plaintext $ip list

echo "选择你要请求的服务 : "
read service

echo "输入请求的方法: "
read method

grpcurl --plaintext -d '{"userId":"3701184","exchangeOrderStatus":"pending"}' $ip $service.$method