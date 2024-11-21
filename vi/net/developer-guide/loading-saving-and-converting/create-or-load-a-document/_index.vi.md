---
title: Tạo hoặc tải tài liệu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Tạo hoặc tải tài liệu
linktitle: Tạo hoặc tải tài liệu
type: docs
url: /vi/net/create-or-load-a-document/
description: "Tạo một tài liệu trống hoặc tải nó từ một tệp hoặc luồng bằng C#."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
timestamp: 2024-07-09-19-00-42
---

Hầu hết mọi tác vụ bạn muốn thực hiện với Aspose.Words đều liên quan đến việc tải tài liệu. Lớp `Document` đại diện cho một tài liệu được tải vào bộ nhớ. Tài liệu này có một số hàm tạo được nạp chồng cho phép bạn tạo một tài liệu trống hoặc tải nó từ một tệp hoặc luồng. Tài liệu có thể được tải ở bất kỳ định dạng tải nào được Aspose.Words hỗ trợ. Để biết danh sách tất cả các định dạng tải được hỗ trợ, hãy xem bảng liệt kê [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/).

## Tạo một tài liệu mới {#create-a-new-document}

Chúng ta sẽ gọi hàm tạo [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) không có tham số để tạo một tài liệu trống mới. Nếu bạn muốn tạo tài liệu theo chương trình, cách đơn giản nhất là sử dụng lớp [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) để thêm nội dung tài liệu.

Ví dụ mã sau đây cho biết cách tạo tài liệu bằng trình tạo tài liệu:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Lưu ý các giá trị mặc định:

- Một tài liệu trống chứa một phần với các tham số mặc định, một đoạn văn trống, một số kiểu tài liệu. Trên thực tế, tài liệu này giống như kết quả của việc tạo "Tài liệu mới" trong Microsoft Word.
- Khổ giấy tài liệu là [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Tải tài liệu {#load-a-document}

Để tải tài liệu hiện có ở bất kỳ định dạng [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) nào, hãy chuyển tên tệp hoặc luồng vào một trong các hàm tạo Tài liệu. Định dạng của tài liệu được tải sẽ được xác định tự động bởi phần mở rộng của nó.

### Tải từ tệp {#load-from-a-file}

Chuyển tên tệp dưới dạng chuỗi tới hàm tạo Tài liệu để mở tài liệu hiện có từ một tệp.

Ví dụ mã sau đây cho biết cách mở tài liệu từ một tệp:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

### Tải từ luồng {#load-from-a-stream}

Để mở tài liệu từ một luồng, chỉ cần chuyển đối tượng luồng chứa tài liệu đó vào hàm tạo Tài liệu.

Ví dụ mã sau đây cho biết cách mở tài liệu từ luồng:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
