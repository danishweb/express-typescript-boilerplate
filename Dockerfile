# ===========================
# Build Stage
# ===========================
FROM node:22-alpine AS builder

# Set working directory
WORKDIR /app

# Enable pnpm via Corepack
RUN corepack enable pnpm

# Copy only package files to leverage Docker cache
COPY package.json pnpm-lock.yaml ./

# Install all dependencies (dev + prod)
RUN pnpm install --frozen-lockfile

# Copy the rest of the source code
COPY . .

# Build TypeScript code
RUN pnpm run build

# ===========================
# Production Stage
# ===========================
FROM node:22-alpine AS production

WORKDIR /app

# Enable pnpm via Corepack
RUN corepack enable pnpm

# Copy only production dependencies
COPY package.json pnpm-lock.yaml ./
RUN pnpm install --frozen-lockfile --prod

# Copy built files from builder stage
COPY --from=builder /app/dist ./dist

# Optionally, copy other necessary static files like .env, public folder
# COPY --from=builder /app/public ./public

# Set environment
ENV NODE_ENV=production

# Expose port
EXPOSE 3000

# Use non-root user
USER node

# Start the app
CMD ["node", "dist/index.js"]
