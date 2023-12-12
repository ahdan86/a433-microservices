# Mengunduh/mengambil base image dari docker hub dengan tag node:14-alpine
FROM node:14-alpine

# Menambahkan python3, g++, dan make ke dalam image sebagai package yang merupakan dependensi dari node js
RUN apk add --no-cache python3 g++ make

# Membuat direktori /app sebagai working directory
WORKDIR /app

# Menyalin file dari project seperto package.json, package-lock, dsb ke dalam working directory
COPY . .

# Menambahkan environment variable dan db_host dari container item-db
ENV NODE_ENV=production DB_HOST=item-db

# Menjalankan perintah npm install untuk menginstall semua dependensi yang dibutuhkan
RUN npm install --production --unsafe-perm && npm run build

# Expose port 8080 untuk diakses dari luar container
EXPOSE 8080

# Menjalankan perintah npm start untuk menjalankan aplikasi
CMD ["npm", "start"]