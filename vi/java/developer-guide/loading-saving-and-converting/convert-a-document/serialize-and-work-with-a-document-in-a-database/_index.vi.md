---
title: Seril hóa và làm việc với một tài liệu trong cơ sở dữ liệu
second_title: Aspose.Words cho Java
articleTitle: Seril hóa và làm việc với một tài liệu trong cơ sở dữ liệu
linktitle: Seril hóa và làm việc với một tài liệu trong cơ sở dữ liệu
description: "Chuyển một tài liệu thành một mảng byte cho việc làm việc với tài liệu đó trong một cơ sở dữ liệu. Bạn có thể lưu trữ và lấy lại một tài liệu từ và đến cơ sở dữ liệu bằng cách sử dụng Java."
type: docs
weight: 40
url: /vi/java/serialize-and-work-with-a-document-in-a-database/
---

Một trong những nhiệm vụ mà bạn có thể cần thực hiện khi làm việc với tài liệu là lưu trữ và truy xuất **Document** đối tượng vào và từ cơ sở dữ liệu. Ví dụ, việc này sẽ cần thiết nếu bạn đang thực hiện bất kỳ loại hệ thống quản lý nội dung nào. Tất cả các phiên bản trước của tài liệu phải được lưu trữ trong hệ thống cơ sở dữ liệu. Khả năng lưu trữ tài liệu trong cơ sở dữ liệu cũng cực kỳ hữu ích khi ứng dụng của bạn cung cấp một dịch vụ dựa trên web.

Aspose.Words cung cấp khả năng chuyển đổi một tài liệu thành một mảng byte cho công việc tiếp theo với tài liệu này trong cơ sở dữ liệu.

## Chuyển đổi Tài liệu thành Tượng Bầy Byte

Để lưu trữ tài liệu trong một cơ sở dữ liệu hoặc để chuẩn bị tài liệu cho việc truyền tải qua mạng web, thường là cần phải chuyển đổi tài liệu thành một mảng byte.

Để chuỗi (serialize) một [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) đối tượng trong Aspose.Words:

1. Lưu nó vào một **MemoryStream** bằng phương thức [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-int) của lớp **Document**.
1. Gọi phương thức **ToArray**, mà trả về một mảng các ký tự biểu diễn tài liệu ở dạng byte.

Những bước trên sau có thể đảo ngược để nạp các byte trở lại một **Document** đối tượng.

{{% alert color="primary" %}}

Định dạng lưu được chọn quan trọng để đảm bảo độ trung thành cao nhất vẫn được giữ lại khi lưu và tải lại vào **Document** đối tượng. Vì lý do này, đề xuất sử dụng một loạt các định dạng tập tin OOXML.

{{% /alert %}}

Ví dụ dưới đây cho thấy cách để serialize một đối tượng **Document** để có được một mảng byte, và sau đó cách để unserialize mảng byte này để có lại một đối tượng **Document**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToByte-ConvertDocumentToByte.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tập tin mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Lưu trữ, Đọc và Xóa một Tài liệu trong Cơ sở dữ liệu

Phần này cho thấy cách lưu một tài liệu trong cơ sở dữ liệu và sau đó tải nó trở lại trong một `Document` đối tượng để làm việc với nó. Để đơn giản hóa, tên tập tin là chìa khóa được sử dụng để lưu trữ và lấy các tài liệu từ cơ sở dữ liệu. Cơ sở dữ liệu có hai cột. Cột đầu tiên "TênFile" được lưu trữ dưới dạng một chuỗi và được dùng để xác định các tài liệu. Cột thứ hai "FileContent" được lưu trữ dưới dạng một `BLOB` đối tượng, mà lưu trữ đối tượng tài liệu ở dạng byte.

Mã ví dụ cho thấy cách thiết lập kết nối với một cơ sở dữ liệu và thực hiện lệnh:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenDatabaseConnection.java" >}}

{{% alert color="primary" %}}

Trong ví dụ này, chúng tôi sử dụng cơ sở dữ liệu MySQL để lưu trữ một Aspose.Words tài liệu.

{{% /alert %}}

Mã ví dụ sau cho thấy cách lưu tài liệu vào cơ sở dữ liệu, sau đó đọc lại cùng một tài liệu, và cuối cùng xóa bản ghi chứa tài liệu khỏi cơ sở dữ liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-OpenRetrieveAndDelete.java" >}}

### Lưu một Tài liệu vào Cơ sở dữ liệu

Để lưu một tài liệu trong một cơ sở dữ liệu, chuyển đổi tài liệu này thành một mảng của các ký tự byte, như đã được mô tả ở đầu bài viết này. Sau đó, lưu mảng byte này vào một trường cơ sở dữ liệu.

Mã ví dụ sau cho thấy cách lưu tài liệu vào cơ sở dữ liệu đã chỉ định:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-StoreToDatabase.java" >}}

Chỉ định "commandString", đó là một biểu thức SQL thực hiện tất cả các công việc:

"- Để lưu một tài liệu vào cơ sở dữ liệu, lệnh "INSERT INTO" được dùng và một bảng được chỉ định cùng với các giá trị của hai trường bản ghi – Tên_Tệp và Nội_Dung_Tệp." Để tránh các tham số bổ sung thì tên tập tin được lấy từ chính đối tượng **Document**. Giá trị trường `FileContent` được gán các byte từ luồng bộ nhớ chứa biểu diễn nhị phân của tài liệu đã lưu trữ.
"- Dòng mã còn lại thực thi lệnh lưu Aspose.Words tài liệu vào cơ sở dữ liệu."

### Lấy một tài liệu từ cơ sở dữ liệu

Để lấy một tài liệu từ cơ sở dữ liệu, hãy chọn bản ghi chứa dữ liệu tài liệu dưới dạng mảng của byte. Sau đó, tải byte array từ bản ghi vào **MemoryStream** và tạo một đối tượng **Document** sẽ tải tài liệu từ **MemoryStream**.

Mã ví dụ sau cho thấy cách lấy và trả về một tài liệu từ cơ sở dữ liệu được chỉ định sử dụng tên tệp là khóa để lấy tài liệu này:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-ReadFromDatabase.java" >}}

{{% alert color="primary" %}}

Lệnh SQL "SELECT * FROM" được dùng để lấy bản ghi thích hợp dựa trên tên tệp.

{{% /alert %}}

### Xóa một Tài liệu từ Cơ sở dữ liệu

Để xóa một tài liệu từ cơ sở dữ liệu, dùng lệnh SQL phù hợp mà không cần thao tác gì với đối tượng **Document**.

Mã ví dụ sau cho thấy cách xóa một tài liệu từ cơ sở dữ liệu sử dụng tên tệp để lấy bản ghi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveFromDatabase-DeleteFromDatabase.java" >}}
