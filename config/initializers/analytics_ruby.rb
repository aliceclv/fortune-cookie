require 'segment/analytics'

segment_analytics_key = Rails.application.credentials[:segment_analytics_write_key]

if segment_analytics_key.present?
  Analytics = Segment::Analytics.new({ write_key: segment_analytics_key })
end
