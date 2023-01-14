# sakila-docker

1. Clone this repo
2. Unzip the files from the Sakila database [download](https://dev.mysql.com/doc/index-other.html) into the root of the repo
3. In the root of the repo run `docker build . -t sakila:latest`
4. Then run `docker run -d --name sakila sakila:latest`
5. Then access your `mysql` prompt with `docker exec -it sakila mysql -u root sakila`

Now, running `show tables;` should show the Sakila dummy database tables!
