# Be sure to restart your server when you modify this file.

#GolfStats::Application.config.session_store :cookie_store, key: '_golf_stats_session'
GolfStats::Application.config.session_store :active_record_store, :key => '_Application_session'
