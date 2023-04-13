FROM alpine
RUN apk add --no-cache python3
RUN apk add --no-cache py3-pip
RUN apk add --no-cache tree
RUN mkdir /maibot
ADD . /maibot
COPY run.sh /maibot
WORKDIR /maibot
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install nonebot_plugin_analysis_bilibili
RUN chmod +x go-cqhttp
#CMD sh ./start
#CMD nohup sh -c 'python3 bot.py && ./go-cqhttp'
RUN chmod +x run.sh
CMD sh run.sh
