# pull official base image
FROM node:14

# set working directory
WORKDIR /app

# add app
COPY . .

# install app dependencies
RUN npm install --silent
RUN npm install -g --silent serve
RUN npm run build

ADD start.sh /
RUN chmod +x /start.sh

EXPOSE 443
CMD ["/start.sh"]
