# FuckCampusNet
用于某大学校园网的自动登录

## 使用说明

### windos
不想安装环境可以直接运行==FuckCampusNet.exe==文件

需要在同目录下创建UP.txt文件 内容如下（在单引号内填入自己的校园网账号密码）：

```
username:''
password:''
```

### Linux
配置同windos，直接使用以下命令即可
赋予权限
```
 chmod a+x FuckCampusNet.sh
 ```
 执行命令
 ```
 ./FuckCampusNet.sh
 ```
 或者
```
bash ./FuckCampusNet.sh
```


## 后台运行+加开机自启动运行

安装好Python3.8以及相应的模块后

1. FuckCampusNet.py 后缀改为 FuckCampusNet.pyw
2. 右键FuckCampusNet.pyw -> 属性 -> 打开方式 -> 更改 指向你的pythonw路径[例如 ‪D:\Python3.8\pythonw.exe]
3. Win+R 键入 shell:startup 
4. 右键新建快捷方式 指向.pyw文件



