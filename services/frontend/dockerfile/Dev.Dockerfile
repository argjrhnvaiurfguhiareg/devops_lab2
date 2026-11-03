# используем базовый образ node
FROM node:24-alpine

WORKDIR /app

# TODO: необходимо скопировать файлы
COPY package.json .
COPY package-lock.json .
# package.json, package-lock.json, которые содержат
# список зависимостей npm


# TODO: необходимо установить пакеты node_modules
RUN npm install

# TODO: необходимо модифицировать переменную
ENV PATH app/node_modules/.bin:$PATH
# PATH таким образом, чтобы в начале содержимого
# переменной PATH была указана директория
# с бинарниками node_modules/.bin

