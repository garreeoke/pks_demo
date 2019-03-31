FROM node:11.9

ARG artifact_root="."

COPY $artifact_root/build.sh /build.sh
COPY $artifact_root/entrypoint.sh /entrypoint.sh
COPY $artifact_root/code/ /code/

RUN chmod +x /build.sh /entrypoint.sh && /build.sh

WORKDIR /usr/src/app

ENTRYPOINT ["/entrypoint.sh"]
