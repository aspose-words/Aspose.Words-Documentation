---
title: Có gì mới
second_title: Aspose.Words cho .NET
articleTitle: Có gì mới trong Aspose.Words dành cho .NET
linktitle: Có gì mới trong Aspose.Words dành cho .NET
type: docs
description: "Aspose.Words cho .NET mở rộng và nâng cao hàng ngày. Trên trang này, bạn có thể tìm hiểu về những tính năng to lớn và thú vị nhất của sản phẩm."
weight: 10
url: /vi/net/what-s-new-in-aspose-words-for-net/
---

Trang này mô tả các tính năng Aspose.Words mới thú vị nhất được giới thiệu trong các bản phát hành gần đây.

## Aspose.Words cho .NET 24.1, 24.2, 24.3

Aspose.Words 24.1 cải thiện trải nghiệm xung quanh việc quản lý màu nét, nâng cao các đối tượng OLE và báo cáo LINQ, cũng như giới thiệu API công khai Nguồn thư mục mới.

Aspose.Words 24.2 đã mở rộng API Biểu đồ, quản lý kiểu và các tùy chọn LINQ. Phiên bản Aspose.Words này cũng giới thiệu khả năng chỉ định SvgSaveOptions trong quá trình kết xuất, kiểm soát tải tệp Markdown linh hoạt hơn và làm việc với văn bản tham chiếu cho chú thích cuối trang và chú thích cuối.

Aspose.Words 24.3 giới thiệu một công cụ đọc / ghi TIFF mới và mô phỏng các hoạt động raster nhị phân cho các tệp meta WMF. Aspose.Words 24.3 cũng tiếp tục mở rộng API Biểu đồ.

### Kết xuất và in ấn

#### Kiểm soát màu nét <sup>24.1</sup>

