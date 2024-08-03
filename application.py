from flask import Flask

from flask import render_template

app = Flask(__name__)

@app.route("/")
def imroot():
  content = {"title":"Main File", "content":"Hallo !"}
  return render_template("index.html", content=content)

@app.route("/tentang")
def imtent():
  content = {"title":"Main File", "content":"Hallo ! Tentang !"}
  return render_template("tentang.html", content=content)

if __name__ == "__main__":
  app.run()