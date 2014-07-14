require 'bundler'
Bundler.require

require 'sinatra/asset_pipeline'

class SinatraAssetPipeline < Sinatra::Base
  set :views,         File.dirname(__FILE__) + '/app/views'
  set :public_folder, File.dirname(__FILE__) + '/public'
  set :app_root,      File.expand_path(File.dirname(__FILE__))

  APP_ROOT = settings.app_root

  # set :assets_host, "whatever.cloudfront.net" # replace this with a live CDN address for production
  set :assets_protocol, :http
  set :assets_css_compressor, :sass
  set :assets_js_compressor, :uglify

  register Sinatra::AssetPipeline

  get "/" do
    erb :index
  end
end