Lớp [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) đã được mở rộng với một tập hợp các thuộc tính công khai mới liên quan đến việc quản lý màu nét: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) và [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) và [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### hần mở rộng API biểu đồ DrawML <sup>24.2 / 24.3</sup>

API biểu đồ DrawML tiếp tục được mở rộng.

### Tải và lưu tài liệu

#### Chỉ định SvgSaveOptions trong khi kết xuất <sup>24.2</sup>

Khả năng chỉ định [SvgSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/svgsaveoptions/) trong quá trình kết xuất đã được thêm bằng cách sử dụng các phương thức [ShapeRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/) và [OfficeMathRenderer](https://reference.aspose.com/words/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/save/).

#### Giữ nguyên các dòng trống khi tải tệp Markdown <sup>24.2</sup>

Khả năng giữ lại các dòng trống khi tải tệp Markdown đã được thêm vào.

#### Một công cụ đọc / ghi TIFF mới  <sup>24.3</sup>

Một công cụ đọc / ghi TIFF mới đã được phát triển cho Aspose.Words cho .NET Standard, .NET 6 và các phiên bản sau. Aspose.Words cho .NET 24.3 đã thêm hỗ trợ cho việc đọc hình ảnh TIFF với các loại nén JPEG và Old JPEG, và cũng cải thiện đáng kể chất lượng của các hoạt động đọc và ghi.

### Khác

* Khả năng sửa đổi văn bản của điều khiển `TextBox` OLE đã được giới thiệu bằng cách thêm thuộc tính [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) mới vào lớp [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/) mới. <sup>24.1</sup>
* API công khai của Nguồn thư mục được triển khai thông qua việc thêm một không gian tên mới [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) với các lớp và bảng liệt kê mới của nó, đồng thời thông qua việc thêm một thuộc tính [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) mới vào lớp [Document](https://reference.aspose.com/words/net/aspose.words/document/). <sup>24.1</sup>
* Một API để giới hạn quyền truy cập vào các thành viên loại sử dụng cú pháp mẫu cho Công cụ Báo cáo LINQ đã được cung cấp. <sup>24.1</sup>
* Các thuộc tính công khai mới [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) và [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) để quản lý kiểu nâng cao đã được thêm vào lớp [Style](https://reference.aspose.com/words/net/aspose.words/style/). <sup>24.2</sup>
* Chức năng truy xuất văn bản dấu tham chiếu thực tế cho chú thích cuối trang và chú thích cuối đã được cải tiến với thuộc tính [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) và phương thức [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* Đã bật khả năng tương thích với biểu đồ `Word 2016` cho `LINQ Reporting Engine`. <sup>24.2</sup>
* Mô phỏng các hoạt động raster nhị phân cho các tệp meta WMF đã được triển khai. <sup>24.3</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 24.1](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 24.2](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 24.3](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

{{% /alert %}}

## Aspose.Words cho .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 mở rộng các tùy chọn hiển thị, mô phỏng hiển thị siêu tệp và tùy chọn lưu markdown.

Aspose.Words 23.10 cải thiện kết xuất, mở rộng các tùy chọn tải và lưu tài liệu, đồng thời cho phép người dùng hợp nhất tài liệu theo những cách mới.

Aspose.Words 23.11 nâng cao công việc với các bản sửa đổi, định dạng XLSX và phông chữ trên chú giải biểu đồ với các tùy chọn bổ sung.

Aspose.Words 23.12 giới thiệu các thuộc tính và bảng liệt kê mới để làm việc với các tài liệu PDF và OOXML, cũng như hỗ trợ hình ảnh WebP.

### Kết xuất và in ấn

#### Tùy chỉnh tiêu đề trục trong Biểu đồ DrawML <sup>23.9</sup>

Khả năng tùy chỉnh tiêu đề trục trong biểu đồ DrawML đã được giới thiệu bằng cách triển khai thuộc tính [ChartAxisTitle](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxistitle/) và [Title](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxis/title/) lớp công khai mới.

#### Xác định vị trí dọc của phông chữ trong đoạn <sup>23.9</sup>

Giờ đây, có thể xác định vị trí dọc của phông chữ trong một đoạn bằng cách sử dụng thuộc tính [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/paragraphformat/baselinealignment/) công khai mới và bảng liệt kê [BaselineAlignment](https://reference.aspose.com/words/net/aspose.words/baselinealignment/) mới.

#### Kiểm soát màu tiền cảnh <sup>23.10</sup>

Khả năng truy xuất màu nền trước mà không cần sửa đổi đã được thêm vào các lớp [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) và [Stroke](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/) thông qua thuộc tính **BaseForeColor**.

#### Mở rộng chức năng của biểu đồ <sup>23.10</sup>

Chức năng của các lớp [ChartDataPointCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseries/) và [ChartFormat](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartformat/) đã được mở rộng với các phương thức và thuộc tính mới.

#### Tự động điều chỉnh và ghép hình ảnh vào hình dạng <sup>23.10</sup>

Một cách đơn giản để tự động điều chỉnh và điều chỉnh hình ảnh trong một hình dạng cụ thể đã được cung cấp thông qua phương pháp [FitImageToShape](https://reference.aspose.com/words/net/aspose.words.drawing/imagedata/fitimagetoshape/) mới.

#### Định dạng phông chữ mặc định cho các mục chú thích biểu đồ DrawML <sup>23.11</sup>

Khả năng chỉ định định dạng phông chữ mặc định cho các mục chú thích của biểu đồ DrawML đã được thêm thông qua thuộc tính [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/). Tính năng này tạo điều kiện cho các thành phần biểu đồ có diện mạo hợp lý và nhất quán hơn, cải thiện tính thẩm mỹ tổng thể của tài liệu.

#### Chỉ định Bố cục Trang khi Mở PDF trong Reader <sup>23.12</sup>

Khả năng chỉ định bố cục trang sẽ được sử dụng khi mở tài liệu trong trình đọc PDF đã được thêm vào thông qua việc giới thiệu thuộc tính [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) mới cho lớp [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) và giới thiệu bảng liệt kê [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/) mới.

### Tải và lưu tài liệu

#### Chỉ định tên thư mục để xây dựng URI hình ảnh trong Markdown <sup>23.9</sup>

Lớp [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) đã được mở rộng bằng cách bao gồm thuộc tính [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/), cho phép chỉ định tên của thư mục được sử dụng để xây dựng các URI hình ảnh được ghi vào tài liệu Markdown.

#### Giảm kích thước đầu ra PDF <sup>23.10</sup>

Nhiều tối ưu hóa kết xuất PDF khác nhau để giảm kích thước đầu ra khi sử dụng cài đặt [OptimizeOutput](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) đã được triển khai.

#### Nhận dạng siêu liên kết khi tải tài liệu TXT <sup>23.10</sup>

Tính năng nhận dạng siêu liên kết khi tải tài liệu TXT đã được triển khai bằng cách thêm thuộc tính [DetectHyperlinks](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/detecthyperlinks/) mới.

### Khác

* Mô phỏng kết xuất siêu tệp để xác định kích thước rasterization đã được triển khai, đặc biệt cho chiều rộng bút WMF và chiều rộng bút mỹ phẩm EMF. Để đạt được điều này, thuộc tính **ScaleWmfFontsToMetafileSize** đã được thay thế bằng thuộc tính [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) và thuộc tính [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) đã được thêm vào. <sup>23,9</sup>
* Một phương pháp đơn giản để chèn một tài liệu vào một tài liệu khác ở vị trí con trỏ hiện tại đã được giới thiệu bằng phương pháp [InsertDocumentInline](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* Khả năng truy cập và sửa đổi các thuộc tính kiểu đã được thêm vào thông qua việc giới thiệu thuộc tính [Locked](https://reference.aspose.com/words/net/aspose.words/style/locked/) mới. <sup>23.10</sup>
* Một tham số loại chung đã được thêm vào các phương thức của lớp [CompositeNode](https://reference.aspose.com/words/net/aspose.words/compositenode/). <sup>23.10</sup>
* Một cách để kiểm soát khi nào một bản sửa đổi nhất định nên được chấp nhận/từ chối hay không đã được triển khai bằng cách sử dụng các phương pháp [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) và [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/). Cải tiến này cấp cho người dùng quyền kiểm soát tốt hơn đối với quá trình sửa đổi. <sup>23.11</sup>
* Khả năng ghi tất cả các phần của tài liệu vào cùng một bảng tính XLSX đã được cung cấp thông qua kiểu liệt kê [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) mới và thuộc tính [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/) mới. <sup>23.11</sup>
* Một cách để kiểm soát cách sử dụng các phần mở rộng định dạng ZIP64 cho các tài liệu OOXML đã được triển khai thông qua thuộc tính Zip64Mode mới của lớp `OoxmlSaveOptions` và bảng liệt kê Zip64Mode mới. <sup>23.12</sup>
* Hỗ trợ hình ảnh WebP đã được giới thiệu. Xin lưu ý rằng tính năng này chỉ khả dụng cho phiên bản .NetStandart và .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 23.9](/words/net/aspose-words-for-net-23-9-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 23.10](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 23.11](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 23.12](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words cho .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 nâng cao khả năng làm việc với dữ liệu chuỗi biểu đồ và khả năng làm việc với các tài liệu ODT, cũng như cải thiện đầu trang/chân trang và gói văn bản của chúng.

Aspose.Words 23.6 mở rộng các tùy chọn kết xuất, thêm định dạng xuất mới, cải thiện các công cụ báo cáo LINQ và LowCode.

Aspose.Words 23.7 nâng cao khả năng báo cáo, bổ sung định dạng xuất mới và giới thiệu các thay đổi khi làm việc với bảng và chữ ký số.

Aspose.Words 23.8 mở rộng khả năng của các định dạng khác nhau, cải thiện kết xuất và thêm các tùy chọn mới để làm việc với các trường

### Các định dạng được hỗ trợ

* Bắt đầu từ phiên bản 23.6, có thể lưu tài liệu ở định dạng XLSX. Bây giờ bạn có thể chuyển đổi tài liệu của mình sang định dạng Excel. <sup>23,6</sup>
* Bắt đầu từ phiên bản 23.7, có thể lưu trang tài liệu hoặc hình dạng ở định dạng EPS. <sup>23,7</sup>

### Tính năng định dạng mới

* Chức năng tự động tạo Mục lục (TOC) cho tài liệu MOBI đã được giới thiệu. <sup>23,8</sup>
* Hàm tạo [PdfEncryptionDetails](https://reference.aspose.com/words/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) đã được mở rộng với [PdfPermissions](https://reference.aspose.com/words/net/aspose.words.saving/pdfpermissions/). <sup>23,8</sup>
* Việc định hình văn bản dọc cho siêu tệp EMF đã được triển khai. <sup>23,8</sup>

### Kết xuất và in ấn

#### Nhận và sửa đổi dữ liệu chuỗi biểu đồ <sup>23.5</sup>

Tính năng lấy và sửa đổi dữ liệu chuỗi biểu đồ được cung cấp bằng cách thêm:

* các lớp mới: [ChartXValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* các loại enum mới: [ChartXValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Hỗ trợ kiểu chữ nâng cao <sup>23.6</sup>

Đã thêm hỗ trợ cho Kiểu chữ nâng cao trong kết xuất WMF, EMF và EMF+.

#### Nội dung có màu trên Trang <sup>23.6</sup>

Thuộc tính công cộng [PageInfo.Colored](https://reference.aspose.com/words/net/aspose.words.rendering/pageinfo/colored/), cho biết trang này có được tô màu hay không, đã được thêm vào.

#### Định dạng cho nhãn dữ liệu biểu đồ <sup>23.6</sup>

Khả năng đặt định dạng tô, nét và chú thích cho nhãn dữ liệu biểu đồ đã được triển khai.

### Mail Merge và báo cáo

#### Chèn HTML động cho Công cụ báo cáo LINQ <sup>23.6</sup>

Một cách chèn HTML động mới cho Công cụ báo cáo LINQ đã được thêm vào.

#### Hỗ trợ thẻ Mustache <sup>23.7</sup>

Thẻ Mustache hiện được hỗ trợ trong các phương thức [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) và [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion).

#### Cập nhật cú pháp mẫu công cụ báo cáo LINQ <sup>23.7</sup>

Cú pháp mẫu Công cụ báo cáo LINQ hiện hỗ trợ các phương thức mở rộng `ElementAt` và ElementAtOrDefault.

#### Chỉ định kích thước của hình ảnh được hiển thị <sup>23.8</sup>

Thuộc tính công cộng mới [ImageSize](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagesize/) để chỉ định kích thước của hình ảnh được hiển thị theo pixel đã được giới thiệu.

#### Giữ nguyên khoảng trắng cho các giá trị chuỗi JSON – LINQ <sup>23.8</sup>

Một tùy chọn đã được thêm vào Công cụ báo cáo LINQ để duy trì khoảng trắng cho các giá trị chuỗi JSON.

### LowCode <sup>23.6</sup>

Các phương pháp LowCode mới nhằm hợp nhất các loại tài liệu khác nhau thành một tài liệu đầu ra duy nhất đã được thêm vào.

### Khác

* Hỗ trợ gói văn bản trong đầu trang/chân trang đã được triển khai. <sup>23,5</sup>
* Khả năng xóa chữ ký số khỏi tài liệu ODT đã được thêm thông qua phương pháp [RemoveAllSignatures](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/). <sup>23,5</sup>
* Thuộc tính công cộng [PhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/phoneticguide/) để lấy văn bản cơ sở và hồng ngọc của hướng dẫn ngữ âm [Run](https://reference.aspose.com/words/net/aspose.words/run/) đã được thêm vào. <sup>23,5</sup>
* Khả năng truy xuất giá trị chữ ký số từ tài liệu được ký điện tử dưới dạng mảng byte đã được thêm bằng cách giới thiệu thuộc tính [SignatureValue](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/) mới. <sup>23,7</sup>
* Các lớp [Row](https://reference.aspose.com/words/net/aspose.words.tables/row/) và [Cell](https://reference.aspose.com/words/net/aspose.words.tables/cell/) đã được mở rộng với các thành viên công cộng mới – [Row.NextRow](https://reference.aspose.com/words/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/nextcell/) và [Cell.PreviousCell](https://reference.aspose.com/words/net/aspose.words.tables/cell/previouscell/). <sup>23,7</sup>
* Hỗ trợ cho các trường CITATION và BIBLIOGRAPHY đã được thêm vào. <sup>23,8</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 23.5](/words/net/aspose-words-for-net-23-5-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 23.6](/words/net/aspose-words-for-net-23-6-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 23.7](/words/net/aspose-words-for-net-23-7-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 23.8](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words cho .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 cải thiện hiệu suất mô phỏng hoạt động raster, cũng như nâng cao chất lượng xuất và hiển thị tài liệu.

Aspose.Words 23.2 giới thiệu tính năng lưu tài liệu ở định dạng MOBI, cải thiện khả năng hiển thị biểu đồ và thực hiện các thay đổi đáng chú ý đối với chi tiết giao diện tài liệu.

Aspose.Words 23.3 tăng cường nhập và lưu tài liệu với các thuộc tính mới, đồng thời cải thiện chất lượng công việc với màu nền và màu nền trước cũng như độ dốc xuyên tâm.

Aspose.Words 23.4 cải thiện việc tính toán một số tham số cũng như vị trí của bảng và văn bản xung quanh.

### Cải tiến hiệu suất

#### Mô phỏng các hoạt động raster <sup>23.1</sup>

Hiệu suất và chất lượng mô phỏng các hoạt động raster với siêu tệp đã được cải thiện đáng kể.

### Các định dạng được hỗ trợ

#### Xuất sang MOBI <sup>23.2</sup>

Bắt đầu từ phiên bản 23.2, có thể lưu tài liệu ở định dạng MOBI (còn gọi là PRC, AZW – định dạng tệp sách điện tử riêng của Amazon Kindle). Giờ đây, bạn không chỉ có thể tải tài liệu MOBI mà còn có thể xuất các tệp của mình sang định dạng MOBI.

### Kết xuất

#### Làm việc với Màu chủ đề tô bóng <sup>23.1</sup>

Khả năng làm việc với màu chủ đề tô bóng đã được triển khai.

#### Hỗ trợ hệ số bình phương R trong biểu đồ DML <sup>23.1</sup>

Hỗ trợ hệ số bình phương R trong nhãn đường xu hướng của biểu đồ DML khi kết xuất đã được thêm vào.

#### Cải tiến hiển thị biểu đồ <sup>23.2</sup>

Kể từ phiên bản 23.2, việc hiển thị biểu đồ đã được cải thiện đáng kể.

#### Kiểm soát màu nền và tiền cảnh <sup>23.3</sup>

Lớp [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) đã được mở rộng với một tập hợp các thuộc tính công khai mới liên quan đến màu nền và màu nền trước: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/forethemecolor/) và [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/foretintandshade/) và [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/fill/backtintandshade/).

#### Chuyển màu xuyên tâm với `SkiaSharp` Native Shader <sup>23.3</sup>

Việc hiển thị các gradient xuyên tâm bằng trình đổ bóng gốc `SkiaSharp` cho .NET Standard đã được triển khai.

#### Khoảng cách giữa bảng và văn bản xung quanh <sup>23.4</sup>

Khả năng đặt khoảng cách giữa bảng và văn bản xung quanh đã được thêm bằng cách giới thiệu các thuộc tính mới cho lớp [Table](https://reference.aspose.com/words/net/aspose.words.tables/table/): [DistanceLeft](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/net/aspose.words.tables/table/distancetop/) và [DistanceBottom](https://reference.aspose.com/words/net/aspose.words.tables/table/distancebottom/).

### Tải và lưu tài liệu

#### Tạo `TOC` cho tài liệu AZW3 <sup>23.1</sup>

Khả năng tạo `TOC` (mục lục) cho tài liệu AZW3 đã được thêm thông qua việc sử dụng thuộc tính [NavigationMapLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/).

#### Xuất các mục danh sách sang Markdown <sup>23.1</sup>

Một cách để kiểm soát việc xuất các mục danh sách sang định dạng Markdown đã được cung cấp bằng cách thêm thuộc tính [ListExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/listexportmode/) vào lớp [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/).

#### Thông báo tiến trình lưu tài liệu <sup>23.3</sup>

Lưu thông báo tiến trình cho các định dạng MOBI và AZW3 đã được triển khai.

#### Điều chỉnh khoảng cách câu và từ <sup>23.3</sup>

Khả năng chỉ định xem có tự động điều chỉnh khoảng cách giữa các câu và từ khi nhập tài liệu hay không đã được thêm vào bằng cách giới thiệu thuộc tính [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/).

### Khác

* Khả năng chỉ định điều chỉnh khoảng cách ký tự của tài liệu đã được thêm thông qua triển khai thuộc tính [JustificationMode](https://reference.aspose.com/words/net/aspose.words/document/justificationmode/) <sup>23.2</sup>
* Cách hướng dẫn Aspose.Words có bao gồm hộp văn bản, chú thích cuối trang và chú thích cuối trong thống kê số từ đã được cung cấp bằng cách thêm thuộc tính [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) <sup>23.2</sup>
* Một tùy chọn mới cho kiểu tài liệu, cho phép chỉ định xem kiểu đó có được xác định lại tự động hay không dựa trên giá trị thích hợp, đã được giới thiệu thông qua thuộc tính [AutomaticallyUpdate](https://reference.aspose.com/words/net/aspose.words/style/automaticallyupdate/) <sup>23.2</sup>
* Khả năng xác định xem [Run](https://reference.aspose.com/words/net/aspose.words/run/) có phải là hướng dẫn ngữ âm hay không đã được thêm bằng thuộc tính [IsPhoneticGuide](https://reference.aspose.com/words/net/aspose.words/run/isphoneticguide/) <sup>23.4</sup>
* Một cách đơn giản để làm việc với chuỗi và trục của biểu đồ kết hợp đã được triển khai bằng cách giới thiệu lớp [ChartAxisCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartaxiscollection/) và thêm thuộc tính [Chart.Axes](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
* Các thuộc tính công khai mới được kết nối với định vị và kích thước tương đối của hình dạng đã được thêm vào lớp [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) <sup>23.4</sup>
* Độ chính xác và hiệu suất tính toán độ sáng màu cho độ phân giải màu văn bản tự động đã được cải thiện theo phiên bản Microsoft Word <sup>23.4</sup> mới nhất

{{% alert color="primary" %}}

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 23.1](/words/net/aspose-words-for-net-23-1-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 23.2](/words/net/aspose-words-for-net-23-2-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 23.3](/words/net/aspose-words-for-net-23-3-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 23.4](/words/net/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words cho .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 mở rộng các tùy chọn tải và lưu tài liệu cũng như cải thiện khả năng tương tác với một số tùy chọn khác.

Aspose.Words 22.10 cải thiện các tùy chọn tìm và thay thế, nâng cao các đối tượng OLE và mở rộng chức năng danh sách.

Aspose.Words 22.11 mở rộng chức năng của nó với các tùy chọn mới để làm việc thuận tiện hơn với các đối tượng vốn đã quen thuộc: trường, in, OLE và thẻ tài liệu có cấu trúc.

Aspose.Words 22.12 nâng cao khả năng hiển thị và giới thiệu các tùy chọn để làm việc với lề khi tải/lưu tài liệu.

### Cải tiến hiệu suất <sup>22.12</sup>

Một tính năng tối ưu hóa giúp giảm đáng kể độ sâu lồng ghép trạng thái đồ họa khi hiển thị sang PDF để duy trì việc tuân thủ thông số kỹ thuật đã được giới thiệu.

### Kết xuất và in ấn

#### In các trang không có màu trên máy in màu <sup>22.11</sup>

Chế độ in màu/thang độ xám tùy chỉnh đã được triển khai bằng cách thêm giá trị **GrayscaleAuto** mới vào bảng liệt kê [ColorPrintMode](https://reference.aspose.com/words/net/aspose.words.rendering/colorprintmode/).

Thuộc tính in mới cho phép người dùng kiểm soát cách in các trang không có màu nếu thiết bị hỗ trợ in màu. Tính năng này có thể hữu ích nếu người dùng muốn tự động in các trang không có màu chỉ bằng chế độ in thang độ xám.

#### Thuộc tính kết xuất đường viền mới <sup>22.12</sup>

Các thuộc tính công cộng mới [ThemeColor](https://reference.aspose.com/words/net/aspose.words/border/themecolor/) và [TintAndShade](https://reference.aspose.com/words/net/aspose.words/border/tintandshade/) đã được giới thiệu.

#### Công thức đường xu hướng tuyến tính để kết xuất bản vẽML <sup>22.12</sup>

Kết xuất công thức đường xu hướng tuyến tính cho biểu đồ DrawML đã được triển khai.

#### Cài đặt dự phòng phông chữ cho phông chữ Google Noto <sup>22.12</sup>

Cài đặt dự phòng phông chữ được xác định trước cho phông chữ Google Noto đã được cập nhật.

### Tải và lưu tài liệu

#### Hình dạng đầu trang hoặc chân trang trong bộ đệm để giảm kích thước PDF <sup>22.9</sup>

Khả năng lưu hình dạng đầu trang/chân trang vào bộ đệm để giảm kích thước tệp PDF đầu ra đã được triển khai bằng cách thêm thuộc tính **CacheHeaderFooterShapes** mới.

#### Tự động phát hiện đánh số khi tải tài liệu <sup>22.9</sup>

Khả năng chỉ định thuộc tính [AutoNumberingDetection](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/autonumberingdetection/) khi tải văn bản đã được triển khai thông qua lớp [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) mở rộng.

#### Chỉ định loại ký quỹ cụ thể <sup>22.12</sup>

Khả năng chỉ định loại [Margin](https://reference.aspose.com/words/net/aspose.words/pagesetup/margins/) cụ thể cho phần nhất định đã được triển khai.

### Tìm kiếm và so sánh <sup>22.10</sup>

Khả năng bỏ qua [StructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words.markup/structureddocumenttag/) khi có các tùy chọn tìm và thay thế đã được triển khai bằng cách thêm thuộc tính [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorestructureddocumenttags/) mới vào lớp [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/).

### Khác

* Một tính năng mới để lấy FieldEQ làm OfficeMath đã được thêm vào. <sup>22,9</sup>
* Cho phép tạo các thẻ tài liệu có cấu trúc thuộc loại Group ở cấp Hàng. <sup>22,9</sup>
* Các đối tượng và điều khiển OLE hiện được coi là hình ảnh siêu tệp khi chuyển đổi tài liệu sang HTML. <sup>22.10</sup>
* Một tính năng mới để kiểm tra xem danh sách cụ thể có được tạo từ cùng một mẫu với danh sách so sánh hay không đã được thêm bằng cách đưa phương thức [HasSameTemplate](https://reference.aspose.com/words/net/aspose.words.lists/list/hassametemplate/) mới vào lớp [List](https://reference.aspose.com/words/net/aspose.words.lists/list/). <sup>22.10</sup>
* Đã thêm khả năng tạo thẻ tài liệu có cấu trúc mới thuộc loại [Citation](https://reference.aspose.com/words/net/aspose.words.markup/sdttype/). <sup>22.11</sup>
* Khả năng theo dõi tiến trình cập nhật hiện trường đã được cung cấp. <sup>22.11</sup>
* Thuộc tính **EmbedAttachments** mới cho phép người dùng nhúng tệp đính kèm OLE từ tài liệu nguồn vào tài liệu PDF đầu ra đã được giới thiệu. <sup>22.11</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 22.9](/words/net/aspose-words-for-net-22-9-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 22.10](/words/net/aspose-words-for-net-22-10-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 22.11](/words/net/aspose-words-for-net-22-11-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 22.12](/words/net/aspose-words-for-net-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words cho .NET 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 giới thiệu hỗ trợ cho các định dạng tải mới và kích thước trang in mới, cũng như cải thiện một số tùy chọn kết xuất.

Aspose.Words 22.6 mở rộng khả năng chuyển đổi PDF sang các định dạng khác, cũng như cải thiện công việc với DrawML và hiệu ứng điền văn bản rắn.

Aspose.Words 22.7 nâng cao khả năng làm việc với các tính năng kết xuất, đồng thời bổ sung thêm các tính năng mới để làm việc với việc nhập và xuất HTML sang PDF.

Aspose.Words 22.8 giới thiệu định dạng xuất mới và cải thiện các thuật toán kết xuất khác nhau.

API được cải tiến để phát triển linh hoạt và thuận tiện hơn.

### Các định dạng được hỗ trợ

* Hỗ trợ tải tài liệu EPUB và XML đã được giới thiệu bằng cách thêm các giá trị mới vào bảng liệt kê [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/). Bắt đầu từ phiên bản 22.5, có thể tải tài liệu EPUB và XML vào mô hình tài liệu Aspose.Words và chuyển đổi chúng sang bất kỳ [định dạng được hỗ trợ](https://reference.aspose.com/words/net/aspose.words/saveformat/) nào. <sup>22,5</sup>
* Bắt đầu từ phiên bản 22.8, có thể lưu tài liệu ở định dạng AZW3 – định dạng tệp sách điện tử độc quyền của Amazon Kindle (KF8 là tên gọi khác của định dạng). Giờ đây, bạn không chỉ có thể tải tài liệu AZW3 mà còn có thể xuất các tệp của mình sang định dạng AZW3, về cơ bản là một EPUB được biên dịch. <sup>22,8</sup>

### Kết xuất và in ấn

#### Kích thước in mới <sup>22,5</sup>

Hỗ trợ cho kích thước trang in "Phong bì số 10" đã được thêm bằng cách giới thiệu một giá trị mới cho bảng liệt kê [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).

#### Hiển thị Công thức MathML <sup>22.5</sup>

Việc hiển thị hộp viền xung quanh các công thức MathML và phát hiện phông chữ khi hiển thị các ký tự cho các công thức đó đã được cải thiện.

#### Cải tiến biểu đồ DML <sup>22.6</sup>

API công khai của biểu đồ DrawML đã được mở rộng để hỗ trợ tô màu gradient, kết cấu và mẫu.

#### Glyph phác thảo phân tích cú pháp cho OpenType <sup>22.7</sup>

Việc phân tích cú pháp phác thảo glyph của Aspose.Words cho các phông chữ OpenType (CFF) đã được triển khai.

Trước đây, việc phân tích cú pháp glyph cho phông chữ OpenType (CFF) được thực hiện thông qua GDI+. Vì vậy, giờ đây nó hoạt động trong những trường hợp không có GDI+ – Java, nền tảng .NET Standard, Linux OS, v.v. Phân tích cú pháp phác thảo Glyph là bắt buộc trong các trường hợp cụ thể như WordArt, hiệu ứng văn bản, một số tính năng Office Math và các tính năng khác.

#### Đặt định dạng bóng hình dạng <sup>22.7</sup>

Khả năng thiết lập định dạng bóng của đối tượng hình dạng đã được cung cấp bằng cách thêm thuộc tính [ShadowFormat](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/shadowformat/) mới.

#### Hỗ trợ khoảng cách ô trong bảng <sup>22.8</sup>

Công cụ bố trí hiện đã được cải tiến đáng kể: cơ chế giãn cách ô rất phức tạp trong các bảng đã được triển khai.

#### Thay thế phông chữ cho ký hiệu <sup>22.8</sup>

Việc thay thế phông chữ cho các ký hiệu đã được cải thiện.

#### Thuật toán xoay nhãn trục biểu đồ <sup>22.8</sup>

Thuật toán xoay nhãn trục biểu đồ đã được cải thiện.

### Tải và lưu tài liệu

#### Tải và chuyển đổi PDF sang định dạng trang cố định mà không cần Layout Model <sup>22.6</sup>

Khả năng tải và chuyển đổi tài liệu PDF sang các định dạng trang cố định với độ trung thực và hiệu suất cao đã được triển khai.

#### Chế độ nhập HTML mới <sup>22.7</sup>

Chế độ nhập HTML mới cho các phần tử cấp khối đã được giới thiệu bằng cách thêm một giá trị mới vào bảng liệt kê [HtmlInsertOptions](https://reference.aspose.com/words/net/aspose.words/htmlinsertoptions/).

#### Chuyển đổi sang PDF/UA-1 CSompliant với WCAG 2.0 <sup>22.7</sup>

Hỗ trợ chuyển đổi tài liệu sang định dạng PDF/UA-1, tương thích với WCAG 2.0, đã được thêm vào.

Vì vậy, nếu khách hàng có tài liệu Word có thể truy cập và chuyển đổi nó thành PDF/UA-1 thông qua Aspose.Words có đề cập đến thông tin cụ thể về chuyển đổi thì đầu ra sẽ tương thích với WCAG 2.0.

WCAG hay Nguyên tắc truy cập nội dung web là một bộ nguyên tắc được W3C phát triển với sự cộng tác của các cá nhân và tổ chức trên toàn thế giới. Giờ đây với Aspose.Words, bạn có thể chuyển đổi tài liệu của mình sang định dạng PDF/UA-1 đầu ra, phù hợp để xây dựng tài liệu PDF tuân thủ WCAG 2.0.

Điều đáng chú ý là WCAG 2.0 có hai yêu cầu bổ sung không được chỉ định trong đặc tả PDF/UA-1:

* yêu cầu về độ tương phản

* yêu cầu gắn thẻ nội dung đa phương tiện

Nhưng cả hai yêu cầu đều không liên quan đến trường hợp chuyển đổi từ Word sang PDF của chúng tôi.

### Khác

* Ngoại lệ kế thừa hiệu ứng điền văn bản đặc bắt chước hành vi của MS Word đã được triển khai. <sup>22,6</sup>
* Hỗ trợ các trường `DATABASE` đã được thêm vào. Ví dụ: bằng cách sử dụng loại trường này, bạn có thể hiển thị kết quả của truy vấn cơ sở dữ liệu trong bảng Microsoft Word. <sup>22,7</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 22.5](/words/net/aspose-words-for-net-22-5-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 22.6](/words/net/aspose-words-for-net-22-6-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 22.7](/words/net/aspose-words-for-net-22-7-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 22.8](/words/net/aspose-words-for-net-22-8-release-notes/).

{{% /alert %}}

## Xem thêm

{{% alert color="primary" %}}

Trang này chứa các tin tức phát hành mới nhất trong 2 năm qua. Để biết chi tiết về các bản phát hành trước đó, hãy xem trang [Ghi chú phát hành'](/words/net/release-notes/) trong các phần liên quan.

{{% /alert %}}