---
title: Hiển Thị Hình Dạng Riêng biệt Với Tài liệu
second_title: Aspose.Words cho C++
articleTitle: Hiển Thị Hình Dạng Riêng biệt Với Tài liệu
linktitle: Hiển Thị Hình Dạng Riêng biệt Với Tài liệu
description: "Trích xuất các đối tượng đồ họa khác nhau, chẳng hạn như hình ảnh, hộp văn bản chứa các đoạn văn hoặc hình mũi tên, khi xử lý tài liệu và xuất chúng sang vị trí bên ngoài."
type: docs
weight: 40
url: /vi/cpp/rendering-shapes-separately-from-a-document/
---

Khi xử lý tài liệu, một nhiệm vụ phổ biến là trích xuất tất cả các hình ảnh được tìm thấy trong tài liệu và xuất chúng ra vị trí bên ngoài. Nhiệm vụ này trở nên đơn giản với Aspose.Words API, đã cung cấp chức năng trích xuất và lưu dữ liệu hình ảnh. Tuy nhiên, đôi khi bạn có thể muốn trích xuất tương tự các loại nội dung đồ họa khác được thể hiện bằng một loại đối tượng vẽ khác, ví dụ: hộp văn bản chứa các đoạn văn, hình mũi tên và hình ảnh nhỏ. Không có cách đơn giản nào để hiển thị đối tượng này vì nó là sự kết hợp của các yếu tố nội dung riêng lẻ. Bạn cũng có thể gặp một trường hợp khi nội dung đã được nhóm lại với nhau thành đối tượng trông giống như một hình ảnh duy nhất.

Aspose.Words cung cấp chức năng trích xuất loại nội dung này giống như cách bạn có thể trích xuất một hình ảnh đơn giản từ hình dạng dưới dạng nội dung được hiển thị. Bài viết này mô tả cách sử dụng chức năng này để hiển thị các hình dạng độc lập với tài liệu.

## Các Loại hình dạng trong Aspose.Words

Tất cả nội dung trong một lớp vẽ tài liệu được biểu diễn bằng nút [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) hoặc [GroupShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/groupshape/) Trong Mô-đun Đối tượng Tài liệu Aspose.Words (DOM). Nội dung như vậy có thể là hộp văn bản, hình ảnh, AutoShapes, OLE đối tượng, v. v. Một số trường cũng được nhập dưới dạng hình dạng, ví dụ: trường `INCLUDEPICTURE`.

Một hình ảnh đơn giản được biểu diễn bằng một nút **Shape** của [ShapeType.Image](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/). Nút hình dạng này không có nút con nhưng dữ liệu hình ảnh có trong nút hình dạng này có thể được truy cập bởi thuộc tính [Shape.ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/). Mặt khác, một hình dạng cũng có thể được tạo thành từ nhiều nút con. Ví dụ, một hình dạng hộp văn bản, được đại diện bởi thuộc tính [ShapeType.TextBox](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/), có thể được tạo thành từ nhiều nút, chẳng hạn như [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) và [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/). Hầu hết các hình dạng có thể bao gồm các nút cấp khối **Paragraph** và **Table**. Đây là những nút giống như những nút xuất hiện trong phần thân chính. Hình dạng luôn luôn là một phần của một số đoạn, hoặc bao gồm trực tiếp nội tuyến hoặc neo vào **Paragraph,** nhưng "nổi" bất cứ nơi nào trong trang tài liệu.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-1](rendering-shapes-separately-from-a-document-1.png)

Một tài liệu cũng có thể chứa các hình dạng được nhóm lại với nhau. Nhóm có thể được bật trong Microsoft Word bằng cách chọn nhiều đối tượng và nhấp Vào "Nhóm" trong menu chuột phải.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-2](rendering-shapes-separately-from-a-document-2.png)

Trong Aspose.Words, các nhóm hình dạng này được biểu diễn bằng nút `GroupShape`. Chúng cũng có thể được gọi theo cách tương tự để hiển thị toàn bộ nhóm cho hình ảnh.

![rendering-shapes-separately-from-a-document-aspose-words-cpp-3](rendering-shapes-separately-from-a-document-3.png)

