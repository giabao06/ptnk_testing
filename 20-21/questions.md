# Đề thi chuyên tin Phổ thông Năng Khiếu ĐHQG TP.HCM 2020-2021

Tổng quan đề:

| Bài |      Tên bài      | Source filename | Time limit | Mem limit |
|:---:|:-----------------:|:---------------:|:----------:|:---------:|
|  1  | Cặp số            | pairlcm.*       |     1s     |  1024 MB  |
|  2  | Sơn hình vuông    | painting.*      |     1s     |  1024 MB  |
|  3  | Dãy ngoặc         | parentheses.*   |     1s     |  1024 MB  |
|  4  | Hệ thống giám sát | monitor.*       |     1s     |  1024 MB  |

(Dấu * được thay thế bởi pas hoặc cpp của ngôn ngữ lập trình sử dụng tương ứng là Pascal hoặc C++

**Bài 1: Cặp số**
Cho số nguyên dương n (2 ≤ n ≤ 10^9). Trong tất cả các cặp số nguyên dương (a,b) thỏa mãn a+b=n, hãy tìm cặp số sao cho LCM(a,b) đạt lớn nhất, với LCM(a,b) là bội số chung nhỏ nhất của a và b (số nguyên dương nhỏ nhất chia hết cho cả a và b).

**Dữ liệu:** Vào từ tập tin văn bản **pairlcm.inp** chứa số nguyên n
**Kết quả:** Ghi ra tập tin văn bản **pairlcm.out** giá trị LCM lớn nhất tìm được

**Ví dụ:**

| pairlcm.inp | pairlcm.out|
| --- | --- |
|  10   |  21   |

**Bài 2: Sơn hình vuông**
Cho một hình vuông kích thước nxn chia thành các ô vuông đơn vị 1*1. Người ta sơn hình vuông theo cách sau:
- Ban đầu, sơn toàn bộ các hình vuông đơn vị bao phía ngoài cùng của hình vuông ban đầu bằng màu đỏ, ta gọi là lớp hình vuông thứ nhất
- Sơn toàn bộ các hình vuông đơn vị giáp với lớp ngoài cùng bằng màu xanh, gọi là lớp hình vuông thứ hai
- Lớp hình vuông đơn vị tiếp theo giáp với lớp hình vuông thứ hai được sơn màu vàng, gọi là lớp hình vuông thứ 3
- Người ta tiếp tục sơn các hình vuông đơn vị tiếp theo lần lượt các màu đỏ - xanh - vàng cho tới khi tất cả các hình vuông đơn vị đều được tô màu
Ví dụ với hình vuông kích thước n = 11, sau khi sơn ta có hình minh họa
(1 = đỏ, 2= xanh, 3=vàng)

![Hình minh họa bài 2](https://i.imgur.com/CbruxKS.png)

**Yêu cầu:** Cho độ dài cạnh hình vuông là n và k câu hỏi. mỗi câu hỏi có dạng (i, j) với yêu cầu cho biết màu của hình vuông đơn vị ở dòng thứ i (tính từ 1 từ trên xuống) cột thứ j (tính từ 1 từ trái sang).

**Dữ liệu:** Vào từ tập tin văn bản **painting.inp**:

- Dòng đầu tiên chứa 2 số nguyên n và K (n ≤ 10^9; k ≤ 10^3)
- k dòng tiếp theo, mỗi dòng chứa 2 số nguyên i,j (1 ≤ i,j ≤ n)

**Kết quả:** Ghi ra tập tin văn bản **painting.out** gồn k dòng, dòng thứ i ghi RED hoặc BLUE hoặc YELLOW cho biết màu của hình vuông được yêu cầu tương ứng với màu đỏ, xanh hoặc vàng.

**Ví dụ:**

| painting.inp                             | painting.out                                |
| :--------------------------------------- | :------------------------------------------ |
| 11 4<br />2 5<br />7 9<br />4 4<br />9 3 | BLUE<br />YELLOW<br />RED<br />YELLOW<br /> |

**Bài 3: Dãy ngoặc**

Một dãy ngoặc hợp lệ là một xâu các kí tự ‘(‘ và ‘)’ được định nghĩa như sau

- Xâu rỗng là 1 dãy dấu ngoặc hợp lệ độ sâu 0

- Nếu A là dãy dấu ngoặc hợp lệ thì (A) là dãy dấu ngoặc hợp lệ

- Nếu A và B là 2 dãy dấu ngoặc hợp lệ thì AB (xâu tạo thành bằng cách ghép sâu A với sâu B) lã dãy dấu ngoặc hợp lệ

Những xâu không xây dựng được theo các quy tắc trên không phải là dãy dấu ngoặc hợp lệ. Ví dụ: “((()()))” và “()()()” là những dãy ngoặc hợp lệ, “)()(“ và “((())” không là dãy ngoặc hợp lệ

**Yêu cầu:** Cho xâu ký tự S gồm các ký tự thuộc [‘(‘,’)’], người ta cho phép thực hiện (0 hoặc 1 số) phép biến đổi, mỗi phép biến đổi sẽ chuyển ký tự ở đầu sâu S đến cuối sâu. Hãy tìm cách dùng ít phép biến đổi nhất để biến sâu S thành 1 dãy ngoặc hợp lệ.

**Dữ liệu:** Vào từ tập tin vă bản **parentheses.inp** gồm 1 dòng chứa sâu S gồm không quá 10^6 ký tự thuộc [‘(‘,’)’]

**Kết quả:** Ghi ra tập tin văn bản **parentheses.out** một số nguyên duy nhất là số phép biến đổi cần sử dụng, nếu không có cách nào biến đổi sâu S thành dãy ngoặc hợp lệ, in ra số -1.

**Ví dụ:**

| parentheses.inp | parentheses.out |
| --------------- | --------------- |
| )) () ((        | 2               |
| )))) ((((       | 4               |
| (())))          | -1              |
| () ()           | 0               |



**Bài 4: Hệ thống giám sát**

Công ty ABC đã xây dựng thành công hệ thống hỗ trợ kiểm soát sự lây lan của dịch bện bằng cách giám sát sự ra vào của người dân tại một địa phương. Hệ thống mã hóa thông tin mỗi người dân bằng 1 ID là 1 số nguyên có thể lên đến 18 chữ số.

Hệ thống ghi nhận việc viếng thăm của người dân đến vùng cần theo dõi thứ tự thời gian cách đều nhau, các thời điểm được đánh thư tự từ 1. Dữ liệu này được chuyển đến nhà quản lý nhằm thực hiện các báo cáo cần thiết. Chẳng hạn, nhà quản lý cần biến thời điểm đầu tiên và thời điểm cuối cùng của từng người viếng thăm địa phương. Ví dụ, hệ thống ghi nhận dữ liệu người đến viếng thăm trong 10 thời điểm như sau: 7 2 10 7 2 6 3 3 6

| Thời điểm |  1   |  2   |  3   |  4   |  5   |  6   |  7   |  8   |  9   |  10  |
| --------- | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| **ID**    |  7   |  2   |  10  |  7   |  2   |  6   |  3   |  3   |  3   |  6   |

- Người có ID = 2 có thời điểm thăm lần đầu và lần cuối là 2 và 5

- Người có ID = 3 có thời điểm thăm lần đầu và lần cuối là 7 và 9

- Người có ID = 7 có thời điểm thăm lần đâu và lần cuối là 1 và 4

- Người có ID = 10 chỉ thăm 1 lần tại thời điểm 3.

**Yêu cầu:** Cho dữ liệu ghi nhận các lần viếng thăm của người dân theo thứ tự thời gian. Hãy cho biết ID của người dân có khoảng cách từ thời điểm viếng thăm đầu tiên đến thời điểm viếng thăm cuối cùng là cách xa nhau nhất.

**Dữ liệu:** Vào từ tập tin văn bản monitor.inp

- Dòng đầu tiên chứa số nguyên n (1 ≤ n ≤ $$10^5$$) - số thời điểm theo dõi
- Dòng tiếp theo chứa dãy gồm n số nguyên a[1],a[2], … , a[n] (1 ≤ a[i] ≤ $$10^6$$) - ID của người dân viếng thăm theo thứ tự thời gian

**Kết quả:** Ghi ra tập tin văn bản monitor.out

- Dòng đầu tiên ghi ID của người cần báo cáo
- Dòng tiếp theo ghi 1 số nguyên là số lượng thời điểm tính từ lần thăm đầu đến lần thăm cuối
- Nếu có nhiều kết quả thì in ra ID người đầu tiên trong danh sách

**Ví dụ:**

| monitor.inp                  | monitor.out |
| ---------------------------- | ----------- |
| 10<br />7 2 10 7 2 6 3 3 3 6 | 6<br />5    |
