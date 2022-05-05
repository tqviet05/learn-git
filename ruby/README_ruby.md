### 1. Biến
Gồm 5 loại :
1. Local variable: Ký tự bất đầu [a-z] hoặc [ _ ] .Truy cập của biến local phụ thuộc vào nơi mà nó được khai báo
2. Global variable: Ký tự bất đầu $ .Truy cập từ bất kỳ đâu trong chương trình
3. Instance variable: Ký tự bất đầu @ .Nó chỉ thuộc về một đối tượng riêng lẻ hoặc một đối tượng của một lớp.
4. Class variable: Ký tự bất đầu @@ .Truy cập trong tất cả các thể hiện của lớp đó
5. Constant: Ký tự bất đầu [A-Z]. Tương tự như một biến nhưng giá trị của nókhông được thay đổi.
### 2. Strings

Chuỗi là các ký tự đại diện cho một từ hoặc một câu. Chúng được tạo ra bằng cách bao quanh string bằng ký tự với dấu ngoặc kép hoặc đơn.

### 3. Symbol

Là một kiểu dữ liệu duy nhất trong Ruby. Chúng tương tự như chuỗi ngoại trừ việc chúng chiếm ít bộ nhớ hơn và có hiệu suất tốt hơn. Các ký hiệu được tạo bằng cách sử dụng cú pháp :

### 4. Number

Là kiểu dữ liệu dạng số . Trong Ruby chia làm 5 loại: integer , float, Complex, BigDecimal, Rational.

Interger là kiểu dữ liệu số nguyên, trong integer chia làm 2 class Fixnum và Bignum.

Float: Kiểu dữ liệu số thực, sử dụng dấu phẩy động float point để định nghĩa.

Complex: kiểu dữ liệu số phức.

BigDecimal: kiểu dữ liệu số thực có độ chính xác cao, được định nghĩa dưới dạng số thập phân
  
Rational: kiểu dữ liệu phân số

### 5. Array

Mảng lưu trữ dữ liệu trong một danh sách. Một mảng có thể chứa bất kỳ kiểu dữ liệu nào. Các giá trị được phân tách bằng dấu phẩy và đặt trong dấu ngoặc vuông []. Các vị trí trong mảng bắt đầu từ index 0.

### 6. Hash

Tập hợp các cặp key-value nằm trong dấu ngoặc nhọn {}, tương tự như kiểu dữ liệu object của JS. Giá trị được gán cho các khóa bằng cú pháp =>.

### 7. Coditionals

- **Câu lệnh if:** Thực thi khối lệnh khi biểu thức trả true

- **Câu lệnh if..else:** Biểu thức là true thực thi khối lệnh trong mệnh đề if, ngựơc lại thi thực hiện khối lệnh trong mệnh đề else

- **Câu lệnh if..elsif...else:**
  
- **Câu lệnh unless** Thực thi khối lệnh khi biểu thức trả false

- **Câu lệnh case:** Giúp lựa chọn khối lệnh thực thi dựa vào điều kiện đặt ra. Có tác dụng tương tự như lệnh if..elsif

### 8. Loop

**Vòng lặp for..in:**

```ruby

for  variable  in  expression  do

// code

end

```
Trong đó:
-  **for**: để xác định đây là một vòng lặp for
-   **variable**: Đây là một biến, được tham chiếu tới các lần lặp
-   **in**: Từ khóa này được sử dụng được đi kèm với vòng lặp for
-   **expression**: expression ở đây chúng ta có thể sử dụng Range hoặc là Array để truyền vào
-   **do...end**: Hai keyword này đánh dấu sự bắt đầu và kết thúc của vòng lặp

**Vòng lặp while**

Biểu thức truyền vào mệnh đề while trả về True thì khối code được thực thi
```Ruby
while biểu_thức_điều_kiện do
// code
end
```
**Vòng lặp until**

Biểu thức truyền vào mệnh đề while trả về False thì khối code được thực thi
```Ruby
until Điều_kiện_dừng do
#code
end
```  
**break**: Sử dụng để thoát khỏi vòng lặp
**next**: Sử dụng khi cần bỏ qua một vòng lặp để chạy vòng lặp tiếp theo.
### 9. Interators

** Each**: Gọi khối code đã cho một lần cho từng phần tử, chuyển phần tử đó làm tham số. Trả về chính mảng ban đầu.

```ruby
collection.each do |variable_name|
	# code
end
```
```ruby
collection.each {|variable_name|# code}
```
  **map**: Tương tự như vòng lặp each nhưng trả về  một mảng mới. 
  


```ruby
collection.map do |variable_name|
	# code
end
```
```ruby
collection.map {|variable_name|# code}
```
**map!** có chức năng như hàm map hoặc hàm each nhưng giá trị trả về sẻ ghi đè lên mảng gốc.

**select**: lặp qua lần lượt các phần tử trong collection và trả về 1 mảng mới thỏa mãn điều kiện được định nghĩa trong khối code.
```ruby
collection.select do |variable_name|
	# code
end
```
**collect**: lặp qua lần lượt các phần tử trong collection và tạo mảng mới thực hiện khối code. Tương tự map
```ruby
collection.select do |variable_name|
	# code
end
```
### Methods
Cú pháp:
```ruby
def ten_ham (bien1, bien2)
# Todo something
end
```
ten_ham: là một contant
### Class

