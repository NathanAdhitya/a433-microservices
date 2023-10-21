# Gunakan Node versi 16
FROM node:16-alpine as builder
WORKDIR /app

# Copy package.json dan package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua file
COPY . .

# Expose port 3000
ENV PORT=3000
EXPOSE 3000

# Jalankan perintah npm run start
CMD [ "npm", "run", "start" ]
