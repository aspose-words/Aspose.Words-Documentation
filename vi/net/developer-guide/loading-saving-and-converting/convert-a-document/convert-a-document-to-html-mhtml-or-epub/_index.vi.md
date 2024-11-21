---
title: Chuyển đổi tài liệu sang HTML, MHTML hoặc EPUB trong C#
second_title: Aspose.Words cho .NET
articleTitle: Chuyển đổi tài liệu sang HTML, MHTML hoặc EPUB
linktitle: Chuyển đổi tài liệu sang HTML, MHTML hoặc EPUB
description: "Chuyển đổi tài liệu từ hầu hết mọi định dạng sang HTML hoặc MHTML, cũng như sang định dạng EPUB bằng C#. Bạn cũng có thể chỉ định các tùy chọn lưu để quản lý tài liệu đầu ra."
type: docs
weight: 20
url: /vi/net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-07-09-19-00-42
---

Các tài liệu ở định dạng bố cục luồng HTML và MHTML cũng rất phổ biến và có thể được sử dụng trên bất kỳ nền tảng web nào. Vì lý do đó, việc chuyển đổi tài liệu sang HTML và MHTML là một tính năng quan trọng của Aspose.Words.

EPUB (viết tắt của "Xuất bản điện tử") là định dạng dựa trên HTML thường được sử dụng để phân phối sách điện tử. Định dạng này được hỗ trợ đầy đủ trong Aspose.Words để xuất sách điện tử tương thích với hầu hết các thiết bị đọc.

## Chuyển đổi một tài liệu

Để chuyển đổi đơn giản sang HTML, MHTML hoặc EPUB, một trong các phương pháp nạp chồng phương thức [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) được sử dụng. Bạn có thể lưu tài liệu vào một tệp hoặc luồng và đặt rõ ràng định dạng lưu tài liệu đầu ra hoặc xác định nó từ phần mở rộng tên tệp.

Ví dụ sau đây cho thấy cách chuyển đổi DOCX sang HTML bằng cách chỉ định định dạng lưu:

**.NET**

{{< highlight csharp >}}

// Load the document from disk.
Document doc = new Document(dataDir + "Test File.docx");

// Save the document into HTML.
doc.Save(dataDir + "Document", SaveFormat.Html);
{{< /highlight >}}

Để chuyển đổi tài liệu sang MHTML hoặc EPUB, hãy sử dụng `SaveFormat.Mhtml` hoặc `SaveFormat.Epub` tương ứng.

## Chuyển đổi tài liệu với thông tin khứ hồi

Định dạng HTML không hỗ trợ nhiều tính năng Microsoft Word và nếu chúng tôi cần khôi phục mô hình tài liệu gần với bản gốc nhất có thể, chúng tôi cần lưu một số thông tin bổ sung trong tệp HTML. Những thông tin như vậy còn được gọi là "thông tin khứ hồi". Với mục đích này, Aspose.Words cung cấp khả năng xuất thông tin khứ hồi khi lưu vào HTML, MHTML hoặc EPUB bằng thuộc tính [ExportRoundtripInformation](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportroundtripinformation/). Việc lưu thông tin khứ hồi cho phép khôi phục các thuộc tính tài liệu như tab, nhận xét, đầu trang và chân trang trong quá trình tải tài liệu ở các định dạng được liệt kê trở lại đối tượng **Document**.

Giá trị mặc định là **true** cho HTML và **false** cho MHTML và EPUB:

- Khi **true**, thông tin khứ hồi được xuất dưới dạng - aw - * Thuộc tính CSS của các thành phần HTML tương ứng
- Khi **false**, không có thông tin khứ hồi nào được xuất ra các tệp được tạo

Ví dụ về mã sau đây cho biết cách xuất thông tin khứ hồi khi chuyển đổi tài liệu từ DOCX sang HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtmlWithRoundtrip-ConvertDocumentToHtmlWithRoundtrip.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Chỉ định tùy chọn lưu khi chuyển đổi sang HTML

Aspose.Words cho phép chuyển đổi tài liệu Word sang HTML bằng các tùy chọn lưu mặc định hoặc tùy chỉnh. Một số ví dụ về tùy chọn lưu tùy chỉnh được mô tả bên dưới.

### Chỉ định một thư mục để lưu tài nguyên

Sử dụng Aspose.Words, chúng tôi có thể chỉ định một thư mục vật lý nơi lưu tất cả tài nguyên, chẳng hạn như hình ảnh, phông chữ và CSS bên ngoài khi tài liệu được chuyển đổi sang HTML. Theo mặc định, đây là một chuỗi trống.

