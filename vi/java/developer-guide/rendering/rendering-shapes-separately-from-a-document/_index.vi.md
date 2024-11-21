---
title: Làm cho hình dạng tách rời khỏi một tài liệu
second_title: Aspose.Words cho Java
articleTitle: Làm cho hình dạng tách rời khỏi một tài liệu
linktitle: Làm cho hình dạng tách rời khỏi một tài liệu
description: "Lấy ra các đồ họa khác nhau như hình ảnh, khung văn bản chứa đoạn văn, hoặc các hình mũi tên khi xử lý một tài liệu và xuất chúng đến một vị trí bên ngoài bằng Java"
type: docs
weight: 40
url: /vi/java/rendering-shapes-separately-from-a-document/
timestamp: 2024-01-27-14-07-04
---

Khi xử lý tài liệu, một nhiệm vụ phổ biến là trích xuất tất cả các hình ảnh được tìm thấy trong tài liệu và xuất chúng đến một vị trí bên ngoài. Nhiệm vụ này trở nên đơn giản với Aspose.Words API, mà đã cung cấp chức năng để trích xuất và lưu dữ liệu hình ảnh. Tuy nhiên, đôi khi bạn có thể muốn trích xuất các loại nội dung đồ họa khác nhau được đại diện bằng một đối tượng vẽ khác nhau, ví dụ, một hộp văn bản chứa các đoạn văn, hình mũi tên và một hình ảnh nhỏ. Không có cách nào đơn giản để biểu diễn đối tượng này vì nó là sự kết hợp của các phần tử nội dung riêng lẻ. Bạn cũng có thể gặp một trường hợp mà nội dung đã được nhóm vào một đối tượng trông giống như một hình ảnh duy nhất.

Aspose.Words" cung cấp chức năng để chiết xuất loại nội dung này theo cách mà bạn có thể trích xuất hình ảnh đơn giản từ hình dạng dưới dạng nội dung đã tạo sẵn. Bài viết này mô tả cách sử dụng chức năng để tạo hình dạng độc lập với tài liệu.

## Các loại hình trong Aspose.Words

Tất cả nội dung trong một lớp ghi hình tài liệu là đại diện bởi [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) hoặc [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) nút trong Aspose.Words Tài liệu Đối tượng Mô-đun (DOM). Những nội dung đó có thể là hộp văn bản, hình ảnh, AutoShapes, các đối tượng OLE, v.v... Một số trường cũng được nhập làm hình dạng, ví dụ như trường `INCLUDEPICTURE`.

