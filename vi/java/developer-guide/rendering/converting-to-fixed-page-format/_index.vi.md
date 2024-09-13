---
title: Chuyển đổi sang Định dạng Trang cố định trong Java
second_title: Aspose.Words cho Java
articleTitle: Chuyển đổi sang Định dạng Cố định
linktitle: Chuyển đổi sang Định dạng Cố định
description: "Aspose.Words cho Java thực hiện công cụ bố cục riêng của nó, cho phép nó tạo ra tất cả các định dạng trang cố định như PDF, XPS, và các định dạng hình ảnh khác."
type: docs
weight: 10
url: /vi/java/converting-to-fixed-page-format/
---

Aspose.Words thực hiện động cơ bố cục trang của riêng mình. Trước khi đi sâu vào đặc tả của nó, đáng để trước tiên thảo luận tài liệu ở mức cao cấp. Khi nghĩ về một tài liệu, người dùng thường hình dung một số trang giấy chứa từ, hình ảnh, bảng và biểu đồ. Các tài liệu có thể thuộc nhiều loại khác nhau, như văn bản, bảng tính, slide, bản vẽ CAD, sơ đồ dòng công việc và do đó có thể có bố cục khác nhau đáng kể. Hầu hết các ứng dụng cho phép gửi tài liệu đến máy in; đây là lúc một người dùng có thể thực sự xem ngoại hình cuối cùng dự định của tài liệu.

## Hiển thị một Tài liệu trên các Ứng dụng khác nhau

Một số ứng dụng xem hoặc xuất bản tài liệu cho phép người dùng mở (Xem Adobe Acrobat, Xem XPS) và đôi khi chỉnh sửa (Adobe InDesign) các tài liệu của định dạng cụ thể. Những ứng dụng này thường tạo ra những tài liệu theo kiểu "các trang cố định". Định dạng tài liệu như thế mô tả chính xác nơi một tài liệu được đặt trên mỗi trang. Về mặt nội bộ, định dạng PDF hoặc XPS chứa một mô tả của mỗi trang, cũng như các hướng dẫn vẽ để xác định bố cục của nội dung trên trang. Đây tương tự với các định dạng hình ảnh, mô tả nơi nội dung được hiển thị hoặc ở dạng raster hoặc vector.

Ngược lại, một số ứng dụng chỉnh sửa văn bản không hỗ trợ việc xem các trang của một tài liệu. Ví dụ, "For instance, Microsoft Notepad hỗ trợ rất ít các chức năng khác ngoài việc đơn giản là hiển thị, chỉnh sửa và in văn bản". Quan sát quan trọng ở đây là các ứng dụng như vậy không thể hiển thị các trang của tài liệu hoặc cho người dùng biết có bao nhiêu trang sẽ được in, chỉ cho phép xem nội dung tài liệu. Tệp có thể được lưu ở định dạng văn bản thuần túy và có thể mở bởi nhiều ứng dụng khác. Sử dụng một ứng dụng cho phép xem nội dung nhị phân của một tập tin ngẫu nhiên người ta có thể thấy những gì được lưu trữ trong tập tin tài liệu – nó chỉ là văn bản thuần túy, không có gì khác trong đó cả.

Một số ứng dụng chỉnh sửa văn bản phức tạp hơn như Microsoft WordPad lưu trữ tài liệu ở Định dạng Văn bản Nổi bật (RTF), giúp hỗ trợ nhiều chức năng định dạng hơn như chèn hình ảnh, định dạng chữ, lề đoạn và khoảng cách. Tuy nhiên định dạng RTF cũng chỉ chứa nội dung của tài liệu mà không có thông tin về trang.

Microsoft Word là ứng dụng chỉnh sửa văn bản tiên tiến nhất hiện nay ở Windows. Nó định dạng các tập tin theo định dạng DOCX, mô tả nội dung của tài liệu một cách linh hoạt và toàn diện, cho phép người dùng chỉ định kích thước trang giấy, hướng cho một phần của tài liệu, và vì là ứng dụng WYSIWYG nó thậm chí còn hiển thị các trang tài liệu trên màn hình. Tuy nhiên vẫn không có thông tin nào về cách hiển thị nội dung của tài liệu trên các trang có sẵn trong tập tin tài liệu. Tập tin tài liệu chỉ mô tả nội dung của nó và mối quan hệ giữa các đối tượng tài liệu với nhau, cùng với một số ràng buộc hình học. Kết quả, trước khi hiển thị một tài liệu, Microsoft Word tính toán thông tin đó chính nó. Đây là nơi mà một bố cục trang đến vào.

## Điều gì là một Bố cục Trang

Kế hoạch bố cục trang tài liệu là cấu trúc dữ liệu mô tả nơi một đối tượng cụ thể được đặt trên các trang cho tất cả các đối tượng tài liệu. Ngoài ra, vì các đối tượng có thuộc tính ảnh hưởng đến sự xuất hiện của chúng, chẳng hạn như kích cỡ phông chữ, hiệu ứng bóng hoặc vẽ, bạn cần không chỉ biết nơi đối tượng nằm mà còn phải biết khu vực (các) trên trang mà nó chiếm, và liệu nó sẽ áp dụng cho nhiều trang để các đối tượng khác không chồng chéo vào cùng một khu vực.

Aspose.Words thực hiện chức năng bố cục trang nội bộ cho phép nó tạo ra tất cả các định dạng trang cố định, chẳng hạn như PDF, XPS và các định dạng hình ảnh khác. Không có bố cục trang thì thông tin lưu trữ trong tập tin tài liệu trang cố định sẽ không thể truy cập và tất cả các định dạng này sẽ không được hỗ trợ.

Mối liên hệ giữa một văn bản và bố cục trang khá đơn giản. Trong khi đó một tài liệu mô tả nội dung, bố cục trang tương ứng mô tả hình học của nội dung đó. Lưu ý rằng một bố cục trang không thể tồn tại mà thiếu tài liệu vì sẽ không có nội dung để tính toán hình học, nhưng một tài liệu có thể tồn tại mà thiếu bố cục trang. Ví dụ, khi một tài liệu DOCX được chuyển đổi thành một tài liệu RTF, thường không cần biết hình học, vì cả hai định dạng đều không lưu trữ nó.

## Tạo một bố cục trang

Tạo bố cục trang có thể là một thủ tục tốn kém, cả về mặt tốc độ và bộ nhớ. Đây là vì nhiều lý do:

- Tài liệu có thể có một lượng nội dung lớn và cần được hiển thị trên hàng ngàn trang. Toán học của mỗi vật thể trên mỗi trang sẽ cần phải được mô tả, tiêu tốn tài nguyên bộ nhớ.
- Tài liệu có thể có nhiều quy tắc, áp đặt ràng buộc lên hình học. Thời gian tính toán đáng kể có thể được sử dụng, đảm bảo rằng mọi ràng buộc được đáp ứng
- Một số tính năng tài liệu, ví dụ như trường `NUMPAGES`, tạo ra các phụ thuộc đệ quy đối với các giá trị thuộc tính trong tương lai, không có sẵn vào thời điểm tính toán. Điều này dẫn đến tính toán lặp đi lặp lại và thêm vào thời gian tính toán.

Do những lý do trên, Aspose.Words sẽ tạo ra một bố cục trang chỉ khi nó cần thiết. Một lý do điển hình cho điều này sẽ là yêu cầu hiển thị trang tài liệu hoặc để nhận giá trị trường phụ thuộc vào thông tin có sẵn trong bố cục trang. Một lý do ít rõ ràng hơn là xuất một tài liệu sang HTML. Dù HTML không phải là định dạng trang cố định và nó không mô tả hình học của các đối tượng nội dung nhưng nó vẫn hỗ trợ ảnh. Những hình ảnh này có thể ở dạng hình dạng được tạo ra trong Microsoft Word với một văn bản bên trong chúng. Ví dụ, một biểu đồ với nhãn trục có thể xuất sang HTML dưới dạng ảnh, nhưng trước khi điều đó có thể được thực hiện Aspose.Words cần tạo ra hình ảnh đó và do đó cần biết nơi để hiển thị nhãn. Xem ví dụ dưới đây

<img src="converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Tính chất không hình học

Ngoài việc xử lý thông tin hình học, một bố cục trang cũng chịu trách nhiệm tính toán màu sắc và kiểu đường viền. Trong Microsoft Word, màu chữ có thể được chỉ định là tự động, ngụ ý rằng việc lựa chọn màu sắc nên dựa trên màu bóng của ô hoặc đoạn văn, hoặc dựa trên màu của trang mà chữ xuất hiện.

bố cục trang tính toán nơi văn bản sẽ xuất hiện và nội dung nào sẽ được tạo ra phía sau nó, cho phép tính toán màu sắc. Có các tính toán cụ thể khác được thực hiện bởi bố cục trang. Ví dụ, một đường viền ngang trên bảng phụ thuộc vào việc liệu một dòng bảng có phải là cuối cùng trong một cột văn bản hay không và liệu nó có bị xé dọc theo các cột hay không. Nếu một hàng được hiển thị cuối cùng trong một cột, đường viền dưới được sử dụng thay vì đường thẳng ngang.

![non_geometric_properties_aspose-words-java](converting-to-fixed-page-format-2.png)

Trong Aspose.Words, người dùng có thể yêu cầu xây dựng một bố cục trang mới hay cập nhật một bố cục hiện tại. Cả hai hoạt động này có thể được thực hiện bởi phương thức [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\) cung cấp bởi lớp [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Nếu một bố cục trang không tồn tại nhưng có nhu cầu về nó (ví dụ như khi tài liệu được xuất ra định dạng cố định), Aspose.Words sẽ tự động gọi phương pháp này. Tuy nhiên, nếu một bố cục trang đã tồn tại, Aspose.Words sẽ sử dụng bố cục đó để tránh tiêu hao các nguồn lực cần thiết để cập nhật nó. Trong trường hợp này, người dùng cần gọi phương thức `UpdatePageLayout`, để đảm bảo rằng bố cục trang được cập nhật với mô hình tài liệu.

### Cấu trúc động

Quy trình tạo bố cục trang bao gồm các bước sau:

- *Conversion* – liệt kê nội dung của mô hình tài liệu và chuẩn bị các đối tượng bố cục tương ứng.
- *Build* – sắp xếp các đối tượng để thể hiện nội dung của tài liệu trên trang.
- *Reflow* – cập nhật sắp xếp đối tượng để thỏa mãn ràng buộc hình học.
- *Dựng các đối tượng bố cục vào trình bày trang cố định và thông tin màu sắc cuối cùng*.
- *Xây dựng và định dạng lại nội dung hình dạng* – bước cần thiết nếu tài liệu chứa hình dạng với nội dung văn bản lồng nhau.

Lưu ý rằng bố cục trang là cấu trúc động, có thể được xây dựng lại một phần. Điều này đặc biệt cần thiết khi không thể tính được giá trị trường mà không cần xây dựng lại cấu trúc bố cục tài liệu. Trường có thể tham chiếu vị trí của một đối tượng trên trang, và đồng thời giá trị của trường cũng được hiển thị trên trang, ảnh hưởng đến vị trí của đối tượng được tham chiếu. Một bố cục trang không thể được xây dựng một lần bởi vì các giá trị trường có thể chưa sẵn có vào lúc sắp xếp trên trang.

Hãy xem xét trường hợp điển hình khi trường `NUMPAGES` xuất hiện ở phần chân trang của trang đầu tiên trong tài liệu. Giá trị của trường này là tổng số trang. Để đặt trường trên trang, giá trị của nó nên được biết đến. Nếu chỉ có trang đầu tiên đang được xây dựng thì tổng số trang chưa được biết đến. Trong trường hợp này, bố cục trang phải dùng giá trị mặc định và sau đó trở lại với trường đó và thay đổi giá trị của nó theo các tính toán thực tế. Tuy nhiên thay đổi giá trị của trường có thể ảnh hưởng đến nội dung tài liệu khác trên trang và cuối cùng gây ra một trang mới được đính kèm hoặc một trang hiện có bị xóa đi, do đó khiến giá trị đã tính toán trở nên lỗi thời. Vấn đề này có thể được giải quyết bằng cách cho phép cập nhật bố cục trang hiện có.

Khi tạo bố cục, cũng có thể thiết lập [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) thuộc tính ảnh hưởng đến kết quả của tài liệu trên trang.

## Lưu ở Định dạng Trang cố định

Sau khi bố cục trang được xây dựng và hình học của các đối tượng và vị trí của chúng trên trang được tính toán, tài liệu có thể được lưu ở định dạng trang cố định được hỗ trợ bởi Aspose.Words. Khi lưu các tài liệu với định dạng trang cố định, các tùy chọn hiển thị thông thường của tất cả các định dạng này có thể được sử dụng. Chúng cho phép điều khiển:

"Số trang và phạm vi của các trang được bao gồm trong tài liệu đầu ra ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).)"
- Tiến trình lưu tài liệu trang-bởi-trang [PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Một bộ các ký tự được dùng để hiển thị số ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).).
- Một trình phát metafile [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Để biết chi tiết hơn, xem bài viết [Handling Windows Metafiles](/words/java/handling-windows-metafiles/).
- Tỷ lệ chất lượng nén lại hình ảnh JPEG, giá trị của đó có thể khác nhau một chút tùy thuộc vào định dạng lưu chọn ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).")
- Tối ưu hóa đồ họa vectơ trong Aspose.Words đầu ra ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Tùy chọn đồ họa khi lưu sang định dạng Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).)
Lưu tài liệu ở chế độ màu xám ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/)).
Đổi thay giữa hình dạng trong DrawingML và hình dạng fallback ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Đổi giữa các chế độ hiển thị của DML hiệu ứng ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

Ví dụ dưới đây cho thấy cách lưu một tài liệu sang định dạng JPEG sử dụng phương pháp `Save` và tùy chọn hiển thị:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
