module Operation 
  module Generate
    class ExportXlsx 
      def initialize file_input
        @file_input = file_input
      end

      def generate
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
