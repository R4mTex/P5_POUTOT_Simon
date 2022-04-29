import mysql.connector as MC
from tqdm import tqdm
from mysql.connector import errorcode
from data.downloader import Downloader
from config.constant import config, DB_NAME, TABLES


class Database:

    cnx = MC.connect(**config)
    cursor = cnx.cursor()

    def create_database():
        try:
            Database.cursor.execute(
                f"""CREATE DATABASE {DB_NAME}
            DEFAULT CHARACTER SET 'utf8'"""
            )
        except MC.Error as err:
            print(f"Failed creating database: {err}")
            exit(1)

    def delete_database():
        try:
            Database.cursor.execute(f"DROP DATABASE {DB_NAME}")
            print(f"Database {DB_NAME} deleted successfully")
        except MC.Error as err:
            print(f"Failed deleting database: {err}")
            exit(1)

    def test_database():
        try:
            print("\n--Starting Process--\n")
            Database.delete_database()
            Database.cursor.execute(f"USE {DB_NAME}")
        except MC.Error as err:
            print(f"Database {DB_NAME} doesn't exists.")
            if err.errno == errorcode.ER_BAD_DB_ERROR:
                Database.create_database()
                print(f"Database {DB_NAME} created successfully.")
                Database.cnx.database = DB_NAME
                print(f"Database {DB_NAME} USED")
            else:
                print(err)
                exit(1)

    def create_table():
        for table_name in TABLES:
            table_description = TABLES[table_name]
            try:
                print(f"Creating table {table_name}: ", end="")
                Database.cursor.execute(table_description)
            except MC.Error as err:
                if err.errno == errorcode.ER_TABLE_EXISTS_ERROR:
                    print("already exists.")
                else:
                    print(err.msg)
            else:
                print("OK")

    def get_values():
        values = Downloader.get_products()
        return values

    def insert_values():
        print("\n--In Process--\n")
        values = Database.get_values()
        for product in tqdm(range(len(values))):
            name = str(values[product]["name"])
            category = values[product]["category"]
            description = str(values[product]["description"])
            store = str(values[product]["store"])
            url = str(values[product]["url"])
            nutriscore = str(values[product]["nutriscore"])
            try:

                """insert product"""
                add_product = """INSERT INTO product (name, description, store, url, nutriscore)
                VALUES (%s, %s, %s, %s, %s)"""
                data_product = (
                    name,
                    description,
                    store,
                    url,
                    nutriscore,
                )

                Database.cursor.execute(
                    add_product,
                    data_product,
                )
                Database.cnx.commit()

                """select product.id"""
                get_product_id = "SELECT id FROM product WHERE name = (%s)"
                data_product_name = (name,)

                Database.cursor.execute(
                    get_product_id,
                    data_product_name,
                )

                product_id_tuple = Database.cursor.fetchall()

                """convert product.id 'tuple' in 'integer' """
                product_id_int = []
                for product_id in range(len(product_id_tuple)):
                    product_id_int.append(
                        int("".join(map(str, product_id_tuple[product_id])))
                    )

            except MC.Error as err:
                if err.errno == errorcode.ER_TRUNCATED_WRONG_VALUE_FOR_FIELD:
                    pass

            """add category.name"""
            add_category_name = "INSERT INTO category (name) VALUES (%s)"
            for category_name in range(len(category)):
                try:
                    data_category_name = (category[category_name], )

                    Database.cursor.execute(
                        add_category_name,
                        data_category_name,
                    )
                    Database.cnx.commit()

                    """select category.id"""
                    get_category_id = """SELECT id FROM category
                    WHERE name = (%s)"""
                    data_category_name = (category[category_name], )

                    Database.cursor.execute(
                        get_category_id,
                        data_category_name,
                    )

                    category_id_tuple = Database.cursor.fetchall()

                    """convert category.id 'tuple' in 'integer' """
                    category_id_int = []
                    for category_id in range(len(category_id_tuple)):
                        category_id_int.append(
                            int("".join(map(
                                str, category_id_tuple[category_id])))
                        )

                    """insert product.id at product_id
                    and category.id at category_id"""
                    for product_id in range(len(product_id_int)):
                        try:
                            add_product_id = """INSERT INTO product_category (product_id, category_id)
                            VALUES (%s, %s)"""
                            data_product_id = (
                                product_id_int[product_id],
                                category_id_int[category_id],
                            )

                            Database.cursor.execute(
                                add_product_id,
                                data_product_id,
                            )
                            Database.cnx.commit()

                        except MC.Error as err:
                            if err.errno == errorcode.ER_DUP_ENTRY:
                                pass

                except MC.Error as err:
                    if err.errno == errorcode.ER_DUP_ENTRY:
                        pass
        return print(
            """\nProducts added.\nCategories added.
        \n--Ending Process--"""
        )

    def get_categories_name():
        get_category_name = """SELECT name FROM category
                                ORDER BY RAND(), name ASC LIMIT 10"""

        Database.cursor.execute(
            get_category_name,
        )

        categories_name_saved = Database.cursor.fetchall()

        categories_name = []
        for x in range(len(categories_name_saved)):
            categories_name.append(
                str("".join(map(str, categories_name_saved[x])))
            )
        return categories_name

    '''use the join table'''
    def show_products_category(category_selected):
        get_products_category = f"""SELECT product.name FROM product
                                        JOIN product_category ON
                                        product.id =
                                        product_category.product_id
                                        JOIN category ON
                                        category.id =
                                        product_category.category_id
                                        WHERE category.name =
                                        "{category_selected}"
                                        ORDER BY RAND(),
                                        product.name ASC
                                        LIMIT 10"""

        Database.cursor.execute(
            get_products_category,
        )

        products_category = Database.cursor.fetchall()

        product_name = []
        for x in range(len(products_category)):
            product_name.append(str("".join(map(str, products_category[x]))))
        return product_name

    def show_substitute(category_selected, product_selected):
        get_product_substitute = f"""SELECT * FROM product
                                        JOIN product_category ON
                                        product.id =
                                        product_category.product_id
                                        JOIN category ON
                                        category.id =
                                        product_category.category_id
                                        WHERE category.name =
                                        "{category_selected}"
                                        AND product.nutriscore <
                                        "{Database.get_product_nutriscore(product_selected)}"
                                        ORDER BY product.name ASC"""

        Database.cursor.execute(
            get_product_substitute,
        )

        product_substitute_tuple = Database.cursor.fetchall()

        for substitute in range(len(product_substitute_tuple)):
            product_structure = {
                "name": product_substitute_tuple[substitute][1],
                "description": product_substitute_tuple[substitute][2],
                "store": product_substitute_tuple[substitute][3],
                "url": product_substitute_tuple[substitute][4],
            }
        return product_structure

    def get_product_nutriscore(product_selected):
        get_product_nutriscore = f"""SELECT product.nutriscore
                                    FROM product
                                    WHERE product.name =
                                    "{product_selected}" """

        Database.cursor.execute(
            get_product_nutriscore,
        )

        product_nutriscore_tuple = Database.cursor.fetchall()

        product_nutriscore = []
        for x in range(len(product_nutriscore_tuple)):
            product_nutriscore.append(
                str("".join(map(str, product_nutriscore_tuple[x])))
            )
        return product_nutriscore

    def insert_favorite(substitute):
        add_favorite = """INSERT INTO favorite (name, description, store, url)
        VALUES (%s, %s, %s, %s)"""
        data_favorite = (
            substitute["name"],
            substitute["description"],
            substitute["store"],
            substitute["url"],
        )

        Database.cursor.execute(
            add_favorite,
            data_favorite,
        )
        Database.cnx.commit()
        return print("\nSubstitut enregistré.")

    def show_favorites():
        get_favorite = "SELECT * FROM favorite"

        Database.cursor.execute(
            get_favorite,
        )

        favorite_tuple = Database.cursor.fetchall()

        favorites = []
        for favorite in range(len(favorite_tuple)):
            favorite_structure = {
                "id": favorite_tuple[favorite][0],
                "name": favorite_tuple[favorite][1],
                "description": favorite_tuple[favorite][2],
                "store": favorite_tuple[favorite][3],
                "url": favorite_tuple[favorite][4],
            }
            favorites.append(favorite_structure)
        return favorites

    def script():
        Database.test_database()
        Database.create_table()
        Database.insert_values()


Database.script()
