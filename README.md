# Rede social para troca de aulas particulares

Projeto web para disciplina **MAC0218 - Técnicas de Programação II**, ministrada no 2º semestre de 2018
pelo professor Marco Dimas Gubitoso na Universidade São Paulo.

Integrantes:
* [Eugenio Augsuto Jimenes](https://github.com/callmarx) Nº USP 7118981
* [Marcelo Baiano Pastorino Trylesinski](https://github.com/Kludex)    Nº USP 9297996
* [André Akira Hayashi](https://github.com/Akiira23) Nº USP 9293011
* [Vinicius Agostini](https://github.com/viagostini) Nº USP 4367487


## Objetivo do projeto

Aplicar os conhecimentos e técnicas aprendidos na disciplina com  o desenvolvimento de uma mini rede social para busca e oferecimento de aulas particulares. Estrutura de páginas:

* __Home__: Descrição de projeto com campos para login ou cadastro
* __Login e cadastro__: Página para entrar ou se cadastrar no sistema
* __Perfil do usuário__: Página para visualizar e editar informações pessoais
* __Tópico/Área académica__: Página para que interessados em ministrar ou obter aulas da área acadêmica possam postar suas propostas. Uma página para cada área (Exemplo: Cálculo, Física, Estatística, Estrutura de Dados, etc)
* __Postagem__: Pstagem de cada usuário oferecendo ou buscando por aulas.

### Sites que serviram como referência e inspiração para esse projeto:
- https://www.99freelas.com.br/
- https://www.getninjas.com.br/
- https://profes.com.br/

### Principais tutorias e ferremantas utilizadas
- http://guides.rubyonrails.org/
- https://github.com/charliesome/better_errors
- https://github.com/plataformatec/devise
- https://github.com/norman/friendly_id
- https://github.com/RolifyCommunity/rolify/wiki/Devise---CanCanCan---rolify-Tutorial
- https://bulma.io/documentation/
- https://www.codefellows.org/blog/how-to-create-a-markdown-friendly-blog-in-a-rails-app/
- https://web-crunch.com/lets-build-with-ruby-on-rails-blog-with-comments/

## Ambiente, linguagem e arcabouço

Uma rápida descrição das ferramentas utilizadas no desenvolvimento do projeto.



### Linguagem: Ruby

Utilizamos a última versão estavel do ruby, com o gerenciador de versões [RVM](https://rvm.io/)

```
$ ruby -v
ruby 2.5.1p57
```

### Arcabouço: Rails

```
$ rails -v
Rails 5.2.0
```

### Sistema Operacional: Arch Linux

```
$ uname -a
Linux ******* 4.16.8-1-ARCH #1 SMP PREEMPT x86_64 GNU/Linux
```

## Testando a aplicação localmente

Para testar o projeto localmente em sua máquina, basta ter o Ruby e o Rails instalados com as versões mencionadas acima. Dê um git clone no projeto e dentro da pasta execute:

```
$ bundle install
$ rails db:create db:migrate db:seed faker:seed
```
O último comando irá criar o banco localmente em sqlite com alguns dados falsos. Agora basta rodar o puma localmente:

```
$ rails s
```
Utilize o usuário **teste@teste.com** com senha **12345** para navegar na aplicação localmente.

## Heroku

Segue o link do herokua no qual o projeto foi apresentado em aula no dia 03/07/2018. Todos os usuários estão com a senha **12345**, o usuário **teste@teste.com** é admin.
https://powerful-caverns-89456.herokuapp.com/


## Licença
Esse projeto esta sobre a licença __GNU General Public License v3.0__ - veja o arquivo [LICENSE.md](LICENSE.md) para mais detalhes.
