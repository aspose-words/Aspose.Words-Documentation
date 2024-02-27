---
title: Thẻ tài liệu có cấu trúc
second_title: Aspose.Words cho Python via .NET
articleTitle: Thẻ tài liệu có cấu trúc hoặc kiểm soát nội dung
linktitle: Thẻ tài liệu có cấu trúc hoặc kiểm soát nội dung
description: "Nhúng ngữ nghĩa do khách hàng xác định cũng như hành vi và giao diện của nó vào tài liệu bằng cách sử dụng thẻ tài liệu có cấu trúc (SDT hoặc kiểm soát nội dung) trong Python."
type: docs
weight: 50
url: /vi/python-net/structured-document-tags-or-content-control/
---


Thẻ tài liệu có cấu trúc (SDT hoặc kiểm soát nội dung) cho phép nhúng ngữ nghĩa do khách hàng xác định cũng như hành vi và hình thức của nó vào tài liệu.

[StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) có thể xuất hiện trong tài liệu ở những vị trí sau:

- Cấp khối – Giữa các đoạn văn và bảng, là phần tử con của [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) hoặc nút [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- Cấp hàng – Giữa các hàng trong bảng, là nút con của nút [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/).
- Cấp độ ô – Giữa các ô trong một hàng của bảng, là nút con của nút [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/).
- Cấp độ nội tuyến – Trong số nội dung nội tuyến bên trong, là phần tử con của [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).
- Được lồng bên trong một [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) khác.

Aspose.Words hỗ trợ tạo các loại thẻ tài liệu có cấu trúc sau:

- DropDownList
- ComboBox 
- Checkbox 
- Date 
- BuildingBlockGallery 
- Group 
- `Picture`
- RichText 
- PlainText
