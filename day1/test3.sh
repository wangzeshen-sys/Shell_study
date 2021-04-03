#! /bash

# 多个子shell并发执行

for i in {100..130}
do
    {
        ip=192.168.240.$i
        ping -c1 -W1 $ip &>/dev/null
        # ping  $ip &>/dev/null
        if [ $? -eq 0 ]; then
            echo "$ip" | tee -a ip.txt
        fi
    }&
done
# 前面完成在执行下面的 关键字 wait
wait
echo "ok...."

# Linux tee命令用于读取标准输入的数据，并将其内容输出成文件。

# tee指令会从标准输入设备读取数据，将其内容输出到标准输出设备，同时保存成文件。

# 语法
#     tee [-ai][--help][--version][文件...]
# 参数
#     -a或--append 　附加到既有文件的后面，而非覆盖它．
#     -i或--ignore-interrupts 　忽略中断信号。
#     --help 　在线帮助。
#     --version 　显示版本信息。

# 使用指令"tee"将用户输入的数据同时保存到文件"file1"和"file2"中，输入如下命令：


