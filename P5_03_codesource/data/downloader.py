import requests
from tqdm import tqdm


class Downloader:

    def get_products():
        data_products = []

        for i in tqdm(range(10)):
            payload = {
                "action": "process",
                "tagtype_0": "products",
                "tag_contains_0": "contains",
                "page_size": "100",
                "page": i + 1,
                "json": "true",
            }
            reponse_products = requests.get(
                "https://fr.openfoodfacts.org/cgi/search.pl", params=payload
            )
            data_json = reponse_products.json()

            data_products.extend(data_json.get("products"))

        """save values from products in some lists"""
        products_names = [
            x.get("product_name_fr", "None") for x in data_products
        ]
        products_categories = [
            x.get("categories", "None") for x in data_products
        ]
        products_descriptions = [
            x.get("ingredients_text_fr", "None") for x in data_products
        ]
        products_stores = [x.get("stores", "None") for x in data_products]
        products_urls = [x.get("url", "None") for x in data_products]
        products_nutriscores = [
            x.get("nutriscore_grade", "None") for x in data_products
        ]

        """append some values in a list from the products structure"""
        products = []
        for x in range(len(data_products)):
            products_structure = {
                "name": products_names[x].lower(),
                "category": [
                    element.strip()
                    for element in products_categories[x].lower().split(",")
                ],
                "description": products_descriptions[x].lower(),
                "store": [
                    element.strip()
                    for element in products_stores[x].lower().split(",")
                ],
                "url": products_urls[x].lower(),
                "nutriscore": products_nutriscores[x].lower(),
            }
            products.append(products_structure)
        return products
