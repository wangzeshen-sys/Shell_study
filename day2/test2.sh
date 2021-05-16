
# Mem=$(ps aux | awk '{print $6}' |grep -v "RSS")

# Num=0
# for i in $Mem
# do
#     Num=$[($i+$Num)]
# done
#     # Num=$[$Num/1024]
#     echo $Num

# File_txt=$(find ./ -type f -iname "*.txt" | xargs)

# for i in $File_txt
# do 
#     mv $i $i.bak
# done 

LogFile=/var/log/asd.log
Ngiinx_Status_code=( $(cat $LogFile |grep -io "HTTP/1\.[0|1]\"[[:blank:]][0-9]{{3}}"|awk -F "[ ]+" '{
    if($2>=100 && $2<200)
        {i++}
    else if($2>=200 && $2<300)
        {j++}
     else if($2>=300 && $2<400)
        {k++}
    else if($2>=400 && $2<500)
        {n++}
    else if($2>=500)
        {p++}
}END{ print i?i:0,j?j:0,k?k:0,n?n:0,p?p:0,i+j+k+n+p}') )

echo -e "\e[1;35m" "Http Status[100+]:""${re}"











