FROM node:15-alpine as install
WORKDIR /source

COPY package.json yarn.lock ./
RUN yarn install

FROM install as copy-sources
WORKDIR /source
COPY src/ ./src
COPY public/ ./public
COPY tsconfig.json .prettierrc .eslintignore .eslintrc.json ./

FROM copy-sources as runnable
WORKDIR /source

EXPOSE 3000
ENTRYPOINT ["yarn", "start"]
