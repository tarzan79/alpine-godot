FROM tarzan79/alpine-base:latest

#RUN apk add scons pkgconf gcc g++ libx11-dev libxcursor-dev libxinerama-dev libxi-dev libxrandr-dev libexecinfo-dev unzip
RUN apk add unzip

WORKDIR /home
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.31-r0/glibc-2.31-r0.apk
RUN apk add --allow-untrusted glibc-2.31-r0.apk
RUN rm /home/glibc-2.31-r0.apk

WORKDIR /opt
RUN wget https://downloads.tuxfamily.org/godotengine/3.2.1/Godot_v3.2.1-stable_linux_server.64.zip
RUN unzip /opt/Godot_v3.2.1-stable_linux_server.64.zip
RUN rm /opt/Godot_v3.2.1-stable_linux_server.64.zip

RUN mkdir /home/workspace
WORKDIR /home/workspace
CMD ["/opt/Godot_v3.2.1-stable_linux_server.64"]
