FROM python:3.9

WORKDIR /app


# Copier les fichiers requis dans le conteneur
COPY requirements.txt requirements.txt
COPY app.py app.py
COPY gradboostregModel.pkl gradboostregModel.pkl
COPY templates/home.html /app/templates/home.html
COPY static/style.css /app/static/style.css
COPY config.py /app/config.py

# Install dependencies
#RUN pip install - r requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 
ENV PORT 8080
#EXPOSE 8080

#On Use ceci en developpement
#ENV FLASK_APP=app.py
#ENTRYPOINT [ "flask"]
#CMD [ "run", "--host", "0.0.0.0" ]

# Run the application in production:
CMD ["gunicorn", "app:app", "--config=config.py"]

