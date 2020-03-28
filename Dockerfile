FROM tarzan79/alpine-base:latest

RUN apk add scons pkgconf gcc g++ libx11-dev libxcursor-dev libxinerama-dev libxi-dev libxrandr-dev libexecinfo-dev unzip
RUN ln -sf /usr/bin/python3 /usr/bin/python

WORKDIR /opt
RUN wget https://github.com/godotengine/godot/archive/3.2.zip
RUN unzip -q 3.2.zip
WORKDIR /opt/godot-3.2
RUN ls -l
RUN scons platform=server -j4
RUN alias godot="/opt/godot-3.2/bin/godot_server.x11.tools.64"
RUN mkdir /home/workspace
ENTRYPOINT ["/home/workspace"]
CMD ["godot"]