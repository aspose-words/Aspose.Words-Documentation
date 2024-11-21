---
title: Làm việc với TextBox trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với TextBox
linktitle: Làm việc với TextBox
description: "Làm việc với các hộp văn bản trong tài liệu bằng Python."
type: docs
weight: 250
url: /vi/python-net/working-with-textboxes/
timestamp: 2024-01-27-14-07-04
---

Trong Aspose.Words, lớp [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) được sử dụng để chỉ định cách hiển thị văn bản bên trong hình dạng. Nó cung cấp một thuộc tính công khai có tên là [parent](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/parent/) để lấy hình dạng gốc cho hộp văn bản nhằm cho phép khách hàng tìm [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) được liên kết từ [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) được liên kết.

## Tạo một liên kết

Lớp [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) cung cấp phương thức [is_valid_link_target](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/is_valid_link_target/) để kiểm tra xem [TextBox](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/) có thể được liên kết với Hộp văn bản đích hay không.

Ví dụ về mã sau đây cho biết cách kiểm tra xem `TextBox` có thể được liên kết với Hộp văn bản đích hay không:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CreateALink.py" >}}

## Kiểm tra trình tự hộp văn bản

Có một số cách để hiển thị văn bản trong một hình dạng. [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/) có thể là Phần đầu, Phần giữa hoặc Phần đuôi của một chuỗi.

Ví dụ về mã sau đây cho biết cách kiểm tra xem **TextBox** là Đầu, Đuôi hay Giữa của chuỗi:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-CheckSequence.py" >}}

## Phá vỡ một liên kết

Sử dụng phương pháp [text_box](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/text_box/), bạn có thể ngắt liên kết tới **TextBox** tiếp theo.

Ví dụ về mã sau đây cho biết cách ngắt liên kết cho **TextBox**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_textboxes-BreakALink.py" >}}
