---
title: Xử lý siêu tệp Windows
second_title: Aspose.Words cho Python via .NET
articleTitle: Xử lý siêu tệp Windows
linktitle: Xử lý siêu tệp Windows
description: "Aspose.Words dành cho Python via .NET triển khai trình phát Siêu tệp Windows của riêng mình để phát định dạng Siêu tệp trên tất cả các nền tảng và hỗ trợ xử lý các tính năng siêu tệp cơ bản cũng như có thể thực hiện dự phòng cho một loại trình phát siêu tệp khác."
type: docs
weight: 30
url: /vi/python-net/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Định dạng siêu tệp Windows là định dạng tệp hình ảnh có thể chứa cả đồ họa vector và raster. Định dạng này được sử dụng để lưu trữ dữ liệu đồ họa trong bộ nhớ hoặc tệp trên đĩa. Siêu tệp lưu trữ danh sách các lệnh gọi hàm trong Giao diện thiết bị đồ họa Windows (GDI) phải được thực thi để hiển thị hình ảnh trên màn hình. Hệ thống diễn giải và thực thi các lệnh này trong ngữ cảnh hiển thị.

Trước đây, Windows Metafile là định dạng hình ảnh vector duy nhất được Microsoft Word hỗ trợ. Microsoft Word hiện cũng hỗ trợ định dạng SVG, nhưng định dạng metafile vẫn được sử dụng phổ biến trong tài liệu Word. Ngoài ra, Metafile có thể là định dạng trao đổi cho một số ứng dụng khác, chẳng hạn như Microsoft Visio. Về cơ bản, mục đích chính của Metafile là đảm bảo trao đổi thông tin đồ họa giữa các ứng dụng Windows.

Có 3 phiên bản của Windows Metafile:

- WMF – lưu trữ cuộc gọi tới GDI 16bit.
- EMF – lưu trữ cuộc gọi tới Win32/GDI.
- EMF+ Metafile lưu trữ lệnh gọi tới GDI+. EMF+ Metafile cũng có thể là kép, mô tả cùng một đồ họa với cả hai phần EMF và EMF+.

Vấn đề hiện tại với Siêu tệp Windows là nó không được hầu hết các định dạng không phải Word hỗ trợ, những tài liệu thường được lưu vào đó. Do đó, cần phải chuyển đổi định dạng Metafile sang các định dạng raster hoặc vector khác. Thật dễ dàng để chuyển đổi Siêu tệp Windows thành hình ảnh raster trên .NET bằng cách chuyển nó sang GDI+, nhưng điều đó là không thể trên các nền tảng khác vì ngay cả GDI+ cũng không cung cấp chức năng trích xuất đồ họa vector từ Metafile. Để giải quyết những vấn đề này, Aspose.Words triển khai trình phát Metafile Windows của riêng nó, trình phát này có thể phát định dạng Metafile cả đồ họa vector và raster trên tất cả các nền tảng.

## Kiểm soát Trình phát siêu tệp Aspose.Words

Lớp [MetafileRenderingOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/) cho phép bạn điều khiển trình phát siêu tệp. Ví dụ: bạn có thể xác định cách hiển thị hình ảnh siêu tệp bằng cách sử dụng thuộc tính [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/), thuộc tính này có ý nghĩa đặc biệt khi chuyển đổi sang ảnh bitmap (xem thêm thuộc tính [ImageSaveOptions.metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/)).

Việc lưu vào bitmap hoạt động khác nhau trên các nền tảng khác ngoài .NET. Mặc dù kết xuất .NET GDI+ là một tham chiếu hoạt động gần như hoàn hảo ngay cả đối với định dạng siêu tệp phức tạp nhất, nhưng trên các nền tảng khác, nó có thể gây ra sự cố hoặc hoàn toàn không được hỗ trợ.

## Hỗ trợ hoạt động Raster

Hoạt động raster là một tính năng siêu tệp phức tạp, hiện được hỗ trợ hạn chế. Các hoạt động raster có sẵn ở định dạng siêu tệp WMF và EMF. Định dạng siêu tệp EMF+ không sử dụng trực tiếp các thao tác raster nhưng có thể chứa các phần EMF, siêu tệp WMF hoặc EMF được nhúng.

Có các hoạt động raster nhị phân và ternary:

- Các thao tác raster nhị phân được áp dụng cho các lệnh vẽ bút, chẳng hạn như vẽ đường và đường cong. Khi vẽ một đường, màu bút được kết hợp với màu bitmap đích (màu của pixel tương ứng trên bề mặt thiết bị) bằng cách sử dụng các phép toán logic theo bit được chỉ định với các giá trị màu hex. Ví dụ hình ảnh bên dưới minh họa tác dụng của tất cả 16 thao tác raster nhị phân được áp dụng cho 20 thanh màu khác nhau. Các thanh màu dọc được vẽ trước, các thanh ngang được vẽ sau mỗi thao tác raster nhị phân được áp dụng. Đối với các trường hợp đơn giản, R2_BLACK vẽ màu đen, R2_NOT đảo ngược màu, R2_NOP không thay đổi nền và R2_WHITE vẽ màu trắng.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="xử lý-windows-metafiles-aspose-words-net-1" style="width:650px"/>

- Các thao tác raster ternary được áp dụng khi vẽ ảnh bitmap. Chúng kết hợp màu sắc của các pixel hình ảnh bitmap tương ứng, cọ vẽ và bitmap đích bằng cách sử dụng các phép toán logic theo bit với các giá trị màu hex được chỉ định. Một trong những mục đích phổ biến nhất của việc sử dụng các phép toán raster ternary là mô phỏng tính minh bạch. Hình ảnh được cung cấp trong ví dụ bên dưới minh họa cách mô phỏng độ trong suốt của biểu tượng. Có hai loại bitmap: bitmap mặt nạ đen trắng và bitmap màu. Đầu tiên, bitmap mặt nạ được vẽ bằng thao tác raster SRCAND. Nó thay đổi vùng biểu tượng mờ thành đen trắng, giữ nguyên vùng trong suốt. Sau đó, bitmap thứ hai được vẽ bằng thao tác raster SRCIVERT. Nó hiển thị các pixel màu trên vùng màu đen, giữ nguyên vùng trong suốt.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="xử lý-windows-metafiles-aspose-words-net-2" style="width:650px"/>

Các thao tác raster không thể được chuyển đổi trực tiếp sang đồ họa vector. Aspose.Words mô phỏng các hoạt động raster bằng cách rasterize một phần bề mặt thiết bị bị ảnh hưởng bởi các hoạt động raster. Với mục đích này, thuộc tính [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) được sử dụng.

{{% alert color="primary" %}}

Mặc dù các hoạt động raster nhị phân hiện không được hỗ trợ và một số lượng hạn chế các hoạt động raster nhị phân được Aspose.Words hỗ trợ, nhưng nó có thể xử lý trực tiếp các trường hợp chuyển đổi cơ bản sang đồ họa vector, ví dụ: R2_BLACK, R2_WHITE, R2_NOP. Ngoài ra, việc rasterizing bề mặt thiết bị ảnh hưởng đáng kể đến hiệu suất, đặc biệt khi có liên quan đến số lượng đáng kể các bản ghi hoạt động raster.

{{% /alert %}}

Ví dụ hiển thị bên dưới minh họa cách Aspose.Words hiển thị siêu tệp thành bitmap khi không thể hiển thị chính xác một số bản ghi siêu tệp thành đồ họa vector:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir +  "Rendering.docx")

metafileRenderingOptions = aw.saving.MetafileRenderingOptions()
metafileRenderingOptions.emulate_raster_operations = False
metafileRenderingOptions.rendering_mode = aw.saving.MetafileRenderingMode.VECTOR_WITH_FALLBACK

saveOptions = aw.saving.PdfSaveOptions()
saveOptions.metafile_rendering_options = metafileRenderingOptions

doc.save(docs_base.artifacts_dir +"PdfSaveOptions.HandleRasterWarnings.pdf", saveOptions)
{{< /highlight >}}

## Cài đặt dự phòng siêu tệp

Aspose.Words không hỗ trợ một số tính năng siêu tệp phức tạp hoặc hiếm gặp nhất. Trong trường hợp này, Aspose.Words có thể thực hiện dự phòng cho một loại trình phát siêu tệp khác

Đầu tiên, Aspose.Words thực hiện dự phòng từ trình phát siêu tệp vectơ sang raster, được điều khiển bởi thuộc tính [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/). Nếu tính năng dự phòng bị tắt, Aspose.Words sẽ cố gắng hiển thị một số đồ họa thay thế thay vì các tính năng không được hỗ trợ.

Aspose.Words phát thành công siêu tệp sang raster bằng GDI+ trên .NET, điều này giúp tùy chọn gọi lại này an toàn.

Thứ hai, có một tùy chọn để siêu tệp EMF+ Dual dự phòng từ việc phát phần EMF+ sang phần EMF. Nó được kiểm soát bởi [emf_plus_dual_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emf_plus_dual_rendering_mode/). Nếu có một số vấn đề xảy ra khi phát phần EMF thì việc dự phòng sang raster cũng có thể được thực hiện.

Đối với các hoạt động raster, nếu [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) bị tắt thì các hoạt động raster được coi là không được hỗ trợ, điều này sẽ kích hoạt dự phòng cho trình phát siêu tệp bitmap nếu nó được bật. Do đó, nếu bạn có một siêu tệp với các thao tác raster, nhưng bạn không muốn sử dụng mô phỏng các thao tác raster nhưng vẫn muốn nhận được đầu ra vectơ bằng đồ họa thay thế, thì hãy chọn [MetafileRenderingMode.VECTOR](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingmode/#vector).
