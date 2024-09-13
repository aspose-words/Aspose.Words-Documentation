---
title: Các cấp độ hợp lý của các nút trong một tài liệu trong Java
second_title: Aspose.Words cho Java
articleTitle: Các Cấp Mức Logic của Các Node Trong Một Tài Liệu
linktitle: Các Cấp Mức Logic của Các Node Trong Một Tài Liệu
type: docs
description: "Trong Aspose.Words cho Java tài liệu đề cập đến các cấp logic của nút – khối mức, inline mức hoặc hàng mức. Cấp độ của nút được dùng để mô tả vị trí trong cây tài liệu mà nút thường xảy ra."
weight: 10
url: /vi/java/logical-levels-of-nodes-in-a-document/
---

Tài liệu đôi khi đề cập đến một nhóm các lớp nút như thuộc về một "mức độ" trong tài liệu, chẳng hạn như "block-level", "inline-level" (cũng được gọi là "inline"), hoặc các nút "row-level. Những cấp độ trong tài liệu được phân biệt thuần túy logic và không thể hiện rõ ràng bằng thừa kế hay các phương thức khác. Aspose.Words DOM có nghĩa là. Cường độ của nút được dùng để mô tả vị trí trong cây tài liệu mà nút thường xảy ra.

Trong bài trước, chúng tôi đã nói về mối quan hệ giữa các nút và thực tế là không phải tất cả các nút đều được phép là con của bất kỳ nút nào. Ví dụ, một tế bào chỉ có thể là con của một hàng, và một hàng chỉ có thể là con của một bảng, và như vậy. Những mối quan hệ này cũng áp dụng cho việc phân chia logic các nút vào các cấp độ trong tài liệu.

Các đoạn sau mô tả các cấp logic của node trong Aspose.Words và các lớp thuộc mỗi cấp.

## Mức Lối Logic của Tài liệu và Mục

Một tài liệu Word chứa một hoặc nhiều phần, được đại diện bởi lớp [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) và cách nhau bằng giới hạn phần. Một phần có thể định nghĩa kích thước trang, lề, hướng, số cột văn bản và tiêu đề cùng chân trang của riêng nó.

