FROM node:14

WORKDIR /var/www/html
RUN npm install
RUN npm install ws
RUN npm install express
RUN curl -o /var/www/html/main.zip -L https://codeload.github.com/Kirk2323/Blackjack/zip/main
RUN cd /var/www/html/ && unzip main.zip && mv Blackjack/* . && rm -rf Blackjack main.zip

EXPOSE 3000


CMD ["node", "index.js"]