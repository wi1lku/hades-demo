FROM python:3.9
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
RUN pip install --no-cache-dir spacy 
RUN python -m spacy download en_core_web_sm
EXPOSE 8501
ENTRYPOINT ["streamlit", "run"]
CMD ["hades_app/main.py"]
