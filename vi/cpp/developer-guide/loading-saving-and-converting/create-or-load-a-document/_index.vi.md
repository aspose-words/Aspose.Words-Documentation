---
title: Tạo Hoặc Tải Một Tài liệu trong C++
second_title: Aspose.Words cho C++
articleTitle: Tạo Hoặc Tải Tài liệu
linktitle: Tạo Hoặc Tải Tài liệu
type: docs
description: "Tạo một tài liệu trống hoặc để tải nó từ một tệp hoặc luồng bằng C++."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /vi/cpp/create-or-load-a-document/
---

Hầu như bất kỳ tác vụ nào bạn muốn thực hiện với Aspose.Words đều liên quan đến việc tải tài liệu. Lớp `Document` đại diện cho một tài liệu được tải vào bộ nhớ. Tài liệu có một số hàm tạo quá tải cho phép bạn tạo một tài liệu trống hoặc tải nó từ một tệp hoặc luồng. Tài liệu có thể được tải ở bất kỳ định dạng tải nào được hỗ trợ bởi Aspose.Words. Để biết danh sách tất cả các định dạng tải được hỗ trợ, hãy xem liệt kê [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/).

## Tạo Một Tài liệu mới {#create-a-new-document}

Chúng tôi sẽ gọi hàm tạo [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) mà không có tham số để tạo một tài liệu trống mới. Nếu bạn muốn tạo một tài liệu theo chương trình, cách đơn giản nhất là sử dụng lớp [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) để thêm nội dung tài liệu.

Ví dụ mã sau đây cho thấy cách tạo tài liệu bằng trình tạo tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Lưu ý các giá trị mặc định:

- Một tài liệu trống chứa một phần với các tham số mặc định, một đoạn trống, một số kiểu tài liệu. Trên thực tế, tài liệu này giống như kết quả của việc tạo "tài liệu Mới" trong Microsoft Word.
- Kích thước giấy tài liệu là [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/).**Letter**.

{{% /alert %}}

## Tải Tài liệu

Để tải một tài liệu hiện có ở bất kỳ định dạng `LoadFormat` nào, hãy chuyển tên tệp hoặc luồng vào một trong các hàm Tạo Tài liệu. Định dạng của tài liệu được tải được tự động xác định bởi phần mở rộng của nó.

### Tải từ Một Tập tin {#load-from-a-file}

Chuyển tên tệp dưới dạng chuỗi cho Hàm Tạo Tài liệu để mở tài liệu hiện có từ tệp.

Ví dụ mã sau đây cho thấy cách mở tài liệu từ tệp:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Tải từ Một Luồng {#load-from-a-stream}

Để mở tài liệu từ luồng, chỉ cần chuyển một đối tượng luồng có chứa tài liệu vào Hàm Tạo Tài liệu.

Ví dụ mã sau đây cho thấy cách mở tài liệu từ luồng:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
