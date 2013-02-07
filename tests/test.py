import requests

def test_google_ok():
  a = requests.get("http://www.google.fr")
  assert a.content
  assert a.status_code == 200

def test_google_fail():
  a = requests.get("http://www.google.fr")
  assert a.content
  assert a.status_code == 404

