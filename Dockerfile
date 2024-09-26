FROM mysterysd/wzmlx:heroku

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN apt -qq update && \
    apt-get install fontconfig -y -f

COPY . .

# Update and upgrade system packages, install necessary tools including ffmpeg
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y ffmpeg && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

RUN pip3 install -r requirements.txt

CMD ["bash", "run.sh"]


 