CarrierWave.configure do |config|
  
 # if Rails.env.development? || Rails.env.test?
 
  
  #  config.storage = :file
 
#  else
    config.storage = :fog
    config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => 'AKIAJF54D34GBIX3S2JQ',                        # required
                     
      :aws_secret_access_key  => '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',                          # required
      #:region                 => 'eu-west-1',                  # optional, defaults to 'us-east-1'
      #:host                   => 's3.example.com',             # optional, defaults to nil
      #:endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
    }
    config.fog_directory  = 'Restaurant_app'                   # required
    config.fog_public     = false                                   # optional, defaults to true
    config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
 # end
end