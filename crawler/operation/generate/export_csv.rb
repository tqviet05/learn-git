module Operation 
  module Generate
    class ExportCsv 
      def initialize file_input
        @file_input = file_input
      end
    
      def generate
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
    end
  end
end 
