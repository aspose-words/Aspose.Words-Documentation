---
title: Chỉ định tùy chọn render khi chuyển đổi sang PDF
second_title: Aspose.Words cho Java
articleTitle: Chỉ định tùy chọn render khi chuyển đổi sang PDF
linktitle: Chỉ định tùy chọn render khi chuyển đổi sang PDF
description: "Chuyển đổi tài liệu thành tệp PDF với các tùy chọn nâng cao. Sử dụng PdfSaveOptions để thay đổi kết quả khi lưu một tài liệu sang định dạng PDF bằng cách sử dụng Java."
type: docs
weight: 20
url: /vi/java/specify-rendering-options-when-converting-to-pdf/
---

Định dạng PDF là một định dạng cố định trang rất phổ biến trong người dùng và được hỗ trợ rộng rãi bởi các ứng dụng khác nhau vì tài liệu PDF trông giống nhau trên bất kỳ thiết bị nào. Vì lý do đó, chuyển đổi sang PDF là một tính năng quan trọng của Aspose.Words.

Định dạng PDF là một định dạng phức tạp. Một vài bước tính toán cần thiết trong quá trình chuyển đổi một tài liệu sang định dạng PDF, bao gồm cả tính toán bố cục. Vì những giai đoạn này bao gồm các phép tính phức tạp, nên chúng mất nhiều thời gian. Ngoài ra thì định dạng PDF khá phức tạp một mình nó. Nó có một cấu trúc tập tin cụ thể, đồ họa mô hình và chèn phông chữ. Ngoài ra, nó còn có chức năng xử lý các tập tin đầu ra phức tạp, như thẻ cấu trúc tài liệu, mã hóa, chữ ký số và biểu mẫu có thể chỉnh sửa.

Aspose.Words động cơ bố cục bắt chước cách thức hoạt động của động cơ bố cục trang Microsoft Word. Do đó, Aspose.Words làm cho tài liệu PDF được tạo ra trông giống nhất có thể với những gì bạn có thể thấy trong Microsoft Word. Đôi khi cần phải chỉ định các tùy chọn bổ sung, có thể ảnh hưởng đến kết quả lưu tài liệu vào định dạng PDF. Những tùy chọn này có thể được chỉ định bằng cách sử dụng lớp [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/), chứa các thuộc tính xác định cách xuất ra PDF sẽ được hiển thị.

Một số ví dụ về cách sử dụng **PdfSaveOptions** được cung cấp ở dưới đây.

{{% alert color="primary" %}}

Hiện tại bạn có thể lưu sang định dạng PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u và PDF/UA-1. Sử dụng " [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) " trong enum để thiết lập mức tuân thủ tiêu chuẩn của PDF. Nhớ rằng với định dạng PDF/A, kích thước tập tin đầu ra lớn hơn so với kích thước tập tin PDF thông thường.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) và [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) đã được đánh dấu là lỗi thời

Để biết thêm thông tin về PDF/A, xem bài viết tiếp theo "Học những tính năng chuyển đổi sang PDF/A".

{{% /alert %}}

## Tạo một tài liệu PDF với biểu mẫu có thể điền vào

Nó cũng có thể xuất các biểu mẫu có thể điền từ một Microsoft Word tài liệu vào PDF đầu ra, có các biểu mẫu có thể điền thay vì văn bản thông thường. Sử dụng thuộc tính [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) để lưu tài liệu dưới dạng PDF với các mẫu điền vào.

Quan trọng là ở chỗ, khác với Microsoft Word, định dạng PDF có một số lượng hạn chế các tùy chọn cho biểu mẫu có thể chỉnh sửa như hộp văn bản, hộp kết hợp, và hộp kiểm. Microsoft Word có nhiều loại biểu mẫu hơn, ví dụ như trình chọn ngày lịch. Thông thường, không thể làm sao để bắt chước hoàn toàn hành vi của Microsoft Word trong PDF. Do đó, trong một số trường hợp phức tạp, kết quả PDF có thể khác với những gì bạn thấy ở Microsoft Word.

Ví dụ về mã dưới cho thấy cách lưu tài liệu PDF với biểu mẫu có thể điền với nén JPEG và chất lượng được chỉ định:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Xuất cấu trúc tài liệu và thuộc tính tùy chỉnh

Cái thuộc tính [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) cho phép bạn xuất cấu trúc tài liệu vào đầu ra của PDF.

Các tiện ích cấu trúc logic của PDF cung cấp cơ chế cho việc đưa thông tin liên quan đến cấu trúc nội dung tài liệu vào một tập tin PDF. Aspose.Words bảo tồn thông tin về cấu trúc từ một Microsoft Word tài liệu, chẳng hạn như đoạn văn, danh sách, bảng, chú thích và ghi chú cuối trang, v.v.

Ví dụ sau cho thấy cách lưu một tài liệu theo định dạng PDF, giữ nguyên cấu trúc của tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words cũng cho phép bạn xuất các thuộc tính tùy chỉnh của tài liệu sang PDF, điều này được chứng minh bởi ví dụ sau:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Xuất ra đường viền từ các dấu ngoặc và tiêu đề trong PDF đầu ra

