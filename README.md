# MaiBot，是一个基于nonebot编写的QQ机器人，用于SEGA音游舞萌上。

## 感谢：[Diving-Fish/mai-bot](https://github.com/Diving-Fish/mai-bot) 、[Mrs4s/go-cqhttp](https://github.com/Mrs4s/go-cqhttp) 的源码奉献。

本容器不会储存您任何数据，请您放心使用。所有数据交换均是与腾讯服务器进行沟通。

在使用前建议您在本地搭建一下go-cqhttp，并登录上您的机器人QQ账号，获取/device.json和config.yml，以确保可以正常使用。

本项目基于alpine官方镜像，以及go-cqhttp、mai-bot制作而成。

## 搭建教程

```bash
docker run -d \
	-v /path/to/config.yml:/maibot/config.yml \
	-v /path/to/device.json:/maibot/device.json \
	--name=maibot \
	guyfirends/mai-bot:latest
```

请将config.yml文件按照一下格式修改：

```yml
message:
  post-format: array
  
servers:
  - ws-reverse:
      universal: ws://127.0.0.1:8080/onebot/v11/ws
```

