# zSolution.Dockerile
# Base File
FROM debian:latest
RUN apt update
RUN apt install python3 python3-numpy python3-pip -y
RUN mkdir /home/app
RUN mkdir /home/app/src
RUN mkdir /home/app/src/common
##Copy requirements
WORKDIR /home/app/src/common
COPY common .
RUN python3 -m pip install -r requirements.txt


WORKDIR /home/app/src
COPY solution .


ENTRYPOINT ["./start.sh"]
CMD []