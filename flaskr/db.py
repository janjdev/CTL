import os
import psycopg2
import psycopg2.extras
import click
from flask import current_app, g

# Connect to an existing database
def get_db():
  if 'db' not in g:
    g.db = psycopg2.connect(
    host="localhost",
    database="ctl_db",
    user="postgres",
    password="postgres"
    )
    g.db_row_factory = psycopg2.extras.RealDictCursor
  return g.db

# Close database connection if it exists
def close_db(e=None):
  db = g.pop('db', None)
  if db is not None:
    db.close()

def init_db():
  db = get_db()
  cur = db.cursor()
  with db:
    with open(os.path.join(os.path.dirname(__file__), 'schema.sql'), 'r') as f:
      cur.execute(f.read())

@click.command('init-db')
def init_db_command():
  """Clear the existing data and create new tables."""
  init_db()
  click.echo('Initialized the database.')


def init_app(app):
  app.teardown_appcontext(close_db)
  app.cli.add_command(init_db_command)
  