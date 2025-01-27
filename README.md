# Projeto: Análise de Vendas de Cafeteria com Jupyter, Pandas e Power BI

## Descrição do Projeto

Este projeto foca na análise de dados de vendas de uma cafeteria fictícia chamada Maven Roasters, que opera em três localizações em Nova York. Utilizando ferramentas como Jupyter Notebook, PySpark, Pandas e Power BI, o projeto explora e transforma os dados, apresentando insights importantes para tomada de decisão.

### Principais tecnologias utilizadas:

- **Jupyter Notebook**: Para análise exploratória e transformações iniciais dos dados.
- **Pandas**: Para manipulação e limpeza detalhada dos dados.
- **Power BI**: Para criação de relatórios visuais interativos.
- **Docker**: Para configurar um ambiente isolado e replicável.

## Estrutura do Projeto

```
.
├── docker-compose.yml
├── Dockerfile
├── README.md
├── notebooks/                
├── data/                     # Pasta criada automaticamente para os datasets
├── coffe_shop_sales_analysis.pbix  
```

## Descrição dos Dados

O dataset utilizado é o **Coffee Shop Sales**, que contém registros de transações realizadas em três lojas de Nova York. As colunas principais do dataset são:

- **transaction_id**: ID único representando uma transação.
- **transaction_date**: Data da transação (MM/DD/YY).
- **transaction_time**: Horário da transação (HH:MM:SS).
- **transaction_qty**: Quantidade de itens vendidos.
- **store_id**: ID único da loja.
- **store_location**: Localização da loja.
- **product_id**: ID único do produto vendido.
- **unit_price**: Preço unitário do produto.
- **product_category**: Categoria do produto.
- **product_type**: Tipo de produto.

## Funcionalidades Principais

1. **Exploração e Análise de Dados**
   - As transformações iniciais são realizadas no Jupyter Notebook usando Pandas e PySpark. Exemplos de análises incluem:
     - Volume de vendas por loja e por categoria de produto.
     - Tendências de vendas ao longo do tempo.
     - Produtos mais vendidos e com maior receita.

2. **Relatório Interativo no Power BI**
   - O arquivo `coffe_shop_sales_analysis.pbix` é um relatório desenvolvido no Power BI que apresenta:
     - Gráficos interativos com dashboards de vendas.
     - Comparativos entre as três localizações da loja.
     - Tendências temporais de vendas e comportamento de consumo.

3. **Ambiente Dockerizado**
   - O uso do Docker garante que o ambiente seja replicável e configurado automaticamente para análises no Jupyter Notebook.

## Passos para Execução

### Preparar o Ambiente

1. Certifique-se de ter o Docker e o Docker Compose instalados em sua máquina.
2. Clone este repositório:
   ```bash
   git clone https://github.com/FabioAguiar/Coffe-Shop-Sales-Analysis.git
   ```
3. Entre no diretório do projeto:
   ```bash
   cd Coffe-Shop-Sales-Analysis
   ```
4. Construa e inicie o contêiner:
   ```bash
   docker-compose up --build
   ```
5. Acesse o Jupyter Notebook pelo navegador em: [http://localhost:8888](http://localhost:8888)

### Visualizar o Relatório do Power BI

1. Baixe e instale o Power BI Desktop: [https://powerbi.microsoft.com/pt-br/desktop/](https://powerbi.microsoft.com/pt-br/desktop/).
2. Abra o arquivo `coffe_shop_sales_analysis.pbix` no Power BI Desktop.
3. Explore os dashboards e gráficos interativos para obter insights detalhados.

## Observação sobre Segurança

A configuração do Jupyter Notebook neste projeto desabilita completamente o uso de senha e token, deixando-o acessível diretamente. Use-a **apenas em ambientes de desenvolvimento local**.

Se for expor o Jupyter publicamente, recomenda-se:
1. Ativar o uso de senha configurando o arquivo `jupyter_server_config.py` com um hash de senha.
2. Configurar SSL para proteger a comunicação.
3. Restringir o acesso a IPs ou sub-redes específicas por meio de firewall.

## Referências

- **Dataset utilizado:** [Coffee Shop Sales](https://maven-datasets.s3.amazonaws.com/Coffee+Shop+Sales/Coffee+Shop+Sales.zip)
- **Base da Imagem Docker:** [jupyter/pyspark-notebook](https://hub.docker.com/r/jupyter/pyspark-notebook)
