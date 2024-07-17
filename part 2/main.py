import sqlalchemy as sa

engine = sa.create_engine('sqlite:///db.db')

meta = sa.MetaData()

lecturers = sa.Table(
    'books',
    meta,
    sa.Column('book_id', sa.Serial, primary_key=True),
    sa.Column('shop_id', sa.Serial, nullable=False),
    sa.Column('publisihed_in', sa.Text, nullable=False),
    sa.Column('title', sa.Text, nullable=False)  
    sa.Column('author', sa.Text, nullable=False)   
)

meta.drop_all(engine)
meta.create_all(engine)

with engine.connect() as connection:
    query = sa.insert(books).values(book_id='321', 
                                        shopp_id='2', 
                                        publshed_in='MIF',
                                        title='killjoys',
                                        author='gerard way')
    connection.execute(query)

    select = sa.select()
    print(connection.execute(select).all())

    another_query = sa.delete(books).where(bookd.c.id == 1)
    connection.execute(another_query)

    print(connection.execute(select).all())

    connection.commit()



