import os

# This the Flask config file.

# The `SECRET_KEY` is a random string that is used to encrypt session data.
SECRET_KEY = b'1\x19\xca0\\\xe7\x84X\xb3\x03d/tR\x14\x88'

# `SESSION_TYPE` must be set to `filesystem` to allow the use of Flask-Session
SESSION_TYPE = "filesystem"

# The host name of the database server.
HOST = "localhost"

# The database name.
DATABASE = "ctl_db"

# The database user.
USER = "postgres"

# The password for the database user.
PASSWORD = "postgres"

# The `SQLALCHEMY_DATABASE_URI` tells SQLAlchemy where to locate our database file.
#SQLALCHEMY_DATABASE_URI = 'sqlite:///db.sqlite3'
SQLALCHEMY_DATABASE_URI = 'postgresql://postgres:postgres@localhost:5432/ctl_db'

# The `SQLALCHEMY_ECHO` setting will echo all SQL commands to the terminal that are
# issued by the application.
SQLALCHEMY_ECHO = True

# The `DEBUG` setting will display detailed errors in the browser if set to `True`.
DEBUG = True

# The `SQLALCHEMY_TRACK_MODIFICATIONS` setting will notify the terminal of changes
# made to the database.
SQLALCHEMY_TRACK_MODIFICATIONS = False

# The `TEMPLATES_AUTO_RELOAD` setting will automatically reload templates when they
# are changed.
TEMPLATES_AUTO_RELOAD = True

# The `UPLOAD_FOLDER` setting specifies the path where files uploaded via the
# application will be stored. The `os.path.join` function is used to safely
# concatenate two paths together.
UPLOAD_FOLDER = os.path.join(os.getcwd(), 'flask_app', 'static', 'uploads')

# The `MAX_CONTENT_LENGTH` setting specifies the maximum file size (in bytes) that
# will be accepted by the application.
MAX_CONTENT_LENGTH = 16 * 1024 * 1024

# The `ALLOWED_EXTENSIONS` setting specifies the file extensions that are allowed
# to be uploaded by the application.
ALLOWED_EXTENSIONS = set(['png', 'jpg', 'jpeg', 'gif'])

# The `MAIL_SERVER` setting specifies the host name of the email server.
MAIL_SERVER = 'smtp.gmail.com'

# The `MAIL_PORT` setting specifies the port number of the email server.
MAIL_PORT = 465

# The `MAIL_USE_SSL` setting specifies whether or not SSL encryption should be
# used when sending email.
MAIL_USE_SSL = True

# The `MAIL_USERNAME` setting specifies the username of the email account.
MAIL_USERNAME = ''

# The `MAIL_PASSWORD` setting specifies the password of the email account.
MAIL_PASSWORD = ''

# The `MAIL_DEFAULT_SENDER` setting specifies the email address of the sender.
MAIL_DEFAULT_SENDER = ''

# The `MAIL_SUPPRESS_SEND` setting specifies whether or not email should be sent
# when the application is in debug mode.
MAIL_SUPPRESS_SEND = False

# The `MAIL_DEBUG` setting specifies whether or not debug output should be sent
# to the terminal.
MAIL_DEBUG = False

# The `MAIL_MAX_EMAILS` setting specifies the maximum number of emails to send
# in a single connection.
MAIL_MAX_EMAILS = None

# The `MAIL_ASCII_ATTACHMENTS` setting specifies whether or not non-ASCII
# attachments should be converted to ASCII.
MAIL_ASCII_ATTACHMENTS = False

# The `RECAPTCHA_PUBLIC_KEY` setting specifies the public key for reCAPTCHA.
RECAPTCHA_PUBLIC_KEY = ''

# The `RECAPTCHA_PRIVATE_KEY` setting specifies the private key for reCAPTCHA.
RECAPTCHA_PRIVATE_KEY = ''

# The `RECAPTCHA_OPTIONS` setting specifies the options for reCAPTCHA.
RECAPTCHA_OPTIONS = {'theme': 'white'}

# The `RECAPTCHA_PARAMETERS` setting specifies the parameters for reCAPTCHA.
RECAPTCHA_PARAMETERS = {'hl': 'en'}

# The `RECAPTCHA_DATA_ATTRS` setting specifies the data attributes for reCAPTCHA.
RECAPTCHA_DATA_ATTRS = {'theme': 'light'}

# The `RECAPTCHA_ENABLED` setting specifies whether or not reCAPTCHA should be
# enabled.
RECAPTCHA_ENABLED = True

# The `RECAPTCHA_SITE_KEY` setting specifies the site key for reCAPTCHA.
RECAPTCHA_SITE_KEY = ''

# The `RECAPTCHA_TYPE` setting specifies the type of reCAPTCHA.
RECAPTCHA_TYPE = 'image'

# The `RECAPTCHA_SIZE` setting specifies the size of reCAPTCHA.
RECAPTCHA_SIZE = 'normal'

# The `RECAPTCHA_THEME` setting specifies the theme of reCAPTCHA.
RECAPTCHA_THEME = 'light'

# The `RECAPTCHA_RTABINDEX` setting specifies the tabindex of reCAPTCHA.
RECAPTCHA_RTABINDEX = 0

# The `RECAPTCHA_V3_SITE_KEY` setting specifies the site key for reCAPTCHA v3.
RECAPTCHA_V3_SITE_KEY = ''

