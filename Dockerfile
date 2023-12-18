FROM nginx:alpine
RUN apt-get install curl
ENV test=test
COPY . /app
