---
title: Mức độ logic của các nút trong tài liệu
second_title: Aspose.Words cho Python via .NET
articleTitle: Mức độ logic của các nút trong tài liệu
linktitle: Mức độ logic của các nút trong tài liệu
type: docs
description: "Trong tài liệu Aspose.Words dành cho Python via .NET đã đề cập đến các mức logic của nút – cấp khối, cấp nội tuyến hoặc cấp hàng. Cấp độ nút được sử dụng để mô tả vị trí trong cây tài liệu nơi nút thường xuất hiện."
weight: 10
url: /vi/python-net/logical-levels-of-nodes-in-a-document/
---

Tài liệu này đôi khi đề cập đến một nhóm các lớp nút thuộc về một "cấp" trong tài liệu, chẳng hạn như các nút "cấp khối", "cấp nội tuyến" (còn được gọi là nút "nội tuyến") hoặc nút "cấp hàng".. Các cấp độ này trong tài liệu được phân biệt hoàn toàn về mặt logic và không được thể hiện rõ ràng bằng tính kế thừa hoặc các phương tiện Aspose.Words DOM khác. Cấp độ nút được sử dụng để mô tả vị trí trong cây tài liệu nơi nút thường xuất hiện.

Trong bài viết trước, chúng ta đã nói về mối quan hệ giữa các nút và thực tế là không phải tất cả các nút đều được phép là con của bất kỳ nút nào. Ví dụ: [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) chỉ có thể là con [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) và [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) chỉ có thể là con [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), v.v. Những mối quan hệ này cũng có thể áp dụng để phân chia logic các nút thành các cấp độ trong tài liệu.

Các phần sau đây mô tả mức logic của các nút trong Aspose.Words và các lớp thuộc từng cấp.

## Cấp độ logic của tài liệu và phần

Một tài liệu Word bao gồm một hoặc nhiều phần, được biểu thị bằng lớp [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) và được phân tách bằng dấu ngắt phần. Một phần có thể xác định kích thước trang, lề, hướng, số cột văn bản cũng như đầu trang và chân trang của chính nó.

Các nút cấp độ [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) và [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) có cấu trúc như trong sơ đồ sau.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/document-and-section-level.png" alt="tài liệu và phần-cấp-aspose-words" style="width:700px"/>

Một phần chứa văn bản chính cũng như đầu trang và chân trang cho các trang đầu tiên, trang chẵn và trang lẻ. Những "luồng" văn bản khác nhau này được gọi là *stories*.

Trong Aspose.Words, nút [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) chứa các nút câu chuyện [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) và [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/). Đối tượng [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) lưu trữ văn bản chính. Các đối tượng [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) lưu trữ văn bản cho mỗi đầu trang và chân trang. Văn bản của bất kỳ câu chuyện nào đều bao gồm các đoạn văn và bảng, lần lượt được biểu thị bằng các đối tượng [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) và [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) ở cấp Khối.

Ngoài ra, mỗi tài liệu Word có thể chứa một bảng chú giải thuật ngữ, được biểu thị bằng nút [GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) trong Aspose.Words. Tài liệu bảng chú giải thuật ngữ chứa các mục nhập [building_blocks](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/building_blocks/) [BuildingBlockType.AUTO_TEXT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_text) và [BuildingBlockType.AUTO_CORRECT](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblocktype/#auto_correct).

[GlossaryDocument](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/glossarydocument/) bao gồm các nút [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) đại diện cho các loại mục nhập tài liệu bảng thuật ngữ khác nhau. Mỗi [BuildingBlock](https://reference.aspose.com/words/python-net/aspose.words.buildingblocks/buildingblock/) chứa các phần có thể được chèn, xóa và sao chép vào tài liệu.

## Khối mức logic

Các nút cấp khối đại diện cho các vùng chứa nội dung và điều khiển nội dung, đồng thời có thể xuất hiện trong các nút con của cây tài liệu trong các nút sau:

- [Body](https://reference.aspose.com/words/python-net/aspose.words/body/)
- [Header](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footer](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/)
- [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/)
- [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/)
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/)
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Các nút cấp khối được đại diện bởi các lớp sau:

- [Tables](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) và [Paragraphs](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), là các nút cấp khối quan trọng nhất
- [Bookmarks](https://reference.aspose.com/words/python-net/aspose.words/bookmark/), xảy ra ở cả cấp độ khối và cấp độ nội tuyến
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/), đại diện cho đánh dấu tùy chỉnh và có thể chứa cả nội dung và kiểm soát nội dung

Sơ đồ sau đây hiển thị các phần tử cấp khối.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/block-level.png" alt="từ khối cấp độ" style="width:550px"/>

## Mức logic nội tuyến

Các nút cấp độ nội tuyến biểu thị nội dung thực tế của tài liệu và có thể được chứa trong các vùng chứa sau:

- [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) – loại thùng chứa phổ biến nhất
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/)
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/)

Các phần tử cấp độ nội tuyến được thể hiện bằng các lớp sau:

- [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) – chạy văn bản có định dạng khác
- [BookmarkStart](https://reference.aspose.com/words/python-net/aspose.words/bookmarkstart/) và [BookmarkEnd](https://reference.aspose.com/words/python-net/aspose.words/bookmarkend/) đại diện cho dấu trang
- [CommentRangeStart](https://reference.aspose.com/words/python-net/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/python-net/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) và [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) thể hiện các chú thích
- [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) và [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) đại diện cho các ký tự trường và [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) đại diện cho các trường Word
- [SpecialChar](https://reference.aspose.com/words/python-net/aspose.words/specialchar/) đại diện cho các ký tự đặc biệt trong tài liệu
- [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) và [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) thể hiện hình dạng, hình vẽ, hình ảnh, v.v.
- [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/) và [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) đại diện cho đánh dấu tùy chỉnh

Sơ đồ sau đây cho thấy cấu trúc nút cấp độ nội tuyến.

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/inline-level.png" alt="nội tuyến từ cấp độ" style="width:785px"/>

{{% alert color="primary" %}}

Các hình dạng trong Microsoft Word bao gồm Office Art AutoShapes, hộp văn bản, hình ảnh, đối tượng OLE và điều khiển ActiveX, tất cả đều được biểu diễn bằng lớp `Shape`. Một số hình dạng cũng có thể chứa văn bản, vì vậy các nút Hình dạng trong Aspose.Words có thể chứa các nút cấp khối.

Các hình dạng có thể được nhóm lại với nhau bằng các nút [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/).

{{% /alert %}}

{{% alert color="primary" %}}

Chú thích cuối trang và nhận xét có thể chứa văn bản, do đó các nút [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) và [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) trong Aspose.Words có thể chứa các nút cấp khối.

{{% /alert %}}

## Cấp độ bảng, hàng và nút ô

Bảng bao gồm các nút của hàng và ô. Các phần tử [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) được đại diện bởi các lớp sau:

- [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) đại diện cho một hàng của bảng
- [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) đại diện cho một ô của bảng
- [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) đại diện cho đánh dấu tùy chỉnh

Sơ đồ sau đây hiển thị cấu trúc nút của các cấp độ [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) và [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/).

<img src="/words/python-net/logical-levels-of-nodes-in-a-document/table-row-cell.png" alt="bảng-hàng-ô-aspose-từ" style="width:910px"/>