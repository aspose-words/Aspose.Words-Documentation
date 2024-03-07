---
title: Làm việc với dãy trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với dãy
linktitle: Làm việc với dãy
description: "Giới thiệu tính năng Phạm vi trong Aspose.Words cho .NET."
type: docs
weight: 130
url: /vi/net/working-with-ranges/
---

{{% alert color="primary" %}}

Trong Aspose.Words, Phạm vi là một "cửa sổ phẳng" dẫn vào mô hình tài liệu dạng cây.

{{% /alert %}}

Nếu bạn đã từng làm việc với Microsoft Word Automation, có thể bạn biết rằng một trong những công cụ chính để kiểm tra và sửa đổi nội dung tài liệu là đối tượng **Range**. **Range** giống như một "cửa sổ" nhìn vào nội dung và định dạng tài liệu.

Aspose.Words cũng có lớp [Range](https://reference.aspose.com/words/net/aspose.words/range/) và nó được thiết kế để trông và hoạt động tương tự như **Range** trong Microsoft Word. Mặc dù **Range** không thể bao gồm một phần tùy ý của tài liệu và không có **Start** và **End**, nhưng bạn có thể truy cập vào phạm vi được bao phủ bởi bất kỳ nút tài liệu nào, kể cả chính [Document](https://reference.aspose.com/words/net/aspose.words/document/). Nói cách khác, mỗi nút có phạm vi riêng. Đối tượng **Range** cho phép bạn truy cập và sửa đổi văn bản, dấu trang và các trường biểu mẫu trong phạm vi.

## Truy xuất văn bản thuần túy

Sử dụng thuộc tính [Text](https://reference.aspose.com/words/net/aspose.words/range/text/) để truy xuất văn bản thuần túy, chưa được định dạng của dải ô.

Ví dụ về mã sau đây cho thấy cách lấy văn bản đơn giản, chưa được định dạng của một phạm vi:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Xóa văn bản

Phạm vi cho phép xóa tất cả các ký tự của phạm vi bằng cách gọi [Delete](https://reference.aspose.com/words/net/aspose.words/range/delete/).

Ví dụ mã sau đây cho thấy cách xóa tất cả các ký tự của một phạm vi:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](ttps://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}