require 'capybara/dsl'
module Operation
  module Crawl
    class SiteGeneratedataCrawl
      include Capybara::DSL
      def start
        # binding.pry
        visit("https://generatedata.com/")
        sleep 5 
      end
    end 
  end
end
