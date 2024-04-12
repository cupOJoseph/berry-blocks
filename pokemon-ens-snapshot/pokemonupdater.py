import requests
import concurrent.futures

def refresh_pokemon_data(number):
    url = f"https://www.pokemonens.xyz/api/pokemon/{number}/refresh"
    response = requests.get(url)
    if response.status_code == 200:
        print(f"Refreshed data for Pokemon {number}")
    else:
        print(f"Failed to refresh data for Pokemon {number}")

def main():
    with concurrent.futures.ThreadPoolExecutor() as executor:
        executor.map(refresh_pokemon_data, range(70, 1026))

if __name__ == "__main__":
    main()