# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Although this is not needed for an api-only application, rails4 
# requires secret_key_base or secret_token to be defined, otherwise an 
# error is raised.
# Using secret_token for rails3 compatibility. Change to secret_key_base
# to avoid deprecation warning.
# Can be safely removed in a rails3 api-only application.
SandiegojsVanillaWorkshop::Application.config.secret_token = 'cf321b517e0e3c09b5c8c0d2e2d63b8bcad13014c681fa34ec947e107ee8cc7aff2b3488c982eafcc2b1803f54f1ba70a1b31850d5bd6750b729d96ba6f13651'
