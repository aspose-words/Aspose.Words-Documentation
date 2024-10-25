---
title: Có gì mới
second_title: Aspose.Words cho C++
articleTitle: Có gì mới trong Aspose.Words cho C++
linktitle: Có gì mới trong Aspose.Words cho C++
type: docs
description: "Aspose.Words cho C++ mở rộng và tăng cường hàng ngày. Trên trang này, bạn có thể tìm hiểu về các tính năng khổng lồ và thú vị nhất của sản phẩm."
weight: 2
url: /vi/cpp/what-s-new-in-aspose-words-for-cpp/
---

Trang này mô tả các tính năng Aspose.Words mới thú vị nhất được giới thiệu trong các bản phát hành gần đây.

## Aspose.Words cho C++ 24.9

Aspose.Words 24.9 giới thiệu group shape chèn và StructuredDocumentTag chèn qua DocumentBuilder, tăng cường kết xuất biểu đồ xuyên tâm với độ tốt nghiệp, cải thiện chữ ký số với XAdES-EPES hỗ trợ, thêm nhận dạng gạch chân Markdown và cung cấp quyền truy cập vào dấu phân cách chú thích/cuối chú thích.

### Kết xuất Và In Ấn

#### Tốt nghiệp Trên Biểu Đồ Xuyên Tâm

Kết xuất tốt nghiệp trên biểu đồ xuyên tâm đã được thực hiện.

### Chuyển đổi, Tải Và Lưu Tài liệu

#### Gạch chân Định dạng Khi Tải Tệp Markdown

Tùy chọn nhận dạng định dạng gạch chân khi tải tài liệu Markdown đã được kết hợp bằng cách thêm thuộc tính công khai mới [ImportUnderlineFormatting]().

### Chữ Ký Số

#### Ký Tài liệu với XAdES-EPES

Khả năng ký tài liệu với XAdES-EPES chữ ký cấp XML-DSig đã được giới thiệu bằng cách thêm một tài sản công cộng mới [XmlDsigLevel]() và một bảng liệt kê công khai mới [XmlDsigLevel]().

### Khác

* Một phương thức công khai mới [InsertGroupShape]() đã được thêm vào group shapes.
* Một phương thức công khai mới [InsertStructuredDocumentTag]() đã được thêm vào để chèn **StructuredDocumentTags** vào tài liệu.
* Quyền truy cập công khai vào các dấu phân cách chú thích/cuối chú thích đã được cung cấp bằng cách thêm một vài lớp và thuộc tính công khai.

{{% alert color="primary" %}}

