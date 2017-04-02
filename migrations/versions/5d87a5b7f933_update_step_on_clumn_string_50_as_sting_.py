"""update step on clumn string(50) as sting(100)

Revision ID: 5d87a5b7f933
Revises: 2eb70c8d9b63
Create Date: 2017-01-10 00:53:30.578777

"""
from alembic import op
import sqlalchemy as sa
from sqlalchemy.dialects import mysql

# revision identifiers, used by Alembic.
revision = '5d87a5b7f933'
down_revision = '2eb70c8d9b63'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('steps', 'pictures')
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('steps', sa.Column('pictures', mysql.VARCHAR(length=50), nullable=True))
    # ### end Alembic commands ###
