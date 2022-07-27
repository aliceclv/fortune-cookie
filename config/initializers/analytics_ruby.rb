require 'june/analytics'

Analytics = June::Analytics.new({ write_key: Rails.application.credentials[:june_analytics_write_key] })
