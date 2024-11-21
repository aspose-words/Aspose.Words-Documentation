---
title: Những gì mới mẻ
second_title: Aspose.Words cho Java
articleTitle: Những gì mới trong Aspose.Words cho Java
linktitle: Những gì mới trong Aspose.Words cho Java
type: docs
description: "Aspose.Words để Java mở rộng và nâng cao thường ngày. Trên trang này, bạn có thể tìm hiểu về các tính năng lớn và thú vị nhất của sản phẩm."
weight: 2
url: /vi/java/what-s-new-in-aspose-words-for-java/
timestamp: 2024-10-14-12-53-06
---

Trang này mô tả các tính năng mới thú vị nhất Aspose.Words được đưa vào trong các bản phát hành gần đây.

## Aspose.Words cho Java 24.9, 24.10

Aspose.Words 24.9 giới thiệu tính năng chèn hình dạng nhóm và chèn StructuredDocumentTag thông qua DocumentBuilder, cải thiện khả năng hiển thị biểu đồ hình tròn với các vạch chia độ, cải thiện chữ ký số với hỗ trợ XAdES-EPES, thêm tính năng nhận dạng gạch chân Markdown và cung cấp quyền truy cập vào các dấu phân cách chú thích cuối trang/chú thích cuối trang.

Aspose.Words 24.10 giới thiệu hỗ trợ điều khiển ActiveX nâng cao với tính năng tạo CommandButton, điều khiển khả năng hiển thị hình dạng mới, khả năng nhóm hình dạng, cải thiện khả năng xuất Markdown cho bảng, định dạng biểu đồ cho biểu đồ Pie và Doughnut, xử lý mã hóa Big5 tốt hơn và hỗ trợ phông chữ Đài Loan lỗi thời.

### Hiển thị và in

#### Vạch chia độ trên biểu đồ hình tròn <sup>24.9</sup>

Đã triển khai khả năng hiển thị vạch chia độ trên biểu đồ hình tròn.

#### CommandButton ActiveX Controls <sup>24.10</sup>

Khả năng tạo các điều khiển CommandButton ActiveX đã được giới thiệu bằng cách thêm một phương thức công khai mới [InsertForms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertForms2OleControl-com.aspose.words.Forms2OleControl) và một lớp công khai mới [Forms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/forms2olecontrol/).

#### Kiểm soát khả năng hiển thị hình dạng <sup>24.10</sup>

Một thuộc tính công khai mới [Hidden](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getHidden) đã được thêm vào để kiểm soát khả năng hiển thị của hình dạng.

#### Thay đổi trong Biểu đồ hình tròn và hình bánh rán <sup>24.10</sup>

Một số thuộc tính công khai mới đã được thêm vào để định dạng biểu đồ hình tròn và hình bánh rán.

### Chuyển đổi, Tải và Lưu Tài liệu

#### Định dạng Gạch chân khi Tải Tệp Markdown <sup>24.9</sup>

Tùy chọn nhận dạng định dạng gạch chân khi tải tài liệu Markdown đã được tích hợp bằng cách thêm thuộc tính công khai mới [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting).

#### Xuất bảng dưới dạng HTML khi lưu vào Markdown <sup>24.10</sup>

Tùy chọn xuất bảng dưới dạng HTML khi lưu tài liệu vào định dạng Markdown đã được triển khai bằng cách thêm thuộc tính công khai mới [ExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportAsHtml) và phép liệt kê [MarkdownExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownexportashtml/).

### Chữ ký số

#### Ký tài liệu bằng XAdES-EPES <sup>24.9</sup>

Khả năng ký tài liệu bằng chữ ký XML-DSig cấp XAdES-EPES đã được giới thiệu bằng cách thêm thuộc tính công khai mới [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel) và phép liệt kê công khai mới [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)

### Khác

* Một phương thức công khai mới [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...) đã được thêm vào nhóm hình dạng. <sup>24.9</sup>
* Một phương thức công khai mới [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int) đã được thêm vào để chèn **StructuredDocumentTags** vào tài liệu. <sup>24.9</sup>
* Quyền truy cập công khai vào các dấu phân cách chú thích cuối trang/chú thích cuối trang đã được cung cấp bằng cách thêm một số lớp và thuộc tính công khai. <sup>24.9</sup>
* Khả năng nhóm các hình dạng riêng lẻ, nhóm các hình dạng lại với nhau và nhóm trực tiếp cả hai hình dạng và nhóm các hình dạng đã được giới thiệu bằng cách thêm phương thức [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-double-double-double-double-com.aspose.words.ShapeBase...). <sup>24.10</sup>
* Xử lý mã hóa Big5 cho các bảng cmap TrueType đã được cải thiện. <sup>24.10</sup>
* Hỗ trợ cho các phông chữ Đài Loan lỗi thời đã được cải thiện. <sup>24.10</sup>

{{% alert color="primary" %}}

