# coding: utf-8
require 'digest/sha1'

module Ochiba::Auth
  #
  # 認証を行う
  #
  def self.authenticate(username, password)
    auth_settings = get_auth_settings
    login_password = get_password_hash(password)

    return false unless username == auth_settings[:username]
    return false unless login_password == auth_settings[:password]

    true
  end

  #
  # ハッシュ化されたパスワードを取得
  #
  def self.get_password_hash(password)
    auth_settings = get_auth_settings
    salt = auth_settings[:salt]

    Digest::SHA1.hexdigest(password + salt)
  end

  #
  # 認証情報を取得
  #
  # ENV に設定がある場合は ENV を優先し、
  # 設定が無い場合は設定ファイルから取得する
  #
  def self.get_auth_settings
    settings = {}

    if ENV['OCHIBA_USERNAME'].present?
      settings[:salt] = ENV['OCHIBA_SALT']
      settings[:username] = ENV['OCHIBA_USERNAME']
      settings[:password] = ENV['OCHIBA_PASSWORD']
    else
      config_path = File.join(Rails.root, 'config', 'auth.yml')
      config = YAML.load(File.open(config_path))

      settings[:salt] = config['salt']
      settings[:username] = config['username']
      settings[:password] = config['password']
    end

    settings
  end
end
