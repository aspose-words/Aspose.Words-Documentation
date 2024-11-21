---
title: Làm việc với kiểu bảng trong Java
second_title: Aspose.Words cho Java
articleTitle: Áp dụng Phong cách Bảng
linktitle: Áp dụng Phong cách Bảng
description: "Định dạng bảng nâng cao Java. Tạo một kiểu bảng với Java. Giới thiệu về định dạng bảng nâng cao,` `Kiểu bảng sử dụng Java."
type: docs
weight: 80
url: /vi/java/working-with-tablestyle/
timestamp: 2024-01-27-14-07-04
---

Một kiểu bàn định nghĩa một tập hợp định dạng có thể được áp dụng dễ dàng cho một bảng. Định dạng như là đường viền, bóng màu, sắp xếp và phông chữ có thể được đặt trong một phong cách bảng và áp dụng cho nhiều bảng cho một xuất hiện nhất quán.

Aspose.Words hỗ trợ áp dụng một kiểu bảng cho một bảng và cũng đọc thuộc tính của bất kỳ kiểu bảng nào. Các kiểu bảng được giữ nguyên trong việc tải và lưu ở các cách sau đây:

- Các kiểu bảng trong định dạng DOCX và WordML được lưu giữ khi tải hoặc lưu vào các định dạng này
"- Các kiểu bảng được giữ nguyên khi tải và lưu ở định dạng DOC (nhưng không phải ở bất kỳ định dạng nào khác)"
- Khi xuất sang các định dạng khác, trình bày hoặc in, kiểu bảng được mở rộng thành định dạng trực tiếp trong bảng, vì vậy tất cả định dạng đều được giữ lại

## Tạo một kiểu bảng

Người dùng có thể tạo ra một kiểu mới và thêm vào bộ sưu tập kiểu dáng. Phương pháp [Add](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) dùng để tạo một phong cách bảng mới.

Mã ví dụ sau cho thấy cách tạo một kiểu bảng mới được xác định người dùng:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "create-table-style.java" >}}

## Sao chép một phong cách bảng hiện có

Nếu cần thiết, bạn có thể sao chép một kiểu bảng đã có trong một tài liệu nào đó vào bộ sưu tập kiểu của bạn bằng phương pháp `AddCopy`.

Điều quan trọng là phải biết rằng với việc sao chép này, những kiểu liên kết cũng được sao chép.

Mã ví dụ sau cho thấy cách nhập một phong cách từ một tài liệu sang tài liệu khác:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "copy-style-different-document.java" >}}

## Áp dụng một phong cách bảng hiện có

Aspose.Words cung cấp một [TableStyle](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/) được thừa hưởng từ lớp [Style](https://reference.aspose.com/words/java/com.aspose.words/style/). **TableStyle** giúp người dùng áp dụng các tùy chọn phong cách khác nhau như bóng đổ, lề đệm, thụt lề, [CellSpacing](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getCellSpacing) và [Font](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getFont), v.v...

Ngoài ra, Aspose.Words cung cấp lớp [StyleCollection](https://reference.aspose.com/words/java/com.aspose.words/stylecollection/) và một vài thuộc tính của lớp `Table` để chỉ định phong cách bảng chúng ta sẽ làm việc với: [Style](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyle), [StyleIdentifier](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleIdentifier-int), [StyleName](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleName) và [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#setStyleOptions-int).

Aspose.Words cũng cung cấp [ConditionalStyle](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyle/) lớp đại diện cho định dạng đặc biệt được áp dụng cho một khu vực của một bảng với kiểu bảng được gán, và [ConditionalStyleCollection](https://reference.aspose.com/words/java/com.aspose.words/conditionalstylecollection/) đại diện cho một bộ sưu tập **ConditionalStyle** đối tượng. Bộ sưu tập này chứa một bộ sưu tập ổn định các mặt hàng đại diện cho một mặt hàng cho mỗi giá trị của kiểu enum [ConditionalStyleType](https://reference.aspose.com/words/java/com.aspose.words/conditionalstyletype/). The **ConditionalStyleType** enum định nghĩa tất cả các khu vực bảng có thể có để định nghĩa định dạng điều kiện trong một kiểu bảng.

Trong trường hợp này định dạng có điều kiện có thể được xác định cho tất cả các khu vực bảng được xác định dưới kiểu đếm số ConditionalStyleType.

Mã ví dụ dưới đây cho thấy cách định nghĩa định dạng điều kiện cho hàng tiêu đề của bảng:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "define-conditional-formatting.java" >}}

Bạn cũng có thể chọn những phần bảng nào để áp dụng kiểu trang trí, chẳng hạn như cột đầu tiên, cột cuối cùng, và các hàng được phân cách. Họ được liệt kê trong danh sách [TableStyleOptions](https://reference.aspose.com/words/java/com.aspose.words/tablestyleoptions/) và được áp dụng qua thuộc tính [StyleOptions](https://reference.aspose.com/words/java/com.aspose.words/table/#getStyleOptions). The **TableStyleOptions** enum cho phép kết hợp những tính năng này theo cách bitwise.

Ví dụ mã sau cho thấy cách tạo một bảng mới với một phong cách bảng được áp dụng:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "build-table-with-style.java" >}}

Hình dưới đây cho thấy một biểu diễn của **Table Styles** trong Microsoft Word và các thuộc tính tương ứng trong Aspose.Words.

![table-style-aspose-words-java](working-with-table-styles-1.png)

## Lấy Định dạng từ Phong cách Bảng và Áp dụng nó như là Định dạng Trực tiếp

Aspose.Words cũng cung cấp phương thức [ExpandTableStylesToDirectFormatting](https://reference.aspose.com/words/java/com.aspose.words/document/#expandTableStylesToDirectFormatting) để áp dụng định dạng được tìm thấy trên kiểu bảng và mở rộng nó lên các hàng và ô của bảng như định dạng trực tiếp. Thử kết hợp định dạng với kiểu bảng và kiểu ô.

{{% alert color="primary" %}}

Phương pháp này sẽ không ghi đè lên bất kỳ định dạng nào đã áp dụng cho bảng thông qua một hàng hoặc định dạng tế bào khác.

{{% /alert %}}

Mã ví dụ dưới đây cho thấy cách mở rộng định dạng từ các kiểu thành các hàng và ô bảng như định dạng trực tiếp:

{{< gist "aspose-words-gists" "f1d06175603c48e6dabf5a2eea01207c" "expand-formatting-on-cells-and-row-from-style.java" >}}
