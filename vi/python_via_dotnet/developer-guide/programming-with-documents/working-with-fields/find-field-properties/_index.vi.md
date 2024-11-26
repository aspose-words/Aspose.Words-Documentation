---
title: Tìm thuộc tính trường trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Tìm thuộc tính trường
linktitle: Tìm thuộc tính trường
description: "Cách tìm một số thuộc tính trường như mã trường và kết quả trường trong Python."
type: docs
weight: 25
url: /vi/python-net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Trường được chèn bằng [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) sẽ trả về một đối tượng [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Đây là lớp mặt tiền cung cấp các phương thức hữu ích để nhanh chóng tìm thấy một số thuộc tính của một trường.

Ví dụ mã sau đây cho biết cách tìm mã trường và kết quả trường:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

Lưu ý rằng nếu bạn chỉ tìm kiếm tên của các trường hợp nhất trong tài liệu thì thay vào đó bạn có thể sử dụng phương pháp [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) tích hợp sẵn.

Ví dụ về mã sau đây cho biết cách lấy tên của tất cả các trường hợp nhất trong tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}
