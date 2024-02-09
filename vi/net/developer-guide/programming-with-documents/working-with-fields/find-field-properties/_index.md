---
title: Cách tìm thuộc tính trường trong C#
second_title: Aspose.Words cho .NET
articleTitle: Tìm thuộc tính trường
linktitle: Tìm thuộc tính trường
description: "Cách tìm một số thuộc tính trường như mã trường và kết quả trường trong C#."
type: docs
weight: 25
url: /vi/net/find-field-properties/
---

Trường được chèn bằng [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) sẽ trả về một đối tượng [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/). Đây là lớp mặt tiền cung cấp các phương thức hữu ích để nhanh chóng tìm thấy một số thuộc tính của một trường.

Ví dụ mã sau đây cho biết cách tìm mã trường và kết quả trường:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

Lưu ý rằng nếu bạn chỉ tìm kiếm tên của các trường hợp nhất trong tài liệu thì thay vào đó bạn có thể sử dụng phương pháp [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) tích hợp sẵn.

Ví dụ về mã sau đây cho biết cách lấy tên của tất cả các trường hợp nhất trong tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}