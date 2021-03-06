FROM mhart/alpine-node:7.6.0

WORKDIR /src

# Add package.json
ADD back-discovery/package.json /src/package.json

#install node modules
RUN npm install

#Add the source code
ADD back-discovery /src

CMD ["node", "server.js"]
