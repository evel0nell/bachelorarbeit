import re

def calculate_total_consumption(file_name):
    total_consumption = 0

    try:
        with open(file_name, 'r') as file:
            content = file.read()

            # Use regex to find all occurrences of "host" consumption values
            consumption_matches = re.findall(r'"host":\s*{[^}]*"consumption":\s*([0-9.]+)', content)

            # Sum the consumption values
            for match in consumption_matches:
                total_consumption += float(match) / 1000000

        print(f"Total Energy Consumption of All Hosts: {total_consumption}")

    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    calculate_total_consumption('report.json')

