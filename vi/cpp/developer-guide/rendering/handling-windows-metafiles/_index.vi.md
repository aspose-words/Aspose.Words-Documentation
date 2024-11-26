---
title: Xử lý Windows Metafiles trong C++
second_title: Aspose.Words cho C++
articleTitle: Xử Lý Windows Metafiles
linktitle: Xử Lý Windows Metafiles
description: "Aspose.Words cho C++ triển khai trình phát Metafile Windows của riêng mình để phát Định dạng Metafile trên tất cả các nền tảng và hỗ trợ xử lý các tính năng metafile cơ bản và có thể thực hiện dự phòng cho một loại trình phát metafile khác."
type: docs
weight: 30
url: /vi/cpp/handling-windows-metafiles/
timestamp: 2024-01-30-16-22-34
---

Windows Định dạng Metafile là một định dạng tệp hình ảnh có thể chứa cả đồ họa vector và raster. Định dạng này được sử dụng để lưu trữ dữ liệu đồ họa trong bộ nhớ hoặc các tệp trên đĩa. Một metafile lưu trữ danh sách các cuộc gọi chức năng Trong Giao diện thiết bị Đồ họa Windows (GDI) phải được thực thi để hiển thị hình ảnh trên màn hình. Hệ thống diễn giải và thực thi các lệnh này trong ngữ cảnh hiển thị.

Trước đây, Windows Metafile là định dạng hình ảnh vector duy nhất được hỗ trợ bởi Microsoft Word. Microsoft Word bây giờ cũng hỗ trợ định dạng SVG, nhưng định dạng metafile vẫn thường được sử dụng trong Các Tài liệu Word. Ngoài Ra, Metafile có thể là một định dạng trao đổi cho một số ứng dụng khác, chẳng hạn như Microsoft Visio. Về cơ bản, Mục đích Chính của Metafile là đảm bảo trao đổi thông tin đồ họa giữa các ứng dụng Windows.

Có 3 phiên bản Của Windows Metafile:

- WMF – cửa hàng gọi đến 16bit GDI.
- EMF – cửa hàng gọi Đến Win32/GDI.
- EMF+Cửa Hàng Metafile gọi đến GDI+. EMF+ Metafile cũng có thể là kép, mô tả cùng một đồ họa với cả hai phần EMF và EMF+.

Vấn đề hiện có với Windows Metafile là nó không được hỗ trợ bởi hầu hết các định dạng Không Phải Word, mà các tài liệu thường được lưu. Do đó, cần phải chuyển đổi Định dạng Metafile sang các định dạng raster hoặc vector khác. Thật dễ dàng để chuyển Đổi Windows Metafile thành hình ảnh raster trên .NET bằng cách chuyển nó sang GDI+, nhưng không thể thực hiện được trên các nền tảng khác vì ngay cả GDI+ cũng không cung cấp chức năng trích xuất đồ họa vector từ Metafile. Để giải quyết những vấn đề này, Aspose.Words triển khai trình phát Metafile Windows Của riêng mình, có thể phát Định dạng Metafile cả đồ họa vector và raster trên tất cả các nền tảng.

## Kiểm soát trình Phát Metafile Aspose.Words

Lớp [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) cho phép bạn điều khiển trình phát metafile. Ví dụ: bạn có thể xác định cách hiển thị hình ảnh metafile bằng thuộc tính [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/), có ý nghĩa đặc biệt khi chuyển đổi sang bitmap (xem thêm thuộc tính [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/)).

Lưu vào bitmap hoạt động khác nhau trên các nền tảng khác với .NET. Mặc dù .NET GDI+ kết xuất là một tham chiếu hoạt động gần như hoàn hảo ngay cả đối với định dạng metafile phức tạp nhất, nhưng trên các nền tảng khác, nó có thể gây ra sự cố hoặc hoàn toàn không được hỗ trợ.

## Hỗ Trợ Hoạt Động Raster

Hoạt động Raster là một tính năng metafile phức tạp, hiện có hỗ trợ hạn chế. Hoạt động Raster có sẵn trong WMF và EMF định dạng metafile. Định dạng EMF+ metafile không sử dụng trực tiếp các thao tác raster nhưng có thể chứa các phần EMF, được nhúng WMF hoặc EMF metafiles.

Có các hoạt động raster nhị phân và ternary:

