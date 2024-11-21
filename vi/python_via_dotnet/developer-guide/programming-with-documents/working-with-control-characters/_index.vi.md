---
title: Làm việc với các ký tự điều khiển
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với các ký tự điều khiển
linktitle: Làm việc với các ký tự điều khiển
description: "Giới thiệu cách làm việc với các ký tự điều khiển trong Aspose.Words cho Python."
type: docs
weight: 400
url: /vi/python-net/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Tài liệu Microsoft Word có thể chứa nhiều ký tự khác nhau có ý nghĩa đặc biệt. Thông thường chúng được sử dụng cho mục đích định dạng và không được vẽ ở chế độ thông thường. Bạn có thể làm cho chúng hiển thị nếu bạn nhấp vào nút Hiển thị/Ẩn Dấu định dạng nằm trên thanh công cụ Chuẩn.

Đôi khi bạn có thể cần thêm hoặc xóa các ký tự trong/khỏi văn bản. Ví dụ: khi lấy văn bản theo chương trình từ tài liệu, Aspose.Words giữ lại hầu hết các ký tự điều khiển, vì vậy nếu bạn cần làm việc với văn bản này, có lẽ bạn nên xóa hoặc thay thế các ký tự.

Lớp [ControlChar](https://reference.aspose.com/words/python-net/aspose.words/controlchar/) là kho lưu trữ các hằng số đại diện cho các ký tự điều khiển thường gặp trong tài liệu. Nó cung cấp cả phiên bản char và chuỗi của cùng một hằng số. Ví dụ: chuỗi [ControlChar.LINE_BREAK](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break) và char [ControlChar.LINE_BREAK_CHAR](https://reference.aspose.com/words/python-net/aspose.words/controlchar/#line_break_char) có cùng giá trị.

Ví dụ mã sau đây minh họa cách sử dụng các ký tự điều khiển:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-UseControlCharacters.py" >}}
