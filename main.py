from analysis import run_all_queries, list_queries, execute_query

def run_single_query():
    queries = list_queries()
    try:
        choice = int(input("\nElige el número de la query que quieres ejecutar: "))
        if 1 <= choice <= len(queries):
            execute_query(f"queries/{queries[choice - 1]}")
        else:
            print("❌ Selección inválida.")
    except ValueError:
        print("❌ Por favor ingresa un número válido.")

def main():
    print("\n📊 Bienvenido al Proyecto de Análisis de Sakila\n")
    while True:
        print("\nOpciones:")
        print("1. Ejecutar todas las queries y guardar resultados en results.txt")
        print("2. Ejecutar una query específica")
        print("3. Salir")
        
        option = input("\nElige una opción (1, 2 o 3): ").strip()
        
        if option == "1":
            run_all_queries()
        elif option == "2":
            run_single_query()
        elif option == "3":
            print("👋 Saliendo del programa. ¡Hasta luego!")
            break
        else:
            print("❌ Opción no válida. Intenta nuevamente.")

if __name__ == "__main__":
    main()
