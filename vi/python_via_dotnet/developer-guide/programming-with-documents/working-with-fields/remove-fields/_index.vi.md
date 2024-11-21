---
title: Xóa trường bằng Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Xóa trường
linktitle: Xóa trường
description: "Tìm hiểu cách xóa các trường trong Python. Xóa các trường theo chương trình bằng cách sử dụng Python via .NET API."
type: docs
weight: 35
url: /vi/python-net/remove-fields/
timestamp: 2024-01-27-14-07-04
---

Đôi khi cần phải xóa một trường khỏi tài liệu. Điều này có thể xảy ra khi nó được thay thế bằng một loại trường khác hoặc khi trường này không còn cần thiết trong tài liệu nữa. Ví dụ: trường `TOC` khi lưu vào HTML.

Để xóa trường được chèn vào tài liệu bằng [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/), hãy sử dụng đối tượng [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) được trả về, đối tượng này cung cấp phương thức [remove](https://reference.aspose.com/words/python-net/aspose.words.fields/field/remove/#default) thuận tiện để dễ dàng xóa trường khỏi tài liệu.

Ví dụ mã sau đây cho biết cách xóa một trường khỏi tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RemoveField.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Various%20fields.docx).

{{% /alert %}}
