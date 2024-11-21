---
title: Làm Việc Với Content Control SDT
second_title: Aspose.Words cho C++
articleTitle: Làm Việc Với Content Control SDT
linktitle: Làm Việc Với Content Control SDT
type: docs
description: "Quản lý nội dung tài liệu nâng cao, cách tạo và thao tác điều khiển nội dung (Thẻ Tài liệu Có Cấu trúc) bằng C++."
weight: 390
url: /vi/cpp/structured-document-tags-or-content-control/
timestamp: 2024-01-27-14-07-04
---

Trong Microsoft Word, bạn có thể tạo biểu mẫu bằng cách bắt đầu bằng mẫu và thêm các điều khiển nội dung, bao gồm hộp kiểm, hộp văn bản, bộ chọn ngày và danh sách thả xuống. Trong Aspose.Words, Thẻ Tài liệu Có Cấu trúc Hoặc kiểm soát nội dung từ bất kỳ tài liệu nào được tải vào Aspose.Words được nhập dưới dạng nút StructuredDocumentTag. Thẻ tài liệu có cấu trúc (SDT hoặc kiểm soát nội dung) cho phép nhúng ngữ nghĩa do khách hàng xác định cũng như hành vi và giao diện của nó vào tài liệu. StructuredDocumentTag có thể xảy ra trong một tài liệu ở những nơi sau:

- Block-level-Trong số các đoạn văn và bảng, như một Đứa trẻ Của Một Cơ Thể, HeaderFooter, Bình Luận, Chú Thích Cuối trang hoặc Một Nút Hình Dạng
- Row-level-Trong số các hàng trong một bảng, như một con của Một Nút Bảng
- Cấp độ ô-Trong số các ô trong một hàng bảng, như một con của Một Nút Hàng
- Inline-level-Trong số nội dung nội tuyến bên trong, như một đứa trẻ Của Một Đoạn văn
- Lồng bên trong khác StructuredDocumentTag

## Cách Đặt Kiểu Để Định Dạng Văn Bản Được Nhập Vào Điều Khiển Nội Dung

Nếu bạn muốn đặt kiểu kiểm soát nội dung, bạn có thể sử dụng thuộc tính `StructuredDocumentTag.Style` hoặc `StructuredDocumentTag.StyleName`. Khi bạn nhập văn bản vào điều khiển nội dung trong tài liệu đầu ra, văn bản đã nhập sẽ có kiểu "Trích dẫn".

{{% alert color="primary" %}}

Lưu ý rằng chỉ Các kiểu Ký tự Và Liên Kết mới có thể được áp dụng để kiểm soát nội dung. Một InvalidOperationException ("Không thể áp dụng kiểu này cho SDT") được ném khi một kiểu tồn tại nhưng không Được Liên kết hoặc kiểu Ký tự đang được áp dụng.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách đặt kiểu kiểm soát nội dung:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-SetContentControlStyle.cpp" >}}

## Làm việc Với Phần Lặp Lại Kiểm Soát Nội Dung

Phần lặp lại kiểm soát nội dung cho phép lặp lại nội dung có trong nó. Sử dụng Aspose.Words, các nút thẻ tài liệu có cấu trúc của phần lặp lại và các loại mục phần lặp lại có thể được tạo và cho mục đích này, loại liệt kê SdtType cung cấp thuộc tính **RepeatingSectionItem**.

Ví dụ mã sau đây cho thấy cách liên kết điều khiển nội dung phần lặp lại với bảng:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-StructuredDocumentTag-WorkingWithSDT-CreatingTableRepeatingSectionMappedToCustomXmlPart.cpp" >}}
