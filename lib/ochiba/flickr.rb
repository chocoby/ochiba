# coding: utf-8
module Ochiba::Flickr
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
      config = YAML.load(File.open(config_path))

      settings[:key] = config['key']
      settings[:secret] = config['secret']
    end

    settings
  end
end
