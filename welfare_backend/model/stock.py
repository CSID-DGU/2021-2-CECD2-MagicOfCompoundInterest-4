from sqlalchemy import DateTime
from sqlalchemy.sql import func
import datetime

from app import Base


class Welfare(Base.Model):
    __table_name__ = 'stock'
    __tale_args__ = {'mysql_collate': 'utf8_general_ci'}

    id = Base.Column(Base.Integer, primary_key=True, autoincrement=True)
    stock_name = Base.Column(Base.String(100), nullable=False)
    stock_category = Base.Column(Base.String(100), nullable=False)
    created_at = Base.Column(Base.DateTime, nullable=False)

    def __init__(self, stock_name, stock_category):
        self.stock_name = stock_name
        self.stock_category = stock_category
        self.created_at = datetime.datetime.now

    def as_dict(self):
        return {x.name: getattr(self, x.name) for x in self.__table__.columns}
