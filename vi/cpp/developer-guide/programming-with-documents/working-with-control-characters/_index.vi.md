---
title: Làm Việc Với Các Nhân Vật Điều Khiển
second_title: Aspose.Words cho C++
articleTitle: Làm Việc Với Các Nhân Vật Điều Khiển
linktitle: Làm Việc Với Các Nhân Vật Điều Khiển
description: "Giới thiệu làm việc với các nhân vật điều khiển trong Aspose.Words cho C++."
type: docs
weight: 400
url: /vi/cpp/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word tài liệu có thể chứa các ký tự khác nhau có ý nghĩa đặc biệt. Thông thường chúng được sử dụng cho mục đích định dạng và không được vẽ ở chế độ bình thường. Bạn có thể hiển thị chúng nếu bạn nhấp Vào nút Hiển Thị/Ẩn dấu Định dạng nằm trên Thanh Công cụ Tiêu chuẩn.

Đôi khi bạn có thể cần thêm hoặc xóa các ký tự vào/khỏi văn bản. Ví dụ: khi lấy văn bản theo chương trình từ tài liệu, Aspose.Words bảo toàn hầu hết các ký tự điều khiển, vì vậy nếu bạn cần làm việc với văn bản này, có lẽ bạn nên xóa hoặc thay thế các ký tự.

Lớp [ControlChar](https://reference.aspose.com/words/cpp/aspose.words/controlchar/) là một kho lưu trữ cho các hằng số đại diện cho các ký tự điều khiển thường gặp trong tài liệu. Nó cung cấp cả phiên bản char và string của cùng một hằng số. Ví dụ: string [LineBreak](https://reference.aspose.com/words/cpp/aspose.words/controlchar/linebreak/) và char **ControlChar.LineBreakChar** có cùng giá trị.

Ví dụ mã sau đây cho thấy cách sử dụng các ký tự điều khiển:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-UseControlCharacters.cpp" >}}
