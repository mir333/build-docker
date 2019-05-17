FROM archlinux/base:latest

RUN pacman --noconfirm -Sy && pacman --noconfirm -S jdk8-openjdk git vim mc fish awk tar which

ENV JAVA_HOME=/usr/lib/jvm/default

RUN curl -L https://get.oh-my.fish > install

RUN fish install --noninteractive 

RUN fish -c "omf install bobthefish" && echo "done"

CMD fish
