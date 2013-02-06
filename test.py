import requests

def test_google():
  a = requests.get("http://www.google.fr")
  assert a.content
  assert a.status_code == 200
