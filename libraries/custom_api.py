import requests

class CustomAPI:
    def get_status(self, url):
        response = requests.get(url)
        return response.status_code
