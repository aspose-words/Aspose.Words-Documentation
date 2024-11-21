---
title: Lưu Tài liệu trong C++
second_title: Aspose.Words cho C++
articleTitle: Lưu Tài liệu
linktitle: Lưu Tài liệu
type: docs
description: "Lưu tài liệu ở bất kỳ định dạng được hỗ trợ nào bằng C++."
keywords: "save a document c++, save a document to file c++, save a document to stream c++, save a document Aspose C++, save formats supported by Aspose.Words C++"
weight: 20
url: /vi/cpp/save-a-document/
timestamp: 2024-01-27-14-07-04
---

Hầu hết các nhiệm vụ bạn cần thực hiện với Aspose.Words liên quan đến việc lưu tài liệu. Để lưu tài liệu Aspose.Words cung cấp phương thức [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) của lớp [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Tài liệu có thể được lưu ở bất kỳ định dạng lưu nào được hỗ trợ bởi Aspose.Words. Để biết danh sách tất cả các định dạng lưu được hỗ trợ, hãy xem liệt kê [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/).

## Lưu Vào Tệp {#save-a-document-to-a-file}

Chỉ cần sử dụng phương thức [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) với tên tệp. Aspose.Words sẽ xác định định dạng lưu từ phần mở rộng tệp mà bạn chỉ định.

Ví dụ mã sau đây cho thấy cách tải và lưu tài liệu vào tệp:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-LoadAndSave.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Lưu Vào Luồng {#save-a-document-to-a-stream}

Chuyển một đối tượng luồng sang phương thức [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Nó cần thiết để chỉ định định dạng lưu rõ ràng khi lưu vào luồng.

Ví dụ mã sau đây cho thấy cách tải và lưu tài liệu vào luồng:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-LoadAndSaveToStream.cpp" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).


## Lưu vào PCL {#save-a-document-to-pcl}

Aspose.Words hỗ trợ lưu tài liệu vào PCL (Ngôn ngữ Lệnh Máy In). Aspose.Words có thể lưu tài liệu vào PCL 6 (PCL 6 định dạng nâng cao hoặc PCL XL). Lớp `PclSaveOptions` có thể được sử dụng để chỉ định các tùy chọn bổ sung khi lưu tài liệu vào định dạng PCL.

Ví dụ mã sau đây cho thấy cách lưu tài liệu thành PCL bằng cách sử dụng các tùy chọn lưu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToPCL-ConvertDocumentToPCL.cpp" >}}
