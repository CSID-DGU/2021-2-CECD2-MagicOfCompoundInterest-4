from datetime import timedelta
from flask import Flask, request, Response
from flask_sqlalchemy import SQLAlchemy
from connect_db import DATABASE_URI
from io import StringIO

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = DATABASE_URI
app.config['SQLALCHEMY_ECHO'] = True
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
app.secret_key = 'manyrandombyte'

db = SQLAlchemy(app)

from db import *

db.create_all()


@app.route('/', methods=['GET'])
def get_list():
    date = datetime.strptime(request.args.get('datetime'), '%Y-%m-%d')
    tomorrow = date + timedelta(days=1)
    result = Stock.query.filter(Stock.created_at >= date).filter(Stock.created_at < tomorrow).all()
    rows = []

    if len(result) == 0:
        return 'Empty', 404

    output = StringIO()
    output.write(u'\ufeff')
    output.write("날짜, 업종명, 업종분야\n")

    for line in result:
        rows.append([line.created_at, line.stock_name, line.stock_category])

    for row in rows:
        for index, col in enumerate(row):
            output.write(str(col))
            if index < (len(row) - 1):
                output.write(',')
        output.write('\n')
    response = Response(
        output.getvalue(),
        mimetype="text/csv",
        content_type='application/octet-stream'
    )
    filename = '20190506_juga'
    response.headers["Content-Disposition"] = "attachment; filename={}.csv".format(
        filename)
    return response


@app.route('/', methods=['POST'])
def create_stock():
    file = request.files['attachment'].read().decode('EUC-KR')
    lines = file.split('\n')

    for idx in range(1, len(lines) - 1, 2):
        new_stock = Stock(lines[idx].split(',')[1], lines[idx + 1].split(',')[-1].strip())

        db.session.add(new_stock)
    db.session.commit()

    return {'success': True, 'status': 200}, 200


if __name__ == '__main__':
    app.run()
