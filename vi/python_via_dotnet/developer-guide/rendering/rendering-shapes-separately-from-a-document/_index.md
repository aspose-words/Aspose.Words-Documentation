---
title: Hình dạng tách biệt khỏi tài liệu
second_title: Aspose.Words cho Python via .NET
articleTitle: Hiển thị hình dạng riêng biệt từ tài liệu
linktitle: Hiển thị hình dạng riêng biệt từ tài liệu
description: "Trích xuất các đối tượng đồ họa khác nhau, chẳng hạn như hình ảnh, hộp văn bản chứa đoạn văn hoặc hình mũi tên khi xử lý tài liệu và xuất chúng sang vị trí bên ngoài bằng Python."
type: docs
weight: 40
url: /vi/python-net/rendering-shapes-separately-from-a-document/
---

Khi xử lý tài liệu, nhiệm vụ chung là trích xuất tất cả hình ảnh có trong tài liệu và xuất chúng sang vị trí bên ngoài. Nhiệm vụ này trở nên đơn giản với Aspose.Words API, vốn đã cung cấp chức năng trích xuất và lưu dữ liệu hình ảnh. Tuy nhiên, đôi khi bạn có thể muốn trích xuất tương tự các loại nội dung đồ họa khác được thể hiện bằng một loại đối tượng vẽ khác, ví dụ: hộp văn bản chứa các đoạn văn, hình mũi tên và một hình ảnh nhỏ. Không có cách nào đơn giản để hiển thị đối tượng này vì nó là sự kết hợp của các thành phần nội dung riêng lẻ. Bạn cũng có thể gặp trường hợp nội dung được nhóm lại với nhau thành một đối tượng trông giống như một hình ảnh.

Aspose.Words cung cấp chức năng trích xuất loại nội dung này giống như cách bạn có thể trích xuất một hình ảnh đơn giản từ một hình dạng dưới dạng nội dung được hiển thị. Bài viết này mô tả cách sử dụng chức năng này để hiển thị các hình dạng độc lập với tài liệu.

## Các loại hình dạng trong Aspose.Words

Tất cả nội dung trong lớp bản vẽ tài liệu được biểu thị bằng nút [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) hoặc [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) trong Mô-đun đối tượng tài liệu Aspose.Words (DOM). Những nội dung như vậy có thể là hộp văn bản, hình ảnh, Hình tự động, đối tượng OLE, v.v. Một số trường cũng được nhập dưới dạng hình dạng, ví dụ: trường `INCLUDEPICTURE`.

