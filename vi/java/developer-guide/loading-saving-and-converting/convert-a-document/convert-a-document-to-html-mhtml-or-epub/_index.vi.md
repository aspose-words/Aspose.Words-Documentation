---
title: Chuyển đổi Tài liệu thành HTML, MHTML hoặc EPUB
second_title: Aspose.Words đối với Java
articleTitle: Chuyển đổi Tài liệu thành HTML, MHTML hoặc EPUB
linktitle: Chuyển đổi Tài liệu thành HTML, MHTML hoặc EPUB
description: "Sử dụng Aspose.Words cho Java để chuyển đổi các văn bản từ Word hoặc bất kỳ định dạng nào khác được hỗ trợ sang HTML, MHTML, hay EPUB."
type: docs
weight: 20
url: /vi/java/convert-a-document-to-html-mhtml-or-epub/
---

Các tài liệu ở định dạng HTML và MHTML flow-layout cũng rất phổ biến và có thể được sử dụng trên bất kỳ nền tảng web nào. Vì vậy việc chuyển đổi tài liệu sang HTML và MHTML là một tính năng quan trọng của Aspose.Words.

EPUB (dưới dạng viết tắt là "Electronic Publication") là một định dạng dựa trên HTML thường dùng để phân phối sách điện tử. Định dạng này được hỗ trợ đầy đủ trong Aspose.Words để xuất các cuốn sách điện tử tương thích với hầu hết các thiết bị đọc.

## Chuyển đổi một Tài liệu

Đối với chuyển đổi đơn giản sang HTML, MHTML hoặc EPUB, một trong những phương pháp quá tải [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) được sử dụng. Bạn có thể lưu tài liệu vào tập tin hoặc luồng và đặt rõ ràng định dạng tài liệu lưu ra hoặc xác định nó từ phần mở rộng tập tin.

Ví dụ sau này cho thấy cách chuyển đổi từ DOCX sang HTML bằng cách chỉ định một định dạng lưu trữ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocxToHtml.java" >}}

Để chuyển đổi tài liệu sang MHTML hoặc EPUB, dùng `SaveFormat.MHTML` hay `SaveFormat.EPUB` lần lượt.

## Chuyển đổi một Tài liệu với Thông tin Đi và Trở lại

Định dạng HTML không hỗ trợ nhiều Microsoft Word tính năng và nếu chúng tôi cần khôi phục một mô hình tài liệu như gần với nguyên bản nhất, chúng tôi cần lưu trữ thêm thông tin trong tệp HTML. Thông tin như vậy cũng được gọi là "thông tin chuyến đi và về. Đối với mục đích này, Aspose.Words cung cấp khả năng xuất thông tin đường vòng khi lưu vào HTML, MHTML hoặc EPUB sử dụng thuộc tính [ExportRoundtripInformation](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportRoundtripInformation). Lưu thông tin đi lại cho phép khôi phục các thuộc tính tài liệu như dấu tab, chú thích, tiêu đề và chân trang khi tải các định dạng được liệt kê trở lại vào một đối tượng **Document**.

Giá trị mặc định là **true** cho HTML và **false** cho MHTML và EPUB:

- Khi **true**, thông tin trọn vẹn được xuất ra dưới dạng - aw - * thuộc tính CSS của các phần tử HTML tương ứng
- Khi **false**, thông tin vòng lặp không có để đưa vào các tệp sản xuất

Mã ví dụ sau cho thấy cách xuất thông tin đi lại khi chuyển đổi một tài liệu từ DOCX sang HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToHtmlWithRoundtrip.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống template của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Chỉ định Tùy chọn lưu khi chuyển đổi sang HTML

Aspose.Words cho phép chuyển đổi một tài liệu Word sang HTML sử dụng tùy chọn lưu mặc định hoặc tùy chỉnh. Một vài ví dụ về tùy chọn lưu tùy chỉnh được mô tả bên dưới.

### Chỉ định một Thư mục để Lưu trữ Tài nguyên

Sử dụng Aspose.Words chúng ta có thể chỉ định một thư mục vật lý nơi tất cả các nguồn tài nguyên, chẳng hạn như hình ảnh, phông chữ và CSS bên ngoài, được lưu trữ khi một tài liệu được chuyển đổi thành HTML. Theo mặc định thì đây là chuỗi rỗng.

