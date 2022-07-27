require 'june/analytics'

june_analytics_key = Rails.application.credentials[:june_analytics_write_key]

if june_analytics_key.present?
  Analytics = June::Analytics.new({ write_key: june_analytics_key })
end
