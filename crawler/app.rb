load_path = Dir["./vendor/bundle/ruby/2.7.0/gems/**/lib"]
$LOAD_PATH.unshift(*load_path)
require 'json'
require 'pry'
require 'erb'
require 'json'
require 'capybara'
require 'capybara/dsl'
require './config/capybara'
require './operation/crawl/helper_crawl'
require './operation/crawl/site_generatedata_crawl'
require './operation/generate/table_html'
require 'sinatra'
require 'csv'
require 'axlsx'

# Crawl data
crawl = Operation::Crawl::SiteGeneratedataCrawl.new
crawl.start do
  # Generate TABLE HTML
  html_saved_at = './publics/user_datatable.html'
  generate = Operation::Generate::TableHtml.new(crawl.file_downloaded, html_saved_at)
  generate.generate
  generate.convert_json_csv
  generate.convert_json_xls
  p "Generate HTML: #{html_saved_at}"
end

get '/' do
  j_file = File.open('./publics/user_datatable.html')
end

get '/csv' do
  send_file "./publics/data.csv" , :filename => 'data.csv'
end

get '/xls' do
  send_file './publics/data.xlsx' , :filename => 'data.xls' 
end
