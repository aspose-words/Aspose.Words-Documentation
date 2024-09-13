---
title: Làm việc với liên kết siêu văn bản trong Java
second_title: Aspose.Words cho Java
articleTitle: Thêm hoặc sửa đổi liên kết siêu văn bản
linktitle: Thêm hoặc sửa đổi liên kết siêu văn bản
description: "Làm thế nào để thêm siêu liên kết trong tài liệu của bạn bằng Java."
type: docs
weight: 50
url: /vi/java/working-with-hyperlinks/
---

Một liên kết siêu văn bản trong Microsoft Word tài liệu là `HYPERLINK` trường. Trong Aspose.Words, các liên kết được thực hiện qua lớp [FieldHyperlink](https://reference.aspose.com/words/java/com.aspose.words/fieldhyperlink/).

## Chèn Liên kết siêu văn bản

Sử dụng phương thức [InsertHyperlink](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertHyperlink-java.lang.String-java.lang.String-boolean) để chèn siêu liên kết vào tài liệu. Phương pháp này chấp nhận ba tham số

1. Bản văn của liên kết để hiển thị trong tài liệu
2. Liên kết đến (URL hay một cái tên của một con dấu trong tài liệu)
3. Tham số kiểu boolean mà nên là true nếu `URL` là tên của một dấu đánh dấu trong tài liệu

Phương thức **InsertHyperlink** luôn thêm dấu gõ cách trong đầu và cuối của đường dẫn web

{{% alert color="primary" %}}

Lưu ý là bạn cần chỉ định định dạng phông chữ cho văn bản hiển thị liên kết cụ thể bằng thuộc tính `Font`.

{{% /alert %}}

Mã ví dụ sau cho thấy cách chèn một liên kết siêu văn bản vào tài liệu bằng cách sử dụng [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderInsertHyperlink-DocumentBuilderInsertHyperlink.java" >}}

## Thay thế hoặc Sửa đổi Liên kết Siêu văn bản

Hyperlink trong Microsoft Word tài liệu là một trường. Trường trong một tài liệu Word, như chúng ta đã nói ở trên, là một cấu trúc phức tạp bao gồm nhiều nút mà có chứa trường bắt đầu, mã trường, dấu phân cách trường, kết quả trường và trường kết thúc. Các trường có thể lồng vào nhau, chứa nội dung phong phú và trải dài trên nhiều đoạn văn hoặc phần trong một tài liệu.

Để thay thế hoặc sửa đổi liên kết siêu văn bản, chúng ta cần tìm thấy các liên kết siêu văn bản trong tài liệu và thay thế văn bản, URL hoặc cả hai.

Mã ví dụ sau cho thấy cách tìm tất cả các liên kết siêu văn bản trong tài liệu word và thay đổi tên hiển thị của chúng `URL`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Hyperlink-ReplaceHyperlinks-ReplaceHyperlinks.java" >}}
