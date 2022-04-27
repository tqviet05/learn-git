require "pry"
# def a str
#     # binding.pry
#     while str == nil || str != str.to_i
#     p 'Nhap lai'
#     str = Integer(gets.chomp) rescue (p "Nhap sai")
    
#     end 
#     str
#     p "#{str}"
# end
class String
    def number?
        # self.to_i == self
        Integer(self) rescue false
    end
end


def check_number 
    str = self
    # binding.pry
    while str == nil || str != str.to_i
    p 'Nhap lai'
    
    str
    p "#{str}"
end
'2'.number?