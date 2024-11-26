---
title: Làm việc với các ký tự điều khiển
second_title: Aspose.Words cho Java
articleTitle: Làm việc với các ký tự điều khiển
linktitle: Làm việc với các ký tự điều khiển
description: "Giới thiệu về việc làm việc với các ký tự điều khiển trong Aspose.Words cho Java."
type: docs
weight: 400
url: /vi/java/working-with-control-characters/
timestamp: 2024-01-27-14-07-04
---

Microsoft Word tài liệu có thể chứa các ký tự khác nhau mà có ý nghĩa đặc biệt. Chúng thường dùng cho mục đích định dạng và không được vẽ trong chế độ thông thường. Bạn có thể hiển thị chúng nếu nhấn nút Show/Hide Formatting Marks nằm trên thanh công cụ chuẩn.

Đôi khi bạn có thể cần thêm hoặc bỏ bớt ký tự từ/đến văn bản. Ví dụ khi lấy văn bản một cách tự động từ tài liệu, Aspose.Words giữ hầu hết các ký tự kiểm soát, vì vậy nếu bạn cần làm việc với văn bản này bạn nên loại bỏ hoặc thay thế các ký tự.

Lớp [ControlChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/) là một kho lưu trữ cho các hằng số đại diện cho các ký tự điều khiển thường gặp trong tài liệu. Nó cung cấp cả phiên bản char và string của cùng một hằng số. Ví dụ như chuỗi [LineBreak](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK) và ký tự [LineBreakChar](https://reference.aspose.com/words/java/com.aspose.words/controlchar/#LINE-BREAK_CHAR) có giá trị giống nhau.

{{% alert color="primary" %}}

Dùng lớp này mỗi khi bạn muốn xử lý các ký tự điều khiển.

{{% /alert %}}

Mã ví dụ sau cho thấy cách sử dụng các ký tự kiểm soát":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-UseControlCharacters-UseControlCharacters.java" >}}
