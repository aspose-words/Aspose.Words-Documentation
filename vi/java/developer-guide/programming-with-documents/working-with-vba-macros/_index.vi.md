---
title: Làm việc với các macro VBA trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Macro của VBA
linktitle: Làm việc với Macro của VBA
description: "Làm việc với các dự án tài liệu VBA sử dụng Java."
type: docs
weight: 410
url: /vi/java/working-with-vba-macros/
timestamp: 2024-01-27-14-07-04
---

Visual Basic cho Ứng dụng (VBA) cho Microsoft Word là ngôn ngữ lập trình đơn giản nhưng mạnh mẽ có thể được dùng để mở rộng chức năng. Aspose.Words API cung cấp ba lớp để truy cập mã nguồn dự án VBA:

"- Lớp [VBAProject](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/) cung cấp quyền truy cập vào thông tin dự án VBA"
- Lớp [VBAModulesCollection](https://reference.aspose.com/words/java/com.aspose.words/vbamodulecollection/) trả về bộ sưu tập mô-đun dự án VBA
- Lớp [VbaModule](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/) cung cấp truy cập đến mô-đun dự án VBA

## Tạo một dự án VBA

Aspose.Words API cung cấp thuộc tính [VbaProject](https://reference.aspose.com/words/java/com.aspose.words/document/#getVbaProject) để lấy hoặc đặt VbaProject trong tài liệu.

Mã ví dụ sau cho thấy cách tạo một dự án VBA và mô-đun VBA cùng với các thuộc tính cơ bản ví dụ như: Tên và Loại:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CreateVbaProject.java" >}}

## Đọc Macro

Aspose.Words cũng cung cấp cho người dùng khả năng đọc các macro VBA.

Mã ví dụ sau cho thấy cách đọc các macro VBA từ tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ReadVbaMacros.java" >}}

## Chỉnh sửa Macro

Sử dụng Aspose.Words, người dùng có thể sửa đổi các macro VBA.

Mã ví dụ sau cho thấy cách sửa đổi các macro VBA bằng thuộc tính [SourceCode](https://reference.aspose.com/words/java/com.aspose.words/vbamodule/#getSourceCode)":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-ModifyVbaMacros.java" >}}

## Sao chép Dự án VBA

Với Aspose.Words nó cũng có thể để sao chép các dự án VBA.

Ví dụ mã sau cho thấy cách sao chép dự án VBA bằng thuộc tính [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone), tạo ra bản sao của dự án hiện tại:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaProject.java" >}}

## Sao chép mô-đun VBA

Bạn cũng có thể "clone" các mô-đun VBA nếu cần thiết.

Mã ví dụ sau trình diễn cách sao chép mô-đun VBA sử dụng thuộc tính [Clone](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#deepClone) tạo bản sao của dự án hiện tại

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithVbaMacros-CloneVbaModule.java" >}}
