# nextjs-docker
FROM node:latest

WORKDIR /app

COPY package.json yarn.lock* ./
RUN yarn install

COPY . .

RUN yarn build

# Remove the CMD instruction
# CMD will be specified in docker-compose.yml