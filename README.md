# Robot Web Tests com GitHub Actions

Este repositório contém um workflow do GitHub Actions configurado para executar testes automatizados usando o Robot Framework para testes web.

## Estrutura do Arquivo YAML do Workflow

O arquivo `yml` do workflow define os seguintes passos:

```yaml
- name: Checkout Repository
  uses: actions/checkout@v4
- name: Set up Python
  uses: actions/setup-python@v2
  with:
    python-version: '3.12'
- name: Install dependencies
  run:
    pip install robotframework
    pip install robotframework-requests
    pip install robotframework-seleniumlibrary
- name: Run Robot Framework tests
  run:
    robot --name "TestesFrontSupernatural" --outputdir FRONT/ TestesFrontSupernatural/
- name: Test Report
  uses: actions/upload-artifact@v4
  with:
    name: robot-framework-report
    path: results/**
Após configurar o workflow do GitHub Actions, você pode monitorar a execução dos testes e o upload do relatório de teste no GitHub Actions
e verificar os resultados dos testes no diretório de saída definido no arquivo YAML do workflow.
