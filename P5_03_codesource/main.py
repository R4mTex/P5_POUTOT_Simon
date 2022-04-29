from model.database import Database


class Interface:

    def terminal():

        '''create the main loop'''
        endding = False
        while endding is False:
            try:

                '''show the main menu'''
                print(
                    "\n- Bonjour, veuillez selectionner un choix."
                    + "\n1 - Quel aliment souhaitez-vous remplacer ?"
                    + "\n2 - Retrouver mes aliments substitués."
                    + "\n0 - Quitter.\n"
                )
                anser = int(input("- Rentrez votre réponse ici : "))
                print("")
                if anser == 1:

                    '''create the categories loop'''
                    categories = Database.get_categories_name()
                    show_categories = True
                    while show_categories is True:
                        category = 0
                        index = 1
                        category_index = []
                        category_name = []
                        try:

                            '''show the category menu'''
                            for category in range(len(categories)):
                                print(index, ":", categories[category])
                                category_index.append(index)
                                category_name.append(categories[category])
                                index += 1
                            print("\n0 : Retour au menu")
                            category_index.append(0)
                            category_selected = int(
                                input(
                                    "\n- Sélectionnez une catégorie "
                                    + "à l'aide de son indice "
                                    + "ou retournez au menu : "
                                )
                            )
                            if category_selected not in category_index:
                                print(
                                    "\nLe choix n'est pas dans la liste. "
                                    + "Veuillez réessayer.\n"
                                )
                                continue
                            elif category_selected == 0:
                                break
                            else:
                                print(
                                    "\nCatégorie sélectionnée :",
                                    category_name[category_selected - 1],
                                    "\n"
                                )
                                category_selected = str(
                                    category_name[category_selected - 1]
                                )
                        except ValueError:
                            print("\nSaisie incorrecte. Veuillez réessayer.\n")
                            continue

                        '''create the products loop'''
                        products = Database.show_products_category(
                                    category_selected
                                )
                        show_products = True
                        while show_products is True:
                            index = 1
                            product_index = []
                            product_name = []
                            try:

                                '''show the product menu'''
                                for product in range(len(products)):
                                    print(index, ":", products[product])
                                    product_index.append(index)
                                    product_name.append(products[product])
                                    index += 1
                                print("\n0 : Retour au menu")
                                print("11 : Retour en arrière")
                                product_index.append(0)
                                product_index.append(11)
                                product_selected = int(
                                    input(
                                        "\n- Sélectionnez un produit "
                                        + "à l'aide de son indice, "
                                        + "retournez en arrière "
                                        + "ou retournez au menu : "
                                    )
                                )
                                if product_selected not in product_index:
                                    print(
                                        "\nLe choix n'est pas dans la liste. "
                                        + "Veuillez réessayer.\n"
                                    )
                                    continue
                                elif product_selected == 0:
                                    show_categories = False
                                    break
                                elif product_selected == 11:
                                    print("")
                                    break
                                else:
                                    print(
                                        "\nProduit sélectionné :",
                                        product_name[product_selected - 1],
                                        "\n"
                                    )
                                    product_selected = str(
                                        product_name[product_selected - 1]
                                    )

                                    '''show the substitute'''
                                    substitute = Database.show_substitute(
                                        category_selected, product_selected
                                    )
                                    print(
                                        "- Voici un substitut "
                                        + "avec un meilleur nutriscore :\n"
                                    )
                                    print(
                                        "|Son nom : "
                                        + substitute["name"]
                                        + "\n|Sa description : "
                                        + substitute["description"]
                                        + "\n|Les magasins où l'acheter : "
                                        + substitute["store"]
                                        + "\n|Son lien vers internet : "
                                        + substitute["url"]
                                    )

                                    '''create the register loop'''
                                    register = True
                                    while register is True:
                                        anser = str(
                                            input(
                                                "\nVoulez-vous "
                                                + "l'enregistrer ? "
                                                + "oui/non : "
                                            )
                                        )
                                        if anser == "oui":
                                            Database.insert_favorite(
                                                substitute
                                                )
                                            show_products = False
                                            show_categories = False
                                            break
                                        elif anser == "non":
                                            print(
                                                "\nSubstitut non-enregistré."
                                                )
                                            show_products = False
                                            show_categories = False
                                            break
                                        else:
                                            print("\nSaisie incorrecte.")
                                            continue
                            except ValueError:
                                print(
                                    "\nSaisie incorrecte. "
                                    + "Veuillez réessayer.\n"
                                    )
                                continue
                elif anser == 2:

                    '''show saved favorites'''
                    favorites = Database.show_favorites()
                    for favorite in range(len(favorites)):
                        print(
                            favorites[favorite]["id"],
                            "- Aliment substitué."
                            )
                        print(
                            "|Son nom : "
                            + favorites[favorite]["name"]
                            + "\n|Sa description : "
                            + favorites[favorite]["description"]
                            + "\n|Les magasins où l'acheter : "
                            + favorites[favorite]["store"]
                            + "\n|Son lien vers internet : "
                            + favorites[favorite]["url"]
                            + "\n"
                        )
                    continue
                elif anser == 0:
                    break
                elif anser < 0 or anser >= 3:
                    print("Le choix n'est pas dans la liste.")
                    continue
            except ValueError:
                print("\nSaisie incorrecte.")
                continue


Interface.terminal()


Database.cursor.close()
Database.cnx.close()
