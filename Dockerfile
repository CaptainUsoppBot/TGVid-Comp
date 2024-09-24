FROM mysterysd/wzmlx:heroku

RUN apt-get update && \
    apt-get install -y ffmpeg fontconfig && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

RUN chmod 777 /usr/src/app

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

RUN chmod +x run.sh

CMD ["bash", "run.sh"]