---
title: Cách tạo bảng trong C#
second_title: Aspose.Words cho .NET
articleTitle: Tạo một bảng
linktitle: Tạo một bảng
description: "Hướng dẫn cách tạo bảng trong C# theo nhiều cách khác nhau. Tạo bảng trong C# cho tài liệu của bạn."
type: docs
weight: 20
url: /vi/net/create-a-table/
---

Aspose.Words cho phép người dùng tạo bảng trong tài liệu từ đầu và cung cấp một số phương pháp khác nhau để thực hiện việc đó. Bài viết này trình bày chi tiết về cách thêm bảng được định dạng vào tài liệu của bạn bằng từng phương pháp, cũng như so sánh từng phương pháp ở cuối bài viết.

## Kiểu bảng mặc định

Bảng mới tạo được cung cấp các giá trị mặc định tương tự như các giá trị được sử dụng trong Microsoft Word:

|  Thuộc tính bảng |  Mặc định trong Aspose.Words |
|  :---------------------  |  :----------------------  |
|  `Border Style`            |  `Single`  |
|  `Border Width`            |  `1/2 pt`                   |
|  `Border Color`            |  `Black`  |
|  `Left and Right Padding`  |  `5.4 pts`                  |
|  `AutoFit Mode`            |  `AutoFit to Window`        |
|  `Allow AutoFit`           |  `True`  |

{{% alert color="primary" %}}

Một bảng có thể ở dạng nội tuyến nếu nó được định vị chặt chẽ hoặc nổi nếu nó có thể được định vị ở bất kỳ đâu trên trang. Theo mặc định, Aspose.Words luôn tạo các bảng nội tuyến.

{{% /alert %}}

## Tạo bảng bằng DocumentBuilder

Trong Aspose.Words, người dùng có thể tạo bảng trong tài liệu bằng [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/). Thuật toán cơ bản để tạo bảng như sau:

1. Bắt đầu bàn với [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/)
2. Thêm một ô vào bảng bằng [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/) – thao tác này sẽ tự động bắt đầu một hàng mới
3. Tùy chọn, sử dụng thuộc tính [CellFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/cellformat/) để chỉ định định dạng ô
4. Chèn nội dung ô bằng các phương thức **DocumentBuilder** thích hợp như [Writeln](https://reference.aspose.com/words/net/aspose.words/documentbuilder/writeln/), [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) và các phương thức khác
5. Lặp lại các bước 2-4 cho đến khi hoàn thành hàng
6. Gọi [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) để kết thúc hàng hiện tại
7. Tùy chọn sử dụng thuộc tính [RowFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/rowformat/) để chỉ định định dạng hàng
8. Lặp lại các bước từ 2-7 cho đến khi hoàn thành bảng
9. Gọi [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) để hoàn thành việc xây dựng bảng

{{% alert color="primary" %}}

Chi tiết quan trọng:

* [StartTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/starttable/) cũng có thể được gọi bên trong một ô, trong trường hợp đó nó bắt đầu tạo một bảng lồng nhau trong ô.
* Sau khi gọi [InsertCell](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertcell/), một ô mới sẽ được tạo và mọi nội dung bạn thêm bằng các phương thức khác của lớp [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) sẽ được thêm vào ô hiện tại. Để tạo một ô mới trên cùng một hàng, hãy gọi lại **InsertCell**.
* Nếu **InsertCell** được gọi ngay sau [EndRow](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endrow/) và ở cuối hàng, bảng sẽ tiếp tục ở một hàng mới.
* Phương thức [EndTable](https://reference.aspose.com/words/net/aspose.words/documentbuilder/endtable/) để kết thúc bảng chỉ nên được gọi một lần sau khi gọi **EndRow**. Việc gọi **EndTable** sẽ di chuyển con trỏ từ ô hiện tại đến vị trí ngay sau bảng.

{{% /alert %}}

Quá trình tạo bảng có thể được thấy rõ trong hình sau:

![creating-table-process](/words/net/create-a-table/creating-table-process.jpg)

Ví dụ mã sau đây cho thấy cách tạo một bảng đơn giản bằng **DocumentBuilder** với định dạng mặc định:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "create-simple-table.cs" >}}

Ví dụ mã sau đây cho thấy cách tạo bảng được định dạng bằng DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "formatted-table.cs" >}}

Ví dụ mã sau đây cho thấy cách chèn bảng lồng nhau bằng DocumentBuilder:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "nested-table.cs" >}}

