import json


def process():
    file_path = 'files/'
    file_name = 'sample.json'

    with open(file_path + file_name) as data:
        try:
            lines = json.load(data)
            print(f'Reading {len(lines)} lines from Sample json file')
        except Exception as e:
            print(e)
        finally:
            data.close()
        return lines
