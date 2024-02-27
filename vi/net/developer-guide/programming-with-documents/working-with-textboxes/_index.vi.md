---
title: Làm việc với TextBox trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với TextBox
linktitle: Làm việc với TextBox
description: "Giới thiệu tính năng hộp văn bản được liên kết trong Aspose.Words cho .NET."
type: docs
weight: 250
url: /vi/net/working-with-textboxes/
---

Trong Aspose.Words, lớp [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/) được sử dụng để chỉ định cách hiển thị văn bản bên trong hình dạng. Nó hiển thị một thuộc tính công khai có tên **Parent** để lấy hình dạng gốc cho hộp văn bản để khách hàng có thể tìm thấy [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) được liên kết từ **TextBox** được liên kết.

## Tạo một liên kết

Lớp **TextBox** cung cấp phương thức [IsValidLinkTarget](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/isvalidlinktarget/) để kiểm tra xem **TextBox** có thể được liên kết với **Textbox** đích hay không.

Ví dụ về mã sau đây cho biết cách kiểm tra xem `TextBox` có thể được liên kết với Hộp văn bản đích hay không:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CreateALink.cs" >}}

## Kiểm tra trình tự hộp văn bản

Có một số cách để hiển thị văn bản trong một hình dạng. [TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shape/textbox/) có thể là Phần đầu, Phần giữa hoặc Phần đuôi của một chuỗi.

Ví dụ về mã sau đây cho biết cách kiểm tra xem **TextBox** là Đầu, Đuôi hay Giữa của chuỗi:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-CheckSequence.cs" >}}

## Phá vỡ một liên kết

Sử dụng phương pháp [BreakForwardLink](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/breakforwardlink/), bạn có thể ngắt liên kết tới **TextBox** tiếp theo.

Ví dụ về mã sau đây cho biết cách ngắt liên kết cho **TextBox**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Linked-Textboxes-WorkingWithLinkedTextboxes-BreakALink.cs" >}}
