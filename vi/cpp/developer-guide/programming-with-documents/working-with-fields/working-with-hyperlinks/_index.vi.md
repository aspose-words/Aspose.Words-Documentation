---
title: Làm Việc Với Các Siêu Liên kết trong C++
second_title: Aspose.Words cho C++
articleTitle: Thêm Hoặc Sửa Đổi Siêu Liên Kết
linktitle: Thêm Hoặc Sửa Đổi Siêu Liên Kết
description: "Cách thêm siêu liên kết vào tài liệu của bạn bằng cách sử dụng Aspose.Words cho C++."
type: docs
weight: 180
url: /vi/cpp/working-with-hyperlinks/
timestamp: 2024-01-27-14-07-04
---

Một siêu liên kết trong tài liệu Microsoft Word là trường `HYPERLINK`. Trong Aspose.Words, các siêu liên kết được triển khai thông qua lớp [FieldHyperlink](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldhyperlink/).

## Chèn Một Siêu Liên kết

Sử dụng phương thức [InsertHyperlink](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/inserthyperlink/) để chèn siêu liên kết vào tài liệu. Phương pháp này chấp nhận ba tham số:

1. Văn bản của liên kết sẽ được hiển thị trong tài liệu
2. Liên kết đích (URL hoặc tên của dấu trang bên trong tài liệu)
3. Tham số Boolean phải đúng nếu `URL` là tên của dấu trang bên trong tài liệu

Phương thức **InsertHyperlink** luôn thêm dấu nháy đơn ở đầu và cuối URL.

{{% alert color="primary" %}}

Lưu ý rằng bạn cần chỉ định định dạng phông chữ cho văn bản hiển thị siêu liên kết một cách rõ ràng bằng thuộc tính `Font`.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách chèn siêu liên kết vào tài liệu bằng [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentBuilderInsertElements-DocumentBuilderInsertHyperlink.cpp" >}}

## Thay Thế Hoặc Sửa Đổi Siêu Liên Kết

Siêu liên kết trong tài liệu Microsoft Word là một trường. Một trường trong Tài liệu Word là một cấu trúc phức tạp bao gồm nhiều nút bao gồm bắt đầu trường, mã trường, dấu phân cách trường, kết quả trường và kết thúc trường. Các trường có thể được lồng vào nhau, chứa nội dung phong phú và trải dài nhiều đoạn hoặc phần trong tài liệu.

Lớp `FieldHyperlink` thực hiện trường `HYPERLINK`.

Ví dụ mã sau đây cho thấy cách tìm tất cả các siêu liên kết trong Tài liệu Word và thay đổi `URL` và tên hiển thị của chúng:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.cpp" >}}
