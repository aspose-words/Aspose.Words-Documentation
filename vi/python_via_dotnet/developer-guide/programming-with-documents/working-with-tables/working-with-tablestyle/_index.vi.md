---
title: Thay đổi kiểu bảng trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Áp dụng kiểu bảng
linktitle: Áp dụng kiểu bảng
description: "Định dạng bảng nâng cao C#. Tạo kiểu bảng bằng Python. Áp dụng kiểu bảng Python."
type: docs
weight: 80
url: /vi/python-net/working-with-tablestyle/
---

Kiểu bảng xác định một tập hợp định dạng có thể dễ dàng áp dụng cho bảng. Định dạng như đường viền, tô bóng, căn chỉnh và phông chữ có thể được đặt theo kiểu bảng và áp dụng cho nhiều bảng để có giao diện nhất quán.

Aspose.Words hỗ trợ áp dụng kiểu bảng cho bảng và đọc các thuộc tính của bất kỳ kiểu bảng nào. Kiểu bảng được giữ nguyên trong quá trình tải và lưu theo các cách sau:

- Kiểu bảng ở định dạng DOCX và WordML được giữ nguyên khi tải và lưu vào các định dạng này
- Kiểu bảng được giữ nguyên khi tải và lưu ở định dạng DOC (nhưng không sang bất kỳ định dạng nào khác)
- Khi xuất sang các định dạng khác, hiển thị hoặc in, kiểu bảng được mở rộng để định dạng trực tiếp trong bảng, do đó tất cả định dạng được giữ nguyên

## Tạo kiểu bảng

Người dùng có thể tạo một kiểu mới và thêm nó vào bộ sưu tập kiểu. Phương thức [Add](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/add/) được sử dụng để tạo kiểu bảng mới.

Ví dụ mã sau đây cho thấy cách tạo kiểu bảng mới do người dùng xác định:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "create-table-style.py" >}}

## Sao chép kiểu bảng hiện có

Nếu cần, bạn có thể sao chép kiểu bảng đã tồn tại trong một tài liệu nhất định vào bộ sưu tập kiểu của mình bằng phương pháp `AddCopy`.

Điều quan trọng cần biết là với việc sao chép này, các kiểu được liên kết cũng được sao chép.

Ví dụ về mã sau đây cho biết cách nhập kiểu từ tài liệu này sang tài liệu khác:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "copy-style-different-document.py" >}}

## Áp dụng kiểu bảng hiện có

Aspose.Words cung cấp [TableStyle](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/) được kế thừa từ lớp [Style](https://reference.aspose.com/words/python-net/aspose.words/style/). **TableStyle** tạo điều kiện cho người dùng áp dụng các tùy chọn kiểu khác nhau như đổ bóng, đệm, thụt lề, [CellSpacing](https://reference.aspose.com/words/python-net/aspose.words/tablestyle/cell_spacing/) và [Font](https://reference.aspose.com/words/python-net/aspose.words/style/font/), v.v.

Ngoài ra, Aspose.Words còn cung cấp lớp [StyleCollection](https://reference.aspose.com/words/python-net/aspose.words/stylecollection/) và một số thuộc tính của lớp `Table` để chỉ định kiểu bảng nào chúng ta sẽ làm việc với: [Style](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style/), [StyleIdentifier](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_identifier/), [StyleName](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_name/) và [StyleOptions](https://reference.aspose.com/words/net/aspose.words.tables/table/styleoptions/).

Aspose.Words cũng cung cấp lớp [ConditionalStyle](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyle/) thể hiện định dạng đặc biệt được áp dụng cho một số vùng của bảng với kiểu bảng được chỉ định và [ConditionalStyleCollection](https://reference.aspose.com/words/python-net/aspose.words/conditionalstylecollection/) đại diện cho một tập hợp các đối tượng **ConditionalStyle**. Bộ sưu tập này chứa một tập hợp các mục cố định đại diện cho một mục cho mỗi giá trị của kiểu liệt kê [ConditionalStyleType](https://reference.aspose.com/words/python-net/aspose.words/conditionalstyletype/). Bảng liệt kê **ConditionalStyleType** xác định tất cả các vùng bảng có thể có mà định dạng có điều kiện có thể được xác định theo kiểu bảng.

Trong trường hợp này, định dạng có điều kiện có thể được xác định cho tất cả các vùng bảng có thể được xác định theo kiểu liệt kê ConditionalStyleType.

Ví dụ mã sau đây cho thấy cách xác định định dạng có điều kiện cho hàng tiêu đề của bảng:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "define-conditional-formatting.py" >}}

Bạn cũng có thể chọn các phần của bảng để áp dụng kiểu, chẳng hạn như cột đầu tiên, cột cuối cùng, các hàng được phân dải. Chúng được liệt kê trong bảng liệt kê [TableStyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/tablestyleoptions/) và được áp dụng thông qua thuộc tính [StyleOptions](https://reference.aspose.com/words/python-net/aspose.words.tables/table/style_options/). Việc liệt kê **TableStyleOptions** cho phép kết hợp các tính năng này theo từng bit.

Ví dụ mã sau đây cho thấy cách tạo bảng mới với kiểu bảng được áp dụng:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "build-table-with-style.py" >}}

Các hình ảnh bên dưới thể hiện **Table Styles** trong Microsoft Word và các thuộc tính tương ứng của chúng trong Aspose.Words.

![formatting-table-style-aspose-words-python](/words/python-net/working-with-tablestyle/applying-formatting-10.png)



## Làm việc với kiểu bảng

Kiểu bảng xác định một tập hợp định dạng có thể dễ dàng áp dụng cho bảng. Định dạng như đường viền, tô bóng, căn chỉnh và phông chữ có thể được đặt theo kiểu bảng và áp dụng cho nhiều bảng để có giao diện nhất quán.

Aspose.Words hỗ trợ áp dụng kiểu bảng cho bảng và đọc các thuộc tính của bất kỳ kiểu bảng nào. Kiểu bảng được giữ nguyên trong quá trình tải và lưu theo các cách sau:

- Kiểu bảng ở định dạng DOCX và WordML được giữ nguyên khi tải và lưu vào các định dạng này.
- Kiểu bảng được giữ nguyên khi tải và lưu ở định dạng DOC (nhưng không sang bất kỳ định dạng nào khác).
- Khi xuất sang các định dạng khác, hiển thị hoặc in, kiểu bảng được mở rộng để định dạng trực tiếp trên bảng để tất cả định dạng được giữ nguyên.

Hiện tại, bạn không thể tạo kiểu bảng mới. Bạn chỉ có thể áp dụng các kiểu bảng dựng sẵn hoặc kiểu bảng tùy chỉnh đã tồn tại trong tài liệu cho một bảng

## Lấy định dạng từ kiểu bảng và áp dụng nó làm định dạng trực tiếp

Aspose.Words cũng cung cấp phương pháp [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/python-net/aspose.words/document/expand_table_styles_to_direct_formatting/#default) để lấy định dạng tìm thấy trên kiểu bảng và mở rộng nó sang các hàng và ô của bảng dưới dạng định dạng trực tiếp. Hãy thử kết hợp định dạng với kiểu bảng và kiểu ô.

{{% alert color="primary" %}}

Phương pháp này sẽ không ghi đè bất kỳ định dạng nào khác đã được áp dụng cho bảng thông qua định dạng hàng hoặc ô.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách mở rộng định dạng từ kiểu sang các hàng và ô của bảng dưới dạng định dạng trực tiếp:

{{< gist "aspose-words-gists" "1825da859a3400b9777f6c745a0889aa" "expand-formatting-on-cells-and-row-from-style.py" >}}