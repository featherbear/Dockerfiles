FROM node:alpine           

WORKDIR /meshcentral

ENV NODE_ENV=production

RUN apk update
RUN npm install meshcentral

EXPOSE 80

# meshcentral-data   
# meshcentral-files   
# meshcentral-backup   
# meshcentral-recordings   

ENTRYPOINT node ./node_modules/meshcentral

### CAPROVER INSTALLATION ###

# 1. Create a persistent application
# 2. Bind /meshcentral/meshcentral-data to meshcentral-data
# 3. Bind /meshcentral/meshcentral-files to meshcentral-files
# 4. Check the [Websocket Support] setting
# 5. Deploy this Dockerfile
# 6. Modify /meshcentral/meshcentral-data/config.json
#    "Cert": <YOUR DOMAIN NAME>,   
#    "WANonly": true,
#    "LANonly": false,
#    "Port": 80,
#    "AliasPort": 443,
#    "RedirPort": 800,
#    "ExactPorts": true,
#    "TlsOffload": true,
#    ...
#    "domains": {     <---- Remove the underscore from `_domains`!
#      "CertURL": <YOUR HTTPS ENDPOINT>
#    }
# 7. Set container port to 80
# 8. Enable HTTPS on the endpoint

