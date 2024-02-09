---
title: Làm việc với dãy trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với dãy
linktitle: Làm việc với dãy
description: "Làm việc với các phạm vi trong tài liệu bằng Python."
type: docs
weight: 130
url: /vi/python-net/working-with-ranges/
---

{{% alert color="primary" %}}

Trong Aspose.Words, [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) là một "cửa sổ phẳng" dẫn vào mô hình tài liệu dạng cây.

{{% /alert %}}

Nếu bạn đã từng làm việc với Microsoft Word Automation, có thể bạn biết rằng một trong những công cụ chính để kiểm tra và sửa đổi nội dung tài liệu là đối tượng [Range](https://reference.aspose.com/words/python-net/aspose.words/range/). [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) giống như một "cửa sổ" nhìn vào nội dung và định dạng tài liệu. Aspose.Words cũng có lớp [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) và nó được thiết kế để trông và hoạt động tương tự như **Range** trong Microsoft Word. Mặc dù **Range** không thể bao gồm một phần tùy ý của tài liệu và không có **Start** và **End**, nhưng bạn có thể truy cập phạm vi được bao phủ bởi bất kỳ nút tài liệu nào, kể cả chính [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Nói cách khác, mỗi nút có phạm vi riêng. Đối tượng [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) cho phép bạn truy cập và sửa đổi văn bản, dấu trang và các trường biểu mẫu trong phạm vi.

## Truy xuất văn bản thuần túy

Sử dụng thuộc tính [text](https://reference.aspose.com/words/python-net/aspose.words/range/text/) để truy xuất văn bản thuần túy, chưa được định dạng của dải ô.

Ví dụ về mã sau đây cho thấy cách lấy văn bản đơn giản, chưa được định dạng của một phạm vi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesGetText.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Xóa văn bản

Phạm vi cho phép xóa tất cả các ký tự của phạm vi bằng cách gọi [delete](https://reference.aspose.com/words/python-net/aspose.words/range/delete/)

Ví dụ mã sau đây cho thấy cách xóa tất cả các ký tự của một phạm vi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_ranges-RangesDeleteText.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}