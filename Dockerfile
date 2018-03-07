FROM node:latest AS base
WORKDIR /app
RUN yarn add graphql-yoga
COPY index.js .

FROM node:latest
WORKDIR /app
COPY --from=base /app /app
CMD [ "node", "." ]