Học thêm về [Aspose.Words for Java 24.9 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

Học thêm về [Aspose.Words for Java 24.10 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words cho Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 mở rộng các tùy chọn cho việc lắp ráp, cải thiện khả năng hiển thị và mở rộng một số tùy chọn khác.

Aspose.Words 24.6 cải thiện các tùy chọn hiển thị, tăng cường chức năng tìm kiếm và so sánh, và mở rộng một số tính năng khác.

Aspose.Words 24.7 thay đổi cách bạn làm việc với ActiveX, mở rộng khả năng hiển thị cũng như xuất sang các định dạng Markdown và XLSX.

Aspose.Words 24.8 nâng cao tùy biến biểu đồ với sự kiểm soát chính xác các nhãn trục, mở rộng quản lý phông chữ, cải thiện xử lý cấu trúc tài liệu và thêm khả năng mới cho xuất HTML/XAML, chức năng PDF, chuyển đổi tài liệu và chữ ký số.

### Định Dạng Hỗ Trợ

Bắt đầu từ phiên bản 24.7, xuất sang định dạng PDF/UA-2 được hỗ trợ để đảm bảo khả năng tiếp cận cho người dùng bị khuyết tật.

### Vẽ và In

#### Thay đổi trong biểu đồ, hình dạng và DrawingML <sup>24.5</sup>

- Hiệu ứng DrawingML đã được thực hiện để hiển thị đồ họa SVG mở rộng chức năng trước đây giới hạn trong hình ảnh.
- Hỗ trợ tạo biểu đồ cột và điều chỉnh các thuộc tính như khoảng cách, chồng chéo và thước bơm trong nhóm loạt đã được giới thiệu bằng cách thêm các lớp [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) và [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) và thuộc tính [SeriesGroups](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeriesGroups).
"- Chức năng để thao tác với hiệu ứng SoftEdge của hình dạng đã được thực hiện bằng cách thêm lớp [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/)."
- Khả năng điều chỉnh giá trị của hình đã được thực hiện bằng cách thêm các lớp công khai [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) và [Adjustment](https://reference.aspose.com/words/java/com.aspose.words/adjustment/) và thuộc tính [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments).

#### Thay đổi về Biểu đồ, Hình dạng và Vẽ <sup>24.6</sup>

- Khả năng lập biểu đồ đã được tăng cường. Bạn hiện có thể tạo ra một loạt các biểu đồ đa dạng hơn, bao gồm *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* biểu đồ, *Box & Whisker* biểu đồ, *Waterfalls* và *Funnels*. Điều này cho phép bạn trực quan hóa dữ liệu theo cách đa dạng và thông tin hơn.
"- Điều khiển màu sắc cho định dạng bóng đã được cải thiện." Bạn có thể kiểm soát chính xác hơn về sự xuất hiện của tài liệu của bạn bằng cách truy cập màu bóng.
- Tăng hiệu suất cho việc xử lý ở chế độ nền đã được cải thiện. Bạn có thể tăng tốc đáng kể việc vẽ nền chứa các phần tử nhỏ nhờ công nghệ lát bản địa.
"- Các hình dạng có gradient thực tế đã được thêm vào." Bạn có thể tạo ra các hình dạng DML với các gradient phi tuyến, bắt chước phong cách thị giác của Microsoft Word để tạo một kiểu dáng hoàn thiện hơn.

#### Thay đổi nhãn dữ liệu trong biểu đồ <sup>24.7</sup>

Tính năng tùy biến nhãn dữ liệu biểu đồ như **Orientation** và **Rotation** đã được thêm vào.

#### Custom Number Styling cho các cấp số trong danh sách <sup>24.7</sup>

Một setter cho thuộc tính công khai [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) đã được thêm vào. Bạn có thể định nghĩa một kiểu số tùy chỉnh cho các cấp độ danh sách.

#### Thay đổi khi làm việc với ActiveX <sup>24.7</sup>

"* Các thuộc tính của đối tượng ActiveX hiện có thể được sửa đổi, cho phép bạn kiểm soát hành vi của chúng tốt hơn."
* Khả năng sửa đổi giá trị của nút radio ActiveX để cho phép tương tác động lực đã được thêm.
* Khả năng chuyển đổi một hộp kiểm ActiveX để "có dấu kiểm" hoặc "không có dấu kiểm" đã được thêm vào.

#### Kiểm soát các nhãn trục bảng và hướng và xoay <sup>24.8</sup>

Chức năng điều khiển chính xác về hướng và độ xoay của nhãn trục biểu đồ đã được thêm vào để tạo điều kiện thuận lợi hơn cho việc tùy chỉnh biểu đồ - lớp [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) đã được mở rộng với các thuộc tính mới **Orientation** và **Rotation**.

#### Thay thế dấu Backslash bằng dấu Yên <sup>24.8</sup>

Tính tương thích ngược của HTML và XAML xuất cho việc thay thế ký tự backslash bằng ký hiệu yên đã được cải thiện. Để đạt được điều này, thuộc tính **ReplaceBackslashWithYenSign** đã được thêm vào lớp [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) và [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/).

#### Sử dụng thẻ SDT làm tên trường biểu mẫu khi xuất sang PDF <sup>24.8</sup>

Xuất PDF với hỗ trợ sử dụng các thẻ SDT làm tên trường biểu mẫu đã được cải thiện bằng cách thêm thuộc tính **UseSdtTagAsFormFieldName** mới vào lớp [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Chuyển đổi, Tải và Lưu các Tài liệu

#### Xuất xuất Liên kết sang Markdown Định dạng <sup>24.7</sup>

Khả năng kiểm soát xuất các liên kết ở định dạng Markdown đã được thêm thông qua việc thực hiện thuộc tính [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode 24.8 <sup>24.8</sup>

Một lớp mới **LowCode.Converter**, được thiết kế để cung cấp một bộ phương pháp chuyển đổi các loại tài liệu khác nhau với một dòng mã duy nhất, đã được giới thiệu.

### Tìm kiếm và So sánh

#### Tùy chọn so sánh nâng cao <sup>24.6</sup>

Khả năng để đơn giản hóa dòng công việc phân tích dữ liệu với chức năng so sánh được cải thiện đã được thêm vào. Điều này bao gồm một lựa chọn [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) mới và giao diện được thiết kế lại cho các so sánh nâng cao.

### Khác

* Hàm xóa các trang rỗng trong tài liệu đã được thực hiện bằng cách thêm [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages) phương pháp. <sup>24.5</sup>
"* Khả năng kiểm tra sự hiện diện của các macro VBA mà không cần phải tải một tài liệu đã được cung cấp bằng cách thêm thuộc tính [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros)." <sup>24.5</sup>
* Giữ số nguồn trong khi chèn một tài liệu bằng Trình tạo báo cáo LINQ hiện được hỗ trợ <sup>24.5</sup>
"* Một thuộc tính mới [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) đã được thêm vào – điều này cung cấp thời gian đánh dấu chính xác hơn cho các bình luận, cải thiện tổ chức và khả năng theo dõi." <sup>24.6</sup>
"* Động cơ báo cáo LINQ đã được cải thiện." Chọn lọc loại bỏ các đoạn văn trống và định nghĩa tin nhắn tùy chỉnh cho các thành viên đối tượng bị thiếu đã được thực hiện, dẫn đến báo cáo sạch sẽ hơn và có thông tin hơn. <sup>24.6</sup>
* Định dạng ngày giờ hiện tại tự động được phát hiện để xuất liền mạch sang định dạng XLSX. <sup>24.7</sup>
* Tài sản công khai [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), cho phép bạn xác minh xem một dự án VBA có được bảo vệ hay không, đã được thêm vào. <sup>24.7</sup>
* Thông tin phông chữ đã được mở rộng với thuộc tính **EmbeddingLicensingRights** đã thêm vào các lớp [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) và [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* Một cách để làm sạch hiệu quả các tiêu đề và chân trang trong khi giữ lại dấu nước đã được thêm vào để làm việc chính xác hơn với cấu trúc tài liệu. Để xóa tiêu đề và chân trang, sử dụng phương thức công khai mới **ClearHeadersFooters**. <sup>24.8</sup>
"* Chữ ký số của XPS tài liệu bằng [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) đã được kích hoạt – một thuộc tính mới **DigitalSignatureDetails** đã được thêm vào cho mục đích này." <sup>24.8</sup>

{{% alert color="primary" %}}

Học thêm về [Aspose.Words for Java 24.5 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

Học thêm về [Aspose.Words for Java 24.6 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

Học thêm về [Aspose.Words for Java 24.7 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

Học thêm về [Aspose.Words for Java 24.8 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words cho Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 cải thiện trải nghiệm quản lý màu vẽ, tăng cường đối tượng OLE và báo cáo LINQ cũng như giới thiệu nguồn thư viện công khai API.

Aspose.Words 24.2 mở rộng Biểu đồ API, quản lý phong cách và tùy chọn LINQ Phiên bản này của Aspose.Words cũng giới thiệu khả năng chỉ định các tùy chọn SvgSaveOptions trong quá trình hiển thị, kiểm soát linh hoạt hơn để tải Markdown và làm việc với văn bản tham khảo cho ghi chú chân trang và chú thích.

Aspose.Words 24.3 giới thiệu một TiffReader/Writer mới và Emulation của các hoạt động rô-tơ nhị phân cho WMF metafiles. Aspose.Words 24.3 cũng tiếp tục mở rộng Bảng API.

Aspose.Words 24.4 nâng cao định dạng lưu, một số tùy chọn hiển thị, cũng như cải thiện làm việc với chữ ký số.

### Định dạng được hỗ trợ <sup>24.4</sup>

Định dạng ảnh hiện đại **WebP** hiện nay đã được hỗ trợ trong Aspose.Words. Bạn hiện nay có thể đọc và chèn WebP hình ảnh vào tài liệu, cũng như lưu hình ảnh ở định dạng WebP.

### Vẽ và In

#### Kiểm soát màu sắc viền <sup>24.1</sup>

Lớp [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) đã được mở rộng với một tập hợp các thuộc tính công khai mới liên quan đến quản lý màu nét: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) và [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) và [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### Biểu đồ DrawingML API Mở rộng <sup>24.2 / 24.3 / 24.4</sup>

The **DrawingML Charts API** tiếp tục được mở rộng.

#### Nhúng phông chữ được khai báo trong các quy tắc @font-face <sup>24.4</sup>

Nêm thêm khả năng nhúng phông chữ được khai báo trong các quy tắc @font-face vào định nghĩa phông chữ của tài liệu kết quả đã được thực hiện bằng cách thêm một thuộc tính mới [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### Làm việc với Glow và Reflection formatting <sup>24.4</sup>

Khả năng làm việc với định dạng phản chiếu cho một đối tượng vẽ đã được thực hiện.

### Đang Tải và Lưu Tài liệu

#### Chỉ định SvgSaveOptions Trong Quá Trình Xử Lý <sup>24.2</sup>

Khả năng chỉ định [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) trong quá trình hiển thị đã được thêm vào bằng các phương pháp [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) và [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions).

#### Bảo tồn các dòng trống khi tải Markdown tập tin <sup>24.2</sup>

Khả năng giữ nguyên các dòng trống khi tải Markdown tập tin đã được thêm vào.

#### A New TIFF Reader/Writer <sup>24.3</sup>

Một trình đọc/ghi TIFF mới cho Aspose.Words cho .NET Standard, .NET 6 và các phiên bản sau đã được phát triển. Aspose.Words cho .NET 24.3 đã thêm hỗ trợ để đọc hình ảnh TIFF với các loại nén JPEG và Old JPEG, và cũng cải thiện đáng kể chất lượng của các hoạt động đọc và ghi.

### Khác

* Khả năng chỉnh sửa văn bản của `TextBox` Ole Control đã được đưa vào bằng cách thêm một thuộc tính mới [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) vào lớp mới [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/). 24.1 <sup>24.1</sup>
* The Bibliography Sources public API được thực hiện bằng cách thêm vài lớp mới [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) và [Person](https://reference.aspose.com/words/java/com.aspose.words/person/), một liệt kê mới [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) cũng như thêm thuộc tính mới [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) vào lớp [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). <sup>24.1</sup>
* Một API để giới hạn quyền truy cập vào thành viên kiểu sử dụng cú pháp mẫu cho động cơ báo cáo LINQ đã được cung cấp. <sup>24.1</sup>
"* Các thuộc tính công cộng mới [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), và [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) cho quản lý phong cách nâng cao đã được thêm vào lớp [Style](https://reference.aspose.com/words/net/aspose.words/style/)." <sup>24.2</sup>
* Chức năng để lấy văn bản đánh dấu tham khảo thực tế cho chú thích và ghi chú cuối trang đã được nâng cao với thuộc tính [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) và phương pháp [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
"* Tương thích với `Word 2016` biểu đồ cho `LINQ Reporting Engine` đã được kích hoạt." <sup>24.2</sup>
* Việc mô phỏng hoạt động rasters nhị phân cho các tập tin WMF đã được thực hiện. <sup>24.3</sup>
* Khả năng định nghĩa các tùy chọn chữ ký cho tài liệu trong **SaveOptions** đã được kích hoạt bằng cách thêm một lớp mới [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) với các thành viên công khai cũng như thêm các thuộc tính mới vào các lớp [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) và [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Học thêm về "[Aspose.Words for Java 24.1 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/)".

Học thêm về [Aspose.Words for Java 24.2 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/).

Học thêm về [Aspose.Words for Java 24.3 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/).

Học thêm về [Aspose.Words for Java 24.4 Release Notes](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words cho Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 mở rộng các tùy chọn hiển thị, mô phỏng hiển thị tệp siêu dữ liệu, và markdown các tùy chọn lưu.

Aspose.Words 23.10 cải thiện việc hiển thị, mở rộng các tùy chọn để tải và lưu tài liệu, cho phép người dùng kết hợp tài liệu theo những cách mới.

Aspose.Words 23.11 nâng cao công việc với các sửa đổi, định dạng XLSX và phông chữ trên biểu đồ huyền thoại với các tùy chọn bổ sung.

Aspose.Words 23.12 đưa ra các thuộc tính mới và danh sách để làm việc với các tài liệu PDF, hỗ trợ cho hình ảnh WebP, và thư viện Bouncy Castle được cập nhật.

### In và in ấn

#### Tùy chỉnh Tiêu đề trục trong biểu đồ DrawingML <sup>23.9</sup>

Khả năng tùy chỉnh tiêu đề trục trong các biểu đồ DrawingML đã được giới thiệu với việc thực hiện một lớp công cộng mới [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) và thuộc tính [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle).

#### Xác định vị trí dọc của các phông chữ trong một đoạn văn <sup>23.9</sup>

Bây giờ có thể định nghĩa vị trí dọc của phông chữ trong một đoạn văn bằng thuộc tính công khai mới [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) và bản liệt kê mới [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/).

#### Màu sắc phía trước Control <sup>23.10</sup>

Khả năng truy xuất màu nền mà không cần các biến đổi đã được thêm vào các lớp [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) và [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) thông qua thuộc tính **BaseForeColor**.

#### Nâng Cấp Khả Năng của Biểu Đồ <sup>23.10</sup>

Chức năng của lớp [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), và [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) đã được mở rộng với các phương thức và thuộc tính mới.

#### Tự động Điều chỉnh và Bẻ cong một Hình ảnh vào một Hình dạng <sup>23.10</sup>

Một cách đơn giản để tự động điều chỉnh và vừa vặn một hình ảnh trong một hình dạng cụ thể đã được cung cấp thông qua phương pháp mới [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape).

#### Định dạng mặc định cho kiểu chữ đối với các mục nhập biểu đồ DrawingML Legend <sup>23.11</sup>

Quy năng để chỉ định định dạng phông chữ mặc định cho các mục nhập huyền thoại của biểu đồ DrawingML đã được thêm vào qua thuộc tính **Font**. Tính năng này tạo ra vẻ ngoài liền mạch và thống nhất hơn cho các yếu tố đồ thị, giúp cải thiện tính thẩm mỹ của tài liệu tổng thể.

#### Chỉ định Bố cục Trang khi Mở tệp PDF trong Trình đọc <sup>23.12</sup>

Khả năng chỉ định bố cục trang để sử dụng khi mở một tài liệu trong trình đọc PDF đã được thêm vào thông qua việc giới thiệu một thuộc tính mới [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) đến lớp [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) và việc giới thiệu một nhận dạng enum mới [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/).

### Đang tải và lưu các tài liệu

#### Chỉ định Tên Thư mục để Tạo URI Hình ảnh trong Markdown <sup>23.9</sup>

Lớp [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) đã được mở rộng bằng cách bao gồm thuộc tính [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias), cho phép chỉ định tên của thư mục được sử dụng để xây dựng URI hình ảnh ghi trong tài liệu Markdown.

#### Giảm kích thước đầu ra của PDF <sup>23.10</sup>

Các tối ưu hóa khác nhau của PDF để giảm kích thước đầu ra khi sử dụng [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) đã được thực hiện.

#### Nhận biết các liên kết siêu văn bản khi tải tệp tin TXT <sup>23.10</sup>

Tính năng nhận biết liên kết siêu văn bản khi tải các tài liệu TXT đã được thực hiện bằng cách thêm một thuộc tính mới [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks).

### Khác

- Việc mô phỏng xử lý tệp metafile để xác định kích thước raster hóa đã được thực hiện, cụ thể cho độ rộng bút WMF và độ rộng bút trang trí EMF. Để đạt được điều đó, thuộc tính **ScaleWmfFontsToMetafileSize** đã được thay thế bằng thuộc tính [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) và thuộc tính [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) đã được thêm. <sup>23.9</sup>
- Một phương pháp đơn giản để chèn một tài liệu vào một tài liệu khác tại vị trí con trỏ hiện tại đã được giới thiệu bằng cách sử dụng [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) phương pháp. <sup>23.10</sup>
- Khả năng truy cập và sửa đổi các thuộc tính style đã được thêm vào với việc giới thiệu thuộc tính mới [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked). <sup>23.10</sup>
"- Một tham số kiểu chung đã được thêm vào các phương thức của lớp [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/)." <sup>23.10</sup>
- Một cách để kiểm soát khi một phiên bản nào nên được chấp nhận/từ chối hoặc không đã được thực hiện bằng việc sử dụng các phương pháp [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) và [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria). Cải tiến này cho phép người dùng kiểm soát tốt hơn quá trình sửa đổi. <sup>23.11</sup>
"- Khả năng ghi tất cả các phần của một tài liệu vào cùng một bảng tính XLSX đã được cung cấp thông qua kiểu [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) mới và thuộc tính [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) mới." <sup>23.11</sup>
"- Hỗ trợ cho WebP ảnh đã được giới thiệu." Lời nhắc rằng tính năng này chỉ có mặt đối với .NetStandart và .NET6+ phiên bản. <sup>23.12</sup>

{{% alert color="primary" %}}

Học thêm về [Aspose.Words for Java 23.9 Release Notes](/words/java/aspose-words-for-java-23-9-release-notes/).

Tìm hiểu thêm về [Aspose.Words for Java 23.10 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

Học thêm về [Aspose.Words for Java 23.11 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

Tìm hiểu thêm về [Aspose.Words for Java 23.12 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words cho Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 cải thiện khả năng làm việc với dữ liệu chuỗi biểu đồ và khả năng làm việc với tài liệu ODT cũng như cải thiện tiêu đề / chân trang và cuộn văn bản của chúng.

"Aspose.Words 23.6 mở rộng các tùy chọn hiển thị, thêm một định dạng xuất mới, cải thiện báo cáo LINQ và LowCode công cụ."

Aspose.Words 23.7 tăng cường khả năng báo cáo, thêm một định dạng xuất mới và giới thiệu những thay đổi khi làm việc với bảng và chữ ký số

Aspose.Words 23.8 mở rộng khả năng của các định dạng khác nhau, cải thiện việc hiển thị và thêm vào các tùy chọn mới cho việc làm việc với các trường

### Định dạng hỗ trợ

"* Bắt đầu với phiên bản 23.6, có thể lưu một tài liệu ở định dạng XLSX." Bây giờ bạn có thể chuyển đổi tài liệu của mình sang định dạng Excel. <sup>23.6</sup>

* Bắt đầu từ phiên bản 23.7, có thể lưu trang tài liệu hoặc hình dạng ở định dạng EPS. <sup>23.7</sup>

* ### Tính năng định dạng mới

  "– Khả năng tự động tạo bảng nội dung (TOC) cho các tài liệu MOBI đã được giới thiệu." <sup>23.8</sup>
  - Nhà xây dựng [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) đã được mở rộng với [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). "<sup>23.8</sup>"
  - Việc tạo hình chữ thẳng đứng cho các tệp EMF đã được thực hiện. <sup>23.8</sup>

### Vẽ

#### Lấy và sửa dữ liệu chuỗi biểu đồ <sup>23.5</sup>

Tính năng lấy và sửa đổi dữ liệu chuỗi biểu đồ được cung cấp bằng cách thêm vào:

Các lớp mới: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- các kiểu enum mới: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Hỗ trợ cho kiểu chữ nâng cao <sup>23.6</sup>

Hỗ trợ kiểu chữ nâng cao trong WMF, EMF và EMF+ đã được thêm vào.

#### Nội dung màu trên trang <sup>23.6</sup>

Cổ phần công khai [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored) cho biết trang được tô màu hay không đã được thêm vào.

#### Định dạng cho nhãn dữ liệu biểu đồ <sup>23.6</sup>

Tính năng để đặt phông chữ, đường viền và tiêu đề có thể được thực hiện cho các nhãn dữ liệu biểu đồ đã được thực hiện.

### Mail Merge và Báo cáo

#### Dynamic HTML Insertion cho LINQ Reporting Engine <sup>23.6</sup>

Một cách mới của việc chèn HTML động cho động cơ báo cáo LINQ đã được thêm vào.

#### Mustache Tags Hỗ trợ <sup>23.7</sup>

Các thẻ Mustache hiện đã được hỗ trợ trong phương thức [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) và [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String).

#### Cập nhật cú pháp mẫu của LINQ Reporting Engine <sup>23.7</sup>

Bây giờ cú pháp mẫu của LINQ Reporting Engine hỗ trợ các phương thức mở rộng `ElementAt` và ElementAtOrDefault.

#### Chỉ định kích thước của hình ảnh đã hiển thị <sup>23.8</sup>

Một thuộc tính công cộng mới **ImageSize** để chỉ định kích thước của hình ảnh đã được tạo ra trong pixel đã được giới thiệu.

#### Bảo tồn khoảng trắng cho giá trị chuỗi JSON – LINQ <sup>23.8</sup>

Một tùy chọn đã được thêm vào Máy Báo cáo LINQ để giữ khoảng trắng cho các giá trị chuỗi JSON.

### LowCode <sup>23.6</sup>

Các phương pháp mới LowCode có ý định hợp nhất các loại tài liệu khác nhau vào một tài liệu đầu ra duy nhất đã được thêm.

### Khác

"- Hỗ trợ quấn văn bản trong tiêu đề/chân trang đã được thực hiện." "<sup>23.5</sup>"
"- Khả năng loại bỏ chữ ký số từ các tài liệu ODT đã được thêm thông qua [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) phương pháp." <sup>23.5</sup>
- Tài sản công khai [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) để lấy bản cơ sở và văn bản Ruby của hướng dẫn âm thanh [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) đã được thêm vào. <sup>23.5</sup>
"- Khả năng lấy giá trị chữ ký số từ một tài liệu được ký số dưới dạng mảng byte đã được thêm vào bằng cách đưa ra thuộc tính mới [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue)." <sup>23.7</sup>
- Các lớp [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) và [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) đã được mở rộng với các thành viên công khai mới – [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell) và [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- Hỗ trợ đối với các trường CITATION và BIBLIOGRAPHY đã được thêm vào. <sup>23.8</sup>

{{% alert color="primary" %}}

Học thêm về [Aspose.Words for Java 23.5 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

Học thêm về [Aspose.Words for Java 23.6 Release Notes](/words/java/aspose-words-for-java-23-6-release-notes/).

Học thêm về "[Aspose.Words for Java 23.7 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/)".

Học thêm về [Aspose.Words for Java 23.8 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words cho Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 cải thiện hiệu suất của việc mô phỏng hoạt động raster, cũng như nâng cao chất lượng xuất và hiển thị tài liệu.

Aspose.Words 23.2 giới thiệu việc lưu tài liệu ở định dạng MOBI, cải thiện tính năng hiển thị biểu đồ và thay đổi đáng kể chi tiết xuất hiện của tài liệu.

Aspose.Words 23.3 làm tăng tính năng nhập và lưu tài liệu với các thuộc tính mới, cũng cải thiện chất lượng công việc với màu nền và màu nổi và hình dạng mờ dần.

Aspose.Words 23.4 cải thiện tính toán của một số tham số và vị trí của bảng và văn bản xung quanh.

### Cải thiện hiệu suất

#### Mô phỏng các thao tác raster <sup>23.1</sup>

Hiệu năng và chất lượng của việc mô phỏng các hoạt động raster với meta-files đã được cải thiện đáng kể.

### Các định dạng được hỗ trợ

#### Xuất sang MOBI <sup>23.2</sup>

Từ phiên bản 23.2 trở đi, có thể lưu một tài liệu ở định dạng MOBI (còn gọi là PRC, AZW – Amazon Kindle’s own e-book file format). Bây giờ bạn không chỉ tải các tài liệu MOBI, nhưng cũng xuất tập tin của bạn vào định dạng MOBI.

### Rendu

#### Làm việc với màu chủ đề bóng tối <sup>23.1</sup>

Khả năng làm việc với màu chủ đề màu sắc đã được thực hiện.

#### Hỗ trợ R-squared Coefficient trong DML Charts <sup>23.1</sup>

Hỗ trợ cho hệ số R bình phương trong nhãn xu hướng biểu đồ DML khi hiển thị đã được thêm.

#### Cải tiến hiển thị biểu đồ <sup>23.2</sup>

Từ bản 23.2, việc hiển thị biểu đồ đã được cải thiện đáng kể.

#### Kiểm soát màu nền và màu trước <sup>23.3</sup>

Lớp [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) đã được mở rộng với một tập hợp các thuộc tính công khai mới liên quan đến màu nền và màu nổi bật: **ForeThemeColor** và **BackThemeColor**, **ForeTintAndShade** và **BackTintAndShade**.

#### Kiểu sắc độ tròn với phần `SkiaSharp` shader bản địa <sup>23.3</sup>

Thực hiện kết xuất của các gradient tròn với bản shader bản địa `SkiaSharp` cho .NET Standard đã được thực hiện.

#### Khoảng cách giữa bàn và văn bản xung quanh <sup>23.4</sup>

Khả năng đặt khoảng cách giữa bảng và văn bản xung quanh đã được thêm vào bằng cách đưa ra các thuộc tính mới cho lớp [Table](https://reference.aspose.com/words/java/com.aspose.words/table/): [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), và [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Tải và Lưu các Tài liệu

#### Tạo ra `TOC` cho Tài liệu AZW3 <sup>23.1</sup>

Khả năng tạo `TOC` (bảng mục lục) cho các tài liệu AZW3 đã được thêm vào thông qua việc sử dụng thuộc tính [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel).

#### Xuất danh sách mục sang Markdown <sup>23.1</sup>

Một cách để kiểm soát việc xuất danh sách sang định dạng Markdown đã được cung cấp bằng cách thêm thuộc tính [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) vào lớp [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/).

#### Cập nhật tiến trình lưu tài liệu <sup>23.3</sup>

Lưu thông báo tiến trình cho các định dạng MOBI và AZW3 đã được thực hiện.

#### Độ điều chỉnh khoảng cách câu và từ <sup>23.3</sup>

Khả năng chỉ định tùy chọn điều chỉnh khoảng cách câu và từ tự động khi nhập tài liệu đã được thêm bằng cách giới thiệu thuộc tính **AdjustSentenceAndWordSpacing**.

### Khác

- Khả năng chỉ định sự điều chỉnh khoảng cách ký tự trong một tài liệu đã được thêm thông qua việc thực hiện thuộc tính [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) <sup>23.2</sup>
- Cách để hướng dẫn Aspose.Words cho dù nên bao gồm các hộp văn bản, chú thích và ghi chú cuối trang trong thống kê số từ đã được cung cấp bằng cách thêm thuộc tính [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) <sup>23.2</sup>
- Một lựa chọn mới cho một tài liệu kiểu, cho phép chỉ định liệu phong cách được xác định lại tự động dựa trên giá trị phù hợp hay không, đã được đưa vào thông qua thuộc tính [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) <sup>23.2</sup>
"- Khả năng phân biệt xem [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) là một chương trình hướng dẫn phát âm đã được thêm vào bằng thuộc tính **IsPhoneticGuide** <sup>23.4</sup>"
Một cách đơn giản để làm việc với các chuỗi và trục của biểu đồ kết hợp đã được thực hiện bằng cách giới thiệu lớp **ChartAxisCollection** và thêm thuộc tính **Chart.Axes** <sup>23.4</sup>
- Các thuộc tính công cộng mới được kết nối với vị trí và kích thước tương đối của hình dạng đã được thêm vào lớp [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) <sup>23.4</sup>
- Độ chính xác và hiệu suất tính toán độ sáng màu cho giải quyết tự động màu chữ đã được cải thiện theo các phiên bản mới nhất của Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Aspose.Words for Java 23.1 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

Học thêm về [Aspose.Words for Java 23.2 Release Notes](/words/java/aspose-words-for-java-23-2-release-notes/).

Học thêm về [Aspose.Words for Java 23.3 Release Notes](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

Học thêm về [Aspose.Words for Java 23.4 Release Notes](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words cho Java 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 mở rộng các tùy chọn tải và lưu tài liệu và cải thiện tương tác với một số tùy chọn khác.

Aspose.Words 22.10 cải tiến các tùy chọn tìm và thay thế, nâng cao các đối tượng OLE và mở rộng chức năng danh sách.

Aspose.Words 22.11 mở rộng chức năng với các tùy chọn mới cho công việc tiện lợi hơn với các đối tượng đã quen thuộc: trường, in ấn, OLE và thẻ tài liệu có cấu trúc.

Aspose.Words 22.12 nâng cao khả năng hiển thị và giới thiệu các tùy chọn làm việc với lề khi tải / lưu tài liệu

### Cải thiện hiệu suất <sup>22.12</sup>

Một tính năng tối ưu hóa mà làm giảm đáng kể độ sâu của sự lồng nhau của trạng thái đồ họa khi tạo ra định dạng PDF để duy trì tuân thủ thông số kỹ thuật đã được giới thiệu.

### Xử lý và In ấn

#### In Trang Không Màu Trên Máy In Màu <sup>22.11</sup>

Một chế độ in màu tùy chỉnh / mức xám đã được thực hiện bằng cách thêm một giá trị mới **GrayscaleAuto** vào danh sách kí hiệu [ColorPrintMode](https://reference.aspose.com/words/java/com.aspose.words/colorprintmode/).

Tính năng in mới cho phép người dùng điều khiển cách in các trang không được tô màu nếu thiết bị hỗ trợ in màu. Tính năng này có thể hữu ích nếu người dùng muốn tự động in các trang không màu chỉ sử dụng chế độ in màu xám.

#### Tính năng New Border Rendering <sup>22.12</sup>

Đã được giới thiệu các thuộc tính công khai mới [ThemeColor](https://reference.aspose.com/words/java/com.aspose.words/border/#getThemeColor) và [TintAndShade](https://reference.aspose.com/words/java/com.aspose.words/border/#getTintAndShade).

#### Công thức xu hướng thẳng cho DrawingML Rendering <sup>22.12</sup>

Công thức đường xu hướng tuyến tính cho các biểu đồ DrawingML đã được thực hiện.

#### Cài đặt Font Fallback cho Google Noto phông chữ <sup>22.12</sup>

Cài đặt mặc định cho phông chữ Google Noto đã được cập nhật.

### Tải và Lưu Tài liệu

#### Cache các hình dạng tiêu đề hoặc chân trang để giảm kích thước PDF <sup>22.9</sup>

Khả năng lưu các hình dạng tiêu đề/phần chân trang để giảm kích thước của tệp PDF đầu ra đã được thực hiện bằng cách thêm thuộc tính mới [CacheHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/)

#### Chế độ Tự động Phát hiện Số trang khi Tải một Tài liệu <sup>22.9</sup>

Khả năng chỉ định thuộc tính [AutoNumberingDetection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getAutoNumberingDetection) khi tải văn bản đã được thực hiện thông qua một sự mở rộng của lớp [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/).

#### Chỉ định loại lề cụ thể <sup>22.12</sup>

Khả năng chỉ định một loại cụ thể [Margin](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getMargins) cho phần được cho đã được thực hiện.

### Tìm kiếm và so sánh <sup>22.10</sup>

Tùy chọn khả năng bỏ qua [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) trong các tùy chọn tìm kiếm và thay thế đã được thực hiện bằng cách thêm một thuộc tính mới [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreStructuredDocumentTags--) vào lớp [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/).

### Khác

"- Tính năng mới để nhận được FieldEQ như một OfficeMath đã được thêm vào." <sup>22.9</sup>
- Việc tạo các thẻ tài liệu có cấu trúc kiểu Group ở mức hàng được cho phép. <sup>22.9</sup>
- Đối tượng và điều khiển OLE giờ đây được xử lý như hình ảnh Metafile khi chuyển đổi một tài liệu thành HTML. <sup>22.10</sup>
- Một tính năng mới để kiểm tra rằng một danh sách cụ thể được tạo từ cùng mẫu như danh sách so sánh đã được thêm bằng cách giới thiệu một phương pháp [HasSameTemplate](https://reference.aspose.com/words/java/com.aspose.words/list/#hasSameTemplate-com.aspose.words.List-) mới vào lớp [List](https://reference.aspose.com/words/java/com.aspose.words/list/). <sup>22.10</sup>
"- Khả năng tạo ra các thẻ tài liệu mới có cấu trúc loại [Citation](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) đã được thêm vào." <sup>22.11</sup>
- Khả năng theo dõi tiến trình cập nhật trang đã được cung cấp. <sup>22.11</sup>
- Một thuộc tính mới **EmbedAttachments** cho phép người dùng nhúng các tệp đính kèm OLE từ tài liệu nguồn vào tài liệu PDF đầu ra đã được đưa ra. <sup>22.11</sup>

{{% alert color="primary" %}}

Học thêm về [Aspose.Words for Java 22.9 Release Notes](/words/java/aspose-words-for-java-22-9-release-notes/).

Học thêm về [Aspose.Words for Java 22.10 Release Notes](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-10-release-notes/).

Học thêm về [Aspose.Words for Java 22.11 Release Notes](/words/java/aspose-words-for-java-22-11-release-notes/).

Học thêm về [Aspose.Words for Java 22.12 Release Notes](/words/java/aspose-words-for-java-22-12-release-notes/).

{{% /alert %}}

## Xem thêm

{{% alert color="primary" %}}

Trang này chứa tin tức mới nhất về bản phát hành trong 2 năm qua. Để chi tiết về các lần phát hành trước đó, hãy xem [Release Notes'](https://releases.aspose.com/words/java/release-notes/) trang trong các phần liên quan.

{{% /alert %}}
