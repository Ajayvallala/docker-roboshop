FROM node:20-alpine AS builder
WORKDIR /opt/server
COPY package.json .
COPY *.js .
RUN npm install

FROM node:20-alpine
WORKDIR /opt/server
RUN addgroup -S roboshop $$ adduser -S roboshop -G roboshop
ENV MONGO="true" \
    MONGO_URL="mongodb://mongodb:27017/catalogue"
USER roboshop
COPY --from=builder /opt/server /opt/server
CMD ["node","server.js"]


# FROM node:20-alpine
# WORKDIR /opt/server
# COPY package.json .
# COPY *.js .
# RUN npm install 
# ENV MONGO="true" \
#     MONGO_URL="mongodb://mongodb:27017/catalogue"
# CMD ["node","server.js"]


# FROM node:20
# WORKDIR /opt/server
# COPY package.json .
# COPY *.js .
# RUN npm install 
# ENV MONGO="true" \
#     MONGO_URL="mongodb://mongodb:27017/catalogue"
# CMD ["node","server.js"]
