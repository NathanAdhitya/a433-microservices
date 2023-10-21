# Gunakan Node versi 16
FROM node:16-alpine as builder
WORKDIR /app

# Copy package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua file
COPY . .

# Expose port 3001
ENV PORT=3001
EXPOSE 3001

# Jalankan perintah npm run start
CMD [ "npm", "run", "start" ]
