FROM mysterysd/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

# Update package list and install necessary dependencies
RUN apt-get -qq update && \
    apt-get install fontconfig -y -f && \
    apt-get install ffmpeg -y 

COPY . .

RUN pip3 install -r requirements.txt

CMD ["bash", "run.sh"]
