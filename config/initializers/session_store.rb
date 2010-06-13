# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_btong_website_session',
  :secret      => 'dc11db1335b54962cb4196bfe0da7bf6a36fb8379df6502c355d97bf896ec68c141f1a4e2d6992b5b747a5a8f13d241803706887f54439c5902f04879fb97237'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
