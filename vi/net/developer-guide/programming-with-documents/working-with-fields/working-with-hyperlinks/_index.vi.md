---
title: Làm việc với siêu liên kết trong C#
second_title: Aspose.Words cho .NET
articleTitle: Thêm hoặc sửa đổi siêu liên kết
linktitle: Thêm hoặc sửa đổi siêu liên kết
description: "Cách thêm siêu liên kết vào tài liệu của bạn trong C# bằng Aspose.Words cho .NET."
type: docs
weight: 50
url: /vi/net/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Siêu liên kết trong tài liệu Microsoft Word là trường `HYPERLINK`. Trong Aspose.Words, các siêu liên kết được triển khai thông qua lớp [FieldHyperlink](https://reference.aspose.com/words/net/aspose.words.fields/fieldhyperlink/).

## Chèn một siêu liên kết

Sử dụng phương pháp [InsertHyperlink](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthyperlink/) để chèn siêu liên kết vào tài liệu. Phương thức này chấp nhận ba tham số:

1. Nội dung của liên kết sẽ được hiển thị trong tài liệu
2. Đích liên kết (URL hoặc tên của dấu trang bên trong tài liệu)
3. Tham số Boolean phải là true nếu `URL` là tên của dấu trang bên trong tài liệu

Phương thức **InsertHyperlink** luôn thêm dấu nháy đơn ở đầu và cuối URL

{{% alert color="primary" %}}

Lưu ý rằng bạn cần chỉ định rõ ràng định dạng phông chữ cho văn bản hiển thị siêu liên kết bằng thuộc tính `Font`.

{{% /alert %}}

Ví dụ mã sau đây cho biết cách chèn siêu liên kết vào tài liệu bằng [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cs" >}}

## Thay thế hoặc sửa đổi siêu liên kết

Siêu liên kết trong tài liệu Microsoft Word là một trường. Trường trong tài liệu Word, như chúng tôi đã nói trước đó, là một cấu trúc phức tạp bao gồm nhiều nút bao gồm điểm bắt đầu trường, mã trường, dấu tách trường, kết quả trường và kết thúc trường. Các trường có thể được lồng vào nhau, chứa nội dung phong phú và trải dài trên nhiều đoạn văn hoặc phần trong tài liệu.

Để thay thế hoặc sửa đổi các siêu liên kết, cần phải tìm các siêu liên kết trong tài liệu và thay thế văn bản, URL hoặc cả hai của chúng.

Ví dụ về mã sau đây cho biết cách tìm tất cả các siêu liên kết trong tài liệu Word và thay đổi `URL` cũng như tên hiển thị của chúng:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cs" >}}