- Các thao tác raster nhị phân được áp dụng cho các lệnh vẽ bút, chẳng hạn như vẽ các đường và đường cong. Khi vẽ một đường, màu bút được kết hợp với màu bitmap đích (màu của pixel tương ứng trên bề mặt thiết bị) bằng cách sử dụng các phép toán logic bitwise được chỉ định với các giá trị màu hex. Ví dụ hình ảnh dưới đây minh họa hiệu ứng của tất cả 16 hoạt động raster nhị phân được áp dụng cho 20 thanh màu khác nhau. Các thanh màu dọc được vẽ trước, các thanh ngang được vẽ sau mỗi thao tác raster nhị phân được áp dụng. Đối với các trường hợp đơn giản, R2_BLACK vẽ màu đen, R2_NOT đảo ngược màu, R2_NOP không thay đổi nền và R2_WHITE vẽ màu trắng.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- Các thao tác raster bậc ba được áp dụng khi vẽ hình ảnh bitmap. Chúng kết hợp màu sắc của các pixel hình ảnh bitmap tương ứng, bàn chải và bitmap đích bằng cách sử dụng các phép toán logic bitwise với các giá trị màu hex được chỉ định. Một trong những mục đích phổ biến nhất của việc sử dụng các hoạt động raster bậc ba là mô phỏng tính minh bạch. Hình ảnh được cung cấp trong ví dụ dưới đây cho thấy độ trong suốt của biểu tượng có thể được mô phỏng như thế nào. Có hai loại bitmap: bitmap mặt nạ b/w và bitmap màu. Đầu tiên, bitmap mặt nạ được vẽ bằng thao tác SRCAND raster. Nó thay đổi vùng biểu tượng mờ thành đen trắng, giữ nguyên vùng trong suốt. Sau đó, bitmap thứ hai được vẽ bằng thao tác SRCINVERT raster. Nó hiển thị các pixel màu trên vùng màu đen, giữ nguyên vùng trong suốt.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

Hoạt động Raster không thể được chuyển đổi sang đồ họa vector trực tiếp. Aspose.Words mô phỏng các hoạt động raster bằng cách rasterizing một phần bề mặt thiết bị bị ảnh hưởng bởi các hoạt động raster. Với mục đích này, thuộc tính [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) được sử dụng.

{{% alert color="primary" %}}

Trong khi các hoạt động raster nhị phân hiện không được hỗ trợ và số lượng hạn chế các hoạt động raster bậc ba được hỗ trợ bởi Aspose.Words, nó có thể xử lý các trường hợp cơ bản của chuyển đổi sang đồ họa vector trực tiếp, ví dụ, R2_BLACK, R2_WHITE, R2_NOP. Ngoài ra, rasterizing của bề mặt thiết bị ảnh hưởng đáng kể đến hiệu suất, đặc biệt là khi số lượng đáng kể các bản ghi hoạt động raster có liên quan.

{{% /alert %}}

Ví dụ được hiển thị dưới đây cho thấy cách Aspose.Words hiển thị metafile thành bitmap khi không thể hiển thị chính xác một số bản ghi metafile thành đồ họa vector:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## Cài Đặt Dự Phòng Metafile

Aspose.Words không hỗ trợ một số tính năng metafile phức tạp hoặc hiếm nhất. Người dùng có thể triển khai giao diện [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) và nhận thông báo cảnh báo. Nếu Aspose.Words gặp các tính năng không được hỗ trợ trong metafile, nó sẽ đưa ra thông báo cảnh báo với [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/).**Metafile**. Trong trường hợp này Aspose.Words có thể thực hiện dự phòng cho một loại trình phát metafile khác. Thông báo cảnh báo liên quan đến dự phòng cũng được ban hành.

Thứ nhất, Aspose.Words thực hiện dự phòng từ trình phát siêu tệp vector sang raster, được điều khiển bởi thuộc tính [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/). Nếu tính năng dự phòng bị tắt, Aspose.Words cố gắng hiển thị một số đồ họa thay thế thay vì các tính năng không được hỗ trợ.

Aspose.Words phát thành công metafile thành raster bằng GDI + trên .NET, điều này làm cho tùy chọn gọi lại này an toàn.

Thứ hai, có một tùy chọn cho EMF+ metafile Kép để dự phòng từ việc phát EMF+ phần đến phần EMF. Nó được kiểm soát bởi [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/). Nếu có một số vấn đề xảy ra khi chơi phần EMF, thì dự phòng cho raster cũng có thể được thực hiện.

Đối với các hoạt động raster, nếu [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) bị vô hiệu hóa, thì các hoạt động raster được coi là không được hỗ trợ, điều này sẽ kích hoạt dự phòng cho bitmap metafile player nếu nó được bật. Do đó, nếu bạn có một metafile với các hoạt động raster, nhưng bạn không muốn sử dụng mô phỏng hoạt động raster và chưa muốn lấy đầu ra vectơ với đồ họa thay thế, sau đó chọn [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector**.
