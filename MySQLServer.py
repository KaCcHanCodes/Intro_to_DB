from mysql.connector import connect, error

try:
    connection = connect(
    host="localhost",
    user="dee",
    password="jesus"
)

    #create an instance of the connect class 'cursor' to communicate with the Mysql db
    cursor = connection.cursor()
    value = cursor.execute("CREATE IF NOT EXISTS alx_book_store")
    connection.commit()
    print("Database 'alx_book_store' created successfully!")
except Exception as e:
    print(e)