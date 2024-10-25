---
title: Mức logic Của Các Nút trong Một Tài liệu trong C++
second_title: Aspose.Words cho C++
articleTitle: Mức độ logic Của Các Nút trong Một Tài liệu
linktitle: Mức độ logic Của Các Nút trong Một Tài liệu
type: docs
description: "Trong Aspose.Words cho C++ tài liệu được đề cập mức logic của các nút – mức khối, mức nội tuyến hoặc mức hàng. Mức nút được sử dụng để mô tả vị trí trong cây tài liệu nơi nút thường xảy ra."
weight: 10
url: /vi/cpp/logical-levels-of-nodes-in-a-document/
---

Tài liệu này đôi khi đề cập đến một nhóm các lớp nút thuộc "cấp độ" trong tài liệu, chẳng hạn như "cấp khối", "cấp nội tuyến" (còn được gọi là "nội tuyến") hoặc các nút "cấp hàng". Các cấp độ này trong tài liệu được phân biệt hoàn toàn hợp lý và không được thể hiện rõ ràng bằng thừa kế hoặc các phương tiện Aspose.Words DOM khác. Mức nút được sử dụng để mô tả vị trí trong cây tài liệu nơi nút thường xảy ra.

Trong bài viết trước, chúng ta đã nói về mối quan hệ giữa các nút và thực tế là không phải tất cả các nút đều được phép là con của bất kỳ nút nào. Ví dụ: Ô chỉ có thể là Một Con Hàng Và Một Hàng chỉ có thể là Một Con Bảng, v. v. Các mối quan hệ này cũng có thể áp dụng cho việc phân chia hợp lý các nút thành các cấp trong tài liệu.

Các phần sau mô tả mức logic của các nút trong Aspose.Words và các lớp thuộc mỗi cấp.

## Tài liệu Và Phần Mức Độ Logic

