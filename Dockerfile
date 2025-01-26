# Baseado na imagem oficial do Jupyter com PySpark
FROM jupyter/pyspark-notebook:latest

# Define o diretório de trabalho no container
WORKDIR /home/jovyan

# Cria um diretório para armazenar os dados
RUN mkdir -p /home/jovyan/data

# Baixa o dataset e descompacta-o no diretório "data"
RUN curl -o dataset.zip https://maven-datasets.s3.amazonaws.com/Coffee+Shop+Sales/Coffee+Shop+Sales.zip && \
    unzip dataset.zip -d /home/jovyan/data && \
    rm dataset.zip

# Baixa o notebook para o diretório de trabalho
RUN curl -o /home/jovyan/data_exploration.ipynb https://raw.githubusercontent.com/FabioAguiar/Coffe-Shop-Sales-Analysis/refs/heads/main/Notebooks/Coffe_Sales_notebook.ipynb

# Instala pacotes adicionais se necessário
RUN pip install matplotlib seaborn

# Exposição da porta padrão do Jupyter Notebook
EXPOSE 8888

# Comando para iniciar o Jupyter Notebook
CMD ["start-notebook.sh"]

# Define uma configuração padrão para o Jupyter Notebook que desabilita a senha
RUN echo "c.NotebookApp.token = ''" >> /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.password = ''" >> /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.allow_root = True" >> /home/jovyan/.jupyter/jupyter_notebook_config.py && \
    echo "c.NotebookApp.ip = '0.0.0.0'" >> /home/jovyan/.jupyter/jupyter_notebook_config.py
