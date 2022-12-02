<h1>Desafio - Web Service</h1>

Desafio proposto: Implementar uma Web Service RESTful capaz de se comunicar com aplicações mobile e web.

<h2>O projeto</h2>
<hr>
<p>Como detalhado nos requisitos do desafio, será desenvolvido uma API Web Service RESTful para gerenciamento de exames de uma instituição de educação.</p>
<p>Para o bom entendimento e melhor implementação do projeto, seguirei a seguinte estrutura:</p>

<ul>
  <li>Entender para atender;</li>
  <li>Modelagem do Banco de Dados;</li>
  <li>Passo-a-passo para rodar o projeto localmente;</li>
  <li>Detalhes da implementação;</li>
</ul>

<h2>Entender para atender</h2>
<hr>
<h3><strong>O que é um Web Service?</strong></h3>
<br>
<p>Um Web Service é um conjunto de métodos que apresentam uma estrutura arquitetural que <strong>permitem a comunicação entre aplicações</strong> mesmo em linguagens de programação distintas.
Um web service pode ser realizado remotamente ou ser utilizado para compor um novo serviço juntamente com outros podendo dizer que funcionam como uma forma de tradutor entre as diferentes lingugagens, de modo que aplicações inicialmente desenvolvidas com base num sistema ou linguagem podem ser alteradas através de outros softwares, inclusive remotamente.</p>
<p>Um web service possui uma interface, que oculta os detalhes da implementação para que possa ser usada independente da plataforma de hardware ou software na qual ela é implementada e independente da linguagem de programação na qual ela é gravada.</p>
<br>
<h3><strong>O que é uma API e qual sua relação com uma Web Service?</strong></h3>
<hr>

<p>A A Application Programming Interface ou Interface de Programação de Aplicações (API), em português, é definida como uma interface que cumpre o papel de conectar duas plataformas, permitindo que se comuniquem com agilidade, além de determinar como os seus softwares devem trocar informações.

Ao adotar essa ferramenta, é possível integrar serviços terceirizados, como o Google Maps. O uso de APIs está associado à requisição de funções em um software, o que é feito a partir de protocolos e rotas, que geram respostas de dados JSON e XML.

Por sua vez, os Web Services são considerados APIs que podem se comunicar umas com as outras por meio de redes. Eles ainda podem ser usados em conjunto para possibilitar a execução de operações de alta complexidade.

Geralmente, isso é feito com o Hyper Text Tranfer Protocol (HTTP), que em português se chama Protocolo de Transferência de Hipertexto — protocolo de comunicação cuja função é transferir dados. Isso inclui não só palavras, mas também sons e imagens na Word Wide Web (www), que é a rede mundial de computadores, dentro de sites que foram programados com a linguagem HTML.
</p>

<h2>Modelagem do Banco de Dados</h2>
![My Remote Image](https://res.cloudinary.com/dzznfliwu/image/upload/v1669997959/Fractal/drawSQL-export-2022-12-02_13_18_rmdea9.png)

<br> <a src="https://drawsql.app/teams/ruby-on-rails/diagrams/fractal-project">Link do Diagrama</a>


<h2>Executando o projeto</h2>
<hr>

<h3>Pré-requisitos</h3>

<ul>
  <li>Linguagem Ruby v. 3.1.2</li>
  <li>Framework Rails v. 7.0.4</li>
  <li>Banco de Dados PostgreSQL</li>
</ul>

<h3>Passo-a-passo</h3>

<ol>
  <li>Criar o banco de dados</li>
  <ul>
    <li><strong><em>rails db:create</em></strong></li>
  </ul>
  <li>Executar as migrations</li>
  <ul>
    <li><strong><em>rails db:migrate</em></strong></li>
  </ul>
  <li>Instalar as gems e dependências</li>
  <ul>
    <li><strong><em>bundle install</em></strong></li>
  </ul>
  <li>Executar a aplicação</li>
  <ul>
    <li><strong><em>rails server</em></strong></li>
  </ul>
</ol>

<br>

<h3>Para acessar os endpoints da API:</h3>

<p>Uma breve documentação da API: <a src="https://documenter.getpostman.com/view/16315917/2s8YzL5mQX">Postman Documentation</a></p>
<br>

<h3>Próximos passos e melhorias</h3>
<p>Procurei deixar as partes mais importantes prontas, para que o projeto pudesse em seu roadmap ir crescendo com as próximas atualizações.</p>

<ul>
  <li>
    <p>Criar model de Question e Answer</p>
  </li>
  <li>
    <p>Implementar testes unitários e de integração;</p>
  </li>
  <li>
    <p>Trocar o sistema de autenticação da gem Pundit por JWTs</p>
  </li>
  <li>
    <p>Implantar o sistema de correção automática das provas</p>
  </li>
  <li>
    <p>Implantar o sistema de rankeamento</p>
  </li>
  <li>
    <p>Utilizar docker-compose para criar um container de aplicação</p>
  </li>
</ul>
