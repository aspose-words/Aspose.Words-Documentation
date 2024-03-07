---
title: Làm việc với Macro VBA trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với Macro VBA
linktitle: Làm việc với Macro VBA
description: "Tạo, đọc, viết, sao chép và quản lý macro VBA trong tài liệu bằng Python."
type: docs
weight: 410
url: /vi/python-net/working-with-vba-macros/
---

Visual Basic cho Ứng dụng (VBA) cho Microsoft Word là ngôn ngữ lập trình đơn giản nhưng mạnh mẽ có thể được sử dụng để mở rộng chức năng. Aspose.Words API cung cấp ba lớp để có quyền truy cập vào mã nguồn dự án VBA:

- Lớp [VBAProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) cung cấp quyền truy cập vào thông tin dự án VBA
- Lớp [VBAModuleCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodulecollection/) trả về tập hợp các module dự án VBA
- Lớp [VbaModule](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/) cung cấp quyền truy cập vào mô-đun dự án VBA
- Bảng liệt kê [VbaModuleType](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamoduletype/) xác định các loại mô hình trong dự án VBA. Mô-đun này có thể là mô-đun thủ tục, mô-đun tài liệu, mô-đun lớp hoặc mô-đun thiết kế

## Tạo một dự án VBA

Aspose.Words API cung cấp thuộc tính [vba_project](https://reference.aspose.com/words/python-net/aspose.words/document/vba_project/) để lấy hoặc đặt [VbaProject](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/) trong tài liệu.

Ví dụ mã sau đây minh họa cách tạo dự án VBA và Mô-đun VBA cùng với các thuộc tính cơ bản, ví dụ như [name](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/name/) và [type](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/type/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CreateVbaProject.py" >}}

## Đọc macro

Aspose.Words cũng cung cấp cho người dùng khả năng đọc macro VBA.

Ví dụ mã sau đây cho thấy cách đọc Macro VBA từ tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ReadVbaMacros.py" >}}

## Viết hoặc sửa đổi macro

Sử dụng Aspose.Words, người dùng có thể sửa đổi macro VBA.

Ví dụ về mã sau đây cho thấy cách sửa đổi Macro VBA bằng thuộc tính [source_code](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/source_code/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-ModifyVbaMacros.py" >}}

## Dự án VBA sao chép

Với Aspose.Words cũng có thể sao chép các dự án VBA.

Ví dụ về mã sau đây cho thấy cách sao chép Dự án VBA bằng thuộc tính [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/clone/) để tạo bản sao của dự án hiện có:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaProject.py" >}}

## Sao chép mô-đun VBA

Bạn cũng có thể sao chép các mô-đun VBA nếu cần.

Ví dụ về mã sau đây cho thấy cách sao chép Mô-đun VBA bằng thuộc tính [clone](https://reference.aspose.com/words/python-net/aspose.words.vba/vbamodule/clone/) để tạo bản sao của dự án hiện có:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-CloneVbaModule.py" >}}

## Làm việc với Tài liệu tham khảo dự án VBA

Aspose.Words API cung cấp lớp [VbaReferenceCollection](https://reference.aspose.com/words/python-net/aspose.words.vba/vbareferencecollection/) để làm việc với Tham chiếu dự án VBA thể hiện một tập hợp các tham chiếu dự án VBA.

Ví dụ về mã sau đây cho biết cách xóa một số tham chiếu khỏi bộ sưu tập các tham chiếu khỏi dự án VBA:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-RemoveReferenceFromCollectionOfReferences.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_vba_macros-GetLibIdAndReferencePath.py" >}}