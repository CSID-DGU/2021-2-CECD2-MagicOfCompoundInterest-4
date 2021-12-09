from datetime import timedelta
from flask import Flask, request, Response
from flask_sqlalchemy import SQLAlchemy
from connect_db import DATABASE_URI
from io import StringIO

application = Flask(__name__)

application.config['SQLALCHEMY_DATABASE_URI'] = DATABASE_URI
application.config['SQLALCHEMY_ECHO'] = True
application.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = True
application.secret_key = 'manyrandombyte'

db = SQLAlchemy(application)

from db import *

db.create_all()


@application.route('/', methods=['GET'])
def get_list():
    date = datetime.strptime(request.args.get('datetime'), '%Y-%m-%d')
    yesterday = date - timedelta(days=1)
    result = Stock.query.filter(Stock.date == yesterday).all()
    rows = []

    if len(result) == 0:
        return 'Empty', 404

    output = StringIO()
    output.write(u'\ufeff')
    output.write("날짜, 업종명, 업종분야\n")

    for line in result:
        rows.append([line.date, line.stock_name, line.stock_category])

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
    filename = yesterday.strftime('%Y-%m-%d.csv')
    response.headers["Content-Disposition"] = "attachment; filename={}.csv".format(
        filename)
    return response


@application.route('/', methods=['POST'])
def create_stock():
    file = request.files['attachment'].read().decode('EUC-KR')
    print(request.files['attachment'].filename)
    lines = file.split('\n')

    for idx in range(1, len(lines) - 1, 2):
        new_stock = Stock(lines[idx].split(',')[1], lines[idx + 1].split(',')[-1].strip(),
                          request.files['attachment'].filename.split('.')[0])

        db.session.add(new_stock)
    db.session.commit()

    return {'success': True, 'status': 200}, 200


if __name__ == '__main__':
    application.run()
