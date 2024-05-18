#Define base image
FROM node:20-alpine

#Define working directory
WORKDIR /usr/src/app

#Copy all files to /usr/src/app first dot for source second dot for destination
COPY . .

#Install dependencies
RUN npm install

#Expose port
ENV PORT=3000
EXPOSE ${PORT}

RUN ls -l
#Define command
CMD [ "npm", "start" ]

