FROM node
# set working directory
WORKDIR /app
# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH
# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
# line 11 is optional 
RUN npm install react-scripts -g --silent
# add app
COPY . ./
# start app
EXPOSE 3000
CMD ["npm", "start"]

