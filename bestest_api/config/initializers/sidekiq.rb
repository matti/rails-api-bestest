app_name = File.basename(Rails.root.to_s)
namespace = "#{app_name}_#{Rails.env}"

Sidekiq.configure_server do |config|
  config.redis = { namespace: namespace }
end

Sidekiq.configure_client do |config|
  config.redis = { namespace: namespace }
end

puts "🍺 🍺 🍺  SIDEKIQ using namespace: #{namespace}"
