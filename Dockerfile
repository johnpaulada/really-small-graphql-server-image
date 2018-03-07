FROM node:latest AS base
WORKDIR /app
RUN yarn add graphql-yoga
COPY index.js .

FROM gcr.io/distroless/nodejs
WORKDIR /app
COPY --from=base /app /app
CMD [ "index.js" ]