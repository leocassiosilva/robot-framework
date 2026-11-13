# Projeto Robot Framework

Estudos e testes automatizados com [Robot Framework](https://robotframework.org/) e SeleniumLibrary.

## Requisitos

- Python 3.12+
- Google Chrome (para os testes com navegador)

## Instalação

```bash
python3 -m venv venv
source venv/bin/activate
pip install robotframework robotframework-seleniumlibrary
```

Versões usadas: `robotframework 7.5.1`, `robotframework-seleniumlibrary 6.9.0`.

## Estrutura

| Arquivo           | Descrição                                                      |
|-------------------|----------------------------------------------------------------|
| `estrutura.robot` | Modelo com as seções de um arquivo Robot e um teste de exemplo |
| `teste.robot`     | Teste de instalação que abre o navegador                       |

## Executando os testes

```bash
source venv/bin/activate
robot estrutura.robot
```

Ao final, o Robot gera os relatórios na pasta atual:

- `report.html`: resumo da execução
- `log.html`: log detalhado de cada passo
- `output.xml`: resultado em formato XML

Para salvar os relatórios em outra pasta:

```bash
robot -d results estrutura.robot
```
