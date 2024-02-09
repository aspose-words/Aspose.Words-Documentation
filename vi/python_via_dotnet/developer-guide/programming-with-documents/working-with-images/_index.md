---
title: Làm việc với hình ảnh trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với hình ảnh
linktitle: Làm việc với hình ảnh
description: "Tạo và quản lý hình ảnh ở nhiều định dạng khác nhau trong tài liệu bằng Python."
type: docs
weight: 300
url: /vi/python-net/working-with-images/
---

Aspose.Words cho phép người dùng làm việc với hình ảnh một cách rất linh hoạt. Trong bài viết này, bạn chỉ có thể khám phá một số khả năng làm việc với hình ảnh.

## Chèn một hình ảnh

[DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) cung cấp một số tính năng nạp chồng của phương thức [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) cho phép bạn chèn hình ảnh nội tuyến hoặc hình ảnh nổi. Nếu hình ảnh là siêu tệp EMF hoặc WMF, nó sẽ được chèn vào tài liệu ở định dạng siêu tệp. Tất cả các hình ảnh khác sẽ được lưu trữ ở định dạng PNG. Phương thức **Chèn hình ảnh** có thể sử dụng hình ảnh từ nhiều nguồn khác nhau:

- Từ một tệp hoặc `URL` bằng cách truyền tham số chuỗi
- Từ luồng bằng cách truyền tham số `Stream`
- Từ mảng byte bằng cách truyền tham số mảng byte

Đối với mỗi phương pháp **Chèn hình ảnh**, còn có các mức quá tải khác cho phép bạn chèn hình ảnh với các tùy chọn sau:
- Nội tuyến hoặc nổi tại một vị trí cụ thể, ví dụ **Chèn hình ảnh**
- Tỷ lệ phần trăm hoặc kích thước tùy chỉnh; hơn nữa, phương thức [DocumentBuilder.insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) trả về một đối tượng [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) vừa được tạo và chèn để bạn có thể sửa đổi thêm các thuộc tính của [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/)

### Chèn một hình ảnh nội tuyến

Chuyển một chuỗi đại diện cho tệp chứa hình ảnh tới [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) để chèn hình ảnh vào tài liệu dưới dạng đồ họa nội tuyến.

Ví dụ mã sau đây cho biết cách chèn hình ảnh nội tuyến ở vị trí con trỏ vào tài liệu:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg")

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_inline_image.doc")
{{< /highlight >}}

### Chèn một hình ảnh nổi (được định vị tuyệt đối)

Ví dụ về mã sau đây cho biết cách chèn hình ảnh nổi từ tệp hoặc `URL` ở vị trí và kích thước được chỉ định:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

builder.insert_image(docs_base.images_dir + "Logo.jpg",
    aw.drawing.RelativeHorizontalPosition.MARGIN,
    100,
    aw.drawing.RelativeVerticalPosition.MARGIN,
    100,
    200,
    100,
    aw.drawing.WrapType.SQUARE)

doc.save(docs_base.artifacts_dir+"WorkingWithImages.document_builder_insert_floating_image.doc")
{{< /highlight >}}

## Cách trích xuất hình ảnh từ tài liệu

Tất cả hình ảnh được lưu trữ bên trong các nút [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) trong [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). Để trích xuất tất cả hình ảnh hoặc hình ảnh có loại cụ thể từ tài liệu, hãy làm theo các bước sau:

- Sử dụng phương pháp [Document.get_child_nodes](https://reference.aspose.com/words/python-net/aspose.words/compositenode/get_child_nodes/) để chọn tất cả các nút [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- Lặp lại thông qua các bộ sưu tập nút kết quả.
- Kiểm tra thuộc tính boolean [Shape.has_image](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/has_image/).
- Trích xuất dữ liệu hình ảnh bằng thuộc tính [Shape.image_data](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/image_data/).
- Lưu dữ liệu hình ảnh vào một tập tin.

Ví dụ mã sau đây cho thấy cách trích xuất hình ảnh từ tài liệu và lưu chúng dưới dạng tệp:

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [đây](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Contents Management-extract_content-ExtractImagesToFiles.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Cách chèn mã vạch trên mỗi trang của tài liệu

Ví dụ này minh họa cách bạn thêm các mã vạch giống nhau hoặc khác nhau trên tất cả hoặc các trang cụ thể của tài liệu Word. Không có cách trực tiếp để thêm mã vạch trên tất cả các trang của tài liệu nhưng bạn có thể sử dụng các phương thức [move_to_section](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_section/), [move_to_header_footer](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/move_to_header_footer/) và [insert_image](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_image/) để di chuyển đến bất kỳ phần hoặc đầu trang/chân trang nào và chèn hình ảnh mã vạch như bạn có thể thấy trong đoạn mã sau.

Ví dụ về mã sau đây Chèn hình ảnh mã vạch trên mỗi trang của tài liệu.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeImage.py" >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_images-InsertBarcodeIntoFooter.py" >}}

## Khóa tỷ lệ khung hình của hình ảnh

Tỷ lệ khung hình của hình dạng hình học là tỷ lệ kích thước của nó theo các kích thước khác nhau. Bạn có thể khóa tỷ lệ khung hình của hình ảnh bằng [aspect_ratio_locked](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/aspect_ratio_locked/). Giá trị mặc định của tỷ lệ khung hình của hình dạng phụ thuộc vào [ShapeType](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/). Đó là `True` cho [ShapeType.IMAGE](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapetype/#image) và `False` cho các loại hình dạng khác.

Ví dụ mã sau đây cho thấy cách làm việc với tỷ lệ khung hình:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

doc.save(docs_base.artifacts_dir+"WorkingWithImages.set_aspect_ratio_locked.doc")
{{< /highlight >}}

## Làm thế nào để có được giới hạn hình dạng thực tế theo điểm

Nếu bạn muốn hộp giới hạn thực tế của hình được hiển thị trên trang, bạn có thể đạt được điều này bằng cách sử dụng thuộc tính [bounds_in_points](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/bounds_in_points/).

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính này:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)

shape = builder.insert_image(docs_base.images_dir + "Logo.jpg")
shape.aspect_ratio_locked = False

print("\nGets the actual bounds of the shape in points.")
rect = shape.get_shape_renderer().bounds_in_points
print(f"{rect.x}, {rect.y}, {rect.width}, {rect.height}")
{{< /highlight >}}

## Cắt hình ảnh

Việc cắt xén hình ảnh thường đề cập đến việc loại bỏ các phần bên ngoài không mong muốn của hình ảnh để giúp cải thiện khung hình. Nó cũng được sử dụng để loại bỏ một số phần của hình ảnh nhằm tăng sự tập trung vào một khu vực cụ thể.

Ví dụ về mã sau đây cho thấy cách đạt được điều này bằng Aspose.Words API:

{{< highlight python >}}
# The path to the documents directory.
inputPath = docs_base.images_dir + "Logo.jpg"
outputPath = docs_base.artifacts_dir + "cropped_logo.jpg"

self.crop_image(inputPath,outputPath, 100, 90, 200, 200)
{{< /highlight >}}

{{< highlight python >}}
@staticmethod
def crop_image(inPath : str, outPath : str, left : int, top : int, width : int, height : int) :
    
    doc = aw.Document();
    builder = aw.DocumentBuilder(doc)
    
    croppedImage = builder.insert_image(inPath)
    
    src_width_points = croppedImage.width
    src_height_points = croppedImage.height
    
    croppedImage.width = aw.ConvertUtil.pixel_to_point(width)
    croppedImage.height = aw.ConvertUtil.pixel_to_point(height)
    
    widthRatio = croppedImage.width / src_width_points
    heightRatio = croppedImage.height / src_height_points
    
    if (widthRatio< 1) :
        croppedImage.image_data.crop_right = 1 - widthRatio
    
    if (heightRatio< 1) :
        croppedImage.image_data.crop_bottom = 1 - heightRatio
    
    leftToWidth = aw.ConvertUtil.pixel_to_point(left) / src_width_points
    topToHeight = aw.ConvertUtil.pixel_to_point(top) / src_height_points
    
    croppedImage.image_data.crop_left = leftToWidth
    croppedImage.image_data.crop_right = croppedImage.image_data.crop_right - leftToWidth
    
    croppedImage.image_data.crop_top = topToHeight
    croppedImage.image_data.crop_bottom = croppedImage.image_data.crop_bottom - topToHeight
    
    croppedImage.get_shape_renderer().save(outPath, aw.saving.ImageSaveOptions(aw.SaveFormat.JPEG))
{{< /highlight >}}

## Lưu hình ảnh dưới dạng WMF

Aspose.Words cung cấp chức năng lưu tất cả hình ảnh có sẵn trong tài liệu sang định dạng [WMF](https://docs.fileformat.com/image/wmf/) trong khi chuyển đổi DOCX sang RTF.

Ví dụ mã sau đây cho thấy cách lưu hình ảnh dưới dạng WMF với các tùy chọn lưu RTF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_rtf_save_options-SavingImagesAsWmf.py" >}}
