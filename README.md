# Desafio Cumbuca

## Descrição

O **Desafio Cumbuca** é um programa em Elixir que enumera nomes de monarcas da fictícia Combúquia. O programa solicita que o usuário insira nomes dos monarcas e, em seguida, enumera esses nomes de acordo com a ordem de inserção e a quantidade de ocorrências, utilizando numerais romanos.

## Estrutura do Projeto

O projeto está organizado da seguinte maneira:

desafio_cumbuca/
├── lib/
│ ├── desafio_cumbuca/
│ │ ├── interface_usuario.ex
│ │ ├── obter_nomes.ex
│ │ ├── enumerar_nomes.ex
│ └── desafio_cumbuca.ex
├── test/
│ └── desafio_cumbuca_test.exs
├── mix.exs
└── README.md


## Instalação

1. Clone o repositório:

   ```sh
   git clone <URL-do-repositório>
   cd desafio_cumbuca
2. Compile o projeto:
   ```sh
  mix compile

3. 
  ```sh
  mix escript.build

## Execução

Para executar o projeto, siga os passos abaixo:

1. Navegue até o diretório do executável:

    ```sh
    cd _build\dev\rel\desafio_cumbuca\bin
  
2. Inicie o IEx (Interactive Elixir) com o escript:

    ```sh
    .\desafio_cumbuca.bat start_iex

3. No IEx, execute a função principal:

    ```sh
    DesafioCumbuca.main()

