---
title: Cách Tìm Thuộc Tính Trường
second_title: Aspose.Words cho C++
articleTitle: Tìm Thuộc Tính Trường
linktitle: Tìm Thuộc Tính Trường
description: "Cách tìm một số thuộc tính trường như mã trường và kết quả trường trong C++."
type: docs
weight: 25
url: /vi/cpp/find-field-properties/
---

Một trường được chèn bằng [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) trả về một đối tượng [Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/). Đây là một lớp mặt tiền cung cấp các phương thức hữu ích để nhanh chóng tìm thấy một số thuộc tính của một trường.

Ví dụ mã sau đây cho thấy cách tìm mã trường và kết quả trường:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

Lưu ý nếu bạn chỉ tìm kiếm tên của các trường hợp nhất trong tài liệu, thì thay vào đó bạn có thể sử dụng phương thức [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) tích hợp.

Ví dụ mã sau đây cho thấy cách lấy tên của tất cả các trường hợp nhất trong tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}