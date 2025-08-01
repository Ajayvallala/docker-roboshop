FROM node:20-alpine AS builder
WORKDIR /opt/server
COPY package.json . 
COPY *.js .
RUN npm install 

FROM node:20-alpine
WORKDIR /opt/server
RUN addgroup -S roboshop && adduser -S roboshop -G roboshop
ENV REDIS_HOST="redis" \
    CATALOGUE_HOST="catalogue" \
    CATALOGUE_PORT="8080"
USER roboshop
COPY --from=builder --chown=roboshop:roboshop /opt/server /opt/server
CMD ["node", "server.js"]



# FROM node:20
# WORKDIR /opt/server
# COPY package.json .
# COPY *.js .
# RUN npm install
# ENV REDIS_HOST="redis" \
#     CATALOGUE_HOST="catalogue" \
#     CATALOGUE_PORT="8080"
# CMD ["node","server.js"]