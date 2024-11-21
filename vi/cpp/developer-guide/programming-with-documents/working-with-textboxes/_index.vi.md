---
title: Làm việc với TextBoxes trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc với TextBoxes
linktitle: Làm việc với TextBoxes
description: "Giới thiệu về tính năng hộp văn bản được liên kết trong Aspose.Words cho C++."
type: docs
weight: 250
url: /vi/cpp/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

Trong Aspose.Words, lớp [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/) được sử dụng để chỉ định cách văn bản được hiển thị bên trong một hình dạng. Nó hiển thị một thuộc tính công khai có tên **Parent** để có được hình dạng cha mẹ cho hộp văn bản để khách hàng có thể tìm thấy [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) được liên kết từ **TextBox** được liên kết.

## Tạo Một Liên Kết

Lớp **TextBox** cung cấp phương thức [IsValidLinkTarget](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/isvalidlinktarget/) để kiểm tra xem **TextBox** có thể được liên kết với mục tiêu **Textbox** hay không.

Ví dụ mã sau đây cho thấy cách kiểm tra xem `TextBox` có thể được liên kết với hộp văn bản đích hay không:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cpp" >}}


## Kiểm Tra Trình Tự TextBox

Có một số cách để hiển thị văn bản trong một hình dạng. [TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_textbox/) có Thể Là Đầu, Giữa hoặc Đuôi của một chuỗi.

Ví dụ mã sau đây cho thấy cách kiểm tra xem **TextBox** là Đầu, Đuôi hoặc Giữa chuỗi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cpp" >}}

## Phá Vỡ Một Liên kết

Sử dụng phương thức [BreakForwardLink](https://reference.aspose.com/words/cpp/aspose.words.drawing/textbox/breakforwardlink/), bạn có thể phá vỡ liên kết đến **TextBox** tiếp theo.

Ví dụ mã sau đây cho thấy cách phá vỡ một liên kết cho **TextBox**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cpp" >}}
