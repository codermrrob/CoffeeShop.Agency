# Import necessary libraries
import pyodbc
import pandas as pd

class DashboardData:
    def __init__(self, connection_string):
        """
        Initializes the DashboardData class with a SQL Server connection string.
        
        :param connection_string: The connection string to the SQL Server database.
        """
        self.connection_string = connection_string

    def connect_to_db(self):
        """
        Attempts to connect to the SQL Server database using the connection string.
        Handles and prints any exceptions related to the connection attempt.
        """
        try:
            # Establishing the connection to the database
            connection = pyodbc.connect(self.connection_string)
            print("Connection successful.")
            return connection
        except Exception as e:
            # Handling exceptions and printing relevant error messages
            print(f"An error occurred while connecting to the database: {e}")

# Placeholder for future method definitions
# TODO: Add method to retrieve monthly sales trends
# TODO: Add method to identify top-selling products across different categories

# Example usage
if __name__ == "__main__":
    # User can modify the connection string as needed
    connection_string = "DRIVER={SQL Server};SERVER=server_name;DATABASE=database_name;UID=user;PWD=password"
    
    # Creating an instance of DashboardData
    dashboard_data = DashboardData(connection_string)
    
    # Connecting to the database
    connection = dashboard_data.connect_to_db()
    
    # Ensure to close the connection when done
    if connection is not None:
        connection.close()