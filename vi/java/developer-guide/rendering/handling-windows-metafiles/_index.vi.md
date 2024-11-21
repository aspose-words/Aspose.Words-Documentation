---
title: Xử lý Windows MetaFile trong Java
second_title: Aspose.Words cho Java
articleTitle: Xử lý ` Windows ` metafiles
linktitle: Xử lý ` Windows ` metafiles
description: "Aspose.Words cho Java thực hiện người chơi Windows của riêng nó để chơi định dạng Metafile trên tất cả các nền tảng và hỗ trợ xử lý các tính năng cơ bản của metafile và có thể thực hiện chuyển đổi đến một loại khác của người chơi metafile."
type: docs
weight: 30
url: /vi/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows Metafile Format là định dạng tập tin hình ảnh có thể chứa cả đồ họa vector và raster. Định dạng này được dùng để lưu trữ dữ liệu đồ họa trong bộ nhớ hoặc trên các tập tin đĩa. Một tập tin siêu đề lưu trữ một danh sách các cuộc gọi chức năng trong Giao diện thiết bị đồ họa (GDI) Windows cần phải được thực hiện để hiển thị hình ảnh trên màn hình. Hệ thống giải thích và thực thi các lệnh trong bối cảnh hiển thị.

Trước đây, Windows Metafile là định dạng hình ảnh vector duy nhất được hỗ trợ bởi Microsoft Word. Microsoft Word bây giờ cũng hỗ trợ định dạng SVG, nhưng định dạng metafile vẫn thường được sử dụng trong tài liệu Word. Cũng vậy, Metafile có thể là một định dạng trao đổi cho các ứng dụng khác, chẳng hạn như Microsoft Visio. Nói chung mục đích chính của Metafile là đảm bảo việc trao đổi thông tin đồ họa giữa các Windows ứng dụng.

Có 3 phiên bản của Windows MetaFile:

- WMF – lưu trữ gọi đến GDI 16 bit.
"- EMF – lưu trữ các cuộc gọi tới Win32/GDI."
- EMF+ Metafile lưu trữ cuộc gọi đến GDI+. EMF+ Metafile cũng có thể là đôi, mô tả cùng một đồ họa với cả EMF và EMF+ các phần.

Vấn đề hiện tại với Windows Metafile là nó không được hỗ trợ bởi hầu hết các định dạng phi từ Word, nơi mà tài liệu thường được lưu. Do đó, cần chuyển đổi định dạng MetaFile sang các định dạng raster hoặc vector khác. Rất dễ chuyển đổi Windows Metafile thành hình ảnh raster trên .NET bằng cách đơn giản truyền nó đến GDI+, nhưng không thể thực hiện điều này trên các nền tảng khác vì ngay cả GDI+ cũng không cung cấp chức năng để trích xuất đồ họa vector từ Metafile. Để giải quyết các vấn đề này, Aspose.Words thực hiện của riêng nó Windows người chơi tệp metafile, có thể chơi định dạng metafile cả đồ họa vector và raster trên tất cả các nền tảng.

## Kiểm soát trình phát Aspose.Words Metafile

Lớp [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) cho phép bạn điều khiển người chơi Metafile. Ví dụ, bạn có thể xác định cách các hình ảnh siêu tệp nên được hiển thị bằng thuộc tính [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/), mà có một ý nghĩa đặc biệt khi chuyển đổi thành bitma (cũng xem thuộc tính [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions).)

## Hỗ trợ Hoạt động của Ma trận

Các thao tác raster là một tính năng phức tạp của tập tin siêu loại, hiện nay chỉ có hỗ trợ hạn chế. Các thao tác rasters có sẵn trong định dạng tệp WMF và EMF. Định dạng tệp EMF+ không sử dụng các thao tác raster trực tiếp nhưng có thể chứa EMF Parts,嵌入的 WMF hoặc EMF metafiles.

Có các thao tác raster nhị phân và tam phân:

- Các thao tác rasters nhị phân được áp dụng cho các lệnh vẽ bút, chẳng hạn như vẽ đường và đường cong. Khi vẽ đường, màu bút được kết hợp với màu bitmap đích (màu của pixel tương ứng trên bề mặt thiết bị) bằng cách sử dụng các phép toán logic bit cụ thể với giá trị màu hex. Hình ví dụ dưới đây minh họa hiệu ứng của tất cả 16 hoạt động raster nhị phân áp dụng cho 20 thanh màu khác nhau. Các thanh màu đứng được vẽ trước, các thanh ngang được vẽ sau mỗi thao tác raster nhị phân được áp dụng. Đối với những trường hợp đơn giản thì R2_BLACK vẽ màu đen, R2_NOT đảo ngược màu sắc, R2_NOP không thay đổi nền và R2_WHITE vẽ màu trắng.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Các phép toán raster ba trạng thái được áp dụng khi vẽ hình ảnh bitmapp Chúng kết hợp màu sắc của các pixel bitmap tương ứng, chổi và bitmap đích bằng cách sử dụng các phép toán logic bit với các giá trị màu hex được chỉ định. Một trong những mục đích phổ biến nhất của việc sử dụng các hoạt động raster ba nhân là mô phỏng độ trong suốt. Hình ảnh cung cấp trong ví dụ dưới đây cho thấy làm thế nào để minh bạch biểu tượng có thể được mô phỏng. Có hai loại bitmap: bitmap mặt nạ đen trắng và bitmap màu sắc. Đầu tiên, mặt nạ bit được vẽ với thao tác raster SRCAND. Nó thay đổi vùng biểu tượng mờ thành đen và trắng, để lại vùng trong suốt không thay đổi. Sau đó bản đồ bit thứ hai được vẽ với hoạt động SRCINVERT raster. Nó hiển thị màu pixel trên vùng đen, để lại không thay đổi vùng trong suốt.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Các thao tác raster không thể được chuyển đổi trực tiếp thành đồ họa vector. Aspose.Words mô phỏng các thao tác raster bằng cách một phần raster hóa bề mặt thiết bị chịu ảnh hưởng bởi các thao tác raster. Đối mục đích này, tính năng [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) được sử dụng.

{{% alert color="primary" %}}

Mặc dù các phép toán raster nhị phân hiện chưa được hỗ trợ và số lượng hạn chế các phép toán raster ba là được hỗ trợ bởi Aspose.Words, nó có thể xử lý những trường hợp cơ bản của chuyển đổi sang đồ họa vector trực tiếp, ví dụ như R2_BLACK, R2_WHITE, R2_NOP. Ngoài ra, việc raster hóa bề mặt của thiết bị ảnh hưởng đáng kể đến hiệu suất, đặc biệt khi có một số lượng lớn bản ghi hoạt động raster.

{{% /alert %}}

Ví dụ được hiển thị dưới đây cho thấy cách Aspose.Words xử lý một tập tin siêu dạng thành một tập tin bitmap khi không thể xử lý chính xác một số bản ghi của tập tin siêu dạng thành đồ họa vectơ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