Định dạng DOCX có thể chứa các loại hình ảnh đặc biệt, chẳng hạn như sơ đồ hoặc biểu đồ. Các hình dạng này cũng được biểu diễn thông qua nút **Shape** trong Aspose.Words, cũng cung cấp một phương pháp tương tự để hiển thị chúng dưới dạng hình ảnh. Theo thiết kế, một hình dạng không thể chứa một hình dạng khác khi còn nhỏ, trừ khi hình dạng đó là hình ảnh (**ShapeType.Image**). Ví dụ: Microsoft Word không cho phép bạn chèn một hộp văn bản bên trong một hộp văn bản khác.

Các loại hình dạng được mô tả ở trên cung cấp một phương thức đặc biệt để hiển thị các hình dạng thông qua lớp [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Một thể hiện của lớp **ShapeRenderer** được truy xuất cho **Shape** hoặc **GroupShape** thông qua phương thức **GetShapeRenderer** hoặc bằng cách chuyển **Shape** đến hàm tạo của lớp **ShapeRenderer**. Lớp này cung cấp quyền truy cập vào các thành viên, cho phép hiển thị hình dạng như sau:

- Tệp trên đĩa bằng phương thức [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) quá tải
- Truyền phát bằng phương thức [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) quá tải
- Đối tượng `Graphics` bằng cách sử dụng các phương thức [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/) và [RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

Khi kết xuất **Shape**, nó phải là một phần của hệ thống phân cấp tài liệu. Nếu **Shape** không phải là một phần của cây tài liệu thì đầu ra được hiển thị sẽ trống sau khi gọi các phương thức **ShapeRenderer**.

{{% /alert %}}

## Kết xuất Thành Tệp hoặc Luồng

Phương thức [Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) cung cấp quá tải hiển thị hình dạng trực tiếp đến tệp hoặc luồng. Cả hai quá tải đều chấp nhận một thể hiện của lớp [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), cho phép xác định các tùy chọn để hiển thị hình dạng. Điều này hoạt động theo cách tương tự như phương thức [Document.Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Mặc dù tham số này là bắt buộc, bạn có thể vượt qua giá trị null, chỉ định rằng không có tùy chọn tùy chỉnh.

Hình dạng có thể được xuất ở bất kỳ định dạng hình ảnh nào được chỉ định trong liệt kê [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/). Ví dụ: hình ảnh có thể được hiển thị dưới dạng hình ảnh raster, chẳng hạn như JPEG bằng cách chỉ định liệt kê `SaveFormat.Jpeg` hoặc dưới dạng hình ảnh vectơ, chẳng hạn như EMF bằng cách chỉ định `SaveFormat.Emf`.

Ví dụ mã dưới đây minh họa kết xuất hình dạng thành hình ảnh EMF riêng biệt với tài liệu và lưu vào đĩa:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToDisk.cpp" >}}

Ví dụ mã dưới đây minh họa hiển thị hình dạng thành hình ảnh JPEG riêng biệt với tài liệu và lưu vào luồng:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToStream.cpp" >}}

Lớp **ImageSaveOptions** cho phép bạn chỉ định nhiều tùy chọn kiểm soát cách hiển thị hình ảnh. Chức năng được mô tả ở trên có thể được áp dụng theo cách tương tự cho các nút **GroupShape** và **Shape**.

## Kết xuất Đối tượng Đồ họa .NET

Kết xuất trực tiếp đến đối tượng **Graphics** cho phép bạn xác định cài đặt của riêng mình và trạng thái cho đối tượng **Graphics**. Một kịch bản phổ biến liên quan đến việc hiển thị một hình dạng trực tiếp vào một đối tượng **Graphics** được lấy từ một hình thức Windows hoặc Một Bitmap. Khi nút **Shape** được hiển thị, cài đặt sẽ ảnh hưởng đến giao diện hình dạng. Ví dụ: bạn có thể xoay hoặc chia tỷ lệ hình dạng bằng cách sử dụng các phương thức **RotateTransform** hoặc **ScaleTransform** cho đối tượng **Graphics**.

Ví dụ dưới đây cho thấy cách hiển thị hình dạng thành a .**NET Graphics** đối tượng riêng biệt với tài liệu và áp dụng xoay cho hình ảnh được hiển thị:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cpp" >}}

Tương tự, với phương thức [RenderToSize](https://reference.aspose.com/words/cpp/aspose.words/document/rendertosize/), phương thức [RenderToSize ](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertosize/)được kế thừa từ [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/) rất hữu ích để tạo hình thu nhỏ của nội dung tài liệu. Kích thước hình dạng được chỉ định thông qua hàm tạo. Phương thức **RenderToSize** chấp nhận đối tượng **Graphics**, tọa độ X Và Y của vị trí hình ảnh và kích thước của hình ảnh (chiều rộng và chiều cao) sẽ được vẽ lên đối tượng **Graphics**.

**Shape** có thể được kết xuất thành một thang đo nhất định bằng phương thức [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/) được kế thừa từ lớp [NodeRendererBase](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/). Điều này tương tự như phương thức [Document.RenderToScale](https://reference.aspose.com/words/cpp/aspose.words/document/rendertoscale/) chấp nhận các tham số chính giống nhau. Sự khác biệt giữa hai phương thức này là với phương thức **ShapeRenderer.RenderToScale**, thay vì kích thước theo nghĩa đen, bạn chọn một giá trị float chia tỷ lệ hình dạng trong quá trình kết xuất của nó. Nếu giá trị float bằng 1.0 làm cho hình dạng được hiển thị tại 100% kích thước ban đầu của nó. Giá trị float 0.5 sẽ giảm một nửa kích thước hình ảnh.

## Hiển thị Hình Ảnh Hình Dạng

Lớp [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) đại diện cho các đối tượng trong lớp vẽ, chẳng hạn như AutoShape, hộp văn bản, dạng tự do, OLE đối tượng, Điều khiển ActiveX hoặc hình ảnh. Sử dụng lớp **Shape**, bạn có thể tạo hoặc sửa đổi hình dạng trong tài liệu Microsoft Word. Một thuộc tính quan trọng của một hình dạng là [ShapeType](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapetype/) của nó. Hình dạng của các loại khác nhau có thể có các khả năng khác nhau trong Tài liệu Word. Ví dụ: chỉ hình ảnh và OLE hình dạng mới có thể có hình ảnh bên trong chúng trong khi hầu hết các hình dạng chỉ có thể có văn bản.

Ví dụ sau đây cho thấy cách hiển thị hình Ảnh Hình dạng thành hình ảnh JPEG riêng biệt với tài liệu và lưu nó vào đĩa:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-RenderShapeImage.cpp" >}}

## Lấy Một Kích Thước Hình Dạng

Lớp [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/) cũng cung cấp chức năng để lấy kích thước của hình dạng theo pixel thông qua phương thức [GetSizeInPixels](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/getsizeinpixels/). Phương pháp này chấp nhận hai tham số kiểu float (Đơn) – tỷ lệ và DPI, được sử dụng trong tính toán kích thước hình dạng khi hình dạng được hiển thị. Phương thức trả về đối tượng `Size`, chứa chiều rộng và chiều cao của kích thước được tính toán. Điều này rất hữu ích khi cần biết trước kích thước của hình dạng được hiển thị, ví dụ như khi tạo Bitmap mới từ đầu ra được hiển thị.

Ví dụ dưới đây cho thấy cách tạo Một Đối tượng Bitmap và Đồ họa mới với chiều rộng và chiều cao của hình dạng sẽ được hiển thị:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-RenderShape-FindShapeSizes.cpp" >}}

Khi sử dụng các phương thức **RenderToSize** hoặc **RenderToScale**, kích thước hình ảnh được hiển thị cũng được trả về trong đối tượng [SizeF](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/rendertoscale/). Điều này có thể được gán cho một biến và được sử dụng nếu cần thiết.

Thuộc tính **SizeInPoints** trả về kích thước Hình dạng được đo bằng điểm (xem [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/). Kết quả là một đối tượng `SizeF` chứa chiều rộng và chiều cao.
