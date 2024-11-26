---
title: Tạo hoặc tải tài liệu trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Tạo hoặc tải tài liệu
linktitle: Tạo hoặc tải tài liệu
type: docs
url: /vi/python-net/create-or-load-a-document/
description: "Tạo một tài liệu trống hoặc tải nó từ một tệp hoặc luồng bằng Python."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
timestamp: 2024-01-27-14-07-04
---

Hầu hết mọi tác vụ bạn muốn thực hiện với Aspose.Words đều liên quan đến việc tải tài liệu. Lớp [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) đại diện cho một tài liệu được tải vào bộ nhớ. Tài liệu này có một số hàm tạo được nạp chồng cho phép bạn tạo một tài liệu trống hoặc tải nó từ một tệp hoặc luồng. Tài liệu có thể được tải ở bất kỳ định dạng tải nào được Aspose.Words hỗ trợ. Để biết danh sách tất cả các định dạng tải được hỗ trợ, hãy xem bảng liệt kê [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/).

## Tạo một tài liệu mới

Chúng ta sẽ gọi hàm tạo [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) không có tham số để tạo một tài liệu trống mới. Nếu bạn muốn tạo tài liệu theo chương trình, cách đơn giản nhất là sử dụng lớp [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) để thêm nội dung tài liệu.

Ví dụ mã sau đây cho biết cách tạo tài liệu bằng trình tạo tài liệu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Lưu ý các giá trị mặc định:

- Một tài liệu trống chứa một phần với các tham số mặc định, một đoạn văn trống, một số kiểu tài liệu. Trên thực tế, tài liệu này giống như kết quả của việc tạo "Tài liệu mới" trong Microsoft Word.
- Kích thước giấy tài liệu là [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter).

{{% /alert %}}

## Tải một tài liệu

Để tải tài liệu hiện có ở bất kỳ định dạng [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) nào, hãy chuyển tên tệp hoặc luồng vào một trong các hàm tạo [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Định dạng của tài liệu được tải sẽ được xác định tự động bởi phần mở rộng của nó.

### Tải từ một tập tin

Chuyển tên tệp dưới dạng chuỗi tới hàm tạo [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) để mở tài liệu hiện có từ một tệp.

Ví dụ mã sau đây cho biết cách mở tài liệu từ một tệp:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

### Tải từ một luồng

Để mở tài liệu từ một luồng, chỉ cần chuyển đối tượng luồng chứa tài liệu đó vào hàm tạo [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Ví dụ mã sau đây cho biết cách mở tài liệu từ luồng:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}
