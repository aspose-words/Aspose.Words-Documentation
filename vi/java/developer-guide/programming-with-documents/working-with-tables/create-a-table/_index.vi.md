---
title: Cách Tạo Bảng trong Java
second_title: Aspose.Words cho Java
articleTitle: Tạo một Bảng
linktitle: Tạo một Bảng
description: "Cách tạo bảng khác nhau trong tài liệu của bạn bằng Java."
type: docs
weight: 20
url: /vi/java/create-a-table/
timestamp: 2024-10-21-11-17-44
---

Aspose.Words cho phép người dùng tạo bảng trong tài liệu từ đầu và cung cấp nhiều phương pháp khác nhau để làm điều đó. Bài viết này trình bày chi tiết cách thêm bảng có định dạng vào tài liệu của bạn bằng mỗi phương pháp, cũng như một sự so sánh về mỗi phương pháp ở cuối bài.

## Mẫu kiểu bảng mặc định

Bảng mới được tạo ra có giá trị mặc định tương tự như những giá trị được sử dụng trong Microsoft Word:

| Tính chất Bảng | Mặc định trong Aspose.Words |
| :- | :- |
| `Border Style` | `Single` |
| `Border Width` | `1/2 pt` |
| Màu Đường Viền | `Black` |
| `Left and Right Padding` | `5.4 pts` |
| `AutoFit Mode` | `AutoFit to Window` |
| `Allow AutoFit` | `True` |
{{% alert color="primary" %}}

Một bảng có thể là inline nếu nó được đặt chặt chẽ hoặc lơ lửng nếu nó có thể được đặt ở bất cứ đâu trên trang. Theo mặc định, Aspose.Words luôn tạo ra bảng theo kiểu in-line.

{{% /alert %}}

## Tạo một bảng với DocumentBuilder

Trong Aspose.Words, người dùng có thể tạo một bảng trong một tài liệu bằng cách sử dụng [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Lời giải thuật cơ bản cho việc tạo ra một bảng là như sau:

1. Khởi đầu bảng với [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable)
2. Thêm một ô vào bảng bằng cách sử dụng [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell) – điều này tự động bắt đầu một hàng mới
3. Tùy chọn, sử dụng thuộc tính [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getCellFormat) để chỉ định định dạng tế bào
4. Nhập nội dung của ô bằng cách sử dụng các phương pháp phù hợp **DocumentBuilder** như [Writeln](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln), [InsertImage](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage-byte), và các phương pháp khác
5. Lặp lại các bước từ 2 đến 4 cho đến khi hàng được hoàn tất
6. Gọi [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) để kết thúc hàng hiện tại
7. Tùy chọn, dùng thuộc tính [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getRowFormat) để chỉ định định dạng hàng
8. Lặp lại các bước từ 2 đến 7 cho đến khi bảng hoàn thành
9. Gọi [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) để hoàn thành việc xây dựng bàn

{{% alert color="primary" %}}

Chi tiết quan trọng:

"- [StartTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#startTable) cũng có thể được gọi trong một ô, trong trường hợp đó nó bắt đầu việc tạo ra một bảng lồng nhau bên trong ô đó."
- Sau khi gọi [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell), một ô mới được tạo ra và bất kỳ nội dung nào bạn thêm bằng các phương thức khác của lớp [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) sẽ được thêm vào ô hiện tại. Để tạo ra một ô mới cùng hàng với nó, gọi lại **InsertCell**.
- Nếu **InsertCell** được gọi ngay lập tức sau [EndRow](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow) và kết thúc một hàng, bảng sẽ tiếp tục trên một hàng mới.
The [EndTable](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable) phương pháp để kết thúc bảng chỉ nên được gọi một lần sau khi gọi **EndRow**. Gọi **EndTable** di chuyển con trỏ từ ô hiện tại sang vị trí ngay sau bảng.

{{% /alert %}}

Quá trình tạo bảng có thể được thấy rõ ràng trong bức tranh sau đây":

![creating-table-process](creating-table-process.jpg)

Mã ví dụ sau cho thấy cách tạo bảng đơn giản bằng **DocumentBuilder** với định dạng mặc định:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "create-simple-table.java" >}}

Mã ví dụ sau cho thấy cách tạo một bảng có định dạng bằng DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "formatted-table.java" >}}

Ví dụ mã sau cho thấy cách chèn bảng lồng nhau bằng cách sử dụng DocumentBuilder:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "nested-table.java" >}}

## Tạo bảng qua DOM (Document Object Model)

Bạn có thể chèn bảng trực tiếp vào DOM bằng cách thêm một nút [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) mới ở vị trí cụ thể nào đó.

