---
title: Làm việc với Hình dạng trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với hình dạng
linktitle: Làm việc với hình dạng
description: "Tạo và quản lý hình dạng, đối tượng ole trong tài liệu bằng Python."
type: docs
weight: 280
url: /vi/python-net/working-with-shapes/
timestamp: 2024-01-27-14-07-04
---

Chủ đề này thảo luận về cách làm việc theo chương trình với các hình dạng bằng Aspose.Words.

Các hình dạng trong Aspose.Words đại diện cho một đối tượng trong lớp vẽ, chẳng hạn như Hình tự động, hộp văn bản, dạng tự do, đối tượng OLE, điều khiển ActiveX hoặc ảnh. Một tài liệu Word có thể chứa một hoặc nhiều hình dạng khác nhau. Hình dạng của tài liệu được biểu diễn bằng lớp [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Chèn hình bằng Document Builder

Bạn có thể chèn hình dạng nội tuyến với loại và kích thước được chỉ định cũng như hình dạng nổi tự do với vị trí, kích thước và kiểu ngắt dòng văn bản đã chỉ định vào tài liệu bằng phương pháp [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/). Phương pháp [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) cho phép chèn hình dạng DML vào mô hình tài liệu. Tài liệu phải được lưu ở định dạng hỗ trợ hình dạng DML, nếu không, các nút đó sẽ được chuyển đổi sang hình dạng VML trong khi lưu tài liệu.

Ví dụ mã sau đây cho thấy cách chèn các loại hình này vào tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-InsertShape.py" >}}

## Đặt tỷ lệ khung hình đã khóa

Bằng cách sử dụng Aspose.Words, bạn có thể chỉ định xem tỷ lệ khung hình của hình có bị khóa thông qua thuộc tính [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/) hay không.

Ví dụ mã sau đây cho thấy cách làm việc với thuộc tính **AspectRatioLocked**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AspectRatioLocked.py" >}}

## Đặt bố cục hình dạng trong ô

Bạn cũng có thể chỉ định hình dạng được hiển thị bên trong hay bên ngoài bảng bằng thuộc tính [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/).

Ví dụ mã sau đây cho thấy cách làm việc với thuộc tính **IsLayoutInCell**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}

## Tạo hình chữ nhật góc cắt

Bạn có thể tạo hình chữ nhật góc cắt bằng Aspose.Words. Các loại hình dạng là [SINGLE_CORNER_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_snipped), [TOP_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_snipped), [DIAGONAL_CORNERS_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_snipped), [TOP_CORNERS_ONE_ROUNDED_ONE_SNIPPED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_one_rounded_one_snipped), [SINGLE_CORNER_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#single_corner_rounded), [TOP_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#top_corners_rounded) và [DIAGONAL_CORNERS_ROUNDED](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#diagonal_corners_rounded).

Hình dạng DML được tạo bằng phương pháp [insert_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_shape/) với các loại hình dạng này. Những loại này không thể được sử dụng để tạo hình dạng VML. Cố gắng tạo hình bằng cách sử dụng hàm tạo công khai của lớp [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) sẽ làm tăng ngoại lệ "NotSupportedException".

Ví dụ mã sau đây cho thấy cách chèn các loại hình này vào tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-AddCornersSnipped.py" >}}

## Nhận điểm giới hạn hình dạng thực tế

Sử dụng Aspose.Words API, bạn có thể nhận được vị trí và kích thước của hình chứa khối theo điểm, so với điểm neo của hình dạng trên cùng. Để thực hiện việc này, hãy sử dụng thuộc tính [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/bounds_in_points/).

Ví dụ mã sau đây cho thấy cách làm việc với thuộc tính **BoundsInPoints**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}

## Chỉ định neo dọc

Bạn có thể chỉ định căn chỉnh theo chiều dọc của văn bản trong một hình bằng thuộc tính [vertical_anchor](https://reference.aspose.com/words/python-net/aspose.words.drawing/textbox/vertical_anchor/).

Ví dụ mã sau đây cho thấy cách làm việc với thuộc tính **VerticalAnchor**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-VerticalAnchor.py" >}}

## Phát hiện hình dạng SmartArt

Aspose.Words cũng cho phép phát hiện xem Shape có đối tượng `SmartArt` hay không. Để thực hiện việc này, hãy sử dụng thuộc tính [thuộc tính has_smart_art](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_smart_art/).

Ví dụ mã sau đây cho thấy cách làm việc với thuộc tính **HasSmartArt**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-DetectSmartArtShape.py" >}}

## Chèn thước ngang vào tài liệu

Bạn có thể chèn hình dạng quy tắc ngang vào tài liệu bằng phương pháp [insert_horizontal_rule](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_horizontal_rule/).

Ví dụ mã sau đây cho thấy cách thực hiện việc này:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-InsertHorizontalRule.py" >}}

Aspose.Words API cung cấp thuộc tính [horizontal_rule_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/horizontal_rule_format/) để truy cập các thuộc tính của hình dạng quy tắc ngang. Lớp [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/) hiển thị các thuộc tính cơ bản như [height](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/height/), [color](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/color/), [no_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/no_shade/), v.v. để định dạng quy tắc ngang.

Ví dụ mã sau đây minh họa cách đặt [HorizontalRuleFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/horizontalruleformat/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-add_content_using_document_builder-HorizontalRuleFormat.py" >}}

## Chèn đối tượng OLE làm biểu tượng

Aspose.Words API cung cấp chức năng **Shape.insert_ole_object_as_icon** để chèn đối tượng OLE được nhúng hoặc liên kết dưới dạng biểu tượng vào tài liệu. Chức năng này cho phép chỉ định tệp biểu tượng và chú thích. Loại đối tượng `OLE` sẽ được phát hiện bằng cách sử dụng phần mở rộng của tệp.

Ví dụ mã sau đây minh họa cách đặt đối tượng chèn OLE làm Biểu tượng vào tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_ole_objects_and_active_x-InsertOLEObjectAsIcon.py" >}}

{{% alert color="primary" %}}

Kích thước tối đa của biểu tượng phải là 32x32 để hiển thị chính xác.

{{% /alert %}}

## Nhập hình dạng bằng XML toán học dưới dạng hình dạng vào DOM

Bạn có thể sử dụng thuộc tính [convert_shape_to_office_math](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/convert_shape_to_office_math/) để chuyển đổi các hình dạng bằng EquationXML sang đối tượng Office Math. Giá trị mặc định của thuộc tính này tương ứng với hành vi của MS Word tức là các hình có phương trình XML không được chuyển đổi thành đối tượng toán học Office.

Ví dụ mã sau đây cho thấy cách chuyển đổi hình dạng thành đối tượng Office Math:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-ConvertShapeToOfficeMath.py" >}}
