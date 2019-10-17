# OmniAuth Duke OAuth 2 Strategy

OmniAuth strategy to authenticate with Duke via OAuth 2.

Register your application at: **TODO**  Keep the Client ID and the Client Secret.

For more details, read the **TODO**

## Installation

Add to your `Gemfile`:

```ruby
gem "omniauth-duke-oauth2"
```

Then `bundle install`.

Add an entry to your initializer file for OmniAuth:
```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :gthc_oauth2, "YOUR CLIENT ID", "YOUR CLIENT SECRET"
end
```

## TODO
* Ability to customize scope
* Get more user information through /identity API or Streamer API

## Usage

Redirect user to `/auth/gthc_oauth2/` to start the authentication process.