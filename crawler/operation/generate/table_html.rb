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

      def convert_json_csv
        # Pass 1: Collect headings
        headings = Set.new
        @file_input.each do |hash|
          headings.merge(hash.keys)
        end
        # Pass 2: Fill data into the headings
        CSV.open('./publics/data.csv', "wb") do |csv|
          csv << headings # append headings
          @file_input.each do |hash|
            row = {}
            hash.each do |k,v|
              row[k] = v.to_s.gsub(/\r\n?/, "").delete("\n").delete("\r")
            end
            csv << row.values
          end
        end
      end

      def convert_json_xls
        Axlsx::Package.new do |p|
          p.workbook.add_worksheet(:name => "data") do |sheet| 
            # Pass 1: Collect headings
            headings = Set.new
            @file_input.each do |hash|
              headings.merge(hash.keys)
            end
            sheet.add_row headings.to_a
            # Pass 2: Fill data into the headings
            @file_input.each do |hash|
              row = {}
              hash.each do |k,v|
                row[k] = v.to_s.gsub(/\r\n?/, "").delete("\n").delete("\r")
              end
            sheet.add_row row.values
            end
            
          end
          p.serialize('./publics/data.xlsx', 'w+')
        end
      end
    end
  end
end 