Tìm hiểu thêm về [Aspose.Words cho C++ 24.9 Ghi Chú Phát Hành](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words cho C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 mở rộng các tùy chọn cho hội đồng, cải thiện khả năng kết xuất và mở rộng một số tùy chọn khác.

Aspose.Words 24.6 cải thiện các tùy chọn kết xuất, tăng cường chức năng tìm kiếm và so sánh và mở rộng một số tính năng khác.

Aspose.Words 24.7 thay đổi cách Bạn làm việc Với ActiveX, mở rộng khả năng kết xuất, cũng như xuất sang các định dạng Markdown và XLSX.

### Các Định Dạng Được Hỗ Trợ

Bắt đầu từ phiên bản 24.7, xuất sang PDF/UA-2 được hỗ trợ để đảm bảo khả năng tiếp cận cho người dùng khuyết tật.

### Kết xuất Và In Ấn

#### Thay đổi Trong Biểu Đồ, Hình dạng và DrawingML <sup>24.5</sup>

- DrawingML hiệu ứng vẽ cho SVG đồ họa, mở rộng chức năng trước đó giới hạn hình ảnh, đã được thực hiện.
- Hỗ trợ tạo biểu đồ kết hợp và điều chỉnh các thuộc tính như độ rộng khoảng cách, chồng chéo và tỷ lệ bong bóng trong các nhóm chuỗi đã được giới thiệu bằng cách thêm các lớp **ChartSeriesGroup** và **ChartSeriesGroupCollection** và thuộc tính **SeriesGroups**.
- Chức năng thao tác hiệu ứng SoftEdge của các hình dạng đã được thực hiện bằng cách thêm lớp **SoftEdgeFormat**.
- Khả năng sửa đổi các giá trị điều chỉnh của các hình dạng đã được thực hiện bằng cách thêm thuộc tính **AdjustmentCollection** và **Adjustment** public classes và **Adjustments**.

#### Thay đổi Trong Biểu Đồ, Hình dạng Và Bản Vẽ <sup>24.6</sup>

- Khả năng biểu đồ đã được tăng cường. Bây giờ bạn có thể tạo ra một loạt các biểu đồ, bao gồm *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* biểu đồ, *Box & Whisker* biểu đồ, *Waterfalls* và *Funnels*. Điều này cho phép bạn hình dung dữ liệu của mình một cách đa dạng và nhiều thông tin hơn.
- Kiểm soát màu sắc cho định dạng bóng đã được cải thiện. Bạn có thể kiểm soát chính xác hơn sự xuất hiện của tài liệu của mình bằng cách truy cập màu bóng.
- Tăng hiệu suất cho kết xuất nền đã được cải thiện. Bạn có thể tăng tốc đáng kể việc hiển thị các hình nền có chứa các yếu tố nhỏ nhờ công nghệ ốp lát gốc.
- Gradient thực tế cho hình dạng đã được thêm vào. Bây giờ bạn có thể tạo DML hình dạng với độ dốc phi tuyến tính, bắt chước phong cách trực quan của Microsoft Word để có một cái nhìn bóng bẩy hơn.

#### Tùy Chỉnh Nhãn Dữ Liệu Biểu Đồ <sup>24.7</sup>

Khả năng tùy chỉnh các nhãn dữ liệu biểu đồ như **Orientation** và **Rotation** đã được thêm vào.

#### Tạo Kiểu Số tùy chỉnh Cho Các Cấp Danh Sách <sup>24.7</sup>

Một setter cho tài sản công cộng [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/) đã được thêm vào. Bây giờ bạn có thể xác định kiểu dáng số tùy chỉnh cho các cấp danh sách.

#### Những thay đổi khi làm Việc Với ActiveX <sup>24.7</sup>

- Các thuộc tính Của Các đối tượng ActiveX hiện có thể được sửa đổi, giúp bạn kiểm soát nhiều hơn hành vi của chúng.
- Khả năng sửa đổi giá trị của nút radio Điều khiển ActiveX để cho phép tương tác động đã được thêm vào.
- Khả năng chuyển đổi Hộp Kiểm ActiveX thành "đã chọn" hoặc "chưa chọn" đã được thêm vào.

### Tải Và Lưu Tài liệu

#### Xuất Liên kết sang định dạng Markdown <sup>24.7</sup>

Khả năng kiểm soát việc xuất các liên kết ở định dạng Markdown đã được thêm vào thông qua việc triển khai thuộc tính [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/).

### Tìm kiếm Và So sánh

#### Tùy Chọn So Sánh Nâng Cao <sup>24.6</sup>

Khả năng hợp lý hóa quy trình phân tích dữ liệu với chức năng so sánh được cải thiện đã được thêm vào. Điều này bao gồm một tùy chọn **IgnoreStoreItemId** mới và giao diện được thiết kế lại để so sánh nâng cao.

### Khác

- Chức năng loại bỏ các trang trống khỏi tài liệu đã được triển khai bằng cách thêm phương thức [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/). <sup>24.5</sup>
- Khả năng kiểm tra sự hiện diện của các macro VBA mà không cần tải tài liệu đã được cung cấp bằng cách thêm thuộc tính **HasMacros**. <sup>24.5</sup>
- Một thuộc tính **DateTimeUtc** mới đã được thêm vào – điều này cung cấp dấu thời gian chính xác hơn cho các nhận xét, cải thiện tổ chức và truy xuất nguồn gốc. <sup>24.6</sup>
- Định dạng datetime hiện được tự động phát hiện để xuất liền mạch sang định dạng XLSX. <sup>24.7</sup>
- Tài sản công cộng [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), cho phép bạn xác minh xem dự án VBA có được bảo vệ hay không, đã được thêm vào. <sup>24.7</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Aspose.Words cho C++ 24.5 Ghi Chú Phát Hành](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

Tìm hiểu thêm về [Aspose.Words cho C++ 24.6 Ghi Chú Phát Hành](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

Tìm hiểu thêm về [Aspose.Words cho C++ 24.7 Ghi Chú Phát Hành](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words cho C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 cải thiện trải nghiệm xung quanh việc quản lý màu đột quỵ, tăng cường các đối tượng OLE, cũng như giới thiệu Một Nguồn thư mục mới công khai API.

Aspose.Words 24.2 Biểu đồ mở rộng API và quản lý phong cách. Phiên bản này của Aspose.Words cũng giới thiệu khả năng chỉ định SvgSaveOptions trong quá trình kết xuất, kiểm soát linh hoạt hơn tải tệp Markdown và làm việc với văn bản tham chiếu cho chú thích cuối trang và chú thích cuối trang.

Aspose.Words 24.3 giới thiệu Mô Phỏng các hoạt động raster nhị phân cho WMF metafiles và cũng tiếp tục mở rộng Các Biểu đồ API.

Aspose.Words 24.4 tăng cường một số tùy chọn kết xuất, cũng như cải thiện công việc với chữ ký số.

### Kết xuất Và In Ấn

#### Kiểm Soát Màu Đột Quỵ <sup>24.1</sup>

Lớp [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) đã được mở rộng với một tập hợp các thuộc tính công khai mới liên quan đến quản lý màu đột quỵ: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) và [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) và [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### Biểu Đồ DrawingML API Mở Rộng <sup>24.2 / 24.3 / 24.4</sup>

**DrawingML Charts API** tiếp tục được mở rộng.

#### Nhúng Phông Chữ Được Khai báo trong Quy tắc @font-face <sup>24.4</sup>

Đã thêm khả năng nhúng phông chữ được khai báo trong quy tắc @font-face vào các định nghĩa phông chữ của tài liệu kết quả đã được giới thiệu bằng cách thêm thuộc tính [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/) mới.

#### Làm việc Với Định dạng Phát sáng và Phản xạ <sup>24.4</sup>

Khả năng làm việc với định dạng phát sáng và phản xạ cho một đối tượng vẽ đã được thực hiện.

### Tải Và Lưu Tài liệu

#### Chỉ Định SvgSaveOptions Trong Quá Trình Kết Xuất <sup>24.2</sup>

Khả năng chỉ định [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) trong quá trình kết xuất đã được thêm vào bằng cách sử dụng [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) và [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) phương pháp.

#### Giữ Nguyên Các Dòng Trống khi Tải tệp Markdown <sup>24.2</sup>

Khả năng bảo toàn các dòng trống khi tải tệp Markdown đã được thêm vào.

### Khác

- Khả năng sửa đổi văn bản của điều khiển `TextBox` OLE đã được giới thiệu bằng cách thêm thuộc tính **Text** mới vào lớp **TextBoxControl** mới. <sup>24.1</sup>
- Các Nguồn thư mục công khai API đã được triển khai thông qua việc thêm một không gian tên mới [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) với các lớp và bảng liệt kê mới của nó và thông qua việc thêm thuộc tính [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) mới vào lớp [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). <sup>24.1</sup>
- Các thuộc tính công cộng mới [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) và [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) để quản lý kiểu nâng cao đã được thêm vào lớp [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). <sup>24.2</sup>
- Chức năng truy xuất văn bản đánh dấu tham chiếu thực tế cho chú thích cuối trang và chú thích cuối trang đã được nâng cao với thuộc tính [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) và phương thức [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- Mô phỏng các hoạt động raster nhị phân cho WMF metafiles đã được thực hiện. <sup>24.3</sup>
- Khả năng xác định các tùy chọn chữ ký cho tài liệu trong **SaveOptions** đã được bật bằng cách thêm lớp **DigitalSignatureDetails** mới với các thành viên công cộng mới, cũng như thêm các thuộc tính mới vào các lớp [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) và [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Aspose.Words cho C++ 24.1 Ghi Chú Phát Hành](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

Tìm hiểu thêm về [Aspose.Words cho C++ 24.2 Ghi Chú Phát Hành](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

Tìm hiểu thêm về [Aspose.Words cho C++ 24.3 Ghi Chú Phát Hành](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

Tìm hiểu thêm về [Aspose.Words cho C++ 24.4 Ghi Chú Phát Hành](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words cho C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 mở rộng các tùy chọn kết xuất, mô phỏng kết xuất metafile và markdown lưu các tùy chọn.

Aspose.Words 23.10 cải thiện kết xuất, mở rộng các tùy chọn để tải và lưu tài liệu và cho phép người dùng hợp nhất tài liệu theo những cách mới.

Aspose.Words 23.11 tăng cường công việc với các bản sửa đổi, XLSX định dạng và phông chữ trên chú giải biểu đồ với các tùy chọn bổ sung.

Aspose.Words 23.12 giới thiệu các thuộc tính và bảng liệt kê mới để làm việc với các tài liệu PDF và OOXML, cũng như hỗ trợ cho hình ảnh WebP.

### Kết xuất Và In Ấn

#### Tùy Chỉnh Tiêu Đề Trục Trong Biểu đồ DrawingML <sup>23.9</sup>

Khả năng tùy chỉnh tiêu đề trục Trong Biểu đồ DrawingML đã được giới thiệu bằng cách triển khai thuộc tính lớp công cộng **ChartAxisTitle** và [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/) mới.

#### Xác Định Vị Trí Dọc Của Phông chữ trong Một Đoạn văn <sup>23.9</sup>

Bây giờ có thể xác định vị trí dọc của phông chữ trong một đoạn bằng cách sử dụng thuộc tính [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) công khai mới và liệt kê [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/) mới.

#### Kiểm Soát Màu Nền Trước <sup>23.10</sup>

Khả năng lấy màu nền trước mà không cần sửa đổi đã được thêm vào các lớp [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) và [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) thông qua thuộc tính **BaseForeColor**.

#### Mở Rộng Chức năng Của Biểu đồ <sup>23.10</sup>

Chức năng của các lớp [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) và [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) đã được mở rộng với các phương thức và thuộc tính mới.

#### Tự Động Điều chỉnh Và Phù hợp Với Một Hình ảnh Thành Một Hình Dạng <sup>23.10</sup>

Một cách đơn giản để tự động điều chỉnh và phù hợp với hình ảnh trong một hình dạng cụ thể đã được cung cấp thông qua phương thức [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/) mới.

#### Định dạng phông chữ mặc định Cho DrawingML Chart Legend Entries <sup>23.11</sup>

Khả năng chỉ định định dạng phông chữ mặc định cho các mục chú giải Của Biểu đồ DrawingML đã được thêm vào thông qua thuộc tính [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/). Tính năng này tạo điều kiện cho sự xuất hiện hợp lý và nhất quán hơn cho các yếu tố biểu đồ, cải thiện tính thẩm mỹ tài liệu tổng thể.

#### Chỉ Định Bố Cục Trang Khi Mở PDF Trong Trình Đọc <sup>23.12</sup>

Khả năng chỉ định bố cục trang sẽ được sử dụng khi mở tài liệu trong trình đọc PDF đã được thêm vào thông qua việc giới thiệu thuộc tính **PageLayout** mới vào lớp [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) và giới thiệu liệt kê **PdfPageLayout** mới.

### Tải Và Lưu Tài liệu

#### Chỉ Định Tên Thư Mục Để Xây Dựng Hình ảnh URIs trong Markdown <sup>23.9</sup>

Lớp [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) đã được mở rộng bằng cách bao gồm thuộc tính [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/), cho phép chỉ định tên của thư mục được sử dụng để xây dựng hình ảnh URIs được ghi vào tài liệu Markdown.

#### Giảm Kích Thước Đầu Ra PDF <sup>23.10</sup>

Các tối ưu hóa kết xuất PDF khác nhau để giảm kích thước đầu ra khi sử dụng cài đặt [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/) đã được triển khai.

#### Nhận Dạng Siêu Liên kết Khi Tải Tài Liệu TXT <sup>23.10</sup>

Tính năng nhận dạng siêu liên kết khi tải tài liệu TXT đã được triển khai bằng cách thêm thuộc tính [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/) mới.

### Khác

- Mô phỏng kết xuất Metafile để xác định kích thước rasterization đã được thực hiện, cụ thể cho WMF chiều rộng bút và EMF chiều rộng bút mỹ phẩm. Để đạt được điều này, thuộc tính **ScaleWmfFontsToMetafileSize** đã được thay thế bằng thuộc tính [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) và thuộc tính [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/) đã được thêm vào. <sup>23.9</sup>
* Một phương pháp đơn giản để chèn một tài liệu vào một tài liệu khác ở vị trí con trỏ hiện tại đã được giới thiệu bằng phương thức [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* Khả năng truy cập và sửa đổi thuộc tính kiểu đã được thêm vào thông qua việc giới thiệu thuộc tính [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/) mới. <sup>23.10</sup>
* Một tham số loại chung đã được thêm vào các phương thức của lớp [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/). <sup>23.10</sup>
* Một cách để kiểm soát khi một sửa đổi nhất định nên được chấp nhận/từ chối hoặc không được thực hiện bằng cách sử dụng [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) và [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/) phương pháp. Cải tiến này cho phép người dùng kiểm soát tốt hơn quá trình sửa đổi. <sup>23.11</sup>
* Khả năng ghi tất cả các phần của tài liệu vào cùng một bảng tính XLSX đã được cung cấp thông qua kiểu liệt kê [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) mới và thuộc tính [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/) mới. <sup>23.11</sup>
* Một cách để kiểm soát cách ZIP64 phần mở rộng định dạng sẽ được sử dụng cho OOXML tài liệu đã được triển khai thông qua thuộc tính Zip64Mode mới của lớp `OoxmlSaveOptions` và liệt kê Zip64Mode mới. <sup>23.12</sup>
* Hỗ trợ cho WebP hình ảnh đã được giới thiệu. Xin lưu ý rằng tính năng này chỉ có sẵn cho .NetStandart và .NET6 + phiên bản. <sup>23.12</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Aspose.Words cho C++ 23.9 Ghi Chú Phát Hành](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
Tìm hiểu thêm về [Aspose.Words cho C++ 23.10 Ghi Chú Phát Hành](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
Tìm hiểu thêm về [Aspose.Words cho C++ 23.11 Ghi Chú Phát Hành](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
Tìm hiểu thêm về [Aspose.Words cho C++ 23.12 Ghi Chú Phát Hành](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Xem Thêm

{{% alert color="primary" %}}

Trang này chứa các tin tức phát hành mới nhất trong quá khứ 2 năm. Để biết chi tiết về các bản phát hành trước đó, hãy xem [Ghi Chú Phát Hành'](/words/cpp/release-notes/) các trang trong các phần có liên quan.

{{% /alert %}}