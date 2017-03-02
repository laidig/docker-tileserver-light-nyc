FROM mhart/alpine-node:4.8

WORKDIR /data

RUN apk --no-cache add openssl

RUN cd /data &&\
    npm install -g tileserver-gl-light &&\
    wget https://openmaptiles.os.zhdk.cloud.switch.ch/v3.3/extracts/new-york_new-york.mbtiles

EXPOSE 80
ENTRYPOINT cd /data && \
	 ls && \
	tileserver-gl-light new-york_new-york.mbtiles
