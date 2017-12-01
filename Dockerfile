FROM alpine:3.5
EXPOSE 4200
RUN apk update &&\
apk add --no-cache git &&\
apk add --no-cache nodejs &&\
echo "---  installing angular cli" &&\
npm install -g @angular/cli &&\
echo "---  cloning repo" &&\
cd home &&\
git clone https://github.com/alfu32/ngtest.git &&\
cd /home/ngtest &&\
echo "---  installing dependencies" &&\
npm install &&\
echo "---  starting server" &&\
ng serve