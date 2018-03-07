FROM node:latest
WORKDIR /app
RUN yarn add graphql-yoga
COPY index.js .
CMD [ "node", "." ]