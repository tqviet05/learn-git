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
require './operation/generate/export_csv'
require './operation/generate/export_xlsx'
require 'sinatra'
require 'csv'
require 'axlsx'

# Crawl data
crawl = Operation::Crawl::SiteGeneratedataCrawl.new
crawl.start do
  # Generate TABLE HTML
  data_input = crawl.file_downloaded
  html_saved_at = './publics/user_datatable.html'
  Operation::Generate::TableHtml.new(data_input, html_saved_at).generate
  Operation::Generate::ExportXlsx.new(data_input).generate
  Operation::Generate::ExportCsv.new(data_input).generate
  p "Generate HTML: #{html_saved_at}"
end

get '/' do
  j_file = File.open('./publics/user_datatable.html')
end

get '/csv' do
  send_file "./publics/data.csv" , filename: 'data.csv'
end

get '/xls' do
  send_file './publics/data.xlsx' , filename: 'data.xls' 
end