Xin lưu ý rằng ngay sau khi tạo nút bảng, bảng sẽ hoàn toàn trống rỗng, tức là nó chưa chứa hàng và ô. Để chèn các hàng và tế bào vào một bảng, thêm các nút con thích hợp [Row](https://reference.aspose.com/words/java/com.aspose.words/run/) và [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) vào DOM.

{{% alert color="primary" %}}

Phương pháp tạo bảng này sử dụng cùng những mặc định bảng như khi sử dụng **DocumentBuilder**.

{{% /alert %}}

Mã ví dụ sau cho thấy cách xây dựng một bảng mới từ đầu bằng cách thêm các nút con thích hợp vào cây tài liệu:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-directly.java" >}}

## Tạo bảng từ HTML

Aspose.Words hỗ trợ chèn nội dung vào một tài liệu từ nguồn HTML bằng phương pháp [InsertHtml](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHtml-java.lang.String) Lời nhập có thể là một trang HTML đầy đủ hoặc chỉ là một đoạn trích nhỏ.

Sử dụng phương pháp này **InsertHtml**, người dùng có thể chèn bảng vào tài liệu bằng thẻ bảng như `<table>`, `<tr>`, `<td>`.

Mã ví dụ sau cho thấy cách chèn một bảng vào tài liệu từ một chuỗi chứa các thẻ HTML:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "insert-table-from-html.java" >}}

## Chèn bản sao của một bảng hiện có

Có những lúc bạn cần phải tạo bảng dựa trên bảng hiện có trong một tài liệu. Cách dễ nhất để nhân đôi một bảng trong khi vẫn giữ lại tất cả định dạng là để nhân bản Node Bảng bằng [deepClone](https://reference.aspose.com/words/java/com.aspose.words/node/#deepClone-boolean) phương pháp.

Cùng một kỹ thuật có thể được sử dụng để thêm bản sao của một hàng hoặc ô hiện có vào một bảng.

Mã ví dụ sau cho thấy cách sao chép bảng bằng các nhà xây dựng nút:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-complete-table.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải về tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Ví dụ mã sau cho thấy cách sao chép hàng cuối cùng của bảng và thêm nó vào bảng:

{{< gist "aspose-words-gists" "68616fbf7f092a743b66d4491578d18c" "clone-last-row.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Nếu bạn đang tìm kiếm để tạo bảng trong một tài liệu mà phát triển động với mỗi bản ghi từ nguồn dữ liệu của bạn, sau đó phương pháp trên không được khuyến nghị. Thay vào đó, đầu ra mong muốn dễ dàng đạt được bằng cách sử dụng Mail merge với vùng. Bạn có thể tìm hiểu thêm về kỹ thuật này ở mục [Mail Merge with Regions](/words/java/types-of-mail-merge-operations/).

## So sánh Cách Tạo Bảng

Aspose.Words cung cấp nhiều phương pháp để tạo bảng mới trong một tài liệu. Mỗi phương pháp có những ưu và nhược điểm của riêng nó nên lựa chọn nào để dùng thường phụ thuộc vào tình huống cụ thể.

Chúng ta hãy xem xét kỹ những cách tạo bảng này và so sánh ưu nhược điểm của chúng

| Phương pháp | Ưu điểm | Nhược điểm |
| :- | :- | :- |
| Đường Via `DocumentBuilder` | Phương pháp tiêu chuẩn để chèn bảng và các nội dung khác của tài liệu | Đôi khi khó tạo ra nhiều loại bảng khác nhau cùng một lúc với cùng một phiên bản trình tạo bảng |
| Via DOM | Phù hợp hơn với mã xung quanh tạo và chèn các nút trực tiếp vào DOM mà không cần sử dụng **DocumentBuilder** | Bảng được tạo ra "không trống": trước khi thực hiện hầu hết các hoạt động, bạn phải gọi [EnsureMinimum](https://reference.aspose.com/words/java/com.aspose.words/table/#ensureMinimum) để tạo bất kỳ nút con nào bị thiếu |
| Từ HTML | Có thể tạo một bảng mới từ nguồn HTML bằng cách sử dụng các thẻ như `<table>`, `<tr>`, `<td>` | Không phải tất cả các định dạng bảng khả dĩ Microsoft Word có thể được áp dụng vào HTML |
| Sao chép một bảng hiện có | Bạn có thể tạo bản sao của một bảng hiện hữu trong khi giữ lại tất cả định dạng hàng và ô | Phải loại bỏ các nút con thích hợp trước khi bảng sẵn sàng để sử dụng |
