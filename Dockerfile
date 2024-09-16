FROM debian
RUN apt update \
 && apt -y install httptunnel \
 && apt clean
