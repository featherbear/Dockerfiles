FROM node:alpine           

WORKDIR /meshcentral

ENV NODE_ENV=production

RUN apk update
RUN npm install meshcentral otplib

EXPOSE 80         

# meshcentral-data   
# meshcentral-files   
# meshcentral-backup   
# meshcentral-recordings   

ENTRYPOINT node ./node_modules/meshcentral --notls --exactports

