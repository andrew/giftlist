# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gifts_session',
  :secret      => '765cf4b4b3aa6b77512927c477547168ed40f033781066413aa989531fc4704784a32ba041facc32acf7dae7b2c6de8b61b7b120ef11bbfc81af1f558dfaae2f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
