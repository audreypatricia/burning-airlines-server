# where we define waht the cookies will be defined like

Rails.application.config.session_store :cookie_store, key: "_authentication_app", domain: "http://localhost:3000"