Chỉ định thuộc tính [ResourceFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolder/) là cách đơn giản nhất để đặt thư mục nơi ghi tất cả tài nguyên. Chúng ta có thể sử dụng các thuộc tính riêng lẻ, chẳng hạn như [FontsFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolder/) để lưu phông chữ vào thư mục đã chỉ định và [ImagesFolder](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolder/) để lưu hình ảnh vào một thư mục đã chỉ định. Khi một đường dẫn tương đối được chỉ định, **FontsFolder** và **ImagesFolder** tham chiếu đến thư mục chứa tập hợp mã, **ResourceFolder** và [CssStyleSheetFileName](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/cssstylesheetfilename/) tham chiếu đến thư mục đầu ra nơi đặt tài liệu HTML.

Trong ví dụ này, **ResourceFolder** chỉ định đường dẫn tương đối. Đường dẫn này đề cập đến thư mục đầu ra nơi lưu tài liệu HTML. Giá trị của thuộc tính **ResourceFolderAlias** được sử dụng để tạo URL cho tất cả các tài nguyên.

Ví dụ mã sau đây cho thấy cách làm việc với các thuộc tính này:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportResourcesUsingHtmlSaveOptions-ExportResourcesUsingHtmlSaveOptions.cs" >}}

Bằng cách sử dụng thuộc tính [ResourceFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/resourcefolderalias/), chúng ta cũng có thể chỉ định tên của thư mục được sử dụng để xây dựng URI của tất cả các tài nguyên được ghi vào tài liệu HTML. Đây là cách đơn giản nhất để chỉ định cách tạo URI cho tất cả các tệp tài nguyên. Thông tin tương tự có thể được chỉ định riêng cho hình ảnh và phông chữ thông qua các thuộc tính [ImagesFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/imagesfolderalias/) và [FontsFolderAlias](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/fontsfolderalias/) tương ứng.

Tuy nhiên, không có thuộc tính riêng cho CSS. Hoạt động của các thuộc tính **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** và **CssStyleSheetFileName** không bị thay đổi. Lưu ý rằng thuộc tính **CssStyleSheetFileName** được sử dụng cho cả tên thư mục và tên tệp.

- **ResourceFolder** có mức độ ưu tiên thấp hơn các thư mục được chỉ định qua **FontsFolder**, **ImagesFolder** và **CssStyleSheetFileName**. Nếu thư mục được chỉ định trong **ResourceFolder** không tồn tại, nó sẽ được tạo tự động.
- **ResourceFolderAlias** có mức độ ưu tiên thấp hơn **FontsFolderAlias** và **ImagesFolderAlias**. Nếu **ResourceFolderAlias** trống, giá trị của thuộc tính **ResourceFolder** sẽ được sử dụng để tạo URI tài nguyên. Nếu **ResourceFolderAlias** được đặt thành "." (dấu chấm), URI tài nguyên sẽ chỉ chứa tên tệp mà không chỉ định đường dẫn.

### Xuất tài nguyên phông chữ mã hóa Base64

Aspose.Words cung cấp khả năng chỉ định liệu tài nguyên phông chữ có nên được nhúng vào HTML trong mã hóa Base64 hay không. Để thực hiện điều này, hãy sử dụng thuộc tính [ExportFontsAsBase64](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontsasbase64/) – đây là phần mở rộng của thuộc tính [ExportFontResources](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/exportfontresources/). Theo mặc định, giá trị của nó là **false** và phông chữ được ghi vào các tệp riêng biệt. Nhưng nếu tùy chọn này được đặt thành **true**, phông chữ sẽ được nhúng vào CSS của tài liệu ở dạng mã hóa Base64. Thuộc tính **XuấtFontAsBase64** chỉ ảnh hưởng đến định dạng HTML và không ảnh hưởng đến EPUB và MHTML.

Ví dụ về mã sau đây cho thấy cách xuất phông chữ được mã hóa Base64 sang HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ExportFontsAsBase64-ExportFontsAsBase64.cs" >}}

## Chỉ định tùy chọn lưu khi chuyển đổi sang EPUB

Aspose.Words cho phép chuyển đổi tài liệu Word sang định dạng EPUB bằng các tùy chọn lưu mặc định hoặc tùy chỉnh. Bạn có thể chỉ định một số tùy chọn bằng cách chuyển một phiên bản [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) sang phương thức [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/).

Ví dụ mã sau đây cho thấy cách chuyển đổi tài liệu Word sang EPUB bằng cách chỉ định một số tùy chọn lưu tùy chỉnh:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Xem thêm

- [Cách xuất thông tin khứ hồi khi lưu vào HTML](/words/net/custom-styles-used-for-proper-aspose-words-html-aspose-words-roundtrip/)
