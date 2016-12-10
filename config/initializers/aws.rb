CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAI7RZY35GIHFYIOEQ',
    aws_secret_access_key: '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',
    region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
    endpoint:              'https://s3.ap-northeast-2.amazonaws.com'
  }
  config.fog_directory  = 'likelion954'                          # required
end
