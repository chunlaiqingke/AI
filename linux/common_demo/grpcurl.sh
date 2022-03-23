#!/bin/bash

#item是选择的值，REPLY是选择的序号
select item in "自定义" "默认 localhost:9096"
do
    case $REPLY in
      1) echo "请输入ip："; read ip
        ;;
      2) ip=localhost:9096
        ;;
      *)
        echo "请选择正确的序号"
        exit 1
    esac
break
done

#获取服务返回列表，service_list接收结果，判断是否获取成功
echo "服务列表 : $ip"
service_list=$(grpcurl --plaintext $ip list)
if [ $? -ne 0 ]; then
	echo "服务获取失败"
	exit 1
fi

echo "选择你要请求的服务 : "
select sitem in $service_list
do
	echo "你选择了 $sitem"
	service=$sitem
break;
done

echo "输入请求的方法: "
read method


param='{"userId":"3701184"}'
echo "参数需要修改吗'$param' ？y 是 n 否"
read need

if [ "$need" == "y" ]; then
	echo "输入新参数："
	read new_param
	if [ -n "$new_param" ]; then
		echo "新参数："$new_param
		param=$new_param
	else 
		echo "参数不变"$param
	fi
else 
	echo "参数: "$param
fi

grpcurl --plaintext -d $param $ip $service.$method
exit $?
