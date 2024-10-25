---
title: Cách Tạo Bảng trong C++
second_title: Aspose.Words cho C++
articleTitle: Tạo Một Bảng
linktitle: Tạo Một Bảng
description: "Các cách khác nhau để tạo bảng bằng C++. Tạo bảng trong C++ cho tài liệu của bạn. Thêm một bảng trong C++."
type: docs
weight: 20
url: /vi/cpp/create-a-table/
---

Aspose.Words cho phép người dùng tạo bảng trong tài liệu từ đầu và cung cấp một số phương pháp khác nhau để làm như vậy. Bài viết này trình bày chi tiết về cách thêm các bảng được định dạng vào tài liệu của bạn bằng từng phương thức, cũng như so sánh từng phương thức ở cuối bài viết.

## Kiểu Bảng Mặc Định

Bảng mới được tạo được cung cấp các giá trị mặc định tương tự như các giá trị được sử dụng trong Microsoft Word:

| Tài Sản Bảng | Mặc định trong Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | 1/2 hp |
| `Border Color` | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |

{{% alert color="primary" %}}

Một bảng có thể là nội tuyến nếu nó được định vị chặt chẽ hoặc nổi nếu nó có thể được định vị ở bất kỳ đâu trên trang. Theo mặc định, Aspose.Words luôn tạo các bảng nội tuyến.

{{% /alert %}}

## Tạo Một Bảng với DocumentBuilder

Trong Aspose.Words, người dùng có thể tạo một bảng trong tài liệu bằng [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/). Thuật toán cơ bản để tạo một bảng như sau:

1. Bắt đầu bảng với [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/)
2. Thêm một ô vào bảng bằng cách sử dụng [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) – thao tác này sẽ tự động bắt đầu một hàng mới
3. Tùy chọn, sử dụng thuộc tính [CellFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_cellformat/) để chỉ định định dạng ô
4. Chèn nội dung ô bằng các phương thức **DocumentBuilder** thích hợp như [Writeln](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertimage/) và các phương thức khác
5. Lặp lại các bước 2 -4 cho đến khi hàng hoàn tất
6. Gọi [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) để kết thúc hàng hiện tại
7. Tùy chọn, sử dụng thuộc tính [RowFormat](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/get_rowformat/) để chỉ định định dạng hàng
8. Lặp lại các bước 2 -7 cho đến khi bảng hoàn tất
9. Gọi [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) để hoàn thành việc xây dựng bảng

{{% alert color="primary" %}}

Chi tiết quan trọng:

- [StartTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/starttable/) cũng có thể được gọi bên trong một ô, trong trường hợp đó, nó bắt đầu tạo một bảng lồng nhau trong ô.
- Sau khi gọi [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/), một ô mới được tạo và bất kỳ nội dung nào bạn thêm bằng các phương thức khác của lớp [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/) sẽ được thêm vào ô hiện tại. Để tạo một ô mới trên cùng một hàng, hãy gọi lại **InsertCell**.
- Nếu **InsertCell** được gọi ngay sau [EndRow](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endrow/) và kết thúc một hàng, bảng sẽ tiếp tục trên một hàng mới.
- Phương thức [EndTable](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/endtable/) để kết thúc bảng chỉ nên được gọi một lần sau khi gọi **EndRow**. Gọi **EndTable** di chuyển con trỏ từ ô hiện tại đến vị trí ngay sau bảng.

{{% /alert %}}

Quá trình tạo một bảng có thể được nhìn thấy rõ ràng trong hình sau:

![creating-table-process](creating-table-process.jpg)

Ví dụ mã sau đây cho thấy cách tạo một bảng đơn giản bằng **DocumentBuilder** với định dạng mặc định:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "create-simple-table.h" >}}

Ví dụ mã sau đây cho thấy cách tạo bảng được định dạng bằng DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "formatted-table.h" >}}

Ví dụ mã sau đây cho thấy cách chèn bảng lồng nhau bằng DocumentBuilder:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "nested-table.h" >}}

## Tạo Một Bảng thông qua DOM (Mô Hình Đối tượng Tài liệu)

Bạn có thể chèn các bảng trực tiếp vào DOM bằng cách thêm nút [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) mới tại một vị trí cụ thể.

