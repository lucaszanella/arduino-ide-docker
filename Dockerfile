FROM resin/rpi-raspbian:latest

RUN apt-get update && apt-get install -y arduino x11vnc xvfb x11-apps

RUN mkdir ~/.vnc && x11vnc -storepasswd 1234 ~/.vnc/passwd

ENV DISPLAY :1

CMD /usr/bin/Xvfb :1 -screen 0 1366x768x16 & x11vnc -display :1 -forever -usepw -create & /usr/bin/arduino & xeyes
