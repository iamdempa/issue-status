# Use whatever version you are running locally (see node -v)
FROM node:12.13

WORKDIR /app


RUN rm -rf node_modules
# Install dependencies (you are already in /app)
# COPY package.json package-lock.json ./
COPY package.json /app

COPY . /app

RUN rm -rf /package-lock.json

RUN npm install
 
EXPOSE 3000

CMD ["npm", "start"]
