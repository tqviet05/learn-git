require 'capybara/dsl'
module Operation
  module Crawl
    class SiteGeneratedataCrawl
      include Capybara::DSL
      def start
        # clear initale chromedriver 
        Dir.foreach(SetupCapybara::DOWNLOAD_PATH ) {|f| File.delete("#{SetupCapybara::DOWNLOAD_PATH}/#{f}") if f != '.' && f != '..'}
        # download file json
        download_data
        yield
        
      end

      def download_data
        dataType = ['Name','Phone','Email','Region','Country','Word']
        typeExport = "JSON"
        visit("https://generatedata.com/")
        # accept cookies
        find(:xpath,'//*[@id="root"]/div/div/div[3]/span[2]/button/span').click(delay: 0.3)
        # select data type and type export   
        dataType.each{ |x| find('.Homepage__dataTypeGrid--1qR div', text:x).click(delay: 0.3) }
        find('.Homepage__exportTypeGrid--3cH div',text: typeExport).click(delay: 0.3)
        find('.Homepage__button--xs_',text: 'Generate!').click(delay: 0.3)
        sleep 1 
        #  setting download
        find(:xpath,'//*[@id="root"]/div/footer/div/div[2]/button[2]').click(delay: 0.3)
        find(:xpath,'/html/body/div[5]/div[3]/div/div/div[3]/button[2]/span').click(delay: 0.3)
        find(:xpath,'/html/body/div[5]/div[3]/div/div/div[3]/button/span').click(delay: 0.3)
        sleep 1 
      end

      def file_downloaded
        # rename_file json
        Dir.foreach(SetupCapybara::DOWNLOAD_PATH ) do
          |f| File.rename("#{SetupCapybara::DOWNLOAD_PATH}/#{f}", "#{SetupCapybara::DOWNLOAD_PATH}/data.json") if f != '.' && f != '..'
        end
        j_file = File.read("#{SetupCapybara::DOWNLOAD_PATH}/data.json")
        return data_hash = JSON.parse(j_file)
        # p data_hash[0]

      end 

    end 
  end
end