Tài liệu Word bao gồm một hoặc nhiều phần, được biểu thị bằng lớp [Section](https://reference.aspose.com/words/cpp/aspose.words/section) và được phân tách bằng ngắt phần. Một phần có thể xác định kích thước trang, lề, hướng, số lượng cột văn bản và tiêu đề và chân trang của riêng nó.

[Document](https://reference.aspose.com/words/cpp/aspose.words/document/) và [Phần](https://www.aspose.com/api/words/cpp/aspose.words/section/) các nút cấp có cấu trúc như thể hiện trong sơ đồ sau.

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-cpp" style="width:700px"/>

Một phần chứa văn bản chính, cũng như tiêu đề và chân trang cho các trang đầu tiên, chẵn và lẻ. Các "luồng" văn bản khác nhau này được gọi là *stories*.

Trong Aspose.Words, nút **Section** chứa các nút câu chuyện [Body](https://reference.aspose.com/words/cpp/aspose.words/body/) và [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/). Đối tượng **Body** lưu trữ văn bản chính. Các đối tượng **HeaderFooter** lưu trữ văn bản cho mỗi tiêu đề và chân trang. Văn bản của bất kỳ câu chuyện nào bao gồm các đoạn văn và bảng, tương ứng được biểu thị bằng các đối tượng **Paragraph** và **Table** của Cấp Khối.

Ngoài ra, mỗi Tài liệu Word có thể chứa một thuật ngữ, được biểu thị bằng nút [GlossaryDocument](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/) trong Aspose.Words. Một tài liệu thuật ngữ chứa các mục [BuildingBlocks](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/glossarydocument/get_buildingblocks/), [AutoText](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/) và [AutoCorrect](https://reference.aspose.com/words/cpp/aspose.words.buildingblocks/buildingblocktype/).

**GlossaryDocument**

## Khối Mức Độ Logic

Các nút cấp khối đại diện cho các vùng chứa cho các điều khiển nội dung và nội dung và có thể xảy ra trong các nút con cây tài liệu trong các nút sau:

- Cơ thể
- Tiêu đề
- Chân trang
- Chú thích
- Bình luận
- Hình dạng
- GroupShape
- Tế bào
- StructuredDocumentTag

Các nút cấp khối được biểu diễn bằng các lớp sau:

- [Tables](https://reference.aspose.com/words/cpp/aspose.words.tables/table/) và [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), là các nút cấp khối quan trọng nhất
- Dấu trang, xảy ra cả ở cấp khối và ở cấp nội tuyến
- [StructuredDocumentTag](https://reference.aspose.com/words/cpp/aspose.words.markup/structureddocumenttag/), đại diện cho đánh dấu tùy chỉnh và có thể chứa cả điều khiển nội dung và nội dung

Sơ đồ sau đây cho thấy các yếu tố cấp khối.

<img src="block-level.png" alt="block-level-aspose-words-cpp" style="width:550px"/>

## Mức Logic Nội Tuyến

Các nút cấp nội tuyến đại diện cho nội dung thực tế của tài liệu và có thể được chứa trong các vùng chứa sau:

- Đoạn văn-container phổ biến nhất
- [SmartTag](https://reference.aspose.com/words/cpp/aspose.words.markup/smarttag/)
- StructuredDocumentTag

Các phần tử cấp nội tuyến được thể hiện bằng các lớp sau:

- [Run](https://reference.aspose.com/words/cpp/aspose.words/run/) – chạy văn bản được định dạng khác nhau
- [BookmarkStart](https://reference.aspose.com/words/cpp/aspose.words/bookmarkstart/) và [BookmarkEnd](https://reference.aspose.com/words/cpp/aspose.words/bookmarkend) đại diện cho dấu trang
- [CommentRangeStart](https://reference.aspose.com/words/cpp/aspose.words/commentrangestart/), [CommentRangeEnd](https://reference.aspose.com/words/cpp/aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/cpp/aspose.words/comment/) và [Footnote](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/) đại diện cho chú thích
- [FieldStart](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldstart/), [FieldChar](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldseparator/) và [FieldEnd](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldend/) đại diện cho các ký tự trường và [FormField](https://reference.aspose.com/words/cpp/aspose.words.fields/formfield/) đại diện cho các trường Từ
- [SpecialChar](https://reference.aspose.com/words/cpp/aspose.words/specialchar/) đại diện cho các ký tự đặc biệt trong tài liệu
- [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) và [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) đại diện cho hình dạng, bản vẽ, hình ảnh, v. v.
- SmartTag và StructuredDocumentTag đại diện cho đánh dấu tùy chỉnh

Sơ đồ sau đây cho thấy cấu trúc các nút cấp nội tuyến.

<img src="inline-level.png" alt="inline-level-aspose-words-cpp" style="width:785px"/>

{{% alert color="primary" %}}

Các hình dạng trong Microsoft Word Bao gồm Office Art AutoShapes, hộp văn bản, hình ảnh, OLE đối tượng và Điều khiển ActiveX, tất cả đều được biểu diễn bằng lớp `Shape`. Một số hình dạng cũng có thể chứa văn bản, vì vậy Các Nút Hình dạng trong Aspose.Words có thể chứa các nút cấp khối.

Các hình dạng có thể được nhóm lại bên trong nhau bằng cách sử dụng các nút GroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

Chú thích và nhận xét có thể chứa văn bản, do đó Các Nút Chú Thích Và Nhận xét trong Aspose.Words có thể chứa các nút cấp khối.

{{% /alert %}}

## Bảng, Hàng Và Mức Nút Di động

Bảng bao gồm các nút của hàng và ô. Các phần tử bảng được biểu diễn bằng các lớp sau:

- [Row](https://reference.aspose.com/words/cpp/aspose.words.tables/row/) đại diện cho một hàng bảng
- [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/) đại diện cho một ô bảng
- StructuredDocumentTag đại diện cho đánh dấu tùy chỉnh

Sơ đồ sau đây cho thấy các cấu trúc nút Của Bảng, Hàng Và Mức Ô.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-cpp" style="width:910px"/>
