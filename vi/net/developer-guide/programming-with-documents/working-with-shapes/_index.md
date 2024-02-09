---
title: Làm việc với Hình dạng trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với hình dạng
linktitle: Làm việc với hình dạng
description: "Giới thiệu ngôn ngữ đánh dấu hình dạng, tạo các loại hình dạng khác nhau bằng C#."
type: docs
weight: 280
url: /vi/net/working-with-shapes/
---

Chủ đề này thảo luận về cách làm việc theo chương trình với các hình dạng bằng Aspose.Words.

Các hình dạng trong Aspose.Words đại diện cho một đối tượng trong lớp vẽ, chẳng hạn như Hình tự động, hộp văn bản, dạng tự do, đối tượng OLE, điều khiển ActiveX hoặc ảnh. Một tài liệu Word có thể chứa một hoặc nhiều hình dạng khác nhau. Các hình dạng trong Aspose.Words được biểu thị bằng lớp [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/).

## Chèn hình bằng Document Builder

Bạn có thể chèn hình dạng nội tuyến với loại và kích thước được chỉ định cũng như hình dạng nổi tự do với vị trí, kích thước và kiểu ngắt dòng văn bản đã chỉ định vào tài liệu bằng phương pháp [InsertShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertshape/). Phương thức **InsertShape** cho phép chèn hình dạng DML vào mô hình tài liệu. Tài liệu phải được lưu ở định dạng hỗ trợ hình dạng DML, nếu không, các nút đó sẽ được chuyển đổi sang hình dạng VML trong khi lưu tài liệu.

Ví dụ mã sau đây cho thấy cách chèn các loại hình này vào tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-InsertShapeUsingDocumentBuilder.cs" >}}

## Đặt tỷ lệ khung hình đã khóa

Bằng cách sử dụng Aspose.Words, bạn có thể chỉ định xem tỷ lệ khung hình của hình có bị khóa thông qua thuộc tính [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/) hay không.

Ví dụ mã sau đây cho thấy cách làm việc với thuộc tính **AspectRatioLocked**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Đặt bố cục hình dạng trong ô

Bạn cũng có thể chỉ định hình dạng được hiển thị bên trong hay bên ngoài bảng bằng thuộc tính [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/).

Ví dụ mã sau đây cho thấy cách làm việc với thuộc tính **IsLayoutInCell**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}

## Tạo hình chữ nhật góc cắt

Bạn có thể tạo hình chữ nhật góc cắt bằng Aspose.Words. Các loại hình dạng là *SingleCornerSnipped, TopCornersSnipped, DiagonalCornersSnipped, TopCornersOneRoundedOneSnipped, SingleCornerRounded, TopCornersRounded,* và *DiagonalCornersRounded.*

Hình dạng DML được tạo bằng phương pháp **InsertShape** với các loại hình dạng này. Những loại này không thể được sử dụng để tạo hình dạng VML. Cố gắng tạo hình bằng cách sử dụng hàm tạo công khai của lớp "Hình dạng" sẽ làm tăng ngoại lệ "NotSupportedException".

Ví dụ mã sau đây cho thấy cách chèn các loại hình này vào tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-AddCornersSnipped.cs" >}}

## Nhận điểm giới hạn hình dạng thực tế

Sử dụng Aspose.Words API, bạn có thể nhận được vị trí và kích thước của hình chứa khối theo điểm, so với điểm neo của hình dạng trên cùng. Để thực hiện việc này, hãy sử dụng thuộc tính [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/boundsinpoints/).

Ví dụ mã sau đây cho thấy cách làm việc với thuộc tính **BoundsInPoints**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Chỉ định neo dọc

Bạn có thể chỉ định căn chỉnh theo chiều dọc của văn bản trong một hình bằng thuộc tính [VerticalAnchor](https://reference.aspose.com/words/net/aspose.words.drawing/textbox/verticalanchor/).

Ví dụ mã sau đây cho thấy cách làm việc với thuộc tính **VerticalAnchor**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SpecifyVerticalAnchor.cs" >}}

## Phát hiện hình dạng SmartArt

Aspose.Words cũng cho phép phát hiện xem Shape có đối tượng `SmartArt` hay không. Để thực hiện việc này, hãy sử dụng thuộc tính [HasSmartArt](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hassmartart/).

Ví dụ mã sau đây cho thấy cách làm việc với thuộc tính **HasSmartArt**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-DetectSmartArtShape.cs" >}}

## Chèn thước ngang vào tài liệu

Bạn có thể chèn hình dạng quy tắc ngang vào tài liệu bằng phương pháp [InsertHorizontalRule](https://reference.aspose.com/words/net/aspose.words/documentbuilder/inserthorizontalrule/).

Ví dụ mã sau đây cho thấy cách thực hiện việc này:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertHorizontalRule-DocumentBuilderInsertHorizontalRule.cs" >}}

Aspose.Words API cung cấp thuộc tính [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shape/horizontalruleformat/) để truy cập các thuộc tính của hình dạng quy tắc ngang. Lớp [HorizontalRuleFormat](https://reference.aspose.com/words/net/aspose.words.drawing/horizontalruleformat/) hiển thị các thuộc tính cơ bản như Chiều cao, Màu sắc, Không bóng, v.v. để định dạng quy tắc ngang.

Ví dụ mã sau đây cho biết cách đặt **HorizontalRuleFormat**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderHorizontalRule-DocumentBuilderHorizontalRuleFormat.cs" >}}

## Nhập hình dạng bằng XML toán học dưới dạng hình dạng vào DOM

Bạn có thể sử dụng thuộc tính [ConvertShapeToOfficeMath](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/convertshapetoofficemath/) để chuyển đổi các hình dạng bằng EquationXML sang đối tượng Office Math. Giá trị mặc định của thuộc tính này tương ứng với hành vi Microsoft Word, tức là các hình có phương trình XML không được chuyển đổi thành đối tượng toán học Office.

Ví dụ mã sau đây cho thấy cách chuyển đổi hình dạng thành đối tượng Office Math:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-ConvertShapeToOfficeMath.cs" >}}
