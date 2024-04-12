import json

# Load JSON data from file
with open("pokemon.json", "r") as file:
    json_data = file.read()

data = json.loads(json_data)

# Extract owner addresses
owner_addresses = [pokemon["owner"]["address"] for pokemon in data["pokemon"]]

# Write addresses to text file with comma at the end of each address
with open("owner_addresses.txt", "w") as txtfile:
    for address in owner_addresses:
        txtfile.write(address + ",\n")

print("Owner addresses have been saved to owner_addresses.txt")
