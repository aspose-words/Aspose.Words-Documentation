---
title: Làm việc với SDT kiểm soát nội dung
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với SDT kiểm soát nội dung
linktitle: Làm việc với SDT kiểm soát nội dung
description: "Sử dụng python, bạn có thể nhúng ngữ nghĩa do khách hàng xác định cũng như hành vi và hình thức của nó vào tài liệu."
type: docs
weight: 390
url: /vi/python-net/working-with-content-control-sdt/
---

Trong Microsoft Word, bạn có thể tạo biểu mẫu bằng cách bắt đầu bằng mẫu và thêm các điều khiển nội dung, bao gồm hộp kiểm, hộp văn bản, bộ chọn ngày và danh sách thả xuống. Trong Aspose.Words, Thẻ tài liệu có cấu trúc hoặc kiểm soát nội dung từ bất kỳ tài liệu nào được tải vào Aspose.Words đều được nhập dưới dạng nút [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/). Thẻ tài liệu có cấu trúc (SDT hoặc kiểm soát nội dung) cho phép nhúng ngữ nghĩa do khách hàng xác định cũng như hành vi và hình thức của nó vào tài liệu. [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) có thể xuất hiện trong tài liệu ở những vị trí sau:

- Cấp độ khối - Giữa các đoạn văn và bảng, là con của [Body](https://reference.aspose.com/words/python-net/aspose.words/body/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/), [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) hoặc nút [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)
- Cấp hàng - Giữa các hàng trong bảng, là con của nút [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/)
- Cấp độ ô - Giữa các ô trong một hàng của bảng, là nút con của nút [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/)
- Cấp độ nội tuyến - Trong số nội dung nội tuyến bên trong, dưới dạng con của [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/)
- Được lồng bên trong một [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) khác

## Chèn điều khiển nội dung vào tài liệu

Trong phiên bản Aspose.Words này, có thể tạo các loại SDT hoặc kiểm soát nội dung sau:

- Checkbox
- DropDownList
- ComboBox
- Date
- BuildingBlockGallery
- Group
- `Picture`
- RichText
- PlainText

Ví dụ mã sau đây minh họa cách tạo hộp kiểm kiểm soát nội dung loại.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CheckBoxTypeContentControl.py" >}}

Ví dụ mã sau đây minh họa cách tạo điều khiển nội dung của hộp văn bản có định dạng loại.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-RichTextBoxContentControl.py" >}}

Ví dụ mã sau đây minh họa cách tạo điều khiển nội dung của hộp tổ hợp loại.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ComboBoxContentControl.py" >}}

## Cách cập nhật Kiểm soát nội dung

Phần này giải thích cách cập nhật các giá trị của SDT hoặc kiểm soát nội dung theo chương trình

Ví dụ mã sau đây cho biết cách đặt trạng thái hiện tại của hộp kiểm:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetCurrentStateOfCheckBox.py" >}}

Ví dụ mã sau đây cho thấy cách sửa đổi các điều khiển nội dung thuộc loại hộp văn bản thuần túy, danh sách thả xuống và hình ảnh:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ModifyContentControls.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của các ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Structured%20document%20tags.docx).

{{% /alert %}}

## Liên kết kiểm soát nội dung với các phần XML tùy chỉnh

Bạn có thể liên kết các điều khiển nội dung với dữ liệu XML (*phần XML tùy chỉnh*) trong tài liệu Word.

Ví dụ mã sau đây cho thấy cách liên kết kiểm soát nội dung với các phần XML tùy chỉnh:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-BindSDTtoCustomXmlPart.py" >}}

## Ánh xạ XML của phạm vi thẻ tài liệu có cấu trúc

