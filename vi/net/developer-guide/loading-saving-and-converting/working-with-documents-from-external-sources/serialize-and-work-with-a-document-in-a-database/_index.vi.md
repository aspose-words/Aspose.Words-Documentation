---
title: Tuần tự hóa tài liệu trong cơ sở dữ liệu
second_title: Aspose.Words cho .NET
articleTitle: Tuần tự hóa và làm việc với một tài liệu trong cơ sở dữ liệu
linktitle: Tuần tự hóa và làm việc với một tài liệu trong cơ sở dữ liệu
description: "Chuyển đổi tài liệu thành mảng byte để làm việc với tài liệu này trong cơ sở dữ liệu bằng C#. Bạn có thể lưu trữ và truy xuất tài liệu đến và từ cơ sở dữ liệu."
type: docs
weight: 10
url: /vi/net/serialize-and-work-with-a-document-in-a-database/
timestamp: 2024-07-09-19-00-42
---

Một trong những nhiệm vụ bạn có thể cần hoàn thành khi làm việc với tài liệu là lưu trữ và truy xuất các đối tượng **Document** đến và từ cơ sở dữ liệu. Ví dụ: điều này sẽ cần thiết nếu bạn đang triển khai bất kỳ loại hệ thống quản lý nội dung nào. Tất cả các phiên bản trước của tài liệu phải được lưu trữ trong hệ thống cơ sở dữ liệu. Khả năng lưu trữ tài liệu trong cơ sở dữ liệu cũng cực kỳ hữu ích khi ứng dụng của bạn cung cấp dịch vụ dựa trên web.

Aspose.Words cung cấp khả năng chuyển đổi tài liệu thành mảng byte cho công việc tiếp theo với tài liệu này trong cơ sở dữ liệu.

## Chuyển đổi một tài liệu thành mảng byte

Để lưu trữ một tài liệu trong cơ sở dữ liệu hoặc chuẩn bị một tài liệu để truyền qua web, thường cần phải tuần tự hóa tài liệu để thu được một mảng byte.

Để tuần tự hóa một đối tượng [Document](https://reference.aspose.com/words/net/aspose.words/document/) trong Aspose.Words:

1. Lưu nó vào **MemoryStream** bằng cách sử dụng nạp chồng phương thức [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) của lớp **Document**.
1. Gọi phương thức **ToArray**, phương thức này trả về một mảng byte biểu thị tài liệu ở dạng byte.

Sau đó, các bước trên có thể được đảo ngược để tải các byte trở lại đối tượng **Document**.

{{% alert color="primary" %}}

Định dạng lưu được chọn rất quan trọng để đảm bảo độ trung thực cao nhất được giữ lại khi lưu và tải lại vào đối tượng **Document**. Vì lý do này, nên sử dụng một loạt định dạng tệp OOXML.

{{% /alert %}}

Ví dụ bên dưới cho thấy cách tuần tự hóa một đối tượng **Document** để thu được một mảng byte và sau đó cách hủy tuần tự hóa mảng byte để lấy lại đối tượng **Document**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToByte-ConvertDocumentToByte.cs" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

## Lưu trữ, đọc và xóa tài liệu trong cơ sở dữ liệu

Phần này trình bày cách lưu tài liệu trong cơ sở dữ liệu rồi tải lại vào đối tượng `Document` để làm việc với nó. Để đơn giản, tên tệp là khóa dùng để lưu trữ và tìm nạp tài liệu từ cơ sở dữ liệu. Cơ sở dữ liệu chứa hai cột. Cột đầu tiên "Tên tệp" được lưu dưới dạng Chuỗi và được sử dụng để xác định tài liệu. Cột thứ hai "FileContent" được lưu trữ dưới dạng đối tượng `BLOB` lưu trữ đối tượng tài liệu ở dạng byte.

Ví dụ mã sau đây cho thấy cách thiết lập kết nối tới cơ sở dữ liệu và thực thi các lệnh:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenDatabaseConnection.cs" >}}

{{% alert color="primary" %}}

Trong ví dụ này, chúng tôi sử dụng cơ sở dữ liệu Microsoft Access .mdb để lưu trữ tài liệu Aspose.Words.

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách lưu tài liệu vào cơ sở dữ liệu, sau đó đọc lại cùng một tài liệu và cuối cùng xóa bản ghi chứa tài liệu khỏi cơ sở dữ liệu:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-OpenRetrieveAndDelete.cs" >}}

### Lưu tài liệu vào cơ sở dữ liệu

Để lưu tài liệu trong cơ sở dữ liệu, hãy chuyển đổi tài liệu này thành một mảng byte, như được mô tả ở đầu bài viết này. Sau đó, lưu mảng byte này vào trường cơ sở dữ liệu.

Ví dụ mã sau đây cho thấy cách lưu tài liệu vào cơ sở dữ liệu đã chỉ định:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-StoreToDatabase.cs" >}}

Chỉ định commandString, đây là một biểu thức SQL thực hiện tất cả công việc:

- Để lưu tài liệu vào cơ sở dữ liệu, lệnh "INSERT INTO" được sử dụng và một bảng được chỉ định cùng với các giá trị của hai trường bản ghi – FileName và FileContent. Để tránh các tham số bổ sung, tên tệp được lấy từ chính đối tượng **Document**. Giá trị trường `FileContent` được gán byte từ luồng bộ nhớ, chứa biểu diễn nhị phân của tài liệu được lưu trữ.
- Dòng mã còn lại thực hiện lệnh lưu trữ tài liệu Aspose.Words vào cơ sở dữ liệu.

### Truy xuất tài liệu từ cơ sở dữ liệu

Để truy xuất tài liệu từ cơ sở dữ liệu, hãy chọn bản ghi chứa dữ liệu tài liệu dưới dạng mảng byte. Sau đó tải mảng byte từ bản ghi vào **MemoryStream** và tạo đối tượng **Document** sẽ tải tài liệu từ **MemoryStream**.

Ví dụ về mã sau đây cho thấy cách truy xuất và trả về một tài liệu từ cơ sở dữ liệu đã chỉ định bằng cách sử dụng tên tệp làm khóa để tìm nạp tài liệu này:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-ReadFromDatabase.cs" >}}

{{% alert color="primary" %}}

Lệnh SQL "SELECT * FROM" được sử dụng để tìm nạp bản ghi thích hợp dựa trên tên tệp.

{{% /alert %}}

### Xóa tài liệu khỏi cơ sở dữ liệu

Để xóa tài liệu khỏi cơ sở dữ liệu, hãy sử dụng lệnh SQL thích hợp mà không cần bất kỳ thao tác nào trên đối tượng **Document**.

Ví dụ về mã sau đây cho biết cách xóa tài liệu khỏi cơ sở dữ liệu bằng cách sử dụng tên tệp để tìm nạp bản ghi:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-LoadAndSaveDocToDatabase-DeleteFromDatabase.cs" >}}
