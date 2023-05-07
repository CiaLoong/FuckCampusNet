import requests
import time
import re
import os
import subprocess

with open('UP.txt', 'r') as f:
		content = f.read()

# 使用正则表达式从文件内容中提取用户名和密码
username = re.search(r"username:'(.+)'", content).group(1)
password = re.search(r"password:'(.+)'", content).group(1)

while True:
	time.sleep(3)
	result = subprocess.run("ping baidu.com -n 1", shell=True, stdout=subprocess.PIPE)
	if(result.returncode == 0):
		print("网络正常")
	else:
		print("网络异常")
		time.sleep(3)
		t=time.time()
		t1=(int(round(t * 1000)))
		uu="http://192.168.116.8/drcom/login?callback=dr"+str(t1)+"&DDDDD="+username+"&upass="+password+"&0MKKey=123456&R1=0&R3=0&R6=0&para=00&v6ip=&R7=0&_="+str(t1-5000)
		rt=requests.get(uu)
		print(rt.text)
