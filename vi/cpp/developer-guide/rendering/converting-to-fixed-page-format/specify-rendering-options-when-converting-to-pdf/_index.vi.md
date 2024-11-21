---
title: Chỉ Định Các Tùy chọn Kết Xuất Khi Chuyển đổi thành PDF
second_title: Aspose.Words cho C++
articleTitle: Chỉ Định Các Tùy chọn Kết Xuất Khi Chuyển đổi thành PDF
linktitle: Chỉ Định Các Tùy chọn Kết Xuất Khi Chuyển đổi thành PDF
description: "Chuyển đổi tài liệu thành PDF với các tùy chọn nâng cao bằng C++. Sử dụng PdfSaveOptions để thay đổi kết quả lưu tài liệu thành định dạng PDF."
type: docs
weight: 30
url: /vi/cpp/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Định dạng PDF là định dạng trang cố định rất phổ biến đối với người dùng và được hỗ trợ rộng rãi bởi các ứng dụng khác nhau vì tài liệu PDF trông giống nhau trên mọi thiết bị. Vì lý do đó, chuyển đổi thành PDF là một tính năng quan trọng của Aspose.Words.

PDF là một định dạng phức tạp. Một số giai đoạn tính toán được yêu cầu trong quá trình chuyển đổi tài liệu thành PDF, bao gồm cả tính toán bố cục. Vì các giai đoạn này bao gồm các tính toán phức tạp, chúng tốn thời gian. Ngoài ra, định dạng PDF tự nó khá phức tạp. Nó có cấu trúc tệp cụ thể, mô hình đồ họa và nhúng phông chữ. Hơn nữa, nó có một số chức năng đầu ra phức tạp, chẳng hạn như thẻ cấu trúc tài liệu, mã hóa, chữ ký số và các biểu mẫu có thể chỉnh sửa.

Aspose.Words công cụ bố cục bắt chước cách công cụ bố cục trang của Microsoft Word hoạt động. Do đó, Aspose.Words làm cho PDF tài liệu đầu ra trông càng gần càng tốt với những gì bạn có thể thấy trong Microsoft Word. Đôi khi cần chỉ định các tùy chọn bổ sung, điều này có thể ảnh hưởng đến kết quả lưu tài liệu vào định dạng PDF. Các tùy chọn này có thể được chỉ định bằng cách sử dụng lớp [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members), chứa các thuộc tính xác định cách đầu ra PDF sẽ được hiển thị.

Một số ví dụ về việc sử dụng **PdfSaveOptions** được cung cấp dưới đây.

{{% alert color="primary" %}}

Hiện tại, bạn có thể lưu vào PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A- 1 b, PDF/A- 2 a, PDF/A- 2 u vàPDF/UA- 1 định dạng. Sử dụng liệt kê [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) để đặt mức tuân thủ tiêu chuẩn PDF. Lưu ý rằng với định dạng PDF/A, kích thước tệp đầu ra lớn hơn kích thước tệp PDF thông thường.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) và [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) được đánh dấu là lỗi thời.

Để biết thêm thông tin về PDF/A, hãy xem bài viết tiếp theo, "Tìm Hiểu Các Tính năng Chuyển đổi thành PDF/A".

{{% /alert %}}

## Tạo Tài liệu PDF Với Các Biểu mẫu Có Thể Điền

Cũng có thể xuất các biểu mẫu có thể điền từ tài liệu Microsoft Word thành đầu ra PDF, có các biểu mẫu có thể điền thay vì văn bản thuần túy. Sử dụng thuộc tính [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/) để lưu tài liệu dưới dạng PDF với các biểu mẫu có thể điền.

Lưu ý rằng trái ngược với Microsoft Word, định dạng PDF có một số tùy chọn hạn chế cho các biểu mẫu có thể chỉnh sửa, chẳng hạn như hộp văn bản, hộp tổ hợp và hộp kiểm. Microsoft Word có nhiều loại biểu mẫu hơn, ví dụ: bộ chọn ngày theo lịch. Nói chung, không thể bắt chước hoàn toàn hành vi Microsoft Word trong PDF. Do đó, trong một số trường hợp phức tạp, đầu ra PDF có thể khác với những gì bạn thấy trong Microsoft Word.

Ví dụ mã dưới đây cho thấy cách lưu tài liệu dưới dạng PDF với các biểu mẫu có thể điền với chất lượng và nén jpeg được chỉ định:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## Xuất Cấu Trúc Tài liệu Và Thuộc tính Tùy Chỉnh

Thuộc tính [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) cho phép bạn xuất cấu trúc tài liệu sang đầu ra PDF.

PDF các cơ sở cấu trúc logic cung cấp một cơ chế để kết hợp thông tin, liên quan đến cấu trúc nội dung tài liệu, vào một tệp PDF. Aspose.Words lưu giữ thông tin về cấu trúc từ tài liệu Microsoft Word, chẳng hạn như đoạn văn, danh sách, bảng, chú thích cuối trang/chú thích cuối trang, v. v.

