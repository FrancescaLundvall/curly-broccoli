FROM node:20-alpine AS builder

ENV NODE_ENV=build

WORKDIR /home/node

# Install dependencies for CI env
COPY package*.json ./
RUN npm ci

# Build and clean dependencies
COPY . .
RUN npm run build && npm prune --omit=dev

# ---

FROM node:20-alpine

ENV NODE_ENV=production
ENV PORT=3000

USER node
WORKDIR /home/node

COPY --from=builder --chown=node:node /home/node/package*.json ./
COPY --from=builder --chown=node:node /home/node/node_modules/ ./node_modules/
COPY --from=builder --chown=node:node /home/node/dist/ ./dist/

EXPOSE $PORT
CMD ["node", "dist/main.js"]
