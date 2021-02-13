from flask import Flask


def create_app():
    return Flask(__name__)


app = create_app()


@app.route('/')
def welcome():
    return 'Welcome to this page!'


if __name__ == '__main__':
    app.run()
