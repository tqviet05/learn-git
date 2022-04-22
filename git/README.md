# **Hôm 18/4 đã học**
## GIT
 - Khai báo thông tin user : `git config --global user.name "ten_user"`
 - Khai báo email: `git config --global user.email "dia_chi-mail"`
 - Khai báo folder trong git Repository: `git init` | Lệnh init được thực thi tại vị trí thư mục ta cần set
 - Kiểm tra status của git: `git status` | Lệnh status cung  cấp cho ta thông tin: Tên branch, Thông tin commit, track
 - Đăng kí stage: `git add` 
 - Xác nhận các stage muốn thay đổi: `git commit`
 - Xác nhận các stage muốn thay đổi: `git commit -m "comment"`
 - Di chuyển vào nhánh : `git checkout [tên-nhanh]`
 - Tạo nhánh mới: `git branch [tên-nhanh-mơi]
 - Kiểm tra thay đổi: `git diff`
 - Đẩy dữ liệu từ máy local lên git-hub `git push`
 - Thêm các thay đổi vào nhánh `git merge`
 - Thiết lặp liên kết repo ở local với server git-hub `git remote`
 - Xem bản ghi thay đổi commit`git log`

 ## ** Mark down **
    '# heading 1
    '## heading 2
    '## heading 3
    in nghiêng ; '*'
    in đậm : '**'
    in nghiêng và in đậm: '***'
    dánh dấu highlight: echo()

# ngày 19/4 đã học:
- Tìm hiểu về frontends HTML/CSS/ SCSS
- Cách đặt class, id, trong HTML
- Cách dàn trang layout
- Cài đặt sử dụng SCSS
- Dựng trang 24h.com.vn
# ngày 22/4:
1. HTML: 
* block element: được khởi tạo bằng một dòng mới, có bề rộng bằng bề rộng tối đa có thể trải dài từ trái sang phải và có khoản cách trước sau element. Bao gồm các thẻ sau:

        <address> <article> <aside> <blockquote> <canvas> <dd> <div> <dl> <dt> <fieldset> <figcaption> <figure> <footer> <form> <h1> <h6> <header> <hr> <li> <main> <nav> <noscript> <ol> <p> <pre> <section> <table> <tfoot> <ul> <video>

* inline element: có thuộc tính ngược lại với block element. Như được khởi tạo trên cùng một dòng, có bề rộng bằng bằng bề rộng khối nội dung của element 

        <a> <abbr> <acronym> <b> <bdo> <big> <br> <button> <cite> <code> <dfn> <em> <i> <img> <input> <kbd> <label> <map> <object> <output> <q> <samp> <script> <select> <small> <span> <strong> <sub> <sup> <textarea> <time> <tt> <var>
* Tài liệu: https://www.w3schools.com/html/html_blocks.asp

2. CSS:
* Tính năng display: Dùng để kiểm soát bố cục layout bao gồm các thuộc tính:
    * none: loại bỏ element. Không gian element được sử dụng trước đây sẻ được element phía sau chiếm dụng.
    * inline: gán thuộc tính inline-element
    * block: gán thuộc tính block-element
    * hidden: tắt hiển thị element. Không gian element đang chiếm dụng vẫn giữ nguyên.
    * flex: dùng để  kích hoạt tính năng flex box. Giúp sắp xếp bố cục các block bên trong element một cách linh hoạt
    * inline-flex: lạ sự kết hợp giữa inline và flex. Giúp sắp xếp bố cục các block bên trong element một cách linh hoạt và nằm trên một line.
    * inherit: lấy giá trị của phầ n tử cha gần nhất và sử dụng. Trường hợp phần tử cha không có giá trị thì tiếp tục tìm đến phần tử cha tiếp theo. Trường hợp không tìm được phần tử cha thì sẻ lấy giá trị của trình duyệt hoặc giá trị mặc định của phần tử
    * inital: lấy giá trị style mặc định của nó.
* Độ ưu tiên CSS:
    Theo thứ tự bảng dưới:
![Screenshot from 2022-04-18 09-27-36](https://s3-ap-southeast-1.amazonaws.com/kipalog.com/5rfoxikeei_table.png
)
    * Thang điểm của độ ưu tiên:
        1. !important: 10000
        2. inline CSS:1000
        3. ID: 100
        4. Class: 10
        5. tag: 1
        6. Browser Default: 0 
    * Khi ta khai báo độ ưu tiên có thể kết hợp thang điểm trên để sắp xếp thứ tự ưu tiên. CSS nào có số điểm lớn hơn sẻ được thiết lặp thuộc  tính, trường hợp, CSS có độ ưu tiên bằng nhau thì hàng thì áp dụng Rule Order (thứ tự theo biên dịch, thuộc tính sau ghi đè lên thuộc tính trước)
    Tài liệu:   
        - https://kipalog.com/posts/Front-End---Vai-Phut-Tim-Hieu-CSS-Priority-Rankings
        - https://www.youtube.com/watch?v=AgZ0PX28bnA&t=19s

* Những lưu ý trong bài học:
    - HTML: 
        * Lỗi đóng thẻ
        * Quá trình dựng layout phải kết hợp stype html và CSS 
    - Tìm hiểu về cách hoạt động của padding và margin, thuộc tính box-sizing, reset CSS
    - CSS và SCSS: 
        * Cách selector trong CSS
        * Hạn chế lòng quá 3 cấp 
        * Giới thiệu về phương thức BEM trong đặc tên class và ID
    