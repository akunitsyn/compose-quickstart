## 🤔 What is it?

This is a Docker Compose template for getting started with a new Mage project.

## 🙋‍♂️ Why did you create it?

We created this template for users to have an easy way to deploy a project using Docker.

Using Docker Compose allows editors to easily add their own images or modify the Mage image to their liking. 

## How to use it
~~~
git clone https://github.com/akunitsyn/compose-quickstart.git mage-quickstart \
&& cd mage-quickstart \
&& cp dev.env .env && rm dev.env \
&& docker compose up
~~~
