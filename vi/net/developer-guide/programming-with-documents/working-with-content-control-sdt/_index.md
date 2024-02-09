---
title: Làm việc với SDT kiểm soát nội dung
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với SDT kiểm soát nội dung
linktitle: Làm việc với SDT kiểm soát nội dung
description: "Quản lý nội dung tài liệu nâng cao, cách tạo và thao tác kiểm soát nội dung (Thẻ tài liệu có cấu trúc) bằng C#."
type: docs
weight: 390
url: /vi/net/working-with-content-control-sdt/
---

Trong Microsoft Word, bạn có thể tạo biểu mẫu bằng cách bắt đầu bằng mẫu và thêm các điều khiển nội dung, bao gồm hộp kiểm, hộp văn bản, bộ chọn ngày và danh sách thả xuống. Trong Aspose.Words, Thẻ tài liệu có cấu trúc hoặc kiểm soát nội dung từ bất kỳ tài liệu nào được tải vào Aspose.Words sẽ được nhập dưới dạng nút StructuredDocumentTag. Thẻ tài liệu có cấu trúc (SDT hoặc kiểm soát nội dung) cho phép nhúng ngữ nghĩa do khách hàng xác định cũng như hành vi và hình thức của nó vào tài liệu.

StructuredDocumentTag có thể xuất hiện trong tài liệu ở những vị trí sau:

- Cấp độ khối – Giữa các đoạn văn và bảng, là phần tử con của nút Nội dung, HeaderFooter, Comment, Footnote hoặc Shape
- Cấp hàng – Giữa các hàng trong bảng, là con của nút Bảng
- Cấp độ ô – Giữa các ô trong một hàng của bảng, là con của nút Hàng
- Cấp độ nội tuyến – Trong số nội dung nội tuyến bên trong, là phần tử con của Đoạn văn
- Được lồng bên trong một Thẻ tài liệu có cấu trúc khác

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

Ví dụ mã sau đây cho thấy cách tạo hộp kiểm kiểm soát nội dung loại:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CheckBoxTypeContentControl-CheckBoxTypeContentControl.cs" >}}

Ví dụ mã sau đây cho thấy cách tạo điều khiển nội dung của hộp văn bản có định dạng loại:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-RichTextBoxContentControl-RichTextBoxContentControl.cs" >}}

Ví dụ mã sau đây cho thấy cách tạo điều khiển nội dung của hộp tổ hợp loại:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-ComboBoxContentControl-ComboBoxContentControl.cs" >}}

## Cách cập nhật kiểm soát nội dung

Phần này giải thích cách cập nhật các giá trị của SDT hoặc kiểm soát nội dung theo chương trình.

Ví dụ mã sau đây cho biết cách đặt trạng thái hiện tại của hộp kiểm:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-SetCurrentStateOfCheckBox.cs" >}}

Ví dụ mã sau đây cho thấy cách sửa đổi các điều khiển nội dung thuộc loại hộp văn bản thuần túy, danh sách thả xuống và hình ảnh:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-UpdateContentControls-ModifyContentControls.cs" >}}

## Ràng buộc kiểm soát nội dung với các phần XML tùy chỉnh

Bạn có thể liên kết các điều khiển nội dung với dữ liệu XML (*phần XML tùy chỉnh*) trong tài liệu Word.

Ví dụ mã sau đây cho thấy cách liên kết kiểm soát nội dung với các phần XML tùy chỉnh:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-BindSDTtoCustomXmlPart.cs" >}}

## Ánh xạ XML của phạm vi thẻ tài liệu có cấu trúc

Bạn có thể ánh xạ phạm vi thẻ tài liệu có cấu trúc này tới dữ liệu XML trong phần XML tùy chỉnh của tài liệu hiện tại bằng cách sử dụng **Thuộc tính StructuredDocumentTagRangeStart.XmlMapping**. Tuy nhiên, phương pháp [SetMapping](https://reference.aspose.com/words/net/aspose.words.markup/xmlmapping/setmapping/) có thể được sử dụng để ánh xạ phạm vi thẻ tài liệu có cấu trúc sang dữ liệu XML.

Ví dụ mã sau đây cho thấy cách thiết lập ánh xạ XML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-StructuredDocumentTagRangeStartXmlMapping.cs" >}}

## Xóa nội dung của kiểm soát nội dung

Bạn có thể xóa nội dung của điều khiển nội dung bằng cách hiển thị trình giữ chỗ. Phương thức **StructuredDocumentTag.Clear** xóa nội dung của thẻ tài liệu có cấu trúc này và hiển thị phần giữ chỗ nếu nó được xác định. Tuy nhiên, không thể xóa nội dung của điều khiển nội dung nếu nó có bản sửa đổi. Nếu điều khiển nội dung không có phần giữ chỗ thì năm dấu cách sẽ được chèn giống như trong Microsoft Word (ngoại trừ các phần lặp lại, các mục phần lặp lại, nhóm, hộp kiểm, trích dẫn). Nếu điều khiển nội dung được ánh xạ tới XML tùy chỉnh thì nút XML được tham chiếu sẽ bị xóa.

Ví dụ mã sau đây cho thấy cách xóa nội dung của kiểm soát nội dung:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-ClearContentsControl.cs" >}}

## Thay đổi màu nền và màu viền của điều khiển nội dung

Thuộc tính `StructuredDocumentTag.Color` cho phép bạn lấy hoặc đặt màu của điều khiển nội dung. Màu sắc ảnh hưởng đến việc kiểm soát nội dung trong hai trường hợp:

1. MS Word làm nổi bật nền của điều khiển nội dung khi chuột di chuyển qua điều khiển nội dung. Điều này giúp xác định việc kiểm soát nội dung. Màu highlight có phần "dịu" hơn *Color* một chút. Ví dụ: MS Word đánh dấu nền bằng màu hồng, khi *Color* có màu Đỏ.
2. Khi bạn tương tác (chỉnh sửa, chọn, v.v.) với điều khiển nội dung, đường viền của điều khiển nội dung sẽ được tô màu bằng *Color*.

Ví dụ mã sau đây cho thấy cách thay đổi màu của điều khiển nội dung:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlColor.cs" >}}

## Cách đặt kiểu để định dạng văn bản được nhập vào phần kiểm soát nội dung

Nếu bạn muốn đặt kiểu kiểm soát nội dung, bạn có thể sử dụng thuộc tính `StructuredDocumentTag.Style` hoặc `StructuredDocumentTag.StyleName`. Khi bạn gõ văn bản vào điều khiển nội dung trong tài liệu đầu ra, văn bản gõ sẽ có kiểu "Trích dẫn".

{{% alert color="primary" %}}

Lưu ý rằng chỉ có thể áp dụng kiểu Liên kết và Ký tự cho điều khiển nội dung. Ngoại lệ InvalidOperationException ("Không thể áp dụng kiểu này cho SDT") được đưa ra khi một kiểu tồn tại nhưng không được liên kết hoặc kiểu Ký tự đang được áp dụng.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách đặt kiểu kiểm soát nội dung:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cs" >}}

## Làm việc với Kiểm soát nội dung phần lặp lại

Kiểm soát nội dung phần lặp lại cho phép lặp lại nội dung có trong đó. Bằng cách sử dụng Aspose.Words, các nút thẻ tài liệu có cấu trúc của phần lặp lại và các loại mục phần lặp lại có thể được tạo và vì mục đích này, [Kiểu liệt kê SdtType](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/) cung cấp thuộc tính **RepeatingSectionItem**.

Ví dụ về mã sau đây cho thấy cách liên kết điều khiển nội dung phần lặp lại với một bảng.

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cs" >}}
