---
title: Thay Đổi Kiểu Bảng Trong Tài liệu Word
second_title: Aspose.Words cho C++
articleTitle: Áp Dụng Kiểu Bảng
linktitle: Áp Dụng Kiểu Bảng
description: "Định dạng bảng nâng cao C++. Tạo kiểu bảng bằng C++. Áp dụng kiểu bảng C++."
type: docs
weight: 80
url: /vi/cpp/working-with-tablestyle/
---

Kiểu bảng xác định một tập hợp định dạng có thể dễ dàng áp dụng cho bảng. Định dạng như đường viền, bóng, căn chỉnh và phông chữ có thể được đặt theo kiểu bảng và áp dụng cho nhiều bảng để có giao diện nhất quán.

Aspose.Words hỗ trợ áp dụng kiểu bảng cho bảng và cũng có thể đọc các thuộc tính của bất kỳ kiểu bảng nào. Kiểu bảng được bảo toàn trong quá trình tải và lưu theo các cách sau:

- Các kiểu bảng ở định dạng DOCX và WordML được giữ nguyên khi tải và lưu vào các định dạng này
- Kiểu bảng được giữ nguyên khi tải và lưu ở định dạng DOC (nhưng không phải ở bất kỳ định dạng nào khác)
- Khi xuất sang các định dạng khác, kết xuất hoặc in, các kiểu bảng được mở rộng sang định dạng trực tiếp trong bảng, vì vậy tất cả các định dạng được giữ nguyên

## Tạo Kiểu Bảng

Người dùng có thể tạo một phong cách mới và thêm nó vào bộ sưu tập phong cách. Phương thức [Add](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/add/) được sử dụng để tạo kiểu bảng mới.

Ví dụ mã sau đây cho thấy cách tạo kiểu bảng do người dùng xác định mới:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "create-table-style.h" >}}

## Sao chép Kiểu Bảng Hiện có

Nếu cần, bạn có thể sao chép kiểu bảng đã tồn tại trong một tài liệu nhất định vào bộ sưu tập kiểu của mình bằng phương thức `AddCopy`.

Điều quan trọng cần biết là với bản sao này, các kiểu được liên kết cũng được sao chép.

Ví dụ mã sau đây cho thấy cách nhập kiểu từ tài liệu này sang tài liệu khác:

EXAMPLE

## Áp dụng Kiểu Bảng Hiện có

Aspose.Words cung cấp một [TableStyle](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/) kế thừa từ lớp [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). **TableStyle** tạo điều kiện cho người dùng áp dụng các tùy chọn kiểu khác nhau như đổ bóng, đệm, thụt lề, [CellSpacing](https://reference.aspose.com/words/cpp/aspose.words/tablestyle/get_cellspacing/) và [Font](https://reference.aspose.com/words/cpp/aspose.words/style/get_font/), v. v.

Ngoài ra, Aspose.Words cung cấp lớp [StyleCollection](https://reference.aspose.com/words/cpp/aspose.words/stylecollection/) và một vài thuộc tính của lớp `Table` để chỉ định kiểu bảng nào chúng ta sẽ làm việc: [Style](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_style/), [StyleIdentifier](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleidentifier/), [StyleName](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_stylename/), và [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/).

Aspose.Words cũng cung cấp lớp [ConditionalStyle](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyle/) đại diện cho định dạng đặc biệt được áp dụng cho một số khu vực của bảng với kiểu bảng được gán và [ConditionalStyleCollection](https://reference.aspose.com/words/cpp/aspose.words/conditionalstylecollection/) đại diện cho một tập hợp các đối tượng **ConditionalStyle**. Bộ sưu tập này chứa một tập hợp vĩnh viễn các mục đại diện cho một mục cho mỗi giá trị của loại liệt kê [ConditionalStyleType](https://reference.aspose.com/words/cpp/aspose.words/conditionalstyletype/). Liệt kê **ConditionalStyleType** xác định tất cả các vùng bảng có thể có mà định dạng có điều kiện có thể được xác định theo kiểu bảng.

Trong trường hợp này, định dạng có điều kiện có thể được xác định cho tất cả các vùng bảng có thể được xác định theo kiểu liệt kê ConditionalStyleType.

Ví dụ mã sau đây cho thấy cách xác định định dạng có điều kiện cho hàng tiêu đề của bảng:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "define-conditional-formatting.h" >}}

Bạn cũng có thể chọn phần bảng nào để áp dụng các kiểu, chẳng hạn như cột đầu tiên, cột cuối cùng, các hàng có dải. Chúng được liệt kê trong liệt kê [TableStyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/tablestyleoptions/) và được áp dụng thông qua thuộc tính [StyleOptions](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_styleoptions/). Việc liệt kê **TableStyleOptions** cho phép kết hợp bitwise các tính năng này.

Ví dụ mã sau đây cho thấy cách tạo một bảng mới với kiểu bảng được áp dụng:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "build-table-with-style.h" >}}

Các hình ảnh dưới đây cho thấy một đại diện của **Table Styles** trong Microsoft Word và các thuộc tính tương ứng của chúng trong Aspose.Words.

![formatting-table-style-aspose-words-cpp](applying-formatting-10.png)

## Lấy Định dạng Từ Kiểu Bảng và Áp dụng nó Làm Định Dạng Trực Tiếp

Aspose.Words cũng cung cấp phương thức [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/cpp/aspose.words/document/expandtablestylestodirectformatting/) để lấy định dạng được tìm thấy trên kiểu bảng và mở rộng nó lên các hàng và ô của bảng dưới dạng định dạng trực tiếp. Hãy thử kết hợp định dạng với kiểu bảng và kiểu ô.

{{% alert color="primary" %}}

Phương pháp này sẽ không ghi đè bất kỳ định dạng nào khác đã được áp dụng cho bảng thông qua định dạng hàng hoặc ô.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách mở rộng định dạng từ các kiểu lên các hàng và ô của bảng dưới dạng định dạng trực tiếp:

{{< gist "aspose-words-gists" "aeee44b29c42f9e9404ce57a80305383" "expand-formatting-on-cells-and-row-from-style.h" >}}