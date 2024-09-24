---
title: Làm việc với các khoảng trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Phạm vi
linktitle: Làm việc với Phạm vi
description: "Giới thiệu về tính năng `Range` trong Aspose.Words cho Java."
type: docs
weight: 130
url: /vi/java/working-with-ranges/
---

{{% alert color="primary" %}}

Trong Aspose.Words một phạm vi là một "cửa sổ phẳng" vào một mô hình cây khác của tài liệu.

{{% /alert %}}

Nếu bạn đã làm việc với Microsoft Word Tự động hóa, bạn có thể biết rằng một trong những công cụ chính để kiểm tra và sửa đổi nội dung tài liệu là đối tượng `Range` .Range. Range giống như một "cửa sổ" vào nội dung và định dạng tài liệu.

Aspose.Words cũng có lớp [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) và nó được thiết kế để trông giống và hành động như **Range** trong Microsoft Word. Mặc dù **Range** không thể bao phủ một phần tùy ý của tài liệu và nó không có **Start** và **End**, bạn có thể truy cập khoảng cách được bao phủ bởi bất kỳ nút tài liệu nào, kể cả bản thân [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Nói cách khác, mỗi nút có phạm vi riêng của nó. Đối tượng **Range** cho phép bạn truy cập và thay đổi văn bản, dấu đánh chỉ sách và trường biểu mẫu trong phạm vi đó.

## Khai phục văn bản thuần túy

Sử dụng thuộc tính [Text](https://reference.aspose.com/words/java/com.aspose.words/range/#getText) để lấy lại văn bản không định dạng của phạm vi.

Mã ví dụ sau cho thấy cách lấy văn bản thuần túy, không định dạng của một phạm vi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesGetText-RangesGetText.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Xóa văn bản

Lớp `Range` cho phép xóa tất cả các ký tự trong một phạm vi bằng cách gọi [delete](https://reference.aspose.com/words/java/com.aspose.words/range/#delete).

Mã ví dụ sau cho thấy cách xóa tất cả các ký tự của một phạm vi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Ranges-RangesDeleteText-RangesDeleteText.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## 