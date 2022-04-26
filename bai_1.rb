    def bai_1
      numbers = []
      printf 'Số lượng number cần nhập: '
      index = gets.chomp.to_i
      for i in 1..index 
      printf "Số number thứ #{i} trong khoan [10-100]"
      number = gets.chomp.to_i
      while number > 100 || number < 10
        puts "Nhập sai, yeu cau nhap lai"
        number = gets.chomp.to_i
      end
      numbers.push(number) 
      end
      p "Số phan tu : #{numbers}"
      div5=numbers.select{|e| e%5 == 0}.length 
      p "Số chia hết cho  5 : #{div5}"   
      div3=numbers.select{|e| e%3 == 0}.length 
      p "Số chia hết cho 3 : #{div3}"  
    end
    bai_1