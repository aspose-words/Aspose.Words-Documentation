---
title: Làm việc với VBA Macro trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc với Macro VBA
linktitle: Làm việc với Macro VBA
description: "Làm việc với các dự án tài liệu VBA bằng cách sử dụng C++."
type: docs
weight: 410
url: /vi/cpp/working-with-vba-macros/
---

Visual Basic Đối với Các Ứng dụng (VBA) đối với Microsoft Word là một ngôn ngữ lập trình đơn giản nhưng mạnh mẽ có thể được sử dụng để mở rộng chức năng. Aspose.Words API cung cấp ba lớp để có quyền truy cập vào mã nguồn dự án VBA:

- Lớp [VBAProject](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/) cung cấp quyền truy cập vào thông tin dự án VBA
- Lớp [VBAModulesCollection](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodulecollection/) trả về bộ sưu tập các mô-đun dự án VBA
- Lớp [VbaModule](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/) cung cấp quyền truy cập vào mô-đun dự án VBA

## Tạo Dự án VBA

Aspose.Words API cung cấp thuộc tính `Document.VbaProject` để lấy hoặc đặt VbaProject trong tài liệu.

Ví dụ mã sau đây trình bày cách tạo Mô-Đun VBA và VBA cùng Với các thuộc tính cơ bản, Ví dụ: Tên Và Loại:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CreateVbaProject.cpp" >}}

## Đọc Macro

Aspose.Words cũng cung cấp cho người dùng khả năng đọc macro VBA.

Ví dụ mã sau đây cho thấy cách đọc Macro VBA Từ tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ReadVbaMacros.cpp" >}}

## Viết hoặc Sửa Đổi Macro

Sử dụng Aspose.Words, người dùng có thể sửa đổi macro VBA.

Ví dụ mã sau đây cho thấy cách sửa Đổi Macro VBA bằng thuộc tính [SourceCode](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/get_sourcecode/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-ModifyVbaMacros.cpp" >}}

## Bản Sao VBA Dự Án

Với Aspose.Words cũng có thể sao chép các dự án VBA.

Ví dụ mã sau đây cho thấy cách sao chép Dự án VBA bằng thuộc tính [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) tạo bản sao của dự án hiện có:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaProject.cpp" >}}

## Mô-Đun Clone VBA

Bạn cũng có thể sao chép các mô-đun VBA nếu cần.

Ví dụ mã sau đây cho thấy cách sao chép Mô-Đun VBA bằng thuộc tính [Clone](https://reference.aspose.com/words/cpp/aspose.words.vba/vbamodule/clone/) tạo bản sao của dự án hiện có:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithVbaMacros-CloneVbaModule.cpp" >}}
