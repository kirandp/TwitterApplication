require 'twitter'

twitter_config = YAML.load(File.read(Rails.root.join('config', 'twitter.yml')))[Rails.env]

Twitter.configure do |config|
  config.consumer_key = "CzEg8H7XgTpUYPILwdmbHg"
  config.consumer_secret = "i5HHVKCQuoXE2WcLozFDuWInYGwrafIPpA2LTuH1TF8"
  config.oauth_token = twitter_config['oauth_token']
  config.oauth_token_secret = twitter_config['oauth_token_secret']
end