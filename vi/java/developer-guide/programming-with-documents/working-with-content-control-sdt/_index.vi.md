---
title: Làm việc với Content Control SDT trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Biện pháp kiểm soát nội dung SDT
linktitle: Làm việc với Biện pháp kiểm soát nội dung SDT
type: docs
description: "Quản lý nội dung tài liệu nâng cao, cách tạo và thao tác với các điều khiển nội dung (Thẻ Tài liệu Cấu trúc) bằng Java."
weight: 390
url: /vi/java/working-with-content-control-sdt/
timestamp: 2024-01-31-14-23-37
---

Trong Microsoft Word bạn có thể tạo một mẫu đơn bằng cách bắt đầu với một mẫu và thêm các điều khiển nội dung, bao gồm hộp kiểm, hộp văn bản, bộ chọn ngày và danh sách thả xuống. Trong Aspose.Words một thẻ tài liệu có cấu trúc hoặc điều khiển nội dung từ bất kỳ tài liệu nào được tải vào Aspose.Words là nhập như một nút StructuredDocumentTag. Các thẻ tài liệu có cấu trúc (SDT hoặc kiểm soát nội dung) cho phép nhúng ngữ nghĩa được định nghĩa bởi khách hàng cũng như hành vi và giao diện của nó vào một tài liệu.

StructuredDocumentTag có thể xuất hiện trong một tài liệu ở những nơi sau đây:

- Block-level - Trong các đoạn văn bản và bảng, là con của một nút Body, HeaderFooter, Comment, Footnote hoặc một nút hình dạng.
"- Row-level – Trong các hàng trong một bảng, là con của nút Table."
- Cell-level - Trong các ô trong một hàng bảng, như con của một Row node.
- Inline-level - Trong nội dung dòng, là một con của một đoạn văn.
- Nhúng bên trong một StructuredDocumentTag khác.

## Chèn các điều khiển nội dung vào một tài liệu

Trong phiên bản Aspose.Words này, các loại sau của SDT hoặc kiểm soát nội dung có thể được tạo ra:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Mã ví dụ sau cho thấy cách tạo điều khiển nội dung loại hộp kiểm:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.java" >}}

Mã ví dụ sau cho thấy cách tạo ra đối tượng điều khiển nội dung loại hộp văn bản phong phú (rich-text):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-RichTextBoxContentControl-RichTextBoxContentControl.java" >}}

Mã ví dụ sau cho thấy cách tạo điều khiển nội dung của loại hộp kết hợp

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ComboBoxContentControl-ComboBoxContentControl.java" >}}

## Cách Cập Nhật Nội Dung Điều khiển

Phần này giải thích cách cập nhật các giá trị của SDT hoặc kiểm soát nội dung một cách tự động.

Ví dụ mã sau cho thấy cách thiết lập trạng thái hiện tại của hộp kiểm":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetCurrentStateOfCheckBox-SetCurrentStateOfCheckBox.java" >}}

Ví dụ về mã sau cho thấy cách chỉnh sửa các điều khiển nội dung có kiểu hộp văn bản đơn giản, danh sách thả xuống và hình ảnh như thế nào:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ModifyContentControls-ModifyContentControls.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tập tin mẫu của những ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Liên kết Nội dung Điều khiển với Các Phần XML Tùy chỉnh

Bạn có thể ràng buộc các điều khiển nội dung với dữ liệu XML (*phần XML tùy chỉnh*) trong tài liệu Word

Ví dụ mã sau cho thấy cách ràng buộc nội dung điều khiển với các phần XML tùy chỉnh:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-BindingContentControlwithXML-BindingContentControlwithXML.java" >}}

## Xóa Nội dung của một Bộ Điều khiển Nội dung

Bạn có thể xóa nội dung của một điều khiển nội dung với việc hiển thị một dấu chỗ giữ. **StructuredDocumentTag.clear()** phương pháp xóa nội dung của thẻ tài liệu cấu trúc này và hiển thị một dấu chỗ giữ nếu nó được định nghĩa. Tuy nhiên, không thể xóa nội dung của một kiểm soát nội dung nếu nó có các phiên bản. Nếu một điều khiển nội dung không có chỗ trống, năm khoảng cách được chèn như trong Microsoft Word (ngoại trừ các phần lặp lại, các mục phần lặp lại, nhóm, hộp kiểm, trích dẫn). Nếu một nội dung kiểm soát được ánh xạ vào XML tùy chỉnh, nút XML được tham chiếu sẽ được xóa.

Ví dụ mã sau cho thấy cách xóa nội dung của một phần tử điều khiển nội dung:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ClearContentsControl-ClearContentsControl.java" >}}

## Thay đổi Màu nền và Màu viền của Nội dung Kiểm soát

Tính `StructuredDocumentTag.Color` cho phép bạn lấy hoặc đặt màu sắc của bộ điều khiển nội dung. Màu ảnh hưởng đến điều khiển nội dung trong hai tình huống:

1. MS Word làm nổi bật nền của phần điều khiển nội dung khi con trỏ chuột di chuyển trên phần điều khiển nội dung. Đây giúp xác định điều khiển nội dung Màu của đoạn đánh dấu hơi mềm hơn *Color* một chút. Ví dụ: "MS Word làm nổi bật nền với màu hồng khi *Color* là màu đỏ".
2. Khi bạn tương tác (chỉnh sửa, chọn v.v.) với phần kiểm soát nội dung, đường viền của phần kiểm soát nội dung được tô màu bằng *Color*.

Mã ví dụ sau cho thấy cách thay đổi màu sắc của điều khiển nội dung:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-SetContentControlColor.java" >}}

## Cách thiết lập kiểu để định dạng văn bản gõ vào trong thanh kiểm soát nội dung

Nếu bạn muốn thiết lập kiểu cho điều khiển nội dung, bạn có thể dùng thuộc tính `StructuredDocumentTag.Style` hoặc `StructuredDocumentTag.StyleName`. Khi bạn gõ văn bản vào phần điều khiển nội dung trong tài liệu đầu ra, văn bản đã được gõ sẽ có kiểu "Trích dẫn".

{{% alert color="primary" %}}

Lưu ý rằng chỉ kiểu liên kết và kiểu ký tự có thể được áp dụng cho các điều khiển nội dung. Một Ngoại lệ InvalidOperationException ("Không thể áp dụng phong cách này đối với SDT") được ném khi một phong cách tồn tại nhưng không Liên kết hoặc Phong cách ký tự đang được áp dụng.

{{% /alert %}}

Mã ví dụ sau cho thấy cách thiết lập kiểu của điều khiển nội dung:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-setContentControlStyle.java" >}}

## Hướng dẫn sử dụng Repeating Section Content Control

Cấu trúc nội dung lặp lại cho phép lặp lại nội dung nằm trong nó. Sử dụng Aspose.Words, các nút của thẻ tài liệu có cấu trúc của phần lặp lại và loại mục phần lặp lại có thể được tạo ra và cho mục đích này, thành viên [SdtType enumeration type](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) cung cấp REPEATING_SECTION_ITEM.

Mã ví dụ dưới đây cho thấy cách ràng buộc một phần nội dung lặp lại của bộ điều khiển nội dung đến bảng:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-StructuredDocumentTag-WorkingWithStructuredDocumentTag-CreatingTableRepeatingSectionMappedToCustomXmlPart.java" >}}

