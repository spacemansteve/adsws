"""${message}

Revision ID: ${up_revision}
Revises: ${down_revision}
Create Date: ${create_date}

"""

# revision identifiers, used by Alembic.
revision = ${repr(up_revision)}
down_revision = ${repr(down_revision)}

from alembic import op
import sqlalchemy as sa

from adsws.factory import create_app
from adsws.core import db 

app = create_app('upgrade',
                 EXTENSIONS = ['adsws.ext.sqlalchemy',
                               'adsws.ext.security'])
                               
${imports if imports else ""}

def upgrade():
    #with app.app_context() as c:
    #   db.session.add(Model())
    #   db.session.commit()
        
    ${upgrades if upgrades else "pass"}


def downgrade():
    ${downgrades if downgrades else "pass"}
