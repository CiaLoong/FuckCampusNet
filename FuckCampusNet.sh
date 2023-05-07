#!/bin/sh

username=$(sed -n "s/username:'\([^']*\)'/\1/p" UP.txt)
password=$(sed -n "s/password:'\([^']*\)'/\1/p" UP.txt)

check_network() {
  local url="http://www.baidu.com"
  local response=$(curl --head --silent --location --max-time 5 --fail "$url" 2>/dev/null)
  if [ $? -eq 0 ] && echo "$response" | grep -q "HTTP/.* 200"; then
    echo "网络连接正常"
    return 0
  else
    echo "网络连接异常"
    return 1
  fi
}


while true; do
    # 休眠3秒
    sleep 3

    # 执行ping命令，检查网络状态
    result=$(check_network)
    if [ $? -eq 0 ]; then
        echo "网络正常"
    else
        echo "网络异常"
        # 等待3秒
        sleep 3
        # 生成时间戳
        curTime=$(date +%s)
        # 构造登录URL
        uu="http://192.168.116.8/drcom/login?callback=dr${t}&DDDDD=${username}&upass=${password}&0MKKey=123456&R1=0&R3=0&R6=0&para=00&v6ip=&R7=0&_=$((curTime-5000))"
        # 发送HTTP请求
        rt=$(curl -s "$uu")
        echo "$rt"
    fi
done