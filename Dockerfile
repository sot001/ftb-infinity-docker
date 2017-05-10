FROM dlord/minecraft:java8
MAINTAINER John Paul Alcala jp@jpalcala.com

VOLUME [ "/opt/minecraft/world" ]

ENV FTB_MAGEQUEST_URL http://ftb.cursecdn.com/FTB2/modpacks/FTBMageQuest/1_2_0/FTBMageQuestServer.zip
ENV LAUNCHWRAPPER net/minecraft/launchwrapper/1.12/launchwrapper-1.12.jar

RUN curl -SL $FTB_MAGEQUEST_URL -o /tmp/magequest.zip && \
    unzip /tmp/magequest.zip -d /opt/minecraft && \
    mkdir -p /opt/minecraft/$(dirname libraries/${LAUNCHWRAPPER}) && \
    curl -S https://libraries.minecraft.net/$LAUNCHWRAPPER -o /opt/minecraft/libraries/$LAUNCHWRAPPER && \
    find /opt/minecraft -name "*.log" -exec rm -f {} \; && \
    rm -rf /opt/minecraft/ops.* /opt/minecraft/whitelist.* /opt/minecraft/logs/* /tmp/*

EXPOSE 25566

ENV MINECRAFT_VERSION 1.7.10
ENV MINECRAFT_OPTS -server -Xms2048m -Xmx3072m -XX:MaxPermSize=256m -XX:+UseParNewGC -XX:+UseConcMarkSweepGC
ENV MINECRAFT_STARTUP_JAR FTBServer-1.7.10-1448.jar
