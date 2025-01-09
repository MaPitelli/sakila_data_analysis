import mysql.connector
import os
from dotenv import load_dotenv

# Cargar las variables del archivo .env
load_dotenv()

def create_connection():
    try:
        conn = mysql.connector.connect(
            host=os.getenv("DB_HOST"),
            user=os.getenv("DB_USER"),
            password=os.getenv("DB_PASSWORD"),
            database=os.getenv("DB_NAME")
        )
        print("Conexión exitosa a la base de datos.")
        return conn
    except mysql.connector.Error as e:
        print(f"Error: {e}")
        return None