Một hình ảnh đơn giản được biểu thị bằng nút [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) của [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#image). Nút hình dạng này không có nút con nhưng dữ liệu hình ảnh chứa trong nút hình dạng này có thể được truy cập bằng thuộc tính [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/). Mặt khác, một hình cũng có thể được tạo thành từ nhiều nút con. Ví dụ: hình dạng hộp văn bản, được biểu thị bằng thuộc tính [ShapeType.TEXT_BOX](https://reference.aspose.com/words/python-net/aspose.words.drawing/shadowtype/#text_box), có thể được tạo thành từ nhiều nút, chẳng hạn như [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) và [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Hầu hết các hình dạng có thể bao gồm các nút cấp khối [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) và [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/). Đây là những nút giống như những nút xuất hiện trong phần thân chính. Hình dạng luôn là một phần của một số đoạn văn, được đưa trực tiếp vào dòng hoặc được neo vào [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), nhưng "nổi" ở bất kỳ đâu trong trang tài liệu.

![rendering-shapes-separately-from-a-document_1](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Một tài liệu cũng có thể chứa các hình dạng được nhóm lại với nhau. Grouping có thể được kích hoạt trong Microsoft Word bằng cách chọn nhiều đối tượng và nhấp vào "Group" trong menu chuột phải.

![rendering-shapes-separately-from-a-document_2](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Trong Aspose.Words, các nhóm hình dạng này được biểu thị bằng nút [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/). Chúng cũng có thể được gọi theo cách tương tự để hiển thị toàn bộ nhóm thành hình ảnh.

![rendering-shapes-separately-from-a-document_3](/words/python-net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Định dạng DOCX có thể chứa các loại hình ảnh đặc biệt, chẳng hạn như sơ đồ hoặc biểu đồ. Những hình dạng này cũng được biểu diễn thông qua nút [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) trong Aspose.Words, nút này cũng cung cấp một phương pháp tương tự để hiển thị chúng dưới dạng hình ảnh. Theo thiết kế, một hình dạng không thể chứa một hình dạng khác khi còn nhỏ, trừ khi hình dạng đó là hình ảnh ([ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image)). Ví dụ: Microsoft Word không cho phép bạn chèn hộp văn bản vào trong hộp văn bản khác.

Các loại hình dạng được mô tả ở trên cung cấp một phương thức đặc biệt để hiển thị các hình dạng đó thông qua lớp [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Một phiên bản của lớp [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) được truy xuất cho [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) hoặc [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) thông qua phương thức [get_shape_renderer](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/get_shape_renderer/) hoặc bằng cách chuyển [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) tới hàm tạo của lớp [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/). Lớp này cung cấp quyền truy cập cho các thành viên, cho phép hiển thị hình dạng như sau:

- Tập tin trên đĩa
- Suối

{{% alert color="primary" %}}

Khi hiển thị [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), nó phải là một phần của hệ thống phân cấp tài liệu. Nếu [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) không phải là một phần của cây tài liệu thì đầu ra được hiển thị sẽ trống sau khi gọi các phương thức [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).

{{% /alert %}}

## Kết xuất thành tệp hoặc luồng

Phương thức [save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/) cung cấp các tình trạng quá tải hiển thị hình dạng trực tiếp vào tệp hoặc luồng. Cả hai tình trạng quá tải đều chấp nhận một thể hiện của lớp [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), cho phép xác định các tùy chọn để hiển thị hình dạng. Điều này hoạt động theo cách tương tự như phương pháp [Document.save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Mặc dù tham số này là bắt buộc nhưng bạn có thể chuyển giá trị null, chỉ định rằng không có tùy chọn tùy chỉnh nào.

Hình dạng có thể được xuất ở bất kỳ định dạng hình ảnh nào được chỉ định trong bảng liệt kê [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/). Ví dụ: hình ảnh có thể được hiển thị dưới dạng hình ảnh raster, chẳng hạn như JPEG bằng cách chỉ định bảng liệt kê [SaveFormat.JPEG](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#jpeg) hoặc dưới dạng hình ảnh vector, chẳng hạn như EMF bằng cách chỉ định [SaveFormat.EMF](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#emf).

Ví dụ mã bên dưới minh họa việc hiển thị hình dạng cho hình ảnh EMF tách biệt với tài liệu và lưu vào đĩa:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the JPEG raster format.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.EMF)
imageOptions.scale = 1.5
        
# Save the rendered image to disk.
r.save(docs_base.artifacts_dir + "TestFile.RenderToDisk_out.emf", imageOptions)
{{< /highlight >}}

Ví dụ mã bên dưới minh họa việc hiển thị hình dạng thành hình ảnh JPEG tách biệt với tài liệu và lưu vào luồng:

{{< highlight python >}}
r = shape.get_shape_renderer()

# Define custom options which control how the image is rendered. Render the shape to the vector format EMF.
imageOptions = aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG)
        
# Output the image in gray scale
imageOptions.image_color_mode = aw.saving.ImageColorMode.GRAYSCALE

# Reduce the brightness a bit (default is 0.5f).
imageOptions.image_brightness = 0.45
        
stream =  io.FileIO(docs_base.artifacts_dir + "TestFile.RenderToStream_out.jpg", "w+b")

# Save the rendered image to the stream using different options.
r.save(stream, imageOptions)

# Close the stream
stream.close()
{{< /highlight >}}

Lớp [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) cho phép bạn chỉ định nhiều tùy chọn khác nhau để kiểm soát cách hiển thị hình ảnh. Chức năng được mô tả ở trên có thể được áp dụng theo cách tương tự cho các nút [GroupShape](https://reference.aspose.com/words/python-net/aspose.words.drawing/groupshape/) và [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).

## Hiển thị hình ảnh hình dạng

Lớp [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) đại diện cho các đối tượng trong lớp vẽ, chẳng hạn như AutoShape, hộp văn bản, dạng tự do, đối tượng OLE, điều khiển ActiveX hoặc ảnh. Sử dụng lớp [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/), bạn có thể tạo hoặc sửa đổi hình dạng trong tài liệu Microsoft Word. Một thuộc tính quan trọng của hình dạng là [shape_type](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shape_type/) của nó. Các hình dạng khác nhau có thể có các chức năng khác nhau trong tài liệu Word. Ví dụ: chỉ hình ảnh và hình dạng OLE mới có thể chứa hình ảnh bên trong trong khi hầu hết các hình dạng chỉ có thể có văn bản.

Ví dụ sau đây cho thấy cách hiển thị hình ảnh Hình dạng thành hình ảnh JPEG tách biệt khỏi tài liệu và lưu nó vào đĩa:

{{< highlight python >}}
# Save the rendered image to disk.
shape.get_shape_renderer().save(docs_base.artifacts_dir + "TestFile.RenderShapeImage.jpeg", None)
{{< /highlight >}}

## Lấy kích thước hình dạng

Lớp [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/) cũng cung cấp chức năng truy xuất kích thước của hình dạng tính bằng pixel thông qua phương thức [get_size_in_pixels](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/get_size_in_pixels/). Phương thức này chấp nhận hai tham số float (Đơn) – tỷ lệ và dpi, được sử dụng để tính toán kích thước hình dạng khi hình dạng được hiển thị. Phương thức này trả về đối tượng **Size** chứa chiều rộng và chiều cao của kích thước được tính toán. Điều này rất hữu ích khi cần biết trước kích thước của hình được hiển thị. Thuộc tính [size_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/size_in_points/) trả về kích thước Hình dạng được đo bằng điểm. Kết quả là một đối tượng **SizeF** chứa chiều rộng và chiều cao. Ngoài ra, bạn có thể sử dụng thuộc tính [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/) để có được giới hạn thực tế của hình dạng.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-GetActualShapeBoundsPoints.py" >}}


