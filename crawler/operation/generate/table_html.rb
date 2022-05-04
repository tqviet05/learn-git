module Operation 
  module Generate
    class TableHtml 
      def initialize (file_input , saved_at= "./publics/user_datatable.html")
        @file_input = file_input
        @saved_at = saved_at
      end
    
      def generate
        erb_file = './templates/table.html.erb'
        erb_str = File.read(erb_file)
        renderer = ERB.new(erb_str)
        result = renderer.result(binding)
        # create file html 
        File.open(@saved_at, 'w') {|f| f.write(result)}
      end
    end
  end
end 
