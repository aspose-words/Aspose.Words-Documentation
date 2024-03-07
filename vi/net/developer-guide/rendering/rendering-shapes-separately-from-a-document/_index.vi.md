---
title: Hiển thị hình dạng riêng biệt khỏi tài liệu
second_title: Aspose.Words cho .NET
articleTitle: Hiển thị hình dạng riêng biệt từ tài liệu
linktitle: Hiển thị hình dạng riêng biệt từ tài liệu
description: "Trích xuất các đối tượng đồ họa khác nhau, chẳng hạn như hình ảnh, hộp văn bản chứa đoạn văn hoặc hình mũi tên khi xử lý tài liệu và xuất chúng sang vị trí bên ngoài bằng C#."
type: docs
weight: 40
url: /vi/net/rendering-shapes-separately-from-a-document/
---

Khi xử lý tài liệu, nhiệm vụ chung là trích xuất tất cả hình ảnh có trong tài liệu và xuất chúng sang vị trí bên ngoài. Nhiệm vụ này trở nên đơn giản với Aspose.Words API, vốn đã cung cấp chức năng trích xuất và lưu dữ liệu hình ảnh. Tuy nhiên, đôi khi bạn có thể muốn trích xuất tương tự các loại nội dung đồ họa khác được thể hiện bằng một loại đối tượng vẽ khác, ví dụ: hộp văn bản chứa các đoạn văn, hình mũi tên và một hình ảnh nhỏ. Không có cách nào đơn giản để hiển thị đối tượng này vì nó là sự kết hợp của các thành phần nội dung riêng lẻ. Bạn cũng có thể gặp trường hợp nội dung được nhóm lại với nhau thành một đối tượng trông giống như một hình ảnh.

Aspose.Words cung cấp chức năng trích xuất loại nội dung này giống như cách bạn có thể trích xuất một hình ảnh đơn giản từ một hình dạng dưới dạng nội dung được hiển thị. Bài viết này mô tả cách sử dụng chức năng này để hiển thị các hình dạng độc lập với tài liệu.

## Các loại hình dạng trong Aspose.Words

Tất cả nội dung trong lớp bản vẽ tài liệu được biểu thị bằng nút [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) hoặc [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) trong Mô-đun đối tượng tài liệu Aspose.Words (DOM). Những nội dung như vậy có thể là hộp văn bản, hình ảnh, Hình tự động, đối tượng OLE, v.v. Một số trường cũng được nhập dưới dạng hình dạng, ví dụ: trường `INCLUDEPICTURE`.

