---
title: Làm việc với các ký tự điều khiển
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với các ký tự điều khiển
linktitle: Làm việc với các ký tự điều khiển
description: "Giới thiệu cách làm việc với các ký tự điều khiển trong Aspose.Words cho .NET."
type: docs
weight: 400
url: /vi/net/working-with-control-characters/
---

Tài liệu Microsoft Word có thể chứa nhiều ký tự khác nhau có ý nghĩa đặc biệt. Thông thường chúng được sử dụng cho mục đích định dạng và không được vẽ ở chế độ thông thường. Bạn có thể làm cho chúng hiển thị nếu bạn nhấp vào nút Hiển thị/Ẩn Dấu định dạng nằm trên thanh công cụ Chuẩn.

Đôi khi bạn có thể cần thêm hoặc xóa các ký tự trong/khỏi văn bản. Ví dụ: khi lấy văn bản theo chương trình từ tài liệu, Aspose.Words giữ lại hầu hết các ký tự điều khiển, vì vậy nếu bạn cần làm việc với văn bản này, có lẽ bạn nên xóa hoặc thay thế các ký tự.

Lớp [ControlChar](https://reference.aspose.com/words/net/aspose.words/controlchar/) là kho lưu trữ các hằng số đại diện cho các ký tự điều khiển thường gặp trong tài liệu. Nó cung cấp cả phiên bản char và chuỗi của cùng một hằng số. Ví dụ: chuỗi [LineBreak](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreak/) và char [LineBreakChar](https://reference.aspose.com/words/net/aspose.words/controlchar/linebreakchar) có cùng giá trị.

Ví dụ mã sau đây cho thấy cách sử dụng các ký tự điều khiển:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cs" >}}/words/net/working-with-content-control-sdt/)
