FROM dockette/nodejs:v17

WORKDIR /app

COPY server.js .
COPY index.html .
COPY images ./images
COPY package.json .

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"] 
#when we run the containers these commands get executed and the nodejs server will run


