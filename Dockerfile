FROM node

RUN apt update && apt install wine64 -y && winecfg -y

RUN ln -s /usr/bin/wine /usr/bin/wine64

RUN npm install electron-packager -g

VOLUME /root/.electron

VOLUME /electron
WORKDIR /electron

CMD [""]

ENTRYPOINT ["electron-packager"]
