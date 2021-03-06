"""create table Question

Revision ID: 90b085e26ad5
Revises: 1df5c15ee948
Create Date: 2017-01-10 06:38:06.477286

"""
from alembic import op
import sqlalchemy as sa

# revision identifiers, used by Alembic.
revision = '90b085e26ad5'
down_revision = '1df5c15ee948'
branch_labels = None
depends_on = None


def upgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.create_table('questions',
                    sa.Column('id', sa.Integer(), nullable=False),
                    sa.Column('content', sa.Text(length=100), nullable=True),
                    sa.Column('recipe_id', sa.Integer(), nullable=True),
                    sa.Column('author', sa.String(length=30), nullable=True),
                    sa.Column('create_time', sa.String(length=20), nullable=True),
                    sa.PrimaryKeyConstraint('id')
                    )
    # ### end Alembic commands ###


def downgrade():
    # ### commands auto generated by Alembic - please adjust! ###
    op.drop_table('questions')
    # ### end Alembic commands ###
