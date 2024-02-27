---
title: Làm việc với siêu liên kết
second_title: Aspose.Words cho Python via .NET
articleTitle: Thêm hoặc sửa đổi siêu liên kết
linktitle: Thêm hoặc sửa đổi siêu liên kết
description: "Thêm, thay thế hoặc sửa đổi siêu liên kết trong tài liệu bằng Python."
type: docs
weight: 50
url: /vi/python-net/working-with-hyperlinks/
---

Siêu liên kết trong tài liệu Microsoft Word là trường `HYPERLINK`. Trong Aspose.Words, các siêu liên kết được triển khai thông qua lớp [FieldHyperlink](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldhyperlink/).

## Chèn một siêu liên kết

Sử dụng phương pháp [insert_hyperlink](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_hyperlink/) để chèn siêu liên kết vào tài liệu. Phương thức này chấp nhận ba tham số:

1. Nội dung của liên kết sẽ được hiển thị trong tài liệu
2. Đích liên kết (URL hoặc tên của dấu trang bên trong tài liệu)
3. Tham số Boolean phải là true nếu `URL` là tên của dấu trang bên trong tài liệu

Phương thức **InsertHyperlink** luôn thêm dấu nháy đơn ở đầu và cuối URL.

{{% alert color="primary" %}}

Lưu ý rằng bạn cần chỉ định rõ ràng định dạng phông chữ cho văn bản hiển thị siêu liên kết bằng thuộc tính `Font`.

{{% /alert %}}

Ví dụ mã sau đây cho biết cách chèn siêu liên kết vào tài liệu bằng [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHyperlink.py" >}}

## Thay thế hoặc sửa đổi siêu liên kết

Siêu liên kết trong tài liệu Microsoft Word là một trường. Trường trong tài liệu Word là một cấu trúc phức tạp bao gồm nhiều nút bao gồm bắt đầu trường, mã trường, dấu tách trường, kết quả trường và kết thúc trường. Các trường có thể được lồng vào nhau, chứa nội dung phong phú và trải dài trên nhiều đoạn văn hoặc phần trong tài liệu

Để thay thế hoặc sửa đổi các siêu liên kết, cần phải tìm các siêu liên kết trong tài liệu và thay thế văn bản, URL hoặc cả hai của chúng.

Ví dụ về mã sau đây cho biết cách tìm tất cả các siêu liên kết trong tài liệu Word và thay đổi `URL` cũng như tên hiển thị của chúng:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ReplaceHyperlinks.py" >}}