Nếu bạn muốn xuất bookmark dưới dạng các dòng trong PDF đầu ra, bạn có thể sử dụng thuộc tính [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel). Tính năng này chỉ định mức mặc định trong sơ đồ tài liệu, tại đó có Microsoft Word dấu đánh dấu được hiển thị. Nếu tài liệu chứa bookmark trong phần tiêu đề hoặc chân trang của tài liệu, bạn có thể đặt thuộc tính [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) thành [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) hay [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) để chỉ định cách xuất chúng vào tệp PDF đầu ra. Dấu trang trong tiêu đề/chân trang không được xuất khẩu khi giá trị của **HeaderFooterBookmarksExportMode** là [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

Mã ví dụ dưới đây cho thấy cách xuất bookmark từ phần đầu/thân trang đầu tiên của một phần:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

Kết quả PDF của ví dụ này được hiển thị bên dưới:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](specify-rendering-options-when-converting-to-pdf-1.png)

Khi **HeaderFooterBookmarksExportMode** được đặt ở [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) và tài liệu có tiêu đề đầu trang khác nhau hoặc chân trang hoặc một tiêu đề trang đầu tiên khác nhau, bookmark xuất ra cho các tiêu đề đầu trang / chân trang duy nhất đầu tiên trong một phần.

Bạn cũng có thể xuất các tiêu đề trong tệp PDF đầu ra bằng cách sử dụng thuộc tính [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels). Tính chất này chỉ định số lượng cấp độ của các tiêu đề được đưa vào bản phác thảo tài liệu.

Mã ví dụ bên dưới cho thấy cách xuất các tiêu đề có ba cấp độ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

Kết quả PDF của ví dụ này được mô tả dưới đây:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

A bookmark hoặc heading navigation có thể hiển thị khác nhau trong các trình xem PDF khác nhau. Ngoài ra, trong một số ứng dụng, bookmark và hướng dẫn điều hướng không có sẵn trong giao diện người dùng.

{{% /alert %}}

## Giảm kích thước hình ảnh để giảm kích thước tài liệu

Aspose.Words cung cấp khả năng thu nhỏ hình ảnh để giảm kích thước của tập tin PDF đầu ra, sử dụng thuộc tính [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions). Downsampling được bật mặc định trong thuộc tính [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) này.

Lưu ý rằng nó cũng có thể để thiết lập một độ phân giải cụ thể trong [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) thuộc tính, hoặc một ngưỡng độ phân giải trong [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) thuộc tính. Trong trường hợp thứ hai, nếu độ phân giải hình ảnh nhỏ hơn giá trị ngưỡng, thì giảm lấy mẫu sẽ không áp dụng.

Mã ví dụ sau cho thấy cách thay đổi độ phân giải của hình ảnh trong một tài liệu PDF đầu ra:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

Độ phân giải được tính toán theo kích thước hình ảnh thực trên trang.

## Đóng Cấy Phông chữ trong Định Dạng Adobe PDF

Aspose.Words cũng cho phép bạn kiểm soát cách kiểu chữ được nhúng trong tài liệu PDF kết quả. Phông chữ cần phải nhúng vào bất kỳ tài liệu PDF của Adobe nào để đảm bảo rằng tài liệu có thể được hiển thị chính xác trên bất kỳ máy tính nào (xem thêm chi tiết về việc hiển thị phông chữ trong phần [Using TrueType Fonts](/words/java/using-truetype-fonts/)). Theo mặc định, Aspose.Words nhúng một tập hợp các phông chữ được sử dụng trong tài liệu vào tập tin PDF được tạo ra. Trong trường hợp này, chỉ những ký tự glyph được sử dụng trong tài liệu là được lưu vào PDF.

### Khi nào nên dùng Full fonts và khi nào nên dùng Subsets

Có cách chỉ định một tùy chọn cho Aspose.Words để nhúng toàn bộ phông chữ. Chi tiết thêm, cùng với một số lợi ích và bất lợi của mỗi cài đặt được mô tả trong bảng dưới đây.

| Chế độ font nhúng | Ưu điểm | Nhược điểm |
| :- | :- | :- |
| `Full` | Dùng khi bạn muốn chỉnh sửa tập tin PDF kết quả sau đó bằng cách thêm hoặc thay đổi văn bản. Tất cả phông chữ được bao gồm, vì vậy tất cả các glyphs hiện diện. | Vì một số phông chữ khá lớn (vài chục megabyte), nhúng chúng mà không phân chia thành từng phần có thể tạo ra các tập tin đầu ra to. |
| `Subset` | Phân đoạn phụ hữu ích nếu bạn muốn giữ kích thước tệp đầu ra nhỏ hơn. | <p>Người dùng không thể thêm hoặc chỉnh sửa đầy đủ văn bản bằng phông chữ đã được chọn trong tài liệu PDF đầu ra. Đây vì không phải tất cả các glyph của phông chữ đều có mặt.</p> <p>Nếu nhiều tệp PDF được lưu với phông chữ phân đoạn và sắp xếp lại với nhau, thì tài liệu PDF kết hợp có thể có một phông chữ chứa nhiều phụ đoạn không cần thiết.</p> |

### Nhúng đầy đủ phông chữ vào PDF

Cụm từ [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) cho phép bạn chỉ định cách thức mà Aspose.Words nhúng phông chữ vào một tài liệu PDF đầu ra.

- Để nhúng tập chữ đầy đủ vào tài liệu PDF đầu ra, thiết lập **EmbedFullFonts** thành true
"- Để tập con phông khi lưu sang pdf, hãy đặt **EmbedFullFonts** bằng false"

Ví dụ sau đây cho thấy cách nhúng bộ phông chữ đầy đủ trong tài liệu PDF đầu ra:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

Ví dụ sau này cho thấy cách thiết lập Aspose.Words để phông chữ con trong tập tin PDF đầu ra:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tập tin mẫu cho những ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Làm thế nào để kiểm soát các phông chữ nhúng lõi và Windows các phông chữ tiêu chuẩn

Các phông chữ cơ bản và Windows Phông chữ tiêu chuẩn là các bộ phông chữ tiêu chuẩn thường được có sẵn trên máy đích hoặc được cung cấp bởi trình đọc tài liệu, vì vậy chúng không cần phải được nhúng trong tập tin PDF đầu ra. Bằng cách không nhúng những phông chữ này, bạn có thể giảm kích thước của các tài liệu PDF đã được xử lý và vẫn giữ lại tính di động.

Aspose.Words cung cấp các tùy chọn để chọn cách phông chữ được xuất ra PDF. Bạn có thể chọn để nhúng các phông chữ cốt lõi và tiêu chuẩn vào tập tin PDF đầu ra hoặc bỏ qua việc nhúng và sử dụng các phông chữ PDF cốt lõi tiêu chuẩn hoặc hệ thống trên máy mục tiêu thay thế. Sử dụng một trong các tùy chọn này thường dẫn đến giảm đáng kể kích thước tập tin cho các tài liệu PDF được tạo bởi Aspose.Words.

"- Vì những lựa chọn này là độc lập lẫn nhau, bạn chỉ nên chọn một trong số đó vào mỗi thời điểm."
"- Khi lưu với PDF/A-1 tuân thủ, tất cả phông chữ được sử dụng phải được nhúng trong tài liệu PDF." Khi lưu với mức tuân thủ này, thuộc tính [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) phải được đặt thành false và thuộc tính [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) phải được đặt thành [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Nhúng phông chữ cơ bản

Tùy chọn nhúng phông chữ core có thể được bật hoặc tắt bằng cách sử dụng thuộc tính [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts). Khi được đặt thành true, các font "True Type" phổ biến nhất (các font Base 14) không được nhúng vào tài liệu PDF đầu ra:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Những phông chữ này thay thế bằng phông chữ Type 1 tương ứng, mà được cung cấp bởi người đọc khi PDF mở ra.

Ví dụ được đưa ra bên dưới cho thấy cách đặt Aspose.Words để tránh nhúng các phông chữ cốt lõi và để người đọc thay thế chúng bằng phông chữ PDF Type 1

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tập tin mẫu cho ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Vì trình xem pdf cung cấp các phông chữ cốt lõi trên bất kỳ nền tảng nào được hỗ trợ, tùy chọn này cũng hữu ích khi cần di động tài liệu nhiều hơn. Tuy nhiên, các phông chữ tiêu chuẩn có thể trông khác với các phông chữ của hệ thống.

{{% alert color="primary" %}}

Cài đặt này chỉ áp dụng cho văn bản mã hóa ASCII ( Windows -1252). Viết bản văn không phải ANSI sang PDF sẽ luôn cần các phông chữ tương ứng được nhúng.

{{% /alert %}}

### Phông chữ hệ thống nhúng

Tùy chọn này có thể được kích hoạt hoặc tắt bằng cách sử dụng thuộc tính [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode). Khi tính năng này được đặt ở mức [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), các phông chữ "Arial" và "Times New Roman" true không được nhúng vào một tài liệu PDF. Trong trường hợp này, trình xem khách hàng dựa vào các phông chữ được cài đặt trên hệ điều hành của khách hàng. Khi thuộc tính **FontEmbeddingMode** được đặt là [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words không nên nhúng bất kỳ phông chữ nào.

Ví dụ dưới đây cho thấy cách đặt Aspose.Words để bỏ qua việc nhúng phông chữ Arial và Times New Roman vào một tài liệu PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Chế độ này hữu ích nhất khi bạn muốn xem tài liệu của mình trên cùng một nền tảng, giữ nguyên sự xuất hiện chính xác của phông chữ trong tệp PDF đầu ra.

{{% alert color="primary" %}}

Cài đặt này chỉ hoạt động cho văn bản mã hóa ASCII (Windows-1252). Viết văn bản không phải là ANSI vào PDF yêu cầu bộ chữ tương ứng phải được nhúng.

{{% /alert %}}
