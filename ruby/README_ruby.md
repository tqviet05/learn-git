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