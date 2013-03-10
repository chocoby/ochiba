require 'ochiba/flickr'
settings = Ochiba::Flickr.get_settings
FlickRaw.api_key = settings[:key]
FlickRaw.shared_secret = settings[:secret]
