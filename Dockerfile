FROM 35e83044717c


RUN apt-get update
RUN apt-get install -y
RUN apt-get install ffmpeg libsm6 libxext6 -y

