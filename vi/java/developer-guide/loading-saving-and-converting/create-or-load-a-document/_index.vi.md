---
title: Tạo hoặc tải một tài liệu trong Java
second_title: Aspose.Words cho Java
articleTitle: Tạo hoặc Tải một Tài liệu
linktitle: Tạo hoặc Tải một Tài liệu
type: docs
weight: 10
url: /vi/java/create-or-load-a-document/
description: "Aspose.Words cho phép bạn tạo một tài liệu trống hoặc tải nó từ tệp hoặc luồng bằng cách sử dụng Java."
---

Hầu như bất kỳ một nhiệm vụ nào mà bạn muốn thực hiện với Aspose.Words đều liên quan đến việc tải một tài liệu. `Document` lớp đại diện cho một tài liệu được tải vào bộ nhớ. Tài liệu này có nhiều nhà máy cho phép bạn tạo một tài liệu trống hoặc tải nó từ một tập tin hoặc luồng. Tài liệu có thể được tải theo bất kỳ định dạng tải nào được Aspose.Words hỗ trợ. Để thấy danh sách định dạng tải lên được hỗ trợ, tham khảo [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) enumeração.

## Tạo Tài liệu Mới {#create-a-new-document}

Chúng ta sẽ gọi hàm tạo của [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) mà không có tham số để tạo ra một tài liệu mới trống. Nếu bạn muốn tạo một tài liệu theo chương trình, cách đơn giản nhất là dùng lớp [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder) để thêm nội dung tài liệu.

Mã ví dụ sau cho thấy cách tạo một tài liệu bằng Trình tạo Tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-CreateDocument-CreateDocument.java" >}}

{{% alert color="primary" %}}

Lưu ý các giá trị mặc định:

- Một tài liệu trống chứa một phần với các tham số mặc định, một đoạn văn bản trống, một vài phong cách tài liệu. Thực tế, tài liệu này giống như kết quả của việc tạo một tài liệu mới trong Microsoft Word.
- Kích thước giấy tài liệu là [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Tải một tài liệu

Để tải một tài liệu hiện có ở định dạng [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) nào, truyền tên tệp hoặc luồng vào một trong các xây dựng Tài liệu. Định dạng của tài liệu đã tải được tự động xác định bởi phần mở rộng của nó.

### Tải từ tệp {#load-from-a-file}

Truyền tên của một tập tin dưới dạng chuỗi đến hàm Document để mở một tài liệu hiện có từ một tập tin.

Ví dụ mã sau cho thấy cách mở một tài liệu từ một tập tin:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromFile.java" >}}

Bạn có thể tải về tập tin mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

### Tải từ một luồng {#load-from-a-stream}

Để mở một tài liệu từ một luồng chỉ đơn giản là truyền một đối tượng luồng chứa tài liệu vào trong hàm tạo tài liệu.

Mã ví dụ sau cho thấy cách mở một tài liệu từ một luồng:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenFromStream.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tập tin mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}
