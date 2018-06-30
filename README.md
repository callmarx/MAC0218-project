# Rede social para troca de aulas particulares

Projeto web para disciplina **MAC0218 - Técnicas de Programação II**, ministrada no 2º semestre de 2018
pelo professor Marco Dimas Gubitoso na Universidade São Paulo.

Integrantes:
* [Eugenio Augsuto Jimenes](https://github.com/callmarx) Nº USP 7118981
* [Marcelo Baiano Pastorino Trylesinski](https://github.com/Kludex)    Nº USP 9297996
* [André Akira Hayashi](https://github.com/Akiira23) Nº USP 9293011
* [Vinicius Agostini](https://github.com/viagostini) Nº USP 4367487


## Objetivo do projeto

Desenvolvimento de uma mini rede social para busca e oferecimento de aulas particulares. Haverá sistema de login com senha e opção de login por redes social (Facebook e Gmail). Inicialmente esta previsto a seguinte estrutura de páginas:

* __Home__: Descrição de projeto com campos para login e cadastro
* __Login e cadastro__: Página para entrar ou se cadastrar no sistema e termos de uso da plataforma
* __Perfil do usuário__: Página para visualizar e editar informações pessoais
* __Disciplina/Área académica__: Página para que interessados em ministrar ou obter aulas da área acadêmica possam postar suas propostas. Uma página para cada área (Exemplo: Cálculo, Física, Estatística, Estrutura de Dados, etc), talvez um sistema hierárquico de páginas para as especializações da área.

Além disso haverá um sistema de postagem e comentários de post. Em todas as páginas, no ambiente logado, haverá um campo de busca que devolve às palavras chaves buscas uma lista das páginas de disciplina com o termo (seja pelo nome da página ou em posts internos).

Sites que serviram como referência e inspiração para esse projeto:
 - https://www.99freelas.com.br/
 - https://www.getninjas.com.br/
 - https://profes.com.br/

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


## Licença
Esse projeto esta sobre a licença __GNU General Public License v3.0__ - veja o arquivo [LICENSE.md](LICENSE.md) para mais detalhes.