Cú pháp:

```ruby
class ten_lop
# Todo something
end
```
ten_lop: là một biến contant

### 10. Module
 include: là dùng để import một module. Khi include một module vào một class, Ruby sẽ add module này vào ancestors chain của class đó, ngay sau class đó, và trước superclass của class đó.
 prepen: cách dùng tương tự như include 

 ### 11. Proc Lambda Block
 #### 1. Block 
- Block đơn giản chỉ là tập hợp các lệnh thành một khối (method) được đặt trong dấu ```{...}``` hoặc ```do...end``` và block được đặt nằm sau hàm. Block không phải là đối tượng nên không được lưu trữ vào biến nên không tái sử dụng
- Sử dụng  `{...}` đối vớ khối lệnh chỉ gồm 1 dòng lệnh
- Sử dụng  `do...end` đối vớ khối lệnh chỉ gồm nhiều dòng lệnh
- Đối số trong block được định nghĩa giữa dấu ``| |``
```ruby
 array = [1,2,3,4]
    array.map! do |n|
      n * n
    end
    => [1, 4, 9, 16]

    array = [1,2,3,4]
    array.map! { |n| n * n }  #cách viết này ngắn gọn hơn cách dùng do...end
    => [1, 4, 9, 16]
```

- Truyền block vào hàm thông qua lệnh ``yield``. Giúp ta thực hiện một khối lệnh trong method mà không ảnh hưởng tới đoạn code xung quanh. ``yield`` giúp ta truyền tham số  của method vào block  
```ruby
def hello
  puts "Hello"
  yield
  puts "Goodbye"
end
 
hello { puts "Code truyền vào method" }
``` 
```
Hello
Code truyền vào method
Goodbye
```
- Nếu chúng ta khai báo yield mà không truyền block vào method thì sẽ gây ra lỗi và đoạn code bên dưới yield sẽ không được thực thi. Vì vậy, để kiểm soát ta cần xem có tồn tại block hay không, nếu không thì bỏ qua để tránh gây lỗi không mong muốn. Sử dụng phương thúc ``block_given?``
``` ruby
def hello
  puts "Hello"
  return yield if block_given?
  puts "Goodbye"
end
 
hello
```
Kết quả 
```
Hello

Goodbye
```

#### 2. Proc
- Proc là đối tượng đại diện cho khối lệnh. Được khởi tạo thông qua ``Proc.new``. Nên Proc có ô nhớ vì vậy có thể sử dụng proc ở bất kỳ khi nào thông qua hàm `call`
- Đặc tính của Proc: Không kiểm tra số lượng đối số truyền vào. Nếu không truyền tham số thì proc mặc định sẻ gán tham số bằng nil.
- Hàm Return trong proc thực thi lệnh trong và ngoài khối lệnh proc
```ruby
p = Proc.new { |x| puts x +1 }
p.call(1, 2)
# return 2
l = lambda { |x| puts x +1 }
l.call(1, 2)
# return Argument Error
```
```ruby
def method_proc
      proc = Proc.new do
       return puts "xin chao" 
       puts "xin chao 2"
       end
      proc.call
      puts "cac ban"
    end
    # gọi proc trên
    method_proc
    # kết quả in ra là
    xin chao
```
- Truyền proc vào hàm trước đối số  (argument)
```ruby
def test_block(&block)
		  puts block.call
end
test_block { "xin chao cac ban" }
```
#### 3. Lambda 
- Lambda là một một đối lượng của Proc. Nên sở hữu cá đặc tính giống Proc, ngoại trừ:
  - Lambda kiểm tra số lượng đối số truyền vào và trả về Argument Error nếu sai khác về  số  lượng đối số.

```ruby
# Khởi tạo lambda
say_something = -> { puts "This is a lambda" }
 # hoặc
 say_something = lambda { puts "This is a lambda" }
say_something.call
=> "This is a lambda"
``` 
```ruby
# LỖI THAM SỐ
l = lambda { "I'm a lambda" }
l.call
=> "I'm a lambda"
l.call('arg')
ArgumentError: wrong number of arguments (1 for 0)
```
### Meta Programming
Metaprogramming hiểu đơn giản là "Code sinh ra code" nghĩa là mình viết một chương trình và chương trình này sẽ sinh ra, điều khiển các chương trình khác hoặc làm 1 phần công việc ở thời điểm biên dịch. Chính vì vậy, metaprogramming giúp source của chúng ta trở nên ngắn gọn hơn, giảm thiểu vấn đề duplicate, như các method có chức năng tương tự nhau trong source code (nhất là trong test), dễ dàng thay đổi cũng như chỉnh sửa, giúp hệ thống trở nên gọn nhẹ và mượt mà hơn.
Đối tượng meta programming tác động là code. Bao gồm việc kiểm tra và sửa đổi cấu trúc hoạt động của chương trình bằng ngôn ngữ.
```ruby
# Vi du tao Instance method va Class method
class Developer
  define_method :frontend do |*my_arg|
    my_arg.inject(1, :*)
  end

  class << self
    def create_backend
      singleton_class.send(:define_method, "backend") do
        "Born from the ashes!"
      end
    end
  end
end
```