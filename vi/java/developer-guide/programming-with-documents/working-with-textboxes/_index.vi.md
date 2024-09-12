---
title: Làm việc với Linked TextBox trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với các hộp văn bản liên kết
linktitle: Làm việc với các hộp văn bản liên kết
description: "Giới thiệu về tính năng hộp văn bản liên kết trong Aspose.Words cho Java."
type: docs
weight: 250
url: /vi/java/working-with-linked-textboxes/
---

Trong Aspose.Words, lớp [TextBox](https://reference.aspose.com/words/java/com.aspose.words/textbox/) được dùng để chỉ định cách hiển thị một văn bản bên trong một hình dạng. Nó cung cấp một thuộc tính công cộng có tên là cha mẹ để lấy hình dạng cha mẹ cho hộp văn bản cho phép khách hàng tìm liên kết [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) từ liên kết **TextBox**.

## Tạo Liên kết

Lớp **TextBox** cung cấp phương thức [IsValidLinkTarget](https://reference.aspose.com/words/java/com.aspose.words/textbox/#isValidLinkTarget-com.aspose.words.TextBox) để kiểm tra xem **TextBox** có thể được liên kết với mục tiêu **Textbox** hay không.

Ví dụ về mã này cho thấy làm thế nào để kiểm tra xem `TextBox` có thể được liên kết đến hộp văn bản đích không:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CreateALink.java" >}}


## Kiểm tra chuỗi TextBox

Có nhiều cách để hiển thị văn bản trong một hình dạng. Bộ [TextBox](https://reference.aspose.com/words/java/com.aspose.words/shape/#getTextBox) có thể là Đầu, Giữa hoặc Chốt của một chuỗi.

Mã ví dụ sau cho thấy cách kiểm tra xem **TextBox** có phải là Đầu, Đầu hay giữa của chuỗi:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-CheckSequence.java" >}}

## Rách một Liên kết

Sử dụng [BreakForwardLink](https://reference.aspose.com/words/java/com.aspose.words/textbox/#breakForwardLink) phương pháp bạn có thể phá vỡ liên kết đến trang tiếp theo **TextBox**.

Mã ví dụ sau đây cho thấy cách phá một liên kết cho một **TextBox**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-LinkedTextboxes-WorkingWithLinkedTextboxes-BreakALink.java" >}}