Một hình ảnh đơn giản được biểu thị bằng nút **Shape** của [ShapeType.Image](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Nút hình dạng này không có nút con nhưng dữ liệu hình ảnh chứa trong nút hình dạng này có thể được truy cập bằng thuộc tính [Shape.ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/). Mặt khác, một hình cũng có thể được tạo thành từ nhiều nút con. Ví dụ: hình dạng hộp văn bản, được biểu thị bằng thuộc tính [ShapeType.TextBox](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/), có thể được tạo thành từ nhiều nút, chẳng hạn như [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) và [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/). Hầu hết các hình dạng có thể bao gồm các nút cấp khối **Paragraph** và **Table**. Đây là những nút giống như những nút xuất hiện trong phần thân chính. Hình dạng luôn là một phần của một số đoạn văn, được đưa trực tiếp vào dòng hoặc được neo vào **Đoạn văn,** nhưng "nổi" ở bất kỳ đâu trong trang tài liệu.

![rendering-shapes-separately-from-a-document_1](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-1.png)

Một tài liệu cũng có thể chứa các hình dạng được nhóm lại với nhau. Grouping có thể được kích hoạt trong Microsoft Word bằng cách chọn nhiều đối tượng và nhấp vào "Group" trong menu chuột phải.

![rendering-shapes-separately-from-a-document_2](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-2.png)

Trong Aspose.Words, các nhóm hình dạng này được biểu thị bằng nút [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/). Chúng cũng có thể được gọi theo cách tương tự để hiển thị toàn bộ nhóm thành hình ảnh.

![rendering-shapes-separately-from-a-document_3](/words/net/rendering-shapes-separately-from-a-document/rendering-shapes-separately-from-a-document-3.png)

Định dạng DOCX có thể chứa các loại hình ảnh đặc biệt, chẳng hạn như sơ đồ hoặc biểu đồ. Những hình dạng này cũng được biểu diễn thông qua nút **Shape** trong Aspose.Words, nút này cũng cung cấp một phương pháp tương tự để hiển thị chúng dưới dạng hình ảnh. Theo thiết kế, một hình dạng không thể chứa một hình dạng khác khi còn nhỏ, trừ khi hình dạng đó là hình ảnh (**ShapeType.Image**). Ví dụ: Microsoft Word không cho phép bạn chèn hộp văn bản vào trong hộp văn bản khác.

Các loại hình dạng được mô tả ở trên cung cấp một phương thức đặc biệt để hiển thị các hình dạng đó thông qua lớp [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). Một phiên bản của lớp **ShapeRenderer** được truy xuất cho **Shape** hoặc **GroupShape** thông qua phương thức **GetShapeRenderer** hoặc bằng cách chuyển **Shape** tới hàm tạo của lớp **ShapeRenderer**. Lớp này cung cấp quyền truy cập cho các thành viên, cho phép hiển thị hình dạng như sau:

- File trên đĩa sử dụng phương thức nạp chồng [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)
- Truyền phát bằng cách sử dụng quá tải phương thức [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/)
- Đối tượng đồ họa .NET bằng cách sử dụng các phương thức [RenderToSize](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) và [RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/)

{{% alert color="primary" %}}

Khi hiển thị **Shape**, nó phải là một phần của hệ thống phân cấp tài liệu. Nếu **Shape** không phải là một phần của cây tài liệu thì đầu ra được hiển thị sẽ trống sau khi gọi các phương thức **ShapeRenderer**.

{{% /alert %}}

## Kết xuất thành tệp hoặc luồng

Phương thức [Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) cung cấp các tình trạng quá tải hiển thị hình dạng trực tiếp vào tệp hoặc luồng. Cả hai tình trạng quá tải đều chấp nhận một thể hiện của lớp [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), cho phép xác định các tùy chọn để hiển thị hình dạng. Điều này hoạt động theo cách tương tự như phương pháp [Document.Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save). Mặc dù tham số này là bắt buộc nhưng bạn có thể chuyển giá trị null, chỉ định rằng không có tùy chọn tùy chỉnh nào.

Hình dạng có thể được xuất ở bất kỳ định dạng hình ảnh nào được chỉ định trong bảng liệt kê [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/). Ví dụ: hình ảnh có thể được hiển thị dưới dạng hình ảnh raster, chẳng hạn như JPEG bằng cách chỉ định bảng liệt kê [SaveFormat.Jpeg](https://reference.aspose.com/words/net/aspose.words/saveformat/) hoặc dưới dạng hình ảnh vector, chẳng hạn như EMF bằng cách chỉ định [SaveFormat.Emf](https://reference.aspose.com/words/net/aspose.words/saveformat/).

Ví dụ mã bên dưới minh họa việc hiển thị hình dạng cho hình ảnh EMF tách biệt với tài liệu và lưu vào đĩa:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToDisk.cs" >}}

Ví dụ mã bên dưới minh họa việc hiển thị hình dạng thành hình ảnh JPEG tách biệt với tài liệu và lưu vào luồng:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToStream.cs" >}}

Lớp **ImageSaveOptions** cho phép bạn chỉ định nhiều tùy chọn khác nhau để kiểm soát cách hiển thị hình ảnh. Chức năng được mô tả ở trên có thể được áp dụng theo cách tương tự cho các nút **GroupShape** và **Shape**.

## Hiển thị đối tượng đồ họa .NET

Hiển thị trực tiếp tới đối tượng **Graphics** cho phép bạn xác định cài đặt của riêng mình và trạng thái cho đối tượng **Graphics**. Một kịch bản phổ biến liên quan đến việc hiển thị hình dạng trực tiếp vào đối tượng **Graphics** được truy xuất từ Biểu mẫu Windows hoặc Bitmap. Khi nút **Shape** được hiển thị, các cài đặt sẽ ảnh hưởng đến hình thức hiển thị của hình dạng. Ví dụ: bạn có thể xoay hoặc chia tỷ lệ hình dạng bằng cách sử dụng các phương thức **RotateTransform** hoặc **ScaleTransform** cho đối tượng **Graphics**.

Ví dụ bên dưới cho thấy cách hiển thị hình dạng cho đối tượng .**NET Graphics** tách biệt với tài liệu và áp dụng xoay cho hình ảnh được hiển thị:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeToGraphics.cs" >}}

Tương tự, đối với phương thức [RenderToSize](https://reference.aspose.com/words/net/aspose.words/document/rendertosize/), phương thức [Kết xuất theo kích thước](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertosize/) kế thừa từ [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/) rất hữu ích để tạo hình thu nhỏ của nội dung tài liệu. Kích thước hình dạng được chỉ định thông qua hàm tạo. Phương thức **RenderToSize** chấp nhận đối tượng **Graphics**, tọa độ X và Y của vị trí hình ảnh và kích thước của hình ảnh (chiều rộng và chiều cao) sẽ được vẽ lên đối tượng **Graphics**.

**Shape** có thể được hiển thị theo một tỷ lệ nhất định bằng phương pháp [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/) kế thừa từ lớp [NodeRendererBase](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/). Điều này tương tự như phương pháp [Document.RenderToScale](https://reference.aspose.com/words/net/aspose.words/document/rendertoscale/) chấp nhận các tham số chính giống nhau. Sự khác biệt giữa hai phương thức này là với phương thức **ShapeRenderer.RenderToScale**, thay vì kích thước bằng chữ, bạn chọn một giá trị float điều chỉnh tỷ lệ hình dạng trong quá trình hiển thị. Nếu giá trị float bằng 1,0 thì hình dạng được hiển thị ở 100% kích thước ban đầu. Giá trị float là 0,5 sẽ giảm kích thước hình ảnh xuống một nửa.

## Hiển thị hình ảnh hình dạng

Lớp [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) đại diện cho các đối tượng trong lớp vẽ, chẳng hạn như AutoShape, hộp văn bản, dạng tự do, đối tượng OLE, điều khiển ActiveX hoặc ảnh. Sử dụng lớp **Shape**, bạn có thể tạo hoặc sửa đổi các hình dạng trong tài liệu Microsoft Word. Một thuộc tính quan trọng của hình dạng là [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shape/base/properties/shapetype) của nó. Các hình dạng khác nhau có thể có các chức năng khác nhau trong tài liệu Word. Ví dụ: chỉ hình ảnh và hình dạng OLE mới có thể chứa hình ảnh bên trong trong khi hầu hết các hình dạng chỉ có thể có văn bản.

Ví dụ sau đây cho thấy cách hiển thị hình ảnh Hình dạng thành hình ảnh JPEG tách biệt khỏi tài liệu và lưu nó vào đĩa:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-RenderShapeImage.cs" >}}

## Lấy kích thước hình dạng

Lớp [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/) cũng cung cấp chức năng truy xuất kích thước của hình dạng tính bằng pixel thông qua phương thức [GetSizeInPixels](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/). Phương pháp này chấp nhận hai tham số float (Đơn) – tỷ lệ và dpi, được sử dụng để tính toán kích thước hình dạng khi hình dạng được hiển thị. Phương thức này trả về đối tượng [Size](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/getsizeinpixels/) chứa chiều rộng và chiều cao của kích thước được tính toán. Điều này hữu ích khi cần biết trước kích thước của hình dạng được hiển thị, chẳng hạn như khi tạo Bitmap mới từ đầu ra được hiển thị.

Ví dụ dưới đây cho thấy cách tạo một đối tượng Bitmap và Graphics mới với chiều rộng và chiều cao của hình dạng sẽ được hiển thị:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-RenderShape-FindShapeSizes.cs" >}}

Khi sử dụng các phương thức **RenderToSize** hoặc **RenderToScale**, kích thước hình ảnh được hiển thị cũng được trả về trong đối tượng [SizeF](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/rendertoscale/). Điều này có thể được gán cho một biến và được sử dụng nếu cần thiết.

Thuộc tính **SizeInPoints** trả về kích thước Hình dạng được đo bằng điểm (xem [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/). Kết quả là một đối tượng `SizeF` chứa chiều rộng và chiều cao.
