FROM mysterysd/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt -qq update && \
    apt-get install fontconfig -y -f

COPY . .

RUN pip3 install -r requirements.txt

Pip install ffmpeg

CMD ["bash", "run.sh"]
