FROM nginx:alpine
RUN apt install curl
ENV test=test
COPY . /app
