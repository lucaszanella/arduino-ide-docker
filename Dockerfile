FROM resin/rpi-raspbian:latest

RUN apt-get update && apt-get install -y arduino x11vnc xvfb

RUN mkdir ~/.vnc && x11vnc -storepasswd 1234 ~/.vnc/passwd

CMD x11vnc -forever -usepw -create & /usr/bin/arduino