Xin lưu ý rằng ngay sau khi tạo nút bảng, bản thân bảng sẽ hoàn toàn trống, nghĩa là nó chưa chứa các hàng và ô. Để chèn các hàng và ô vào bảng, hãy thêm các nút con [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) và [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) thích hợp vào DOM.

{{% alert color="primary" %}}

Phương pháp tạo bảng này sử dụng cùng một bảng mặc định như khi sử dụng **DocumentBuilder**.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách xây dựng một bảng mới từ đầu bằng cách thêm các nút con thích hợp vào cây tài liệu:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-directly.h" >}}

## Tạo Một Bảng từ HTML

Aspose.Words hỗ trợ chèn nội dung vào tài liệu từ nguồn HTML bằng phương thức [InsertHtml](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthtml/). Đầu vào có thể là một trang HTML hoàn chỉnh hoặc chỉ là một đoạn mã một phần.

Sử dụng phương thức **InsertHtml**, người dùng có thể chèn các bảng vào tài liệu thông qua các thẻ bảng như `<table>`, `<tr>`, `<td>`.

Ví dụ mã sau đây cho thấy cách chèn một bảng vào tài liệu từ một chuỗi chứa HTML thẻ:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "insert-table-from-html.h" >}}

## Chèn Một Bản Sao Của Một Bảng Hiện Có

Thường có những lúc bạn cần tạo một bảng dựa trên một bảng đã có trong tài liệu. Cách dễ nhất để sao chép một bảng trong khi giữ lại tất cả các định dạng là sao chép Nút Bảng bằng phương thức [Clone](https://reference.aspose.com/words/cpp/aspose.words/node/clone/).

Kỹ thuật tương tự có thể được sử dụng để thêm các bản sao của một hàng hoặc ô hiện có vào bảng.

Ví dụ mã sau đây cho thấy cách sao chép bảng bằng cách sử dụng hàm tạo nút:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-complete-table.h" >}}

Ví dụ mã sau đây cho thấy cách sao chép hàng cuối cùng của bảng và nối nó vào bảng:

{{< gist "aspose-words-gists" "aa87055754447c86ae5fb2d4766130f3" "clone-last-row.h" >}}

Nếu bạn đang xem xét việc tạo các bảng trong một tài liệu phát triển linh hoạt với mỗi bản ghi từ nguồn dữ liệu của bạn, thì phương pháp trên không được khuyến khích. Thay vào đó, đầu ra mong muốn dễ dàng đạt được hơn bằng cách sử dụng Mail merge với các vùng. Bạn có thể tìm hiểu thêm về kỹ thuật này trong [Mail Merge Với Các Khu Vực](/words/cpp/types-of-mail-merge-operations/) phần.

## So Sánh Các Cách Để Tạo Bảng

Aspose.Words cung cấp một số phương pháp để tạo bảng mới trong tài liệu. Mỗi phương pháp đều có những ưu điểm và nhược điểm riêng, vì vậy việc lựa chọn sử dụng phương pháp nào thường phụ thuộc vào tình huống cụ thể.

Chúng ta hãy xem xét kỹ hơn những cách tạo bảng này và so sánh ưu và nhược điểm của chúng:

| Phương pháp | Ưu điểm | Nhược điểm |
| :- | :- | :- |
| `DocumentBuilder` | Phương pháp tiêu chuẩn để chèn bảng và nội dung tài liệu khác | Đôi khi rất khó để tạo ra nhiều loại bảng cùng một lúc với cùng một ví dụ xây dựng |
| Qua DOM | Phù hợp hơn với mã xung quanh tạo và chèn các nút trực tiếp vào DOM mà không cần sử dụng **DocumentBuilder** | Bảng được tạo "trống": trước khi thực hiện hầu hết các thao tác, bạn phải gọi [EnsureMinimum](https://reference.aspose.com/words/cpp/aspose.words.tables/table/ensureminimum/) để tạo bất kỳ nút con nào bị thiếu |
| Từ HTML | Có thể tạo một bảng mới từ nguồn HTML bằng cách sử dụng các thẻ như `<table>`, `<tr>`, `<td>` | Không phải tất cả các định dạng bảng Microsoft Word có thể được áp dụng cho HTML |
| Nhân bản một bảng hiện có | Bạn có thể tạo một bản sao của một bảng hiện có trong khi vẫn giữ nguyên tất cả định dạng hàng và ô | Các nút con thích hợp phải được xóa trước khi bảng sẵn sàng để sử dụng |
