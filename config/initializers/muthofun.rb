if ENV['CLIENT_ID'].present?
  MuthofunApi.configure do |config|
    config.client_id  = ENV['CLIENT_ID']
    config.secret_key = ENV['CLIENT_SECRET']
    config.originator = ENV['01844016400']
  end
end
