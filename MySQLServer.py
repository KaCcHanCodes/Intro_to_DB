import mysql.connector

try:
    connection = mysql.connector.connect(
    host="localhost",
    user="dee",
    password="jesus"
)

    #create an instance of the connect class 'cursor' to communicate with the Mysql db
    cursor = connection.cursor()
    value = cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    connection.commit()
    print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as e:
    print(e)