Ví dụ sau đây trình bày cách lưu tài liệu sang định dạng PDF, bảo toàn cấu trúc tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words cũng cho phép bạn xuất các thuộc tính tùy chỉnh của tài liệu sang PDF, được thể hiện bằng ví dụ sau:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## Xuất Phác thảo Từ Dấu Trang và Tiêu đề Trong Đầu ra PDF

Nếu bạn muốn xuất dấu trang dưới dạng phác thảo trong output PDF, bạn có thể sử dụng thuộc tính [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/). Thuộc tính này chỉ định mức mặc định trong phác thảo tài liệu, tại đó Microsoft Word dấu trang được hiển thị. Nếu tài liệu chứa dấu trang trong tiêu đề/chân trang của tài liệu, bạn có thể đặt thuộc tính [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) thành [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) hoặc [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) để chỉ định cách chúng được xuất trong đầu ra PDF. Dấu trang trong tiêu đề / chân trang không được xuất khi giá trị của **HeaderFooterBookmarksExportMode** là [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/).

Ví dụ mã dưới đây cho thấy cách xuất dấu trang từ tiêu đề/chân trang đầu tiên của phần:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

Đầu ra PDF của ví dụ này được hiển thị bên dưới:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

Khi **HeaderFooterBookmarksExportMode** Được đặt Thành Đầu tiên và tài liệu có đầu trang/chân trang chẵn và lẻ hoặc đầu trang/chân trang đầu tiên khác, dấu trang được xuất cho đầu trang/chân trang duy nhất đầu tiên trong một phần.

Bạn cũng có thể xuất các tiêu đề trong đầu ra PDF, sử dụng thuộc tính [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/). Thuộc tính này chỉ định có bao nhiêu cấp độ tiêu đề được bao gồm trong phác thảo tài liệu.

Ví dụ mã dưới đây cho thấy cách xuất tiêu đề với ba cấp độ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

Đầu ra PDF của ví dụ này được mô tả bên dưới:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Dấu trang hoặc điều hướng tiêu đề có thể có sự xuất hiện khác nhau ở nhiều người xem PDF khác nhau. Hơn nữa, trong một số ứng dụng, dấu trang và điều hướng tiêu đề không có sẵn trong UI.

{{% /alert %}}

## Downsampling Hình ảnh Để Giảm Kích Thước Tài liệu

Aspose.Words cung cấp khả năng hạ mẫu hình ảnh để giảm kích thước đầu ra PDF, sử dụng thuộc tính [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/). Downsampling được bật theo mặc định trong thuộc tính [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/).

Lưu ý rằng cũng có thể đặt độ phân giải cụ thể trong thuộc tính [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/) hoặc ngưỡng độ phân giải trong thuộc tính [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/). Trong trường hợp thứ hai, nếu độ phân giải hình ảnh nhỏ hơn giá trị ngưỡng, thì việc lấy mẫu xuống sẽ không được áp dụng.

Ví dụ mã dưới đây hiển thị cách thay đổi độ phân giải của hình ảnh trong tài liệu PDF đầu ra:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

Độ phân giải được tính theo kích thước hình ảnh thực trên trang.

## Nhúng Phông Chữ Ở Định Dạng Adobe PDF

Aspose.Words cũng cho phép bạn kiểm soát cách các phông chữ được nhúng vào tài liệu PDF kết quả. Phông chữ cần được nhúng vào bất kỳ Tài liệu Adobe PDF nào để đảm bảo rằng tài liệu có thể được hiển thị chính xác trên bất kỳ máy nào (xem thêm chi tiết về kết xuất phông chữ trong phần [Sử Dụng Phông Chữ TrueType](/words/cpp/using-truetype-fonts/)). Theo mặc định, Aspose.Words nhúng một tập hợp con các phông chữ được sử dụng trong tài liệu vào PDF được tạo. Trong trường hợp này, chỉ các glyphs (ký tự) được sử dụng trong tài liệu được lưu vào PDF.

### Khi Nào Sử dụng Phông Chữ Đầy đủ Và Khi Nào Nên Tập Hợp Con

Có một cách để chỉ định một tùy chọn cho Aspose.Words để nhúng phông chữ đầy đủ. Chi tiết hơn, cùng với một số ưu điểm và nhược điểm của từng cài đặt được mô tả trong bảng dưới đây.

| Nhúng Phông Chữ Chế Độ | Ưu điểm | Nhược điểm |
| :- | :- | :- |
| `Full` | Hữu ích khi bạn muốn chỉnh sửa kết quả PDF sau này bằng cách thêm hoặc sửa đổi văn bản. Tất cả các phông chữ được bao gồm, do đó tất cả các glyphs có mặt. | Vì một số phông chữ lớn (vài megabyte), việc nhúng chúng mà không đặt con có thể dẫn đến các tệp đầu ra lớn. |
| `Subset` | Đặt con rất hữu ích nếu bạn muốn giữ kích thước tệp đầu ra nhỏ hơn. | <p>Người dùng không thể thêm hoặc chỉnh sửa hoàn toàn văn bản bằng phông chữ được đặt con trong tài liệu PDF đầu ra. Điều này là do không phải tất cả các glyphs của phông chữ đều có mặt.</p><p>Nếu nhiều PDFs được lưu với các phông chữ được đặt con và được tập hợp lại với nhau, thì tài liệu PDF kết hợp có thể có một phông chữ chứa nhiều tập con không cần thiết.</p> |