Chỉ định thuộc tính [ResourceFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolder) là cách đơn giản nhất để đặt thư mục nơi tất cả các tài nguyên nên được viết. Chúng ta có thể sử dụng các thuộc tính riêng lẻ, chẳng hạn như [FontsFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolder) mà lưu kiểu chữ vào thư mục đã chỉ định và [ImagesFolder](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolder) mà lưu hình ảnh vào một thư mục đã chỉ định. Khi đường dẫn tương đối được chỉ định, **FontsFolder** và **ImagesFolder** chỉ đến thư mục nơi mã tập hợp nằm ở, **ResourceFolder** và [CssStyleSheetFileName](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getCssStyleSheetFileName) chỉ đến thư mục đầu ra nơi tài liệu HTML nằm ở.

Trong ví dụ này, **ResourceFolder** chỉ định đường dẫn tương đối. Đường dẫn này đề cập đến thư mục đầu ra mà tài liệu HTML được lưu. Giá trị của thuộc tính **ResourceFolderAlias** được sử dụng để tạo ra URL cho tất cả các tài nguyên.

Mã ví dụ sau cho thấy làm thế nào để làm việc với các thuộc tính này:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportResourcesUsingHtmlSaveOptions.java" >}}

Sử dụng thuộc tính [ResourceFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getResourceFolderAlias), chúng ta cũng có thể chỉ định tên của thư mục được sử dụng để tạo URI của tất cả các tài nguyên được viết trong một tài liệu HTML. Đây là cách đơn giản nhất để chỉ định các URI như thế nào nên được tạo cho tất cả các tập tin nguồn. Thông tin giống nhau có thể được chỉ định cho hình ảnh và phông chữ riêng lẻ thông qua [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getImagesFolderAlias) và [FontsFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getFontsFolderAlias) thuộc tính tương ứng.

Tuy nhiên không có thuộc tính riêng cho CSS. Hành vi của thuộc tính **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** và **CssStyleSheetFileName** không thay đổi. Hãy để ý rằng tính năng **CssStyleSheetFileName** được sử dụng cả cho việc chỉ định tên thư mục và tên tệp.

- **ResourceFolder** có thứ tự ưu tiên thấp hơn các thư mục được xác định qua **FontsFolder**, **ImagesFolder**, và **CssStyleSheetFileName**. Nếu thư mục được chỉ định trong **ResourceFolder** không tồn tại, nó sẽ được tạo tự động.
- **ResourceFolderAlias** ưu tiên thấp hơn **FontsFolderAlias** và **ImagesFolderAlias**. Nếu **ResourceFolderAlias** trống, giá trị của thuộc tính **ResourceFolder** sẽ được dùng để tạo ra các URI tài nguyên. Nếu **ResourceFolderAlias** được đặt là "." (điểm), URI tài nguyên sẽ chỉ chứa tên tập tin mà không chỉ định đường dẫn.

### Xuất Bộ mã hóa B64 Tài nguyên phông chữ

Aspose.Words cung cấp khả năng chỉ định xem tài nguyên phông chữ nên được nhúng vào HTML bằng mã hóa Base64 hay không. Để thực hiện điều đó, sử dụng thuộc tính [ExportFontsAsBase64](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontsAsBase64) - đây là một phần mở rộng của thuộc tính [ExportFontResources](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportFontResources). Theo mặc định, giá trị của nó là **false** và các phông chữ được viết vào các tập tin riêng biệt. Nhưng nếu tùy chọn này được đặt thành **true**, các phông chữ sẽ được nhúng vào CSS của tài liệu bằng mã hóa Base64. Tính năng **XuấtPhôngAsBase64** chỉ ảnh hưởng đến định dạng HTML và không ảnh hưởng đến EPUB và MHTML.

Mã ví dụ sau cho thấy cách xuất các phông chữ mã hóa Base64 sang HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ExportFontsAsBase64.java" >}}

## Chỉ định Tùy chọn Lưu khi Chuyển đổi sang EPUB

Aspose.Words cho phép chuyển đổi một tài liệu Word thành định dạng EPUB sử dụng tùy chọn lưu mặc định hoặc tùy chỉnh. Bạn có thể chỉ định số lượng tùy chọn bằng cách truyền một đối tượng [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) cho phương thức [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-com.aspose.words.SaveOptions).

Mã ví dụ sau cho thấy cách chuyển đổi tài liệu Word sang định dạng EPUB với việc chỉ định một số tùy chọn lưu trữ tùy chỉnh:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-ConvertDocumentToEPUB.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/com/aspose/words/examples/loading_saving/ExportResourcesUsingHtmlSaveOptions/Document.EpubConversion.doc).

{{% /alert %}}

## Xem Thêm

- [How to export round-trip information when saving to HTML](/words/java/custom-styles-used-for-proper-aspose-words-html-roundtrip/)
