# Robot Tests Web com GitHub Actions

Este repositório contém um workflow do GitHub Actions configurado para executar testes automatizados usando o Robot Framework para testes web.

## Passo a Passo para Configuração e Execução do Workflow

### 1. Checkout do Repositório

O primeiro passo do workflow realiza o checkout do repositório atual utilizando a ação `actions/checkout@v4`.

### 2. Configuração da Versão do Python

Em seguida, o workflow configura a versão do Python necessária para os testes. A versão configurada é '3.12'.

### 3. Instalação de Dependências

Após configurar a versão do Python, o workflow instala as dependências necessárias para o Robot Framework e suas bibliotecas associadas, como `robotframework`, `robotframework-requests` e `robotframework-seleniumlibrary`.

### 4. Execução dos Testes do Robot Framework

Depois de instalar as dependências, o workflow executa os testes do Robot Framework utilizando o comando `robot --name "TestesFrontSupernatural" --outputdir FRONT/ TestesFrontSupernatural/`. Este comando executa os testes e salva os resultados no diretório 'FRONT/'.

### 5. Upload do Relatório de Teste

Por fim, o workflow faz o upload do relatório de teste como um artefato do GitHub Actions utilizando a ação `actions/upload-artifact@v4`. Isso permite que você acesse e analise os resultados dos testes após a execução do workflow no diretório 'results/'.

## Execução do Workflow

Após configurar o workflow do GitHub Actions, você pode monitorar a execução dos testes e o upload do relatório de teste no GitHub Actions.

