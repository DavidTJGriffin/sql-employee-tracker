FROM node:18

# install mysql client for wait script
RUN apt-get update && apt-get install -y default-mysql-client && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY package*.json ./
RUN npm install

COPY wait-for-mysql.sh /wait-for-mysql.sh
RUN chmod +x /wait-for-mysql.sh

COPY . .

ENTRYPOINT ["/wait-for-mysql.sh"]
CMD ["node", "index.js"]