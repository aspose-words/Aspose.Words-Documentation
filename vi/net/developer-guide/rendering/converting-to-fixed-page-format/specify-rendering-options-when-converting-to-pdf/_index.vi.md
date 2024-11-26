---
title: Tùy chọn khi chuyển đổi sang PDF
second_title: Aspose.Words cho .NET
articleTitle: Chỉ định tùy chọn hiển thị khi chuyển đổi sang PDF
linktitle: Chỉ định tùy chọn hiển thị khi chuyển đổi sang PDF
description: "Chuyển đổi tài liệu sang PDF với các tùy chọn nâng cao bằng C#. Chuyển đổi biểu mẫu DOCX sang PDF C#. Sử dụng PdfSaveOptions để thay đổi kết quả lưu tài liệu thành PDF."
type: docs
weight: 20
url: /vi/net/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Định dạng PDF là định dạng trang cố định rất phổ biến đối với người dùng và được nhiều ứng dụng khác nhau hỗ trợ rộng rãi vì tài liệu PDF trông giống nhau trên mọi thiết bị. Vì lý do đó, chuyển đổi sang PDF là một tính năng quan trọng của Aspose.Words.

PDF là một định dạng phức tạp. Một số giai đoạn tính toán được yêu cầu trong quá trình chuyển đổi tài liệu sang PDF, bao gồm cả tính toán bố cục. Vì các giai đoạn này bao gồm các tính toán phức tạp nên chúng tốn nhiều thời gian. Ngoài ra, bản thân định dạng PDF khá phức tạp. Nó có cấu trúc tệp, mô hình đồ họa và nhúng phông chữ cụ thể. Hơn nữa, nó có một số chức năng đầu ra phức tạp, chẳng hạn như thẻ cấu trúc tài liệu, mã hóa, chữ ký số và các biểu mẫu có thể chỉnh sửa.

Công cụ bố cục Aspose.Words bắt chước cách hoạt động của công cụ bố cục trang của Microsoft Word. Do đó, Aspose.Words làm cho tài liệu đầu ra PDF trông giống nhất có thể với những gì bạn có thể thấy trong Microsoft Word. Đôi khi cần phải chỉ định các tùy chọn bổ sung, điều này có thể ảnh hưởng đến kết quả lưu tài liệu sang định dạng PDF. Các tùy chọn này có thể được chỉ định bằng cách sử dụng lớp [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/), chứa các thuộc tính xác định cách hiển thị đầu ra PDF.

Một số ví dụ về việc sử dụng **PdfSaveOptions** được cung cấp dưới đây.

{{% alert color="primary" %}}

Hiện tại, bạn có thể lưu sang các định dạng PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u và PDF/UA-1. Sử dụng bảng liệt kê [PdfCompliance](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) để đặt mức tuân thủ các tiêu chuẩn PDF. Lưu ý rằng với định dạng PDF/A, kích thước tệp đầu ra lớn hơn kích thước tệp PDF thông thường.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) và [PdfCompliance.PdfA1b](https://reference.aspose.com/words/net/aspose.words.saving/pdfcompliance/) được đánh dấu là lỗi thời.

Để biết thêm thông tin về PDF/A, hãy xem bài viết tiếp theo, "Tìm hiểu các tính năng chuyển đổi sang PDF/A".

{{% /alert %}}

## Tạo tài liệu PDF với các biểu mẫu có thể điền

Cũng có thể xuất các biểu mẫu có thể điền từ tài liệu Microsoft Word sang tệp PDF đầu ra, có các biểu mẫu có thể điền thay vì văn bản thuần túy. Sử dụng thuộc tính [PreserveFormFields](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/preserveformfields/) để lưu tài liệu dưới dạng PDF với các biểu mẫu có thể điền.

Lưu ý rằng trái ngược với Microsoft Word, định dạng PDF có một số tùy chọn hạn chế cho các biểu mẫu có thể chỉnh sửa, chẳng hạn như hộp văn bản, hộp tổ hợp và hộp kiểm. Microsoft Word có nhiều loại biểu mẫu hơn, chẳng hạn như bộ chọn ngày theo lịch. Nói chung, không thể bắt chước hoàn toàn hành vi Microsoft Word trong PDF. Do đó, trong một số trường hợp phức tạp, đầu ra PDF có thể khác với những gì bạn thấy trong Microsoft Word.

Ví dụ về mã bên dưới cho thấy cách lưu tài liệu dưới dạng PDF với các biểu mẫu có thể điền với chất lượng và độ nén Jpeg được chỉ định:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageCompression.cs" >}}

## Xuất cấu trúc tài liệu và thuộc tính tùy chỉnh

Thuộc tính [https://reference.aspose.com/words/net/aspose.words. Saving/pdfsaveoptions/properties/exportdocumentstructure) cho phép bạn xuất cấu trúc tài liệu sang đầu ra PDF.

Cơ sở cấu trúc logic PDF cung cấp cơ chế kết hợp thông tin liên quan đến cấu trúc nội dung tài liệu vào tệp PDF. Aspose.Words lưu giữ thông tin về cấu trúc từ tài liệu Microsoft Word, chẳng hạn như đoạn văn, danh sách, bảng, chú thích cuối trang/chú thích cuối, v.v.

Ví dụ sau đây minh họa cách lưu tài liệu sang định dạng PDF, giữ nguyên cấu trúc tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cs" >}}

Aspose.Words cũng cho phép bạn xuất các thuộc tính tùy chỉnh của tài liệu sang PDF, được minh họa bằng ví dụ sau:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cs" >}}

## Xuất dàn ý từ dấu trang và tiêu đề trong tệp PDF đầu ra

Nếu bạn muốn xuất dấu trang dưới dạng đường viền trong tệp PDF đầu ra, bạn có thể sử dụng thuộc tính [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/defaultbookmarksoutlinelevel/). Thuộc tính này chỉ định mức mặc định trong đường viền tài liệu, tại đó dấu trang Microsoft Word được hiển thị. Nếu tài liệu chứa dấu trang ở đầu trang/chân trang của tài liệu, bạn có thể đặt thuộc tính [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/headerfooterbookmarksexportmode/) thành [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) hoặc [All](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) để chỉ định cách chúng được xuất trong tệp PDF đầu ra. Dấu trang ở đầu trang/chân trang không được xuất khi giá trị của **HeaderFooterBookmarksExportMode** là [None](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/).

Ví dụ về mã bên dưới cho thấy cách xuất dấu trang từ đầu trang/chân trang đầu tiên của một phần:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cs" >}}

Bản PDF đầu ra của ví dụ này được hiển thị bên dưới:

![specify-rendering-options-when-converting-to-pdf_1](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Khi **HeaderFooterBookmarksExportMode** được đặt thành [First](https://reference.aspose.com/words/net/aspose.words.saving/headerfooterbookmarksexportmode/) và tài liệu có đầu trang/chân trang chẵn và lẻ hoặc đầu trang/chân trang của trang đầu tiên khác, dấu trang sẽ được xuất cho đầu trang/chân trang duy nhất đầu tiên trong một phần.

Bạn cũng có thể xuất các tiêu đề trong tệp PDF đầu ra bằng cách sử dụng thuộc tính [HeadingsOutlineLevels](https://reference.aspose.com/words/net/aspose.words.saving/outlineoptions/headingsoutlinelevels/). Thuộc tính này chỉ định có bao nhiêu cấp độ tiêu đề được đưa vào dàn ý tài liệu.

Ví dụ mã bên dưới cho thấy cách xuất tiêu đề với ba cấp độ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cs" >}}

PDF đầu ra của ví dụ này được mô tả bên dưới:

![specify-rendering-options-when-converting-to-pdf_2](/words/net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Điều hướng dấu trang hoặc tiêu đề có thể có giao diện khác nhau trong nhiều trình xem PDF khác nhau. Hơn nữa, trong một số ứng dụng, dấu trang và điều hướng tiêu đề không có sẵn trong giao diện người dùng.

{{% /alert %}}

## Giảm kích thước hình ảnh để giảm kích thước tài liệu

Aspose.Words cung cấp khả năng giảm mẫu hình ảnh để giảm kích thước PDF đầu ra bằng cách sử dụng thuộc tính [DownsampleOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/downsampleoptions/). Tính năng lấy mẫu xuống được bật theo mặc định trong thuộc tính [DownsampleImages](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/downsampleimages/).

Lưu ý rằng cũng có thể đặt độ phân giải cụ thể trong thuộc tính [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/) hoặc ngưỡng độ phân giải trong thuộc tính [ResolutionThreshold](https://reference.aspose.com/words/net/aspose.words.saving/downsampleoptions/resolution/threshold). Trong trường hợp thứ hai, nếu độ phân giải hình ảnh nhỏ hơn giá trị ngưỡng thì việc lấy mẫu xuống sẽ không được áp dụng.

Ví dụ mã bên dưới hiển thị cách thay đổi độ phân giải của hình ảnh trong tài liệu PDF đầu ra:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cs" >}}

Độ phân giải được tính theo kích thước ảnh thật trên trang.

## Nhúng phông chữ ở định dạng Adobe PDF

Aspose.Words cũng cho phép bạn kiểm soát cách nhúng phông chữ vào tài liệu PDF thu được. Phông chữ cần được nhúng vào bất kỳ tài liệu Adobe PDF nào để đảm bảo rằng tài liệu đó có thể được hiển thị chính xác trên bất kỳ máy nào (xem thêm chi tiết về hiển thị phông chữ trong phần [Sử dụng phông chữ TrueType](/words/vi/net/using-truetype-fonts/)). Theo mặc định, Aspose.Words nhúng một tập hợp con phông chữ được sử dụng trong tài liệu vào tệp PDF được tạo. Trong trường hợp này, chỉ các glyph (ký tự) được sử dụng trong tài liệu mới được lưu vào PDF.

### Khi nào nên sử dụng phông chữ đầy đủ và khi nào nên đặt phông chữ con

Có một cách để chỉ định tùy chọn để Aspose.Words nhúng phông chữ đầy đủ. Thông tin chi tiết hơn, cùng với một số ưu điểm và nhược điểm của từng cài đặt được mô tả trong bảng bên dưới.

| Chế độ nhúng phông chữ |  Thuận lợi | Nhược điểm |
|  :-  |  :-  |  :-  |
|  `Full`  | Hữu ích khi bạn muốn chỉnh sửa tệp PDF thu được sau này bằng cách thêm hoặc sửa đổi văn bản. Tất cả các phông chữ đều được bao gồm, do đó tất cả các glyph đều có mặt. | Vì một số phông chữ có kích thước lớn (vài megabyte), việc nhúng chúng mà không cài đặt lại có thể tạo ra các tệp đầu ra lớn. |
|  `Subset`  | Việc đặt lại rất hữu ích nếu bạn muốn giữ kích thước tệp đầu ra nhỏ hơn. | <p>Người dùng không thể thêm hoặc chỉnh sửa hoàn toàn văn bản bằng phông chữ đã được đặt lại trong tài liệu PDF đầu ra. Điều này là do không phải tất cả glyph của phông chữ đều có mặt.</p>

<p>Nếu nhiều tệp PDF được lưu với các phông chữ được đặt sẵn và được tập hợp lại với nhau thì tài liệu PDF kết hợp có thể có phông chữ chứa nhiều tập hợp con không cần thiết.</p> |

### Nhúng phông chữ đầy đủ vào PDF

Thuộc tính [EmbedFullFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/embedfullfonts/) cho phép bạn chỉ định cách Aspose.Words nhúng phông chữ vào tài liệu PDF đầu ra.

- Để nhúng phông chữ đầy đủ vào tài liệu PDF đầu ra, hãy đặt **EmbedFullFonts** thành true
- Để đặt phông chữ khi lưu thành PDF, hãy đặt **EmbedFullFonts** thành false

Ví dụ sau đây minh họa cách nhúng phông chữ đầy đủ vào tài liệu PDF đầu ra:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cs" >}}

Ví dụ sau đây minh họa cách đặt Aspose.Words thành tập hợp phông chữ trong tệp PDF đầu ra:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu cho các ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Cách kiểm soát việc nhúng phông chữ cốt lõi và phông chữ tiêu chuẩn Windows

Phông chữ lõi và phông chữ Windows Standard là bộ phông chữ "tiêu chuẩn", thường có trên máy đích hoặc do trình đọc tài liệu cung cấp, do đó chúng không cần phải nhúng vào tệp PDF đầu ra. Bằng cách không nhúng các phông chữ này, bạn có thể giảm kích thước của tài liệu PDF được hiển thị mà vẫn duy trì tính di động.

Aspose.Words cung cấp các tùy chọn để chọn cách xuất phông chữ sang PDF. Bạn có thể chọn nhúng phông chữ lõi và phông chữ tiêu chuẩn vào tệp PDF đầu ra hoặc bỏ qua việc nhúng chúng và thay vào đó sử dụng phông chữ PDF lõi tiêu chuẩn hoặc phông chữ hệ thống trên máy đích. Việc sử dụng một trong các tùy chọn này thường giúp giảm đáng kể kích thước tệp đối với các tài liệu PDF do Aspose.Words tạo.

- Vì các tùy chọn này loại trừ lẫn nhau nên mỗi lần bạn chỉ nên chọn một tùy chọn.
- Khi lưu với định dạng PDF/A-1, tất cả các phông chữ được sử dụng phải được nhúng cùng với tài liệu PDF. Khi lưu với sự tuân thủ này, thuộc tính [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/) phải được đặt thành false và thuộc tính [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/) phải được đặt thành [EmbedAll](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/).

### Nhúng phông chữ cốt lõi

Tùy chọn nhúng phông chữ Core có thể được bật hoặc tắt bằng cách sử dụng thuộc tính [UseCoreFonts](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/). Khi được đặt thành true, các phông chữ "True Type" phổ biến nhất sau đây (phông chữ Base 14) không được nhúng trong tài liệu PDF đầu ra:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Các phông chữ này được thay thế bằng phông chữ Loại 1 cốt lõi tương ứng, được cung cấp bởi trình đọc khi mở tệp PDF.

Ví dụ được cung cấp bên dưới cho thấy cách đặt Aspose.Words để tránh nhúng các phông chữ cốt lõi và cho phép người đọc thay thế chúng bằng phông chữ PDF Loại 1:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu cho ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Vì trình xem PDF cung cấp phông chữ cốt lõi trên mọi nền tảng được hỗ trợ nên tùy chọn này cũng hữu ích khi cần có khả năng di chuyển tài liệu cao hơn. Tuy nhiên, phông chữ lõi có thể trông khác với phông chữ hệ thống.

{{% alert color="primary" %}}

Cài đặt này chỉ hoạt động đối với văn bản mã hóa ANSI (Windows-1252). Viết văn bản không phải ANSI sang PDF sẽ luôn yêu cầu nhúng các phông chữ tương ứng.

{{% /alert %}}

### Nhúng phông chữ hệ thống

Tùy chọn này có thể được bật hoặc tắt bằng cách sử dụng thuộc tính [FontEmbeddingMode](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/fontembeddingmode/). Khi thuộc tính này được đặt thành [EmbedNonstandard](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), phông chữ loại true "Arial" và "Time New Roman" không được nhúng vào tài liệu PDF. Trong trường hợp này, trình xem máy khách sẽ dựa vào phông chữ được cài đặt trên hệ điều hành của máy khách. Khi thuộc tính **FontEmbeddingMode** được đặt thành [EmbedNone](https://reference.aspose.com/words/net/aspose.words.saving/pdffontembeddingmode/), Aspose.Words không nhúng bất kỳ phông chữ nào.

Ví dụ bên dưới cho thấy cách đặt Aspose.Words bỏ qua việc nhúng phông chữ Arial và Times New Roman vào tài liệu PDF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cs" >}}

Chế độ này hữu ích nhất khi bạn muốn xem tài liệu của mình trên cùng một nền tảng, duy trì hình thức chính xác của phông chữ trong tệp PDF đầu ra.

{{% alert color="primary" %}}

Cài đặt này chỉ hoạt động đối với văn bản mã hóa ANSI (Windows-1252). Viết văn bản không phải ANSI sang PDF yêu cầu phải nhúng phông chữ tương ứng.

{{% /alert %}}
