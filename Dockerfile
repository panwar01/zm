
FROM anasty17/mltb:latest
# Use MLTB's docker in case there is some issue with mine.

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
EXPOSE 80
COPY . .

CMD ["bash", "start.sh"]
