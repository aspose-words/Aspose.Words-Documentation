---
title: Làm sao để dựng một bàn từ một `DataTable` trong Java
second_title: Aspose.Words cho Java
articleTitle: Xây dựng một Bảng từ `DataTable`
linktitle: Xây dựng một Bảng từ `DataTable`
description: "Ví dụ về việc điền vào bảng tài liệu từ cơ sở dữ liệu bên ngoài bằng Java."
type: docs
weight: 130
url: /vi/java/how-to-build-a-table-from-a-datatable/
---

Hầu hết các ứng dụng sẽ lấy dữ liệu từ một cơ sở dữ liệu và lưu trữ chúng trong hình thức của một **DataTable**. Bạn có thể muốn dễ dàng chèn dữ liệu này vào tài liệu của bạn dưới dạng một bảng mới và nhanh chóng áp dụng định dạng cho toàn bộ bảng.

{{% alert color="primary" %}}

Lưu ý cách chèn dữ liệu từ một **DataTable** vào bảng tài liệu là bằng cách sử dụng [Mail Merge with Regions](/words/java/mail-merge-and-reporting/#aboutmailmerge-mailmergewithregionsexplained). Kỹ thuật được trình bày trong bài viết này chỉ đề xuất nếu bạn không thể tạo ra mẫu phù hợp trước để kết hợp dữ liệu với, nghĩa là bạn cần mọi thứ xảy ra một cách tự động.

{{% /alert %}}

Sử dụng Aspose.Words, bạn có thể dễ dàng lấy dữ liệu từ một cơ sở dữ liệu và lưu trữ nó dưới dạng bảng:

1. Tạo một đối tượng mới [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) trên [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) của bạn.
1. Khởi tạo một bảng mới bằng cách sử dụng [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).
1. Nếu chúng ta muốn chèn tên của mỗi cột từ **DataTable** là hàng tiêu đề thì lặp lại qua từng cột dữ liệu và viết tên cột vào một hàng trong bảng.
1. Đi qua từng **DataRow** trong **DataTable**:
   1. Đi qua từng đối tượng trong **DataRow**.
   1. Chèn đối tượng vào tài liệu bằng cách sử dụng [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/). Phương pháp được dùng phụ thuộc vào loại đối tượng đang được chèn ví dụ [DocumentBuilder.writeln()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#writeln() cho văn bản và [DocumentBuilder.insertImage()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertImage(byte[]) cho một mảng byte đại diện cho hình ảnh.
   1. Kết thúc xử lý của hàng dữ liệu cũng kết thúc dòng đang được tạo bởi [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder) bằng cách sử dụng [DocumentBuilder.endRow()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endRow).
1. Một khi đã xử lý tất cả các hàng từ **DataTable** hãy kết thúc bảng bằng cách gọi [DocumentBuilder.endTable()](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#endTable).
1. Cuối cùng, chúng ta có thể thiết lập kiểu bảng mong muốn bằng cách sử dụng một trong các thuộc tính bảng phù hợp như [Table.getStyleIdentifier()](https://reference.aspose.com/words/java/com.aspose.words/tablestyle/#getStyleIdentifier) để tự động áp dụng định dạng cho toàn bộ bảng.
   Cụm dữ liệu sau trong **DataTable** được dùng trong ví dụ này:

![build-a-table-from-a-datatable-aspose-words-java-1](how-to-build-a-table-from-a-datatable-1.png)

Mã ví dụ sau đây cho thấy cách thực hiện thuật toán ở trên trong Aspose.Words:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "import-table-from-data-table.java" >}}

Phương pháp này sau đó có thể được gọi dễ dàng bằng cách sử dụng **DocumentBuilder** của bạn và dữ liệu.

Mã ví dụ sau cho thấy cách nhập dữ liệu từ một `DataTable` và chèn nó vào bảng mới trong tài liệu:

{{< gist "aspose-words-gists" "b5330afb035e842063be7ce93cefe219" "build-table-from-data-table.java" >}}

Bàn trong hình dưới được tạo ra bằng cách chạy đoạn mã trên.

![build-a-table-from-a-datatable-aspose-words-java-2](how-to-build-a-table-from-a-datatable-2.png)
