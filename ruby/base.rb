require "pry"
class Bt
    @@numbers = []
    def bai_1
      printf 'Số lượng number cần nhập: '
      index = gets.chomp.to_i
      for i in 1..index 
      printf "Số number thứ #{i} trong khoan [10-100]"
      number = gets.chomp.to_i
      while number > 100 || number < 10
        puts "Nhập sai, yeu cau nhap lai"
        number = gets.chomp.to_i
      end
      @@numbers.push(number) 
      end
      p "Số phan tu : #{@@numbers}"
      div5=@@numbers.select{|e| e%5 == 0}.length 
      p "Số chia hết cho  5 : #{div5}"   
      div3=@@numbers.select{|e| e%3 == 0}.length 
      p "Số chia hết cho 3 : #{div3}"  
    end

    def bai_2
      printf "Chiều dài hình chữ nhập "
      a = gets.chomp
      printf "Chiều rộng hình chữ nhập "
      b = gets.chomp

      while a.to_i.to_s != a  || b.to_i.to_s != b
        puts "******"
        puts "Nhập sai, yeu cau nhap lai"
        printf "Chiều dài hình chữ nhập "
        a = gets.chomp
        printf "Chiều rộng hình chữ nhập "
        b = gets.chomp
      end
      area= a.to_i*b.to_i
      peri= (a.to_i+b.to_i)*2 
      puts "Chu vi hình chữ nhật #{peri}"
      puts "Diện tích hình chữ nhật #{area}"
           
    end

    def bai_3
      printf 'Nhập vào số tự nhiên '
      # n= gets.chomp.to_i
      n = gets.chomp
      a = n.each_char.map(&:to_i).reverse
      # a = b.reverse
      char_number = { 0 => "không",1 => "một",2 => "hai",3 => "ba",4 => "bốn",5 => "năm",6 => "sáu",7 => "bảy",8 => "tám",9 => "chín",}
      char_number1 = { 0 => "",1 => "mốt",2 => "hai",3 => "ba",4 => "bốn",5 => "lăm",6 => "sáu",7 => "bảy",8 => "tám",9 => "chín",}
      char_number2 = { 0 => "lẻ",1 => "mốt",2 => "hai",3 => "ba",4 => "bốn",5 => "lăm",6 => "sáu",7 => "bảy",8 => "tám",9 => "chín",}

      tree_digit = a[2]
      two_digit = a[1]
      one_digit = a[0]
      case n.to_i
      when 0...10
        p "#{char_number[one_digit]}"
      when 10...20
        p "Mười #{char_number[one_digit]}"
      when 20...100
        p "#{char_number[two_digit]} mươi #{char_number1[one_digit]}"
      when 100...1000
        if two_digit == 0 && one_digit == 0
          p "#{char_number[tree_digit]} trăm"
        elsif two_digit ==1 
          p "#{char_number[tree_digit]} trăm mười #{char_number1[one_digit]}"
        elsif two_digit ==0 
          p "#{char_number[tree_digit]} trăm lẻ #{char_number1[one_digit]}"
        else 
        p "#{char_number[tree_digit]} trăm #{char_number[two_digit]} mươi #{char_number1[one_digit]}"
        end 
      
      end
      # binding.pry 
      # binding.pry 
    end

    def bai_4
      flag = "Y"
      number_true= 0
      number_false= 0
      loop do 
        puts 'Nhập số bất kỳ từ [0..5]'
        number= gets.chomp.to_i
        # validate ngoài dãi
        if number == rand(0..5)
          number_true += 1
          puts 'Đoán trung'
          puts "ban co muon tiep tuc Y/n"
          flag = gets.chomp.upcase
          if flag != "Y" 
            break 
          end

        else 
          number_false += 1
          puts 'Đoán sai'
          puts "ban co muon tiep tuc Y/n"
          flag = gets.chomp.upcase
          if flag != "Y" 
            break 
          end
        end
      end
      
      puts "Tổng kêt: #{number_true + number_false}"
      puts "Số  lần đoán đúng #{number_true}"
      puts "Số  lần đoán sai #{number_true}"
      

    end 
end
a= Bt.new
a.bai_4

    # Bài tập 1
    # Nhập vào N là tổng số cần nhập mà thuộc trong khoảng 10 -> 100
    # a. Đếm xem trong dãy số nhập vào có bao nhiêu số chia hết cho 5, in ra
    # b. Đếm xem trong dãy số nhập vào có bao nhiêu số chia hết cho bao 3, in ra
    # Bài tập 2
    # Nhập vào chiều dài và chiều rộng
    # a. in ra chu vi hình chữ nhật
    # b. in ra diễn tích hình chữ nhật
    # Bài tập 3 (bài toán đọc số)
    # Nhập vào 3 số tự nhiên, in ra cách đọc 3 số đó
    # ví dụ nhập vào
    # 100 -> một trăm
    # 102 -> một trăm lẻ 2
    # 30 -> 30 mươi
    # Bài tập 4 (đoán số của máy)
    # Nhập số từ 0 -> 5, máy cũng sẽ random một số từ 0 -> 5.
    # Trường hợp nếu số nhập vào và số của máy matching với nhau thì cộng một điểm
    # Report lại những thông tin sau sau mỗi lần đoán:
    # a. Tổng điểm
    # b. Số lần đoán trượt
    # c. Số lần đoán đúng
    # d. Tổng số lần đoán.