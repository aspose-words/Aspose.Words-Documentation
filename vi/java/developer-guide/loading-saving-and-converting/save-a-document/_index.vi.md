---
title: Lưu một tài liệu trong Java
second_title: Aspose.Words cho Java
articleTitle: Lưu một Tài liệu
linktitle: Lưu một Tài liệu
type: docs
description: "Lưu một tài liệu ở bất kỳ định dạng nào được hỗ trợ bằng Java."
weight: 20
url: /vi/java/save-a-document/
---

Hầu hết các nhiệm vụ mà bạn cần thực hiện với Aspose.Words liên quan đến việc lưu một tài liệu. Để lưu một tài liệu Aspose.Words cung cấp phương thức [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save(java.lang.String) của lớp [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Tài liệu có thể được lưu ở bất kỳ định dạng nào được hỗ trợ bởi Aspose.Words. Để biết danh sách tất cả các định dạng lưu được hỗ trợ, hãy xem qua [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) enumaration.

## Lưu vào tập tin {#save-a-document-to-a-file}

Chỉ cần dùng phương thức [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String) với tên tệp. Aspose.Words sẽ xác định định dạng lưu từ phần mở rộng tệp bạn chỉ định.

Mã ví dụ cho thấy cách tải và lưu một tài liệu vào tệp:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSave-LoadAndSave.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Lưu vào một luồng {#save-a-document-to-a-stream}

Đưa một đối tượng dòng vào phương thức [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). Bất cần phải xác định rõ dạng lưu khi lưu vào một luồng.

Ví dụ mã sau cho thấy cách tải và lưu một tài liệu vào luồng:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadAndSaveToStream-LoadAndSaveToStream.java" >}}

Bạn có thể tải về tập tin mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

## Lưu vào PCL {#save-a-document-to-pcl}

Aspose.Words hỗ trợ lưu một tài liệu vào PCL (Ngôn ngữ lệnh in ấn) ". "Aspose.Words có thể lưu các tài liệu ở định dạng PCL 6 (PCL 6 Nâng cao hoặc PCL XL). Lớp "The `PclSaveOptions` class có thể dùng để chỉ rõ các tùy chọn bổ sung khi lưu tài liệu vào định dạng PCL".

Mã ví dụ sau cho thấy cách lưu một tài liệu sang PCL sử dụng các tùy chọn lưu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertDocumentToPCL-ConvertDocumentToPCL.java" >}}
