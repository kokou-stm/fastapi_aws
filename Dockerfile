# Utilisation de l'image Python officielle
FROM python:3.9-slim

# Définition du répertoire de travail
WORKDIR /app

# Copie des fichiers
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copie du code source
COPY . .

# Commande de lancement
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
