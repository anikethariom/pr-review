# This is a Docker File 
# Author : Aniket Chikane 
# DevOps Engineer 
# pull file from docker.Hub 
# 2 line: making app directroy 
# 3 line: copy the package.json file in directory 
# 4 line: run npm install 
# 5 line: copy directory from local to in app directory 
# 6 line: Run command npm, run, start 

FROM node:18-alpine
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
CMD ["npm", "run", "start"]