### Nhúng Phông Chữ Đầy đủ trong PDF

Thuộc tính [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) cho phép bạn chỉ định cách Aspose.Words nhúng phông chữ vào tài liệu PDF đầu ra.

- Để nhúng phông chữ đầy đủ vào tài liệu PDF đầu ra, hãy đặt **EmbedFullFonts** thành true
- Để tập hợp các phông chữ khi lưu vào PDF, hãy đặt **EmbedFullFonts** thành false

Ví dụ sau đây trình bày cách nhúng phông chữ đầy đủ vào tài liệu PDF đầu ra:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

Ví dụ sau đây trình bày cách đặt Aspose.Words thành phông chữ tập hợp con trong đầu ra PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu cho các ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Cách Kiểm Soát Nhúng Phông Chữ Lõi và Windows Phông Chữ Tiêu chuẩn

Phông chữ cốt lõi và Phông Chữ tiêu chuẩn Windows là các bộ phông chữ "tiêu chuẩn", thường có trên máy đích hoặc được cung cấp bởi trình đọc tài liệu, do đó chúng không cần phải được nhúng vào đầu ra PDF. Bằng cách không nhúng các phông chữ này, bạn có thể giảm kích thước của tài liệu PDF được hiển thị và vẫn duy trì tính di động.

Aspose.Words cung cấp các tùy chọn để chọn cách xuất phông chữ sang PDF. Bạn có thể chọn nhúng lõi và phông chữ tiêu chuẩn vào đầu ra PDF hoặc bỏ qua nhúng chúng và sử dụng phông chữ lõi tiêu chuẩn PDF hoặc phông chữ hệ thống trên máy đích thay thế. Sử dụng một trong các tùy chọn này thường dẫn đến giảm kích thước tệp đáng kể cho PDF tài liệu được tạo bởi Aspose.Words.

- Vì các tùy chọn này loại trừ lẫn nhau, bạn chỉ nên chọn một tùy chọn tại một thời điểm.
- Khi lưu với sự tuân thủ PDF/A-1, tất cả các phông chữ đã sử dụng phải được nhúng với tài liệu PDF. Khi lưu với sự tuân thủ này, thuộc tính [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) phải được đặt thành false và thuộc tính [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) phải được đặt thành [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/) [.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Nhúng Phông Chữ Lõi

Tùy chọn nhúng Phông Chữ Lõi có thể được bật hoặc tắt bằng cách sử dụng thuộc tính `UseCoreFonts`. Khi nó được đặt thành true, các phông chữ "True Type" phổ biến nhất sau đây (Phông Chữ Cơ Sở 14) không được nhúng trong tài liệu đầu ra PDF:

`Arial`
`Times New Roman`
`Courier New`
`Symbol`

Các phông chữ này được thay thế bằng phông chữ core Type 1 tương ứng, được cung cấp bởi trình đọc khi PDF được mở.

Ví dụ được cung cấp dưới đây cho thấy cách đặt Aspose.Words để tránh nhúng phông chữ lõi và để người đọc thay thế chúng bằng phông chữ PDF Loại 1:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu cho ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Vì PDF người xem cung cấp phông chữ cốt lõi trên bất kỳ nền tảng được hỗ trợ nào, tùy chọn này cũng hữu ích khi yêu cầu tính di động của tài liệu lớn hơn. Tuy nhiên, phông chữ cốt lõi có thể trông khác với phông chữ hệ thống.

{{% alert color="primary" %}}

Cài đặt này chỉ hoạt động cho văn bản mã hóa ANSI (Windows-1252). Viết một văn bản khôngANSI thành PDF sẽ luôn yêu cầu các phông chữ tương ứng được nhúng.

{{% /alert %}}

### Nhúng Phông Chữ Hệ Thống

Tùy chọn này có thể được bật hoặc tắt bằng cách sử dụng thuộc tính [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/). Khi thuộc tính này được đặt thành [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), phông chữ kiểu đúng "Arial" và "Times New Roman" không được nhúng vào tài liệu PDF. Trong trường hợp này, trình xem máy khách dựa vào các phông chữ được cài đặt trên hệ điều hành của máy khách. Khi thuộc tính **FontEmbeddingMode** được đặt thành [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), Aspose.Words không nhúng bất kỳ phông chữ nào.

Ví dụ dưới đây cho thấy cách đặt Aspose.Words để bỏ qua Việc nhúng Phông Chữ Arial Và Times New Roman vào tài liệu PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

Chế độ này hữu ích nhất khi bạn muốn xem tài liệu của mình trên cùng một nền tảng, giữ nguyên giao diện chính xác của phông chữ trong đầu ra PDF.

{{% alert color="primary" %}}

Cài đặt này chỉ hoạt động cho văn bản mã hóa ANSI (Windows-1252). Viết một văn bản khôngANSI thành PDF yêu cầu nhúng phông chữ tương ứng.

{{% /alert %}}
