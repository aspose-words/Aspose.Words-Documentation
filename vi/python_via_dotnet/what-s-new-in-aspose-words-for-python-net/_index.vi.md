---
title: Có gì mới
second_title: Aspose.Words cho Python via .NET
articleTitle: Có gì mới trong Aspose.Words dành cho Python via .NET
linktitle: Có gì mới trong Aspose.Words dành cho Python via .NET
type: docs
description: "Aspose.Words cho Python via .NET mở rộng và nâng cao hàng ngày. Trên trang này, bạn có thể tìm hiểu về những tính năng to lớn và thú vị nhất của sản phẩm."
weight: 10
url: /vi/python-net/what-s-new-in-aspose-words-for-python-net/
---

Trang này mô tả các tính năng Aspose.Words mới thú vị nhất được giới thiệu trong các bản phát hành gần đây.

## Aspose.Words cho Python qua .NET 24.9, 24.10, 24.11

Aspose.Words 24.9 giới thiệu chèn hình dạng nhóm và chèn StructuredDocumentTag qua DocumentBuilder, cải thiện khả năng hiển thị biểu đồ hình tròn với các vạch chia độ, cải thiện chữ ký số với hỗ trợ XAdES-EPES, thêm nhận dạng gạch chân Markdown và cung cấp quyền truy cập vào các dấu phân cách chú thích cuối trang/chú thích cuối trang.

Aspose.Words 24.10 giới thiệu hỗ trợ điều khiển ActiveX nâng cao với tính năng tạo CommandButton, điều khiển khả năng hiển thị hình dạng mới, khả năng nhóm các hình dạng, cải thiện khả năng xuất Markdown cho bảng, định dạng biểu đồ cho biểu đồ Pie và Doughnut, xử lý mã hóa Big5 tốt hơn và hỗ trợ phông chữ Đài Loan lỗi thời.

Aspose.Words 24.11 giới thiệu AI-tóm tắt tài liệu được hỗ trợ, các tùy chọn kết xuất nâng cao, cải thiện quyền truy cập vào thuộc tính tài liệu và Phụ đề Điều khiển ActiveX.

### AI-các Tính năng được hỗ trợ <sup>24.11</sup>

Hỗ trợ tóm tắt tài liệu bằng cách sử dụng các mô hình ngôn ngữ tạo **OpenAI** và **Google** đã được tích hợp bằng cách thêm không gian tên [Aspose.Words.AI](https://reference.aspose.com/words/python-net/aspose.words.ai/) với các thành viên công cộng của nó.

### Hiển thị và in

#### Vạch chia độ trên biểu đồ hình tròn <sup>24.9</sup>

Đã triển khai hiển thị vạch chia độ trên biểu đồ hình tròn.

#### CommandButton ActiveX Controls <sup>24.10</sup>

Khả năng tạo điều khiển CommandButton ActiveX đã được giới thiệu bằng cách thêm phương thức công khai mới [insert_forms_2_ole_control](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_forms_2_ole_control/) và lớp công khai mới [Forms2OleControl](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/).

#### Kiểm soát khả năng hiển thị hình dạng <sup>24.10</sup>

Một thuộc tính công khai mới [hidden](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/hidden/) đã được thêm vào để kiểm soát khả năng hiển thị của hình dạng.

#### Thay đổi trong Biểu đồ Pie và Doughnut <sup>24.10</sup>

Một số thuộc tính công khai mới đã được thêm vào để định dạng biểu đồ Pie và Doughnut.

#### Kiểm soát Kết xuất Của PDF Biên Giới Trường Biểu mẫu Lựa chọn <sup>24.11</sup>

Một tùy chọn mới để kiểm soát kết xuất các đường viền trường biểu mẫu lựa chọn PDF đã được triển khai bằng cách thêm một tùy chọn công khai mới [render_choice_form_field_border](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/render_choice_form_field_border/).

#### Nhận Và Đặt Mã Định dạng Cho Dữ liệu Biểu đồ <sup>24.11</sup>

Khả năng lấy và đặt mã định dạng cho dữ liệu biểu đồ đã được thêm vào bằng cách triển khai thuộc tính [format_code](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/format_code/) trong các lớp [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/) và [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/).

#### Hiển thị Biểu đồ Biểu đồ với Thùng và Nhãn <sup>24.11</sup>

Hiển thị biểu đồ biểu đồ đã được cải thiện bằng cách cho phép một số lượng thùng và nhãn được chỉ định.

### Chuyển đổi, tải và lưu tài liệu

#### Định dạng gạch chân khi tải tệp Markdown <sup>24.9</sup>

Tùy chọn nhận dạng định dạng gạch chân khi tải tài liệu Markdown đã được tích hợp bằng cách thêm thuộc tính công khai mới [import_underline_formatting property](https://reference.aspose.com/words/python-net/aspose.words.loading/markdownloadoptions/import_underline_formatting/).

#### Xuất bảng dưới dạng HTML khi lưu vào Markdown <sup>24.10</sup>

Một tùy chọn để xuất bảng dưới dạng HTML khi lưu tài liệu vào định dạng Markdown đã được triển khai bằng cách thêm thuộc tính công khai mới [export_as_html](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/export_as_html/) và phép liệt kê [MarkdownExportAsHtml](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownexportashtml/).

#### Xuất PDF Với Cấu Trúc Logic Được Cập Nhật <sup>24.11</sup>

PDF xuất khẩu đã được tăng cường bằng cách bao gồm các thuộc tính tiêu đề bảng như PDF tiêu đề phần tử cấu trúc logic.

### Chữ ký số

#### Ký tài liệu bằng XAdES-EPES <sup>24.9</sup>

Khả năng ký tài liệu bằng chữ ký XML-DSig cấp XAdES-EPES đã được giới thiệu bằng cách thêm thuộc tính công khai mới [xml_dsig_level](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/signoptions/xml_dsig_level/) và phép liệt kê công khai mới [XmlDsigLevel](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/xmldsiglevel/).

### Khác

* Một phương thức công khai mới [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/) đã được thêm vào nhóm hình dạng. <sup>24.9</sup>
* Một phương thức công khai mới [insert_structured_document_tag](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_structured_document_tag/) đã được thêm vào để chèn **StructuredDocumentTags** vào tài liệu. <sup>24.9</sup>
* Quyền truy cập công khai vào các dấu phân cách chú thích/chú thích cuối trang đã được cung cấp bằng cách thêm một số lớp và thuộc tính công khai. <sup>24.9</sup>
* Khả năng nhóm các hình dạng riêng lẻ, nhóm các hình dạng lại với nhau và nhóm trực tiếp cả hai hình dạng và nhóm các hình dạng đã được giới thiệu bằng cách thêm phương thức [insert_group_shape](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_group_shape/#float_float_float_float_shapebaselist). <sup>24.10</sup>
* Xử lý mã hóa Big5 cho các bảng cmap TrueType đã được cải thiện. <sup>24.10</sup>
* Hỗ trợ cho các phông chữ Đài Loan lỗi thời đã được cải thiện. <sup>24.10</sup>
* Để truy cập các thuộc tính tài liệu mở rộng, các thuộc tính chỉ đọc đã được thêm vào lớp [BuiltInDocumentProperties](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/). <sup>24.11</sup>
* Cài đặt chú thích Cho Điều khiển ActiveX đã được bật bằng cách thêm trình thiết lập công khai mới vào thuộc tính [Forms2OleControl.caption](https://reference.aspose.com/words/python-net/aspose.words.drawing.ole/forms2olecontrol/caption/). <sup>24.11</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 24.9](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-9-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 24.10](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-10-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 24.11](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-11-release-notes/).

{{% /alert %}}

## Aspose.Words cho Python via .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 mở rộng các tùy chọn cho các cụm, cải thiện khả năng kết xuất và mở rộng một số tùy chọn khác.

Aspose.Words 24.6 cải thiện các tùy chọn hiển thị, nâng cao chức năng tìm kiếm và so sánh cũng như mở rộng một số tính năng khác.

Aspose.Words 24.7 thay đổi cách bạn làm việc với ActiveX, mở rộng khả năng kết xuất cũng như xuất sang định dạng Markdown và XLSX.

Aspose.Words 24.8 cải thiện khả năng tùy chỉnh biểu đồ với khả năng kiểm soát chính xác nhãn trục, mở rộng quản lý phông chữ, cải thiện khả năng xử lý cấu trúc tài liệu và thêm các khả năng mới cho xuất HTML/XAML, chức năng PDF, chuyển đổi tài liệu và chữ ký số.

### Định dạng được hỗ trợ

Bắt đầu từ phiên bản 24.7, hỗ trợ xuất sang PDF/UA-2 để đảm bảo khả năng truy cập cho người dùng khuyết tật.

### Hiển thị và In

#### Những thay đổi trong Charts, Shapes và DrawingML <sup>24.5</sup>

* Việc kết xuất hiệu ứng DrawML cho đồ họa SVG, mở rộng chức năng trước đó chỉ giới hạn ở hình ảnh, đã được triển khai.
* Hỗ trợ tạo biểu đồ kết hợp và điều chỉnh các thuộc tính như độ rộng khoảng cách, sự chồng chéo và tỷ lệ bong bóng trong các nhóm chuỗi đã được giới thiệu bằng cách thêm các lớp [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) và [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) cũng như thuộc tính [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/).
* Chức năng thao tác hiệu ứng SoftEdge của các hình dạng đã được triển khai bằng cách thêm lớp [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/).
* Khả năng sửa đổi giá trị điều chỉnh của hình dạng đã được triển khai bằng cách thêm **AdjustmentCollection** và **Adjustment** các lớp công khai và [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) tài sản.

#### Những thay đổi về Biểu đồ, Hình dạng và Bản vẽ <sup>24.6</sup>

* Khả năng biểu đồ đã được nâng cao. Giờ đây, bạn có thể tạo nhiều loại biểu đồ hơn, bao gồm *Bản đồ cây*, *Sunbursts*, *Biểu đồ*, biểu đồ *Pareto*, biểu đồ *Box & Whisker*, *Thác nước* và *Kênh*. Điều này cho phép bạn trực quan hóa dữ liệu của mình theo cách đa dạng và nhiều thông tin hơn.
* Kiểm soát màu sắc cho định dạng bóng đã được cải thiện. Bạn có thể kiểm soát chính xác hơn hình thức của tài liệu bằng cách truy cập vào màu bóng.
* Cải thiện hiệu suất hiển thị nền. Bạn có thể tăng tốc đáng kể việc hiển thị nền có chứa các phần tử nhỏ nhờ công nghệ ốp lát gốc.
* Độ dốc thực tế cho hình dạng đã được thêm vào. Giờ đây, bạn có thể tạo các hình dạng DML với độ chuyển màu phi tuyến tính, bắt chước phong cách trực quan của Microsoft Word để có giao diện bóng bẩy hơn.

#### Tùy chỉnh nhãn dữ liệu biểu đồ <sup>24.7</sup>

Khả năng tùy chỉnh các nhãn dữ liệu biểu đồ như **Orientation** và **Rotation** đã được thêm vào.

#### Kiểu số tùy chỉnh cho cấp độ danh sách <sup>24.7</sup>

Công cụ thiết lập cho thuộc tính công khai [custom_number_style_format](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/custom_number_style_format/) đã được thêm. Bây giờ bạn có thể xác định kiểu dáng số tùy chỉnh cho các cấp độ danh sách.

#### Những thay đổi khi làm việc với ActiveX <sup>24.7</sup>

* Các thuộc tính của đối tượng ActiveX giờ đây có thể được sửa đổi, giúp bạn kiểm soát nhiều hơn hành vi của chúng.
* Khả năng sửa đổi giá trị của nút radio điều khiển ActiveX để kích hoạt tương tác động đã được thêm vào.
* Khả năng chuyển đổi hộp kiểm ActiveX thành "đã chọn" hoặc "bỏ chọn" đã được thêm vào.

#### Kiểm soát hướng và xoay nhãn đánh dấu trục biểu đồ <sup>24.8</sup>

Khả năng kiểm soát chính xác hướng và xoay nhãn đánh dấu trục biểu đồ đã được thêm vào để tùy chỉnh biểu đồ thuận tiện hơn – lớp [AxisTickLabels](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/) đã được mở rộng với các thuộc tính [orientation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/orientation/) hướng và [rotation](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/axisticklabels/rotation/) mới.

#### Thay thế dấu gạch chéo ngược bằng dấu Yen <sup>24.8</sup>

Khả năng xuất HTML và XAML tương thích ngược để thay thế ký tự gạch chéo ngược bằng dấu Yen đã được cải thiện. Để đạt được điều này, thuộc tính **replace_backslash_with_yen_sign** đã được thêm vào các lớp [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) và [XamlFlowSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xamlflowsaveoptions/).

#### Sử dụng Thẻ SDT làm Tên Trường Biểu mẫu khi Xuất sang PDF <sup>24.8</sup>

Việc xuất PDF có hỗ trợ sử dụng thẻ SDT làm tên trường biểu mẫu đã được cải thiện bằng cách thêm thuộc tính [use_sdt_tag_as_form_field_name](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_sdt_tag_as_form_field_name/) mới vào lớp [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/).

### Chuyển đổi, Tải và Lưu Tài liệu

#### Xuất liên kết sang định dạng Markdown <sup>24.7</sup>

Khả năng kiểm soát việc xuất các liên kết ở định dạng Markdown đã được bổ sung thông qua việc triển khai thuộc tính [link_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/link_export_mode/).

#### LowCode <sup>24.8</sup>

Một lớp [LowCode.Converter](https://reference.aspose.com/words/python-net/aspose.words.lowcode/converter/) mới, được thiết kế để cung cấp một tập hợp các phương pháp chuyển đổi nhiều loại tài liệu khác nhau chỉ bằng một dòng mã, đã được giới thiệu.

### Tìm kiếm và so sánh

#### Tùy chọn so sánh nâng cao <sup>24.6</sup>
Khả năng hợp lý hóa quy trình phân tích dữ liệu với chức năng so sánh được cải thiện đã được thêm vào. Điều này bao gồm tùy chọn [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) mới và giao diện được thiết kế lại để so sánh nâng cao.

#### Khác

* Chức năng loại bỏ các trang trống khỏi tài liệu đã được triển khai bằng cách thêm phương thức [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/). <sup>24.5</sup>
* Khả năng kiểm tra sự hiện diện của macro VBA mà không cần tải tài liệu đã được cung cấp bằng cách thêm thuộc tính [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/). <sup>24.5</sup>
* Hiện đã hỗ trợ giữ nguyên đánh số nguồn trong khi chèn tài liệu bằng Công cụ Báo cáo LINQ. <sup>24.5</sup>
* Thuộc tính [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) mới đã được thêm vào – thuộc tính này cung cấp dấu thời gian chính xác hơn cho nhận xét, cải thiện khả năng tổ chức và truy xuất nguồn gốc. <sup>24.6</sup>
* Công cụ báo cáo LINQ đã được cải tiến. Việc loại bỏ có chọn lọc các đoạn văn trống và định nghĩa các thông báo tùy chỉnh cho các thành phần đối tượng bị thiếu đã được thực hiện, dẫn đến các báo cáo rõ ràng hơn và nhiều thông tin hơn. <sup>24.6</sup>
* Định dạng ngày giờ hiện được tự động phát hiện để xuất liền mạch sang định dạng XLSX. <sup>24.7</sup>
* Thuộc tính công khai [is_protected](https://reference.aspose.com/words/python-net/aspose.words.vba/vbaproject/is_protected/), cho phép bạn xác minh xem dự án VBA có được bảo vệ hay không, đã được thêm vào. <sup>24.7</sup>
* Thông tin phông chữ đã được mở rộng với thuộc tính **embedding_licensing_rights** được thêm vào các lớp [FontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/fontinfo/) và [PhysicalFontInfo](https://reference.aspose.com/words/python-net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Một cách để xóa hiệu quả phần đầu trang và phần chân trang trong khi vẫn giữ nguyên hình mờ đã được thêm vào để làm việc chính xác hơn với cấu trúc tài liệu. Để xóa phần đầu trang và phần chân trang, hãy sử dụng phương thức công khai mới [clear_headers_footers](https://reference.aspose.com/words/python-net/aspose.words/section/clear_headers_footers/#default). <sup>24.8</sup>
* Đã bật chức năng ký số cho các tài liệu XPS bằng [XpsSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/) – một thuộc tính mới [digital_signature_details](https://reference.aspose.com/words/python-net/aspose.words.saving/xpssaveoptions/digital_signature_details/) đã được thêm vào cho mục đích này. <sup>24.8</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 24.5](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 24.6](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 24.7](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-7-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 24.8](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words cho Python via .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 cải thiện trải nghiệm xung quanh việc quản lý màu nét, nâng cao các đối tượng OLE, cũng như giới thiệu API công khai Nguồn thư mục mới.

Aspose.Words 24.2 đã mở rộng API Biểu đồ, quản lý kiểu và các tùy chọn LINQ. Phiên bản Aspose.Words này cũng giới thiệu khả năng chỉ định SvgSaveOptions trong quá trình kết xuất, kiểm soát tải tệp Markdown linh hoạt hơn và làm việc với văn bản tham chiếu cho chú thích cuối trang và chú thích cuối.

Aspose.Words 24.3 giới thiệu một công cụ đọc / ghi TIFF mới và mô phỏng các hoạt động raster nhị phân cho các tệp meta WMF. Aspose.Words 24.3 cũng tiếp tục mở rộng API Biểu đồ.

Aspose.Words 24.4 cải tiến việc lưu các định dạng, một số tùy chọn hiển thị, cũng như cải thiện công việc với các chữ ký số.

### Định dạng được hỗ trợ <sup>24.4</sup>

Định dạng hình ảnh **WebP** hiện đại hiện được hỗ trợ trong Aspose.Words cho .NET Framework 4.6.2 và cao hơn. Bây giờ bạn có thể đọc và chèn hình ảnh WebP vào tài liệu, cũng như lưu hình ảnh dưới định dạng WebP.

Xin lưu ý rằng WebP hiện chỉ có sẵn trong .NET Standard và .NET Framework v4.6.2 và cao hơn.

### Kết xuất và in ấn

#### Kiểm soát màu nét <sup>24.1</sup>

Lớp [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) đã được mở rộng với một tập hợp các thuộc tính công khai mới liên quan đến việc quản lý màu nét: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) và [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) và [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### hần mở rộng API biểu đồ DrawML <sup>24.2 / 24.3 / 24.4</sup>

API biểu đồ DrawML tiếp tục được mở rộng.

#### Nhúng các phông chữ được khai báo trong các quy tắc @font-face <sup>24.4</sup>

Thêm khả năng nhúng các phông chữ được khai báo trong các quy tắc @font-face vào các định nghĩa phông chữ của tài liệu kết quả đã được giới thiệu bằng cách thêm một thuộc tính mới có tên [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/).

#### Làm việc với định dạng sáng và phản chiếu <sup>24.4</sup>

Khả năng làm việc với định dạng sáng và phản chiếu cho một đối tượng vẽ đã được triển khai.

### Tải và lưu tài liệu

#### Chỉ định SvgSaveOptions trong khi kết xuất <sup>24.2</sup>

Khả năng chỉ định [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) trong quá trình kết xuất đã được thêm bằng cách sử dụng các phương thức [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) và [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions).

#### Giữ nguyên các dòng trống khi tải tệp Markdown <sup>24.2</sup>

Khả năng giữ lại các dòng trống khi tải tệp Markdown đã được thêm vào.

#### Một công cụ đọc / ghi TIFF mới  <sup>24.3</sup>

Công cụ đọc/ghi TIFF mới đã được phát triển cho Aspose.Words. Aspose.Words cho .NET 24.3 đã thêm hỗ trợ cho việc đọc hình ảnh TIFF với các loại nén JPEG và Old JPEG, và cũng cải thiện đáng kể chất lượng của các hoạt động đọc và ghi.

### Khác

* Khả năng sửa đổi văn bản của điều khiển `TextBox` OLE đã được giới thiệu bằng cách thêm thuộc tính **Text** mới vào lớp **TextBoxControl** mới. <sup>24.1</sup>
* API công khai của Nguồn thư mục được triển khai thông qua việc thêm một không gian tên mới [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) với các lớp và bảng liệt kê mới của nó, đồng thời thông qua việc thêm một thuộc tính [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) mới vào lớp [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). <sup>24.1</sup>
* Các thuộc tính công khai mới [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/) và [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) để quản lý kiểu nâng cao đã được thêm vào lớp [Style](https://reference.aspose.com/words/python-net/aspose.words/style/). <sup>24.2</sup>
* Chức năng truy xuất văn bản dấu tham chiếu thực tế cho chú thích cuối trang và chú thích cuối đã được cải tiến với thuộc tính [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) và phương thức [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default). <sup>24.2</sup>
* Mô phỏng các hoạt động raster nhị phân cho các tệp meta WMF đã được triển khai. <sup>24.3</sup>
* Đã kích hoạt khả năng xác định các tùy chọn chữ ký cho tài liệu trong **SaveOptions** bằng cách thêm một lớp mới có tên [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) với các thành viên công khai mới, cũng như thêm các thuộc tính mới vào các lớp [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) và [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 24.1](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 24.2](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 24.3](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 24.4](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words cho Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 mở rộng các tùy chọn hiển thị, mô phỏng hiển thị siêu tệp và tùy chọn lưu markdown.

Aspose.Words 23.10 cải thiện kết xuất, mở rộng các tùy chọn tải và lưu tài liệu, đồng thời cho phép người dùng hợp nhất tài liệu theo những cách mới.

Aspose.Words 23.11 nâng cao công việc với các bản sửa đổi, định dạng XLSX và phông chữ trên chú giải biểu đồ với các tùy chọn bổ sung.

Aspose.Words 23.12 giới thiệu các thuộc tính và bảng liệt kê mới để làm việc với các tài liệu PDF và OOXML, cũng như hỗ trợ hình ảnh WebP.

### Kết xuất và in ấn

#### Tùy chỉnh tiêu đề trục trong Biểu đồ DrawML <sup>23.9</sup>

Khả năng tùy chỉnh tiêu đề trục trong biểu đồ DrawML đã được giới thiệu bằng cách triển khai thuộc tính [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) và [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/) lớp công khai mới.

####  Xác định vị trí dọc của phông chữ trong đoạn <sup>23.9</sup>

Giờ đây, có thể xác định vị trí dọc của phông chữ trong một đoạn bằng cách sử dụng thuộc tính [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) công khai mới và bảng liệt kê [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/) mới.

#### Kiểm soát màu tiền cảnh <sup>23.10</sup>

Khả năng truy xuất màu nền trước mà không cần sửa đổi đã được thêm vào các lớp [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) và [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) thông qua thuộc tính **BaseForeColor**.

#### Mở rộng chức năng của biểu đồ <sup>23.10</sup>

Chức năng của các lớp [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) và [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) đã được mở rộng với các phương thức và thuộc tính mới.

#### Tự động điều chỉnh và ghép hình ảnh vào hình dạng <sup>23.10</sup>

Một cách đơn giản để tự động điều chỉnh và điều chỉnh hình ảnh trong một hình dạng cụ thể đã được cung cấp thông qua phương pháp [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default) mới.

#### Định dạng phông chữ mặc định cho các mục chú thích biểu đồ DrawML <sup>23.11</sup>

Khả năng chỉ định định dạng phông chữ mặc định cho các mục chú giải của biểu đồ DrawML đã được thêm thông qua thuộc tính [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/). Tính năng này tạo điều kiện cho các thành phần biểu đồ có diện mạo hợp lý và nhất quán hơn, cải thiện tính thẩm mỹ tổng thể của tài liệu.

#### Chỉ định Bố cục Trang khi Mở PDF trong Reader <sup>23.12</sup>

Khả năng chỉ định bố cục trang sẽ được sử dụng khi mở tài liệu trong trình đọc PDF đã được thêm vào thông qua việc giới thiệu thuộc tính [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) mới cho lớp [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) và giới thiệu bảng liệt kê [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/) mới.

### Tải và lưu tài liệu

#### Chỉ định tên thư mục để xây dựng URI hình ảnh trong Markdown <sup>23.9</sup>

Lớp [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) đã được mở rộng bằng cách bao gồm thuộc tính [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/), cho phép chỉ định tên của thư mục được sử dụng để xây dựng các URI hình ảnh được ghi vào tài liệu Markdown.

#### Giảm kích thước đầu ra PDF <sup>23.10</sup>

Nhiều tối ưu hóa kết xuất PDF khác nhau để giảm kích thước đầu ra khi sử dụng cài đặt [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) đã được triển khai.

#### Nhận dạng siêu liên kết khi tải tài liệu TXT <sup>23.10</sup>

Tính năng nhận dạng siêu liên kết khi tải tài liệu TXT đã được triển khai bằng cách thêm thuộc tính [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/) mới.

### Khác

- Mô phỏng kết xuất siêu tệp để xác định kích thước rasterization đã được triển khai, đặc biệt cho chiều rộng bút WMF và chiều rộng bút mỹ phẩm EMF. Để đạt được điều này, thuộc tính **ScaleWmfFontsToMetafileSize** đã được thay thế bằng thuộc tính [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) và thuộc tính [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) đã được thêm vào. <sup>23.9</sup>
- Một phương pháp đơn giản để chèn một tài liệu vào một tài liệu khác tại vị trí con trỏ hiện tại đã được giới thiệu bằng phương pháp [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions). <sup>23.10</sup>
- Khả năng truy cập và sửa đổi các thuộc tính kiểu đã được thêm vào thông qua việc giới thiệu thuộc tính [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/) mới. <sup>23.10</sup>
- Một tham số kiểu chung đã được thêm vào các phương thức của lớp [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). <sup>23.10</sup>
- Khả năng ghi tất cả các phần của tài liệu vào cùng một bảng tính XLSX đã được cung cấp thông qua kiểu liệt kê [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) mới và thuộc tính [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/) mới. <sup>23.11</sup>
* Một cách để kiểm soát cách sử dụng các phần mở rộng định dạng ZIP64 cho các tài liệu OOXML đã được triển khai thông qua thuộc tính Zip64Mode mới của lớp `OoxmlSaveOptions` và bảng liệt kê Zip64Mode mới. <sup>23.12</sup>
* Hỗ trợ hình ảnh WebP đã được giới thiệu. Xin lưu ý rằng tính năng này chỉ khả dụng cho phiên bản .NetStandart và .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 23.9](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-9-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 23.10](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 23.11](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho .NET 23.12](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words cho Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 nâng cao khả năng làm việc với dữ liệu chuỗi biểu đồ và khả năng làm việc với các tài liệu ODT, cũng như cải thiện đầu trang/chân trang và gói văn bản của chúng.

Aspose.Words 23.6 mở rộng các tùy chọn kết xuất, thêm định dạng xuất mới, cải thiện các công cụ báo cáo LINQ và LowCode.

Aspose.Words 23.7 nâng cao khả năng báo cáo, bổ sung định dạng xuất mới và giới thiệu các thay đổi khi làm việc với bảng và chữ ký số.

Aspose.Words 23.8 mở rộng khả năng của các định dạng khác nhau, cải thiện kết xuất và thêm các tùy chọn mới để làm việc với các trường

### Các định dạng được hỗ trợ

* Bắt đầu từ phiên bản 23.6, có thể lưu tài liệu ở định dạng XLSX. Bây giờ bạn có thể chuyển đổi tài liệu của mình sang định dạng Excel. <sup>23.6</sup>

* Bắt đầu từ phiên bản 23.7, có thể lưu trang tài liệu hoặc hình dạng ở định dạng EPS. <sup>23.7</sup>

### Tính năng định dạng mới

- Đã giới thiệu chức năng tự động tạo Mục lục (TOC) cho tài liệu MOBI. <sup>23.8</sup>
- Hàm tạo [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) đã được mở rộng với [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23.8</sup>
- Việc định hình văn bản dọc cho siêu tệp EMF đã được triển khai. <sup>23.8</sup>

### Kết xuất

#### Nhận và sửa đổi dữ liệu chuỗi biểu đồ <sup>23.5</sup>

Tính năng lấy và sửa đổi dữ liệu chuỗi biểu đồ được cung cấp bằng cách thêm:

- các lớp mới: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- các loại enum mới: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Hỗ trợ kiểu chữ nâng cao <sup>23.6</sup>

Đã thêm hỗ trợ cho Kiểu chữ nâng cao trong kết xuất WMF, EMF và EMF+.

#### Nội dung có màu trên Trang <sup>23.6</sup>

Thuộc tính công cộng [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/), cho biết trang này có được tô màu hay không, đã được thêm vào.

#### Định dạng cho nhãn dữ liệu biểu đồ <sup>23.6</sup>

Khả năng đặt định dạng tô, nét và chú thích cho nhãn dữ liệu biểu đồ đã được triển khai.

### Mail Merge và báo cáo

#### Chèn HTML động cho Công cụ báo cáo LINQ <sup>23.6</sup>

Một cách chèn HTML động mới cho Công cụ báo cáo LINQ đã được thêm vào.

#### Hỗ trợ thẻ Mustache <sup>23.7</sup>

Thẻ Mustache hiện được hỗ trợ trong các phương thức [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) và [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/).

#### Chỉ định kích thước của hình ảnh được hiển thị <sup>23.8</sup>

Thuộc tính công cộng mới [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) để chỉ định kích thước của hình ảnh được hiển thị theo pixel đã được giới thiệu.

#### Giữ nguyên khoảng trắng cho các giá trị chuỗi JSON – LINQ <sup>23.8</sup>

Một tùy chọn đã được thêm vào Công cụ báo cáo LINQ để duy trì khoảng trắng cho các giá trị chuỗi JSON.

### LowCode <sup>23.6</sup>

Các phương pháp LowCode mới nhằm hợp nhất các loại tài liệu khác nhau thành một tài liệu đầu ra duy nhất đã được thêm vào.

### Khác

- Hỗ trợ gói văn bản trong đầu trang/chân trang đã được triển khai. <sup>23.5</sup>
- Khả năng loại bỏ chữ ký số khỏi tài liệu ODT đã được bổ sung thông qua phương pháp [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str). <sup>23.5</sup>
- Thuộc tính công cộng [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) để lấy văn bản cơ sở và hồng ngọc của hướng dẫn ngữ âm [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) đã được thêm vào. <sup>23.5</sup>
- Khả năng truy xuất giá trị chữ ký số từ tài liệu được ký điện tử dưới dạng mảng byte đã được thêm bằng cách giới thiệu thuộc tính [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/) mới. <sup>23.7</sup>
- Các lớp [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) và [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) đã được mở rộng với các thành viên công cộng mới – [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/) và [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

{{% alert color="primary" %}}

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 23.5](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 23.6](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 23.7](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-7-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 23.8](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words cho Python via .NET 23.1, 23.2, 23.3, 23.4

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

Lớp [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) đã được mở rộng với một tập hợp các thuộc tính công khai mới liên quan đến màu nền và màu nền trước: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) và [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) và [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Chuyển màu xuyên tâm với `SkiaSharp` Native Shader <sup>23.3</sup>

Việc hiển thị các gradient xuyên tâm bằng trình đổ bóng gốc `SkiaSharp` cho .NET Standard đã được triển khai.

#### Khoảng cách giữa bảng và văn bản xung quanh <sup>23.4</sup>

Khả năng đặt khoảng cách giữa bảng và văn bản xung quanh đã được thêm bằng cách giới thiệu các thuộc tính mới cho lớp [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/): [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) và [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Tải và lưu tài liệu

#### Tạo `TOC` cho tài liệu AZW3 <sup>23.1</sup>

Khả năng tạo `TOC` (mục lục) cho tài liệu AZW3 đã được thêm thông qua việc sử dụng thuộc tính **epub_navigation_map_level**.

#### Xuất các mục danh sách sang Markdown <sup>23.1</sup>

Một cách để kiểm soát việc xuất các mục danh sách sang định dạng Markdown đã được cung cấp bằng cách thêm thuộc tính [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) vào lớp [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/).

#### Thông báo tiến trình lưu tài liệu <sup>23.3</sup>

Lưu thông báo tiến trình cho các định dạng MOBI và AZW3 đã được triển khai.

#### Điều chỉnh khoảng cách câu và từ <sup>23.3</sup>

Khả năng chỉ định xem có tự động điều chỉnh khoảng cách giữa các câu và từ khi nhập tài liệu hay không đã được thêm vào bằng cách giới thiệu thuộc tính [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/).

### Khác

- Khả năng chỉ định điều chỉnh khoảng cách ký tự của tài liệu đã được thêm thông qua triển khai thuộc tính [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) <sup>23.2</sup>
- Cách hướng dẫn Aspose.Words có bao gồm hộp văn bản, chú thích cuối trang và chú thích cuối trong thống kê số từ đã được cung cấp bằng cách thêm thuộc tính [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) <sup>23.2</sup>
- Một tùy chọn mới cho kiểu tài liệu, cho phép chỉ định xem kiểu đó có được xác định lại tự động hay không dựa trên giá trị thích hợp, đã được giới thiệu thông qua thuộc tính [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) <sup>23.2</sup>
- Khả năng xác định xem [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) có phải là hướng dẫn ngữ âm hay không đã được thêm bằng thuộc tính [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) <sup>23.4</sup>
- Một cách đơn giản để làm việc với chuỗi và trục của biểu đồ kết hợp đã được triển khai bằng cách giới thiệu lớp [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) và thêm thuộc tính [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
- Các thuộc tính công khai mới được kết nối với định vị và kích thước tương đối của hình dạng đã được thêm vào lớp [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) <sup>23.4</sup>
- Độ chính xác và hiệu suất tính toán độ sáng màu cho độ phân giải màu văn bản tự động đã được cải thiện theo phiên bản Microsoft Word <sup>23.4</sup> mới nhất

{{% alert color="primary" %}}

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 23.1](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 23.2](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 23.3](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-3-release-notes/).

Tìm hiểu thêm về [Ghi chú phát hành Aspose.Words cho Python via .NET 23.4](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Xem thêm

{{% alert color="primary" %}}

Trang này chứa các tin tức phát hành mới nhất trong 2 năm qua. Để biết chi tiết về các bản phát hành trước đó, hãy xem trang [Ghi chú phát hành'](https://releases.aspose.com/words/python/release-notes/) trong các phần liên quan.

{{% /alert %}}