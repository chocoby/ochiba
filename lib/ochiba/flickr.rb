require 'ochiba/flickr/exif'

module Ochiba
  class Flickr
    def initialize(*params)
      params = params.extract_options!
      @photo_id = params[:photo_id]

      info
    end

    #
    # 基本情報(getInfo)
    #
    def info
      @info ||= flickr.photos.getInfo(photo_id: @photo_id)
    end

    #
    # EXIF(getExif)
    #
    def exif
      unless @exif
        exif = flickr.photos.getExif(photo_id: @info.id)
        @exif = Ochiba::Flickr::Exif.new(exif.exif)
      end

      @exif
    end

    #
    # API KEY を取得
    #
    # ENV に設定がある場合は ENV を優先し、
    # 設定が無い場合は設定ファイルから取得する
    #
    def self.get_settings
      settings = {}

      if ENV['OCHIBA_FLICKR_KEY'].present?
        settings[:key] = ENV['OCHIBA_FLICKR_KEY']
        settings[:secret] = ENV['OCHIBA_FLICKR_SECRET']
      else
        config_path = File.join(Rails.root, 'config', 'flickr.yml')

        if File.exists?(config_path)
          config = YAML.load(File.open(config_path))

          settings[:key] = config['key']
          settings[:secret] = config['secret']
        end
      end

      settings
    end
  end
end