Một hình ảnh đơn giản được biểu diễn bởi một **Shape** của [ShapeType.Image](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#IMAGE). Node hình dạng này không có các nút con nhưng dữ liệu hình ảnh được chứa trong node hình dạng này có thể truy cập bằng thuộc tính [Shape.ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData). Mặt khác, một hình dạng cũng có thể được tạo ra từ nhiều nút con. Ví dụ như một hình dạng hộp văn bản, được thể hiện bằng thuộc tính [ShapeType.TextBox](https://reference.aspose.com/words/java/com.aspose.words/shapetype/#TEXT-BOX), có thể được tạo nên từ nhiều nút, chẳng hạn như [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) và [Table](https://reference.aspose.com/words/java/com.aspose.words/table/). Hầu hết hình dạng có thể bao gồm các nút khối **Paragraph** và **Table**. Đây là các nút như xuất hiện trong phần chính. Các hình dạng luôn là một phần của các đoạn văn, hoặc được đưa trực tiếp vào dòng hoặc neo đến **Đoạn",** nhưng "lơ lửng" ở bất cứ nơi nào trên trang tài liệu.

![rendering-shapes-separately-from-a-document-aspose-words-java-1](rendering-shapes-separately-from-a-document-1.png)

Tài liệu cũng có thể chứa các hình dạng được nhóm lại với nhau. Grouping có thể được kích hoạt trong Microsoft Word bằng cách chọn nhiều đối tượng và nhấp vào "Group" trong trình đơn chuột phải.

![rendering-shapes-separately-from-a-document-aspose-words-java-2](rendering-shapes-separately-from-a-document-2.png)

Trong Aspose.Words, các nhóm hình dạng này được thể hiện bởi [GroupShape](https://reference.aspose.com/words/java/com.aspose.words/groupshape/) nút. Những lệnh này cũng có thể được gọi theo cách tương tự để hiển thị toàn bộ nhóm trên hình ảnh.

![rendering-shapes-separately-from-a-document-aspose-words-java-3](rendering-shapes-separately-from-a-document-3.png)

Định dạng DOCX có thể chứa những loại hình ảnh đặc biệt, như biểu đồ hay bảng biểu. Những hình dạng này cũng được thể hiện thông qua nút **Shape** trong Aspose.Words, cung cấp một phương pháp tương tự để hiển thị chúng dưới dạng hình ảnh. Theo thiết kế, hình dạng không thể chứa một hình dạng khác làm con của nó trừ khi hình dạng đó là hình ảnh **ShapeType.Image**. Ví dụ như Microsoft Word không cho phép bạn chèn một hộp văn bản bên trong một hộp văn bản khác.

Các kiểu hình được mô tả ở trên cung cấp một phương pháp đặc biệt để tạo ra các hình thông qua lớp [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/). Một trường hợp của lớp **ShapeRenderer** được lấy lại cho một **Shape** hoặc **GroupShape** thông qua phương pháp **GetShapeRenderer** hoặc bằng cách truyền **Shape** đến hàm tạo của lớp **ShapeRenderer**. Lớp này cung cấp quyền truy cập vào các thành viên cho phép hiển thị một hình dạng với nội dung sau:

- Tập tin trên đĩa sử dụng phương pháp [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) quá tải
- Stream bằng phương thức [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.io.OutputStream-com.aspose.words.ImageSaveOptions) quá tải
- Đối tượng đồ họa bằng cách sử dụng phương pháp [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToSize-java.awt.Graphics2D-float-float-float-float) và [RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float)

{{% alert color="primary" %}}

Khi kết xuất một **Shape** nó phải là một phần của phân cấp tài liệu. Nếu **Shape** không là một phần của cây tài liệu thì đầu ra sẽ bị trống sau khi gọi các phương thức **ShapeRenderer**.

{{% /alert %}}

## Đặt lại cho tập tin hoặc luồng

Phương pháp [Save](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#save-java.lang.String-com.aspose.words.ImageSaveOptions) cung cấp các biến thể để tạo ra hình dạng trực tiếp vào một tập tin hoặc luồng. Cả hai phương thức quá tải đều chấp nhận một trường hợp của lớp [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), cho phép định nghĩa các tùy chọn để hiển thị hình dạng. Điều này hoạt động theo cách như phương pháp [Document.Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions) Mặc dù tham số này là bắt buộc, bạn có thể truyền giá trị rỗng, chỉ ra rằng không có tùy chọn tùy chỉnh nào.

Hình dạng có thể được xuất ra theo bất kỳ định dạng hình ảnh nào đã chỉ định trong việc tính toán [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). Ví dụ hình ảnh có thể được hiển thị dưới dạng một hình ảnh raster như JPEG bằng cách chỉ định [SaveFormat.Jpeg](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#JPEG) enumeraion hoặc dưới dạng hình ảnh vector như EMF bằng cách chỉ định [SaveFormat.Emf](https://reference.aspose.com/words/java/com.aspose.words/saveformat/#EMF).

Mã ví dụ bên dưới minh họa việc vẽ một hình dạng vào một hình ảnh EMF riêng biệt từ tài liệu và lưu vào đĩa:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToDisk.java" >}}

Mã ví dụ dưới đây minh họa việc hiển thị một hình dạng trong một tập tin ảnh JPEG riêng biệt từ tài liệu và lưu vào một luồng":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToStream.java" >}}

Lớp **ImageSaveOptions** cho phép bạn chỉ định một loạt các tùy chọn để điều khiển cách thức tạo hình ảnh. Chức năng được mô tả ở trên có thể được áp dụng theo cùng một cách đối với các nút **GroupShape** và **Shape**.

## Hiển thị đến một `Graphics` Đối tượng

Hiển thị trực tiếp đến một **Graphics** đối tượng cho phép bạn định nghĩa các cài đặt và trạng thái của riêng bạn đối với đối tượng **Graphics**. Một tình huống phổ biến liên quan đến việc tạo hình dạng trực tiếp vào một đối tượng **Graphics** được lấy từ một Windows Form hoặc Bit map. Khi nút **Shape** được hiển thị, các thiết lập sẽ ảnh hưởng đến hình dáng xuất hiện. Ví dụ, bạn có thể xoay hoặc mở rộng hình dạng bằng cách sử dụng phương pháp **RotateTransform** hoặc **ScaleTransform** cho đối tượng **Graphics**.

Ví dụ dưới đây cho thấy cách kết xuất một hình dạng trên một **Graphics** đối tượng riêng biệt từ tài liệu và áp dụng xoay lên hình ảnh được kết xuất:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeToGraphics.java" >}}

Tương tự, [RenderToSize](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) phương pháp, [RenderToSize ](https://reference.aspose.com/words/java/com.aspose.words/document/#renderToSize-int-java.awt.Graphics2D-float-float-float-float) phương pháp thừa hưởng từ [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/) hữu ích trong việc tạo các hình thu nhỏ của nội dung tài liệu. Kích thước hình dạng được chỉ định thông qua phương thức khởi tạo. Phương pháp **RenderToSize** chấp nhận đối tượng **Graphics**, tọa độ X và Y của vị trí hình ảnh và kích thước hình ảnh (chiều rộng và chiều cao) sẽ được vẽ lên đối tượng **Graphics**.

The **Shape** có thể được kết xuất ở một quy mô nhất định bằng phương pháp [ShapeRenderer.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) kế thừa từ lớp [NodeRendererBase](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/). Điều này tương tự với phương pháp [Document.RenderToScale](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/#renderToScale-java.awt.Graphics2D-float-float-float) chấp nhận các tham số chính giống nhau. Sự khác biệt giữa hai phương pháp này là với phương pháp **ShapeRenderer.RenderToScale**, thay vì một kích thước thực, bạn chọn một giá trị float để điều chỉnh hình dạng trong khi hiển thị nó. Nếu giá trị float bằng 1.0 gây ra hình dạng được hiển thị ở 100% kích thước ban đầu của nó. Một giá trị nổi 0,5 sẽ giảm kích thước hình ảnh một nửa.

## Hiển thị hình ảnh hình dạng

Lớp [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) đại diện cho các đối tượng ở lớp vẽ, chẳng hạn như hình mẫu, hộp văn bản, tự do, đối tượng OLE, kiểm soát ActiveX hoặc một bức tranh. Sử dụng lớp **Shape**, bạn có thể tạo hoặc sửa đổi các hình dạng trong một tài liệu Microsoft Word. Một tính chất quan trọng của một hình dạng là " [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Hình dạng khác nhau có thể có khả năng khác nhau trong tài liệu Word. Ví dụ chỉ hình ảnh và các hình dạng OLE mới có thể chứa các hình ảnh trong khi hầu hết các hình dạng còn lại chỉ có thể chứa văn bản.

Ví dụ sau cho thấy cách để tạo ra một hình ảnh hình dạng thành một hình ảnh JPEG, tách rời khỏi tài liệu và lưu nó vào đĩa

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-RenderShapeImage.java" >}}

## Lấy Kích thước Hình dạng

Lớp [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/) cũng cung cấp chức năng để lấy kích thước của hình dạng bằng pixel thông qua phương thức [GetSizeInPixels](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float). Phương pháp này chấp nhận hai tham số kiểu float (Single) – tỷ lệ và DPI, được sử dụng trong việc tính toán kích thước hình dạng khi hình dạng được hiển thị. Phương pháp trả về [Size](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getSizeInPixels-float-float) đối tượng chứa chiều rộng và chiều cao của kích thước tính toán được. Điều này hữu ích khi cần biết kích thước của hình dạng đã được tạo ra trước, ví dụ như khi tạo một Bitmap mới từ kết quả đầu ra đã được tạo ra.

Ví dụ dưới đây cho thấy cách tạo một đối tượng Bitmap và Graphics mới với chiều rộng và chiều cao của hình thức để được vẽ":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderShapes-FindShapeSizes.java" >}}

Khi sử dụng các phương pháp **RenderToSize** hoặc **RenderToScale**, kích thước hình ảnh đã được hiển thị cũng được trả về trong đối tượng [SizeF](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#renderToScale-java.awt.Graphics2D-float-float-float). Cái này có thể được gán cho một biến và sử dụng nếu cần thiết.

Tính **SizeInPoints** thuộc tính trả về kích thước hình dạng được đo bằng điểm (xem [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/)). Kết quả là một `SizeF` chứa chiều rộng và chiều cao.