Bạn có thể ánh xạ phạm vi thẻ tài liệu có cấu trúc này tới dữ liệu XML trong phần XML tùy chỉnh của tài liệu hiện tại bằng cách sử dụng thuộc tính [StructuredDocumentTagRangeStart.xml_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttagrangestart/xml_mapping/). Tuy nhiên, phương pháp [set_mapping](https://reference.aspose.com/words/python-net/aspose.words.markup/xmlmapping/set_mapping/) có thể được sử dụng để ánh xạ phạm vi thẻ tài liệu có cấu trúc sang dữ liệu XML.

Ví dụ mã sau đây cho thấy cách thiết lập ánh xạ XML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-StructuredDocumentTagRangeStartXmlMapping.py" >}}

## Xóa nội dung của kiểm soát nội dung

Bạn có thể xóa nội dung của điều khiển nội dung bằng cách hiển thị trình giữ chỗ. Phương thức [StructuredDocumentTag.clear](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/clear/) xóa nội dung của thẻ tài liệu có cấu trúc này và hiển thị phần giữ chỗ nếu nó được xác định. Tuy nhiên, không thể xóa nội dung của điều khiển nội dung nếu nó có bản sửa đổi. Nếu điều khiển nội dung không có phần giữ chỗ thì chèn 5 dấu cách như trong MS Word (trừ phần lặp, mục phần lặp, nhóm, hộp kiểm, trích dẫn). Nếu điều khiển nội dung được ánh xạ tới XML tùy chỉnh thì nút XML được tham chiếu sẽ bị xóa.

Ví dụ mã sau đây cho thấy cách xóa nội dung của kiểm soát nội dung:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-ClearContentsControl.py" >}}

## Thay đổi màu nền và màu viền của điều khiển nội dung

Thuộc tính [StructuredDocumentTag.color](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/color/) cho phép bạn lấy hoặc đặt màu của điều khiển nội dung. Màu sắc ảnh hưởng đến việc kiểm soát nội dung trong hai trường hợp:

1. MS Word làm nổi bật nền của điều khiển nội dung khi chuột di chuyển qua điều khiển nội dung. Điều này giúp xác định việc kiểm soát nội dung. Màu highlight có phần "dịu" hơn *color* một chút. Ví dụ: MS Word đánh dấu nền bằng màu hồng, khi *color* có màu đỏ.
2. Khi bạn tương tác (chỉnh sửa, chọn, v.v.) với điều khiển nội dung, đường viền của điều khiển nội dung sẽ được tô màu bằng *color*.

Ví dụ mã sau đây cho thấy cách thay đổi màu của điều khiển nội dung:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlColor.py" >}}

## Cách đặt kiểu để định dạng văn bản được nhập vào phần kiểm soát nội dung

Nếu bạn muốn đặt kiểu kiểm soát nội dung, bạn có thể sử dụng thuộc tính [StructuredDocumentTag.style](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style/) hoặc [StructuredDocumentTag.style_name](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/style_name/). Khi bạn gõ văn bản vào điều khiển nội dung trong tài liệu đầu ra, văn bản gõ sẽ có kiểu "Trích dẫn".

{{% alert color="primary" %}}

Lưu ý rằng chỉ có thể áp dụng kiểu Liên kết và Ký tự cho điều khiển nội dung. Một ngoại lệ ("Không thể áp dụng kiểu này cho SDT") được đưa ra khi một kiểu tồn tại nhưng không được liên kết hoặc kiểu Ký tự đang được áp dụng.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách đặt kiểu kiểm soát nội dung:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-SetContentControlStyle.py" >}}

## Làm việc với Kiểm soát nội dung phần lặp lại

Kiểm soát nội dung phần lặp lại cho phép lặp lại nội dung có trong đó. Bằng cách sử dụng Aspose.Words, các nút thẻ tài liệu có cấu trúc của phần lặp lại và các loại mục phần lặp lại có thể được tạo và vì mục đích này, kiểu liệt kê [SdtType](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) cung cấp thuộc tính [REPEATING_SECTION_ITEM](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/#repeating_section_item).

Ví dụ về mã sau đây cho thấy cách liên kết điều khiển nội dung phần lặp lại với một bảng:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-working_with_sdt-CreatingTableRepeatingSectionMappedToCustomXmlPart.py" >}}
