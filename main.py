import mysql.connector

# Replace these with your AWS RDS MySQL database credentials
db_config = {
    'user': 'admin',
    'password': '104920081599',
    'host': 'baseball.c9d7jbtnahcp.us-east-1.rds.amazonaws.com',
    'database': 'baseball'
}

# Create a function to execute a view
def execute_view(view_name):
    try:
        connection = mysql.connector.connect(**db_config)
        cursor = connection.cursor()

        # Execute the view
        query = f'SELECT * FROM {view_name};'
        cursor.execute(query)

        # Fetch the results
        results = cursor.fetchall()

        # Print the results
        print(f"Results from {view_name}:")
        for row in results:
            print(row)

    except mysql.connector.Error as err:
        print(f"Error: {err}")

    finally:
      if __name__ == "__main__":
        # Replace these with the names of your views
        view1_name = 'view 1'

        connection = None  # Declare the connection variable

        try:
            connection = mysql.connector.connect(**db_config)
            cursor = connection.cursor()

            # Execute the view
            query = f'SELECT * FROM {view1_name};'
            cursor.execute(query)

            # Fetch the results
            results = cursor.fetchall()

            # Print the results
            print(f"Results from {view1_name}:")
            for row in results:
                print(row)

        except mysql.connector.Error as err:
            print(f"Error: {err}")

        finally:
            if connection is not None and connection.is_connected():
                cursor.close()
                connection.close()
