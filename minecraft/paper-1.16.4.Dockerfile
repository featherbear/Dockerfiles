#  Paper 1.16.4 Docker inheritance from felixklauke/paperspigot:1.16.3

FROM felixklauke/paperspigot:1.16.3

ENV MINECRAFT_BUILD_PATH=/opt/minecraft

# Fetch version 1.16.4
USER root
ADD https://papermc.io/api/v1/paper/1.16.4/latest/download /tmp/paper.jar
RUN java -jar /tmp/paper.jar; exit 0

# Replace
RUN mv cache/patched_*.jar ${MINECRAFT_BUILD_PATH}/server/paper.jar && chown minecraft:minecraft ${MINECRAFT_BUILD_PATH}/server/paper.jar

USER minecraft
