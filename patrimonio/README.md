# README

Este é um projeto de Gerenciador de Patrimônio feito em ruby. Essa aplicação levanta um servidor local com banco de dados que guarda os items do patrimônio, os usuários cadastrados (tipicamente são responsáveis), os locais, estados dos items e relaciona os items com a base de dados SILOMS (importada por planilha .csv com codificacao utf-8). O banco de dados também guarda o QRCode dos items que é gerado a partir de atribuitos do items, como o seu local, o seu estado e responsável.

* Ruby version 2.5.1
https://rvm.io/rvm/install

* Dependências do sistema são gerenciados pela ferramenta bundler. 
  
  Escreva o comando seguinte: "bundle install" no terminal estando na pasta "CES30_Patrimonio_QRCode/patrimonio" para atualizar as dependências.
  
  * IMPORTANTE:
         Apenas o nodejs não é gerenciado pelo bundler, dessa forma é necessário garantir que o sistema tenha instalado o nodejs.
         Para instalar o nodejs basta escrever o comando no terminal: sudo apt-get install nodejs

* Para criar o banco de dados basta escrever o comando no terminal: rails db:create

* Deployment instructions:
  
            - make sure to have nodejs
            - make sure to run "bundle install" to update dependencies
            - At the first time, run "rails db:migrate"
            - run "rails server" to boot server.
            - access localhost:3000

* Este projeto foi desenvolvido por: 
 
                                    Gabriel Adriano de Melo, master-developer
                                    Dylan Nakandakari Sugimoto, developer
                                    Matheus Menezes, developer
                                    Prof. Doutor Inaldo Capistrano Costa, scrum-master
                                    Marcos Antonio dos Santos, idealizador do projeto - P.O.
                                    Prof. Doutor José Maria Parente Oliveira, P.O.


## Produção

Servidor debian 9.6