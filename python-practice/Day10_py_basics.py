# Mini phone book project to learn about using dictionaries.

# creating phonebook dictionary
phonebook = {}


def add_update_contact(name, contact_number):
    if name not in phonebook:
        phonebook[name] = {}

    phonebook[name] = contact_number


def view_phonebook_contact(name):
    if name in phonebook:
        print(f"{name} : {phonebook[name]}")
    else:
        print("Contact not found")


def delete_contact(name):
    if name in phonebook:
        phonebook.pop(name)
    else:
        print("Contact not found")


add_update_contact("Dalglish", "0814460701")
