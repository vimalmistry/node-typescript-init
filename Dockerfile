FROM node:16

RUN apt-get -y update

# Create app directory
RUN mkdir /app
WORKDIR /app

COPY package.json ./

# npm or yarn
COPY package-json.lock ./
# COPY yarn.lock ./



# RUN yarn install
RUN rm -rf ./node_modules 
RUN npm i
# Copy in the source
COPY . .
# RUN npm run build

# Expose Port
EXPOSE 3000

CMD npm run dev