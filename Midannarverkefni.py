from bottle import *
import os

import urllib.request, json

with urllib.request.urlopen("http://apis.is/petrol") as url:
    data = json.loads(url.read().decode())


@route('/Myndir/<filename>')
def server_static(filename):
    return static_file(filename, root="./Myndir")


@route("/")
def index():
    return template("skra.tpl",data=data)

@route("/company/<name>")
def company(name):
    return template("company.tpl",data=data,name=name)

@error(404)
def error404(error):
    return 'Þetta er 404 villa'


run(host="0.0.0.0", port=os.environ.get("PORT"))