## Tạo bảng qua DOM (Document Object Model)

Bạn có thể chèn bảng trực tiếp vào DOM bằng cách thêm nút [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/) mới tại một vị trí cụ thể.

Xin lưu ý rằng ngay sau khi tạo nút bảng, bản thân bảng sẽ hoàn toàn trống, nghĩa là nó chưa chứa các hàng và ô. Để chèn hàng và ô vào bảng, hãy thêm các nút con [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) và [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) thích hợp vào DOM.

{{% alert color="primary" %}}

Phương pháp tạo bảng này sử dụng các giá trị mặc định giống như khi sử dụng **DocumentBuilder**.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách xây dựng một bảng mới từ đầu bằng cách thêm các nút con thích hợp vào cây tài liệu:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-directly.cs" >}}

## Tạo bảng từ HTML

Aspose.Words hỗ trợ chèn nội dung vào tài liệu từ nguồn HTML bằng phương pháp [InsertHtml](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthtml/). Đầu vào có thể là một trang HTML hoàn chỉnh hoặc chỉ là một phần đoạn mã.

Sử dụng phương pháp **InsertHtml**, người dùng có thể chèn bảng vào tài liệu thông qua các thẻ bảng như `<table>`, `<tr>`, `<td>`.

Ví dụ mã sau đây cho thấy cách chèn bảng vào tài liệu từ một chuỗi chứa thẻ HTML:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "insert-table-from-html.cs" >}}

## Chèn một bản sao của bảng hiện có

Đôi khi bạn cần tạo bảng dựa trên bảng đã có sẵn trong tài liệu. Cách dễ nhất để sao chép bảng trong khi vẫn giữ lại tất cả định dạng là sao chép nút Bảng bằng phương pháp [Clone](https://reference.aspose.com/words/net/aspose.words/node/clone/).

Kỹ thuật tương tự có thể được sử dụng để thêm bản sao của hàng hoặc ô hiện có vào bảng.

Ví dụ mã sau đây cho thấy cách sao chép một bảng bằng cách sử dụng các hàm tạo nút:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-complete-table.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách sao chép hàng cuối cùng của bảng và nối nó vào bảng:

{{< gist "aspose-words-gists" "10307fa0baf630b07d0cbdae30119bf3" "clone-last-row.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Nếu bạn đang xem xét việc tạo các bảng trong tài liệu phát triển linh hoạt với mỗi bản ghi từ nguồn dữ liệu của mình thì phương pháp trên không được khuyên dùng. Thay vào đó, bạn có thể dễ dàng đạt được kết quả mong muốn hơn bằng cách sử dụng Mail merge với các vùng. Bạn có thể tìm hiểu thêm về kỹ thuật này trong phần [Mail Merge với các khu vực](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions).

## So sánh các cách tạo bảng

Aspose.Words cung cấp một số phương pháp để tạo bảng mới trong tài liệu. Mỗi phương pháp đều có ưu điểm và nhược điểm riêng nên việc lựa chọn sử dụng phương pháp nào thường phụ thuộc vào từng tình huống cụ thể.

Chúng ta hãy xem xét kỹ hơn các cách tạo bảng này và so sánh ưu và nhược điểm của chúng:

|  Phương pháp | Thuận lợi |  Nhược điểm |
|  :-  |  :-  |  :-  |
| Qua `DocumentBuilder` | Phương pháp tiêu chuẩn để chèn bảng và nội dung tài liệu khác | Đôi khi khó tạo nhiều loại bảng cùng lúc với cùng một phiên bản trình tạo |
| Qua DOM |  Phù hợp hơn với mã xung quanh giúp tạo và chèn các nút trực tiếp vào DOM mà không cần sử dụng **DocumentBuilder** | Bảng được tạo "trống": trước khi thực hiện hầu hết các thao tác, bạn phải gọi [EnsureMinimum](https://reference.aspose.com/words/net/aspose.words.tables/table/ensureminimum/) để tạo bất kỳ nút con nào bị thiếu |
| Từ HTML | Có thể tạo bảng mới từ nguồn HTML bằng các thẻ như `<table>`, `<tr>`, `<td>` | Không phải tất cả các định dạng bảng Microsoft Word đều có thể áp dụng được cho HTML |
| Nhân bản một bảng hiện có | Bạn có thể tạo bản sao của bảng hiện có trong khi vẫn giữ lại tất cả định dạng hàng và ô | Các nút con thích hợp phải được loại bỏ trước khi bảng sẵn sàng để sử dụng |