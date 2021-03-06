"""add user's picture column

Revision ID: 05ad71511e69
Revises: 233889b9c607
Create Date: 2017-01-11 09:52:30.515277

"""
from alembic import op
import sqlalchemy as sa

# revision identifiers, used by Alembic.
revision = '05ad71511e69'
down_revision = '233889b9c607'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.add_column('user', sa.Column('picture', sa.String(length=50), nullable=True))
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_column('user', 'picture')
    # ### end Alembic commands ###
