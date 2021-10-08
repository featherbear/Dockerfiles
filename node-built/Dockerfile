# Opinionated Node.js Dockerfile
## Use node.js version 14
## Use yarn as the package manager
## package.json contains a `build` script
## package.json contains an entry point
## Source files are located in `src/`

# .dockerignore file should include things you don't want to copy (i.e. /node_modules)

FROM node:14-alpine

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn
COPY . .

RUN yarn build
RUN rm src -rf

# EXPOSE 8000
CMD [ "node", "." ]
