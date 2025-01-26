# Projeto: Ambiente de Análise com Jupyter e PySpark em Docker

## Descrição do Projeto
Este projeto configura um ambiente Dockerizado para análise de dados utilizando Jupyter Notebook e PySpark. Ele inclui:

- Um contêiner baseado na imagem `jupyter/pyspark-notebook`.
- Um diretório para armazenar os datasets baixados automaticamente.
- Um arquivo de notebook transferido diretamente de um repositório do GitHub para a pasta home do contêiner.

## Estrutura do Projeto
```
.
├── docker-compose.yml
├── Dockerfile
├── README.md
├── notebooks/              # Pasta opcional para outros notebooks
└── data/                  # Pasta criada automaticamente para os datasets
```

## Funcionalidades Principais
- Baixa automaticamente o dataset "Coffee Shop Sales" e o salva no diretório `/data` dentro do contêiner.
- Faz o download de um notebook pré-existente do GitHub e o coloca no diretório `/home/jovyan/`.
- Permite rodar o Jupyter Notebook sem a necessidade de senha ou token (apenas para desenvolvimento local).

## Passos para Execução
1. Certifique-se de ter o Docker e o Docker Compose instalados em sua máquina.
2. Clone este repositório:
   ```bash
   git clone <URL_DO_REPOSITORIO>
   ```
3. Entre no diretório do projeto:
   ```bash
   cd <NOME_DO_REPOSITORIO>
   ```
4. Construa e inicie o contêiner:
   ```bash
   docker-compose up --build
   ```
5. Acesse o Jupyter Notebook pelo navegador em: [http://localhost:8888](http://localhost:8888)

## Observação sobre Segurança
Essa configuração desabilita completamente o uso de senha e token, deixando o Jupyter Notebook acessível diretamente. Use-a **apenas em ambientes de desenvolvimento local**.

**Se for expor o Jupyter publicamente, é altamente recomendado:**

1. Ativar o uso de senha no Jupyter configurando o `jupyter_server_config.py` com um hash de senha.
2. Configurar SSL para proteger a comunicação.
3. Restringir o acesso a IPs ou sub-redes específicas por meio de firewall.

## Referências
- **Dataset utilizado:** [Coffee Shop Sales](https://maven-datasets.s3.amazonaws.com/Coffee+Shop+Sales/Coffee+Shop+Sales.zip)
- **Notebook:** [Data Exploration Notebook](https://github.com/FabioAguiar/pyspark-virus-mosquito-analysis/blob/main/notebooks/data_exploration.ipynb)
- **Base da Imagem Docker:** [jupyter/pyspark-notebook](https://hub.docker.com/r/jupyter/pyspark-notebook)

## Personalização
Se desejar modificar o projeto, edite os arquivos `Dockerfile` e `docker-compose.yml` conforme necessário. Você também pode adicionar seus próprios notebooks à pasta `notebooks/` e utilizá-los no contêiner.

---

Sinta-se à vontade para contribuir com melhorias para este projeto! 😊

