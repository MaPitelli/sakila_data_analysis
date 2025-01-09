from db_connector import create_connection
import os

def execute_query(file_path, results_file=None):
    conn = create_connection()
    if conn:
        cursor = conn.cursor()
        with open(file_path, 'r') as file:
            query = file.read()
            cursor.execute(query)
            results = cursor.fetchall()
            
            # Mostrar resultados en terminal o guardar en archivo
            if results_file:
                with open(results_file, 'a') as rf:
                    rf.write(f"\nResultados de {file_path}:\n")
                    for row in results:
                        rf.write(f"{row}\n")
                print(f"\n✅ Resultados guardados en '{results_file}'.\n")
            else:
                print(f"\nResultados de {file_path}:")
                for row in results:
                    print(row)

        conn.close()
    else:
        print("Error al conectar con la base de datos.")

def run_all_queries():
    results_file = "results.txt"
    open(results_file, 'w').close()  # Limpia el archivo de resultados
    query_folder = 'queries/'
    for file in sorted(os.listdir(query_folder)):
        if file.endswith('.sql'):
            execute_query(f"{query_folder}/{file}", results_file)

def list_queries():
    query_folder = 'queries/'
    queries = sorted([f for f in os.listdir(query_folder) if f.endswith('.sql')])
    
    print("Selecciona una consulta para ejecutar:")
    for index, query in enumerate(queries):
        query_path = os.path.join(query_folder, query)
        with open(query_path, 'r', encoding='utf-8') as file:
            first_line = file.readline().strip()  # Lee solo la primera línea del archivo
        print(f"{first_line}")  # Imprime la primera línea como descripción

    return queries
