#!/usr/bin/bash

# 1 打印当前系统的版本/内核/虚拟化平台/主机/内网Ip 外网IP
System=$(hostnamectl |grep "System" |awk -F ':' '{print $2}')
Kernel=$(hostnamectl |grep "Kernel" |awk -F ':' '{print $2}')
Vt=$(hostnamectl |grep "Virtualization"|awk -F ':' '{print $2}')
Static_Hostname=$(hostnamectl |grep "Static hostname"|awk -F ':' '{print $2}')
Domain_Hostname=$(hostnamectl |grep "Transient"|awk -F ':' '{print $2}')

Network_Total=$(ls /etc/sysconfig/network-scripts/|grep ifcfg|wc -l)
Network_sum=$(ls /etc/sysconfig/network-scripts/|grep ifcfg |awk -F '-' '{print $2}'| xargs)
Network_Eth0=$(ifconfig |grep broadcast | awk -F ' ' '{print $2}' | head -1)
Network_Lo=$(ifconfig lo|awk 'NR==2{print $2}')
# Network_W=$(curl -s icanhazip.com)
echo "当前系统版本是:$System"
echo "当前内核版本是:$Kernel"
echo "当前虚拟平台是:$Vt"
echo "当前静态主机名是:$Static_Hostname"
echo "当前动态主机名是:$Domain_Hostname"
echo "当前总网络IP:$Network_Total"
echo "当前网卡名称:$Network_Eth0"
echo "当前eth0网卡ip地址:$Network_Eth0"
echo "当前lo网卡ip地址:$Network_Lo"
echo "当前外网ip:$Network_W"

# 2 打印当前cpu的负载情况 1分钟 5分钟 15分钟

echo  "======================================================"
Load_1=$(w |awk 'NR==1' |awk -F ':' '{print $5}' |awk -F ',' '{print $1}')
Load_2=$(w |awk 'NR==1' |awk -F ':' '{print $5}' |awk -F ',' '{print $2}')
Load_3=$(w |awk 'NR==1' |awk -F ':' '{print $5}' |awk -F ',' '{print $3}')

echo "当前系统1分钟的负载:$Load_1"
echo "当前系统5分钟的负载:$Load_2"
echo "当前系统15分钟的负载:$Load_3"
# 3 打印当前磁盘的所有分区使用状态
echo "================================================"
Disk_parti=$(df -h |grep "/$" |awk -F ' ' '{print $1}')
Disk_Total=$(df -h |grep "/$" |awk -F ' ' '{print $2}')
Dsik_Used=$(df -h |grep "/$" |awk -F ' ' '{print $3}')
Disk_Avail=$(df -h |grep "/$" |awk -F ' ' '{print $4}')
Disk_Used_b=$(df -h |grep "/$" |awk -F ' ' '{print $5}')
Disk_Avail_pre=$(df -h|grep "/$"| awk -F '[G ]+' '{print 100-($3*100)/$2}'|awk -F '.' '{print $1"%"}')

echo "磁盘分区:$Disk_parti"
echo "磁盘总容量:$Disk_Total"
echo "磁盘已使用:$Dsik_Used"
echo "磁盘可用:$Disk_Avail"
echo "磁盘已使用百分比:$Disk_Used_b"
echo "磁盘可用百分比:$Disk_Avail_pre"
echo "================================================"

# 4 打印当前内存总大小，使用了多少，使用了多少百分比
# free -m

# 5 检测该主机是否能上网
# ping 
# 7 检测服务器是否能使用YUM安装软件，如果不能则提供一个仓库
# 8 给服务器安装Nginx/Httpd服务  进启动Nginx，提供web页面（name）