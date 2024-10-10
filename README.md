# WORDPRESS PROJESİ 

Bu proje Wordpressi mysql veritabanı ile çalıştırmak için bir Docker Compose yapılandırması sunmaktadır

## Gereksinimler

- [Docker] 
- [Docker-Compose]

## Proje Yapısı 

- **db**: MYSQL 8.0 
- **Wordpress** Wordpress (ubuntu tabanlı)

## Dockerfile 

Dockerfile , Wordpress uygulamasını çalıştırmak için gerekli herşeyi içermektedir.

- **Ubuntu 22.04** tabanlı bir imaj kullanır.
- PHP, Apache ve gerekli kütüphaneler yüklenir.
- WordPress'in en son sürümü indirilir ve doğru dizine yerleştirir
- Apache sunucusu, arka planda çalışacak şekilde yapılandırılır. 


## Kurulum 

   ```bash
   git clone <repository-url>
   cd <repository-directory> 


Docler-Compose ile servisi başlatın:

        docker-compose up -d 
 
 ( Bu komut arka planda servisi başlatacaktır.)


## Kullanım 

WordPress'e erişmek için tarayıcınızda http://localhost adresine gidin. 

MySQL veritabanına erişim için bir veritabanı istemcisi kullanabilirsiniz. Aşağıdaki bilgileri kullanarak bağlanın:

Host: localhost
Port: 3306
Kullanıcı: wordpress
Şifre: example
Veritabanı: wordpress

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# WORDPRESS PROJECT

This project provides a Docker Compose configuration to run Wordpress with a mysql database

## Requirements

- [Docker]

- [Docker-Compose]

## Project Structure

- **db**: MYSQL 8.0
- **Wordpress** Wordpress (ubuntu based)

## Dockerfile

The Dockerfile contains everything needed to run the Wordpress application.

- It uses an image based on **Ubuntu 22.04**.
- PHP, Apache and the necessary libraries are installed.
- The latest version of WordPress is downloaded and placed in the correct directory
- The Apache server is configured to run in the background.

## Installation

```bash
git clone <repository-url>
cd <repository-directory>

Start the service with Docker-Compose:

docker-compose up -d

(This command will start the service in the background.)

## Usage

To access WordPress, go to http://localhost in your browser.

You can use a database client to access the MySQL database. Connect using the following information:

Host: localhost
Port: 3306
User: wordpress
Password: example
Database: wordpress

