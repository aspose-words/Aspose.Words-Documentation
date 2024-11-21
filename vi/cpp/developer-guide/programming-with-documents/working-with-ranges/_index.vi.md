---
title: Làm Việc Với Phạm vi trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Phạm vi
linktitle: Làm việc Với Phạm vi
description: "Giới thiệu Về Tính năng Phạm vi trong Aspose.Words cho C++."
type: docs
weight: 130
url: /vi/cpp/working-with-ranges/
timestamp: 2024-01-27-14-07-04
---

{{% alert color="primary" %}}

Trong Aspose.Words, Một Phạm vi là một" cửa sổ phẳng " thành một mô hình giống như cây của tài liệu.

{{% /alert %}}

Nếu bạn đã làm việc với Microsoft Word Tự động hóa, bạn có thể biết rằng một trong những công cụ chính để kiểm tra và sửa đổi nội dung tài liệu là đối tượng **Range**. **Range** giống như một" cửa sổ " vào nội dung tài liệu và định dạng.

Aspose.Words cũng có lớp [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) và nó được thiết kế để nhìn và hành động tương tự như **Range** trong Microsoft Word. Mặc dù **Range** không thể bao gồm một phần tùy ý của tài liệu và không có **Start** và **End**, bạn có thể truy cập phạm vi được bao phủ bởi bất kỳ nút tài liệu nào bao gồm cả chính [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Nói cách khác, mỗi nút có phạm vi riêng. Đối tượng **Range** cho phép bạn truy cập và sửa đổi các trường văn bản, dấu trang và biểu mẫu trong phạm vi.

## Lấy Văn Bản Thuần Túy

Sử dụng thuộc tính [Text](https://reference.aspose.com/words/cpp/aspose.words/range/get_text/) để truy xuất văn bản thuần túy, không được định dạng của phạm vi.

Ví dụ mã sau đây cho thấy làm thế nào để có được một văn bản đơn giản, không được định dạng của một phạm vi:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesGetText-RangesGetText.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Xóa Văn Bản

Phạm vi cho phép xóa tất cả các ký tự của phạm vi bằng cách gọi [Delete](https://reference.aspose.com/words/cpp/aspose.words/range/delete/).

Ví dụ mã sau đây cho thấy cách xóa tất cả các ký tự của một phạm vi:

{{< gist aspose-words-gists "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Ranges-RangesDeleteText-RangesDeleteText.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
