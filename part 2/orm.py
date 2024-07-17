import sqlalchemy as sa
from sqlalchemy.orm import Session, declarative_base

engine = sa.create_engine('sqlite:///db.db')
Base = declarative_base()


class Shops(Base):
    __tablename__ = 'comic_book_shops'

    id = sa.Column('id', sa.Integer, primary_key=True)
    name = sa.Column('name', sa.Text, nullable=False)
    address = sa.Column('address', sa.Text)

    def __repr__(self):
        return f'{self.name} {self.address}'
    

class Pablishers(Base):
    __tablename__ = 'publishers'
    
   id = sa.Column('id', sa.Text, primary_key=True)
    title = sa.Column('speciality', sa.Text, nullable=False)
    owner = sa.Column('owner', sa.Text, nullable=False)

    def __repr__(self):
        return self.id
    

Base.metadata.drop_all(engine)
Base.metadata.create_all(engine)

with Session(engine) as session:
    new_publisher = Publisher(title='Samokat', owner='GTL')
    second_publisher = Publisher(title='Muravei', lastname='JFK')
    session.add(new_publisher)
    session.add(second_publisher)
    session.commit()


with Session(engine) as session:
    publishers = session.query(publishers).all()
    print(publishers)

