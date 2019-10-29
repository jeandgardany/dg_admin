# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
Ruby 2.6.5

* System dependencies:
Seguir o Tutorial: https://gorails.com/setup/ubuntu/18.04 com opção rvm e db mysql
Instalar imagemagick
sudo apt-get install imagemagick

* Configuration
 Trocar usuario na configuração do banco de dados
  database.yml => user e password development e production

 Devise:
  rails generate devise:install
  rails generate devise User

 Rails_Admin:
  rails g rails_admin:install
  Where do you want to mount rails_admin? Press  for [admin] => Só da Enter pra aceitar

* Database creation
Preencher o seed com usuario padrao para acesso a /admin

* Database initialization
rails db:create db:migrate db:seed

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
Se der problema com hosts usar um desses metodos:
The first option is to whitelist the development hostname in config/environments/development.rb.

Rails.application.configure do
  # Whitelist one hostname
  config.hosts << "hostname"
  # Whitelist a test domain
  config.hosts << /application\.local\Z/
end

The second option is to clear the entire whitelist, which lets through requests for all hostnames.

Rails.application.configure do
  config.hosts.clear
end


* ...
# dg_admin
