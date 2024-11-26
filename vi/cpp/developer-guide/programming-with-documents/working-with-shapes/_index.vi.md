---
title: Làm Việc Với Các Hình dạng trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm Việc Với Hình Dạng
linktitle: Làm Việc Với Hình Dạng
type: docs
description: "Giới thiệu về ngôn ngữ đánh dấu hình dạng, tạo hình dạng của các loại khác nhau bằng cách sử dụng C++."
weight: 280
url: /vi/cpp/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Chủ đề này thảo luận về cách làm việc theo chương trình với các hình dạng bằng cách sử dụng Aspose.Words.

Các hình dạng trong Aspose.Words đại diện cho một đối tượng trong lớp vẽ, chẳng hạn như AutoShape, textbox, freeform, OLE đối tượng, Điều khiển ActiveX hoặc hình ảnh. Một Tài liệu Word có thể chứa một hoặc nhiều hình dạng khác nhau. Các hình dạng của tài liệu được biểu thị bằng lớp [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/).

## Chèn Hình Dạng Bằng Trình Tạo Tài Liệu

Bạn có thể chèn hình dạng nội tuyến với loại và kích thước được chỉ định và hình dạng nổi tự do với vị trí, kích thước và loại bọc văn bản được chỉ định vào tài liệu bằng phương thức [InsertShape](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertshape/). Phương thức **InsertShape** cho phép chèn hình DML vào mô hình tài liệu. Tài liệu phải được lưu ở định dạng, hỗ trợ DML hình dạng, nếu không, các nút như vậy sẽ được chuyển đổi thành VML hình dạng, trong khi lưu tài liệu.

Ví dụ mã sau đây cho thấy cách chèn các loại hình dạng này vào tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cpp" >}}

## Đặt Tỷ Lệ Khung Hình Bị Khóa

Sử dụng Aspose.Words, bạn có thể chỉ định xem tỷ lệ khung hình của hình dạng có bị khóa thông qua thuộc tính [AspectRatioLocked](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_aspectratiolocked/) hay không.

Ví dụ mã sau đây cho thấy cách làm việc với thuộc tính **AspectRatioLocked**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cpp" >}}

## Đặt Bố Cục Hình Dạng Trong Ô

Bạn cũng có thể chỉ định xem hình dạng được hiển thị bên trong bảng hay bên ngoài bảng bằng thuộc tính [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/).

Ví dụ mã sau đây cho thấy cách làm việc với thuộc tính **IsLayoutInCell**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}

## Tạo Hình Chữ Nhật Góc Snip

Bạn có thể tạo một hình chữ nhật góc snip bằng Aspose.Words. Các loại hình dạng là *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* và *DiagonalCornersRounded.*

Hình dạng DML được tạo bằng phương thức **InsertShape** với các loại hình dạng này. Các loại này không thể được sử dụng để tạo hình dạng VML. Cố gắng tạo hình dạng bằng cách sử dụng hàm tạo công khai của lớp "Hình Dạng" làm tăng ngoại lệ "NotSupportedException".

Ví dụ mã sau đây cho thấy cách chèn các loại hình dạng này vào tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cpp" >}}

## Nhận Hình Dạng Thực Tế Giới Hạn Điểm

Sử dụng Aspose.Words API, bạn có thể lấy vị trí và kích thước của hình chứa khối tính bằng điểm, so với neo của hình trên cùng. Để làm điều này, hãy sử dụng thuộc tính [BoundsInPoints](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_boundsinpoints/).

Ví dụ mã sau đây cho thấy cách làm việc với thuộc tính **BoundsInPoints**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cpp" >}}

## Định Dạng Quy Tắc Ngang

Aspose.Words API cung cấp thuộc tính [HorizontalRuleFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_horizontalruleformat/) để truy cập các thuộc tính của hình dạng quy tắc ngang. Lớp **HorizontalRuleFormat** hiển thị các thuộc tính cơ bản như Chiều Cao, Màu Sắc, Bóng Râm, v. v. đối với định dạng của một quy tắc ngang.

Ví dụ mã sau đây trình bày cách đặt **HorizontalRuleFormat**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Document-Add content using DocumentBuilder-InsertHorizontalRule.h" >}}

## Chèn OLE Đối tượng dưới Dạng Biểu tượng

Aspose.Words API cung cấp chức năng **Shape** → **InsertOleObjectAsIcon** để chèn một đối tượng OLE được nhúng hoặc liên kết làm biểu tượng vào tài liệu. Chức năng này cho phép chỉ định tệp biểu tượng và chú thích. Loại đối tượng `OLE` sẽ được phát hiện bằng cách sử dụng phần mở rộng tệp.

Ví dụ mã sau đây cho thấy cách đặt đối tượng insert OLE làm Biểu tượng vào tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-InsertOLEObjectAsIcon.cpp" >}}

{{% alert color="primary" %}}

Kích thước tối đa của biểu tượng phải là 32x32 để hiển thị chính xác.

{{% /alert %}}