Các nút [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) và [Section](https://www.aspose.com/api/words/java/com.aspose.words/section) ở mức có cấu trúc như được cho thấy trong biểu đồ sau:

<img src="document-and-section-level.png" alt="document-and-section-level-aspose-words-java" style="width:700px"/>

Một phần chứa văn bản chính, cũng như tiêu đề và chân trang cho các trang đầu tiên, lẻ và chẵn. Những dòng văn bản khác nhau này được gọi là *stories*.

Trong Aspose.Words, nút **Section** chứa các nút truyện [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) và [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/). Đối tượng **Body** lưu trữ văn bản chính. Các đối tượng **HeaderFooter** lưu trữ văn bản cho mỗi tiêu đề và chân trang. Văn bản của bất kỳ câu chuyện nào bao gồm các đoạn và bảng, tương ứng đại diện bởi các đối tượng **Paragraph** và **Table** của Block-level.

Ngoài ra, mỗi tài liệu Word có thể chứa một từ điển, được biểu thị bởi nút [GlossaryDocument](https://reference.aspose.com/words/java/com.aspose.words/glossarydocument/) trong Aspose.Words. Tài liệu thuật ngữ chứa [BuildingBlocks](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/), [AutoText](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-TEXT), và [AutoCorrect](https://reference.aspose.com/words/java/com.aspose.words/buildingblocktype/#AUTO-CORRECT) mục.

Cấu trúc **GlossaryDocument** bao gồm [BuildingBlock](https://reference.aspose.com/words/java/com.aspose.words/buildingblock/) nút đại diện cho các kiểu khác nhau của mục nhập từ điển. Mỗi **BuildingBlock** chứa các phần có thể chèn, xóa và sao chép vào tài liệu.

## Mức Block Logic

Các node cấp khối đại diện cho các container cho nội dung và các điều khiển nội dung, và có thể xảy ra trong các nút con của cây tài liệu ở các nút sau:

- Cơ thể
- Đầu trang
"- Footer"
- Chú thích
- Bình luận
- Hình dạng
- GroupHình dạng
- Tế bào
"- StructuredDocumentTag"

Các node cấp khối được thể hiện bằng các lớp sau:

- [Tables](https://reference.aspose.com/words/java/com.aspose.words/table/) và [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), mà là các node khối quan trọng nhất
"- Lưu dấu trang, xảy ra ở cả mức khối và mức dòng"
"- [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/), đại diện cho mã đánh dấu tùy chỉnh và có thể chứa cả nội dung và các điều khiển nội dung"

Hình bên trên hiển thị các phần tử ở cấp khối.

<img src="block-level.png" alt="block-level-aspose-words-java" style="width:550px"/>

## In-line Logic Level

Các node inline biểu diễn nội dung thực tế của tài liệu và có thể được chứa bên trong các container sau:

- Đoạn văn – cái chứa thông dụng nhất
- [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/)
- StructuredDocumentTag

Các phần tử inline được thể hiện bởi các lớp sau đây:

- [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) – dòng văn bản được định dạng khác nhau
- [BookmarkStart](https://reference.aspose.com/words/java/com.aspose.words/bookmarkstart/) và [BookmarkEnd](https://reference.aspose.com/words/java/com.aspose.words/bookmarkend/) đại diện cho dấu trang
- [CommentRangeStart]https://reference.aspose.com/words/java/com.aspose.words/comment/RangeStart), [CommentRangeEnd](https://reference.aspose.com/words/java/com.aspose.words/commentrangeend/), [Comment](https://reference.aspose.com/words/java/com.aspose.words/comment/) và [Footnote](https://reference.aspose.com/words/java/com.aspose.words/footnote/) là các chú thích
- [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/), [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/), [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) và [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) đại diện cho ký tự trường, và [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) đại diện cho các trường từ
"- [SpecialChar](https://reference.aspose.com/words/java/com.aspose.words/specialchar/) đại diện cho các ký tự đặc biệt trong tài liệu"
- [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) và [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) đại diện cho hình dạng, hình vẽ, ảnh, v.v...
- SmartTag và StructuredDocumentTag đại diện cho thẻ đánh dấu tùy chỉnh

Biểu đồ sau cho thấy cấu trúc của các nút ở mức in-line.

<img src="inline-level.png" alt="inline-level-aspose-words-java" style="width:785px"/>

{{% alert color="primary" %}}

Các hình dạng trong Microsoft Word bao gồm các hình ảnh Office Art AutoShapes, hộp văn bản, hình ảnh, đối tượng OLE và điều khiển ActiveX, tất cả đều được đại diện bằng lớp `Shape`. Một số hình dạng cũng có thể chứa văn bản, vì vậy các node hình dạng trong Aspose.Words có thể chứa các node ở mức khối.

Hình có thể được nhóm bên trong nhau bằng cách sử dụng các node GroupShape.

{{% /alert %}}

{{% alert color="primary" %}}

Footnotes và chú thích có thể chứa văn bản, vì vậy các nút Footnote và Comment trong Aspose.Words có thể chứa các nút ở mức khối.

{{% /alert %}}

## Bảng, hàng và bảng cấp độ

Bảng này gồm các nút của hàng và các ô. Các phần tử bảng được đại diện bởi các lớp sau:

- [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) đại diện cho một hàng bảng
- [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) đại diện cho một ô bảng
- StructuredDocumentTag đại diện cho markup tùy chỉnh

Biểu đồ dưới đây hiển thị cấu trúc nút của các cấp Bảng, Dãy và Ô.

<img src="table-row-cell.png" alt="table-row-cell-aspose-words-java" style="width:910px"/>
