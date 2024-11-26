---
title: Chuyển Đổi Tài liệu thành HTML, MHTML hoặc EPUB
second_title: Aspose.Words cho C++
articleTitle: Chuyển Đổi Tài liệu thành HTML, MHTML hoặc EPUB
linktitle: Chuyển Đổi Tài liệu thành HTML, MHTML hoặc EPUB
description: "Chuyển đổi tài liệu từ hầu hết mọi định dạng sang HTML hoặc MHTML, cũng như định dạng EPUB bằng C++. Bạn cũng có thể chỉ định các tùy chọn lưu để quản lý tài liệu đầu ra."
type: docs
weight: 20
url: /vi/cpp/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-10-21-08-52-03
---

Tài liệu ở định dạng bố cục luồng HTML và MHTML cũng rất phổ biến và có thể được sử dụng trên bất kỳ nền tảng web nào. Vì lý do đó, chuyển đổi tài liệu thành HTML và MHTML là một tính năng quan trọng của Aspose.Words.

EPUB (viết tắt của "Xuất Bản Điện tử") là một định dạng dựa trên HTML thường được sử dụng để phân phối sách điện tử. Định dạng này được hỗ trợ đầy đủ trong Aspose.Words để xuất sách điện tử tương thích với hầu hết các thiết bị đọc.

## Chuyển đổi Tài liệu

Để chuyển đổi đơn giản thành HTML, MHTML hoặc EPUB, một trong những quá tải phương thức [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/) được sử dụng. Bạn có thể lưu tài liệu vào một tệp hoặc luồng và đặt rõ ràng định dạng lưu tài liệu đầu ra hoặc xác định nó từ phần mở rộng tên tệp.

Ví dụ sau đây cho thấy cách chuyển đổi DOCX thành HTML với việc chỉ định định dạng lưu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocxToHtml.cpp" >}}

Để chuyển đổi tài liệu thành MHTML hoặc EPUB, hãy sử dụng `SaveFormat.Mhtml` hoặc `SaveFormat.Epub` tương ứng.

## Chuyển Đổi Tài liệu với Thông Tin chuyến đi Khứ Hồi

Định dạng HTML không hỗ trợ nhiều tính năng Microsoft Word và nếu chúng ta cần khôi phục mô hình tài liệu càng gần với bản gốc càng tốt, chúng ta cần lưu thêm một số thông tin trong tệp HTML. Thông tin như vậy còn được gọi là "thông tin khứ hồi". Với mục đích này, Aspose.Words cung cấp khả năng xuất thông tin khứ hồi khi lưu vào HTML, MHTML hoặc EPUB bằng thuộc tính [ExportRoundtripInformation](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportroundtripinformation/). Lưu thông tin chuyến đi khứ hồi cho phép khôi phục các thuộc tính tài liệu như tab, nhận xét, tiêu đề và chân trang trong quá trình tải tài liệu của các định dạng được liệt kê trở lại đối tượng **Document**.

Giá trị mặc định là **true** cho HTML và **false** cho MHTML và EPUB:

- Khi **true**, thông tin chuyến đi khứ hồi được xuất dưới dạng - aw - * CSS thuộc tính của các phần tử HTML tương ứng
- Khi **false**, không có thông tin chuyến đi khứ hồi nào được xuất thành các tệp được sản xuất

Ví dụ mã sau đây cho thấy cách xuất thông tin khứ hồi khi chuyển đổi tài liệu từ DOCX thành HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ConvertDocumentToHtmlWithRoundtrip.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Chỉ Định Tùy Chọn Lưu Khi Chuyển đổi thành HTML

Aspose.Words cho phép chuyển đổi Tài liệu Word thành HTML bằng các tùy chọn lưu mặc định hoặc tùy chỉnh. Một vài ví dụ về tùy chọn lưu tùy chỉnh được mô tả dưới đây.

### Chỉ định Một Thư mục Để Lưu Tài nguyên

Sử dụng Aspose.Words, chúng ta có thể chỉ định một thư mục vật lý trong đó tất cả các tài nguyên, chẳng hạn như hình ảnh, phông chữ và bên ngoài CSS, được lưu khi tài liệu được chuyển đổi thành HTML. Theo mặc định, đây là một chuỗi trống.

Chỉ định thuộc tính [ResourceFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolder/) là cách đơn giản nhất để đặt thư mục nơi ghi tất cả tài nguyên. Chúng ta có thể sử dụng các thuộc tính riêng lẻ, chẳng hạn như [FontsFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolder/) lưu phông chữ vào thư mục được chỉ định và [ImagesFolder](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolder/) lưu hình ảnh vào một thư mục được chỉ định. Khi một đường dẫn tương đối được chỉ định, **FontsFolder** và **ImagesFolder** tham chiếu đến thư mục chứa cụm mã, **ResourceFolder** và [CssStyleSheetFileName](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_cssstylesheetfilename/) tham chiếu đến thư mục đầu ra nơi chứa tài liệu HTML.

Trong ví dụ này, **ResourceFolder** chỉ định đường dẫn tương đối. Đường dẫn này đề cập đến thư mục đầu ra nơi tài liệu HTML được lưu. Giá trị của thuộc tính **ResourceFolderAlias** được sử dụng để tạo URLs cho tất cả các tài nguyên.

Ví dụ mã sau đây cho thấy cách làm việc với các thuộc tính này:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportResourcesUsingHtmlSaveOptions.cpp" >}}

Sử dụng thuộc tính [ResourceFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_resourcefolderalias/), chúng ta cũng có thể chỉ định tên của thư mục được sử dụng để xây dựng URIs của tất cả các tài nguyên được ghi vào tài liệu HTML. Đây là cách đơn giản nhất để chỉ định cách URIs sẽ được tạo cho tất cả các tệp tài nguyên. Thông tin tương tự có thể được chỉ định cho hình ảnh và phông chữ riêng biệt thông qua các thuộc tính [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_imagesfolderalias/) và [FontsFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_fontsfolderalias/), tương ứng.

Tuy nhiên, không có tài sản cá nhân cho CSS. Hành vi của **FontsFolder**, **FontsFolderAlias**, **ImagesFolder**, **ImagesFolderAlias** và thuộc tính **CssStyleSheetFileName** không thay đổi. Lưu ý rằng thuộc tính **CssStyleSheetFileName** được sử dụng để chỉ định tên thư mục và tên tệp.

- **ResourceFolder** có mức độ ưu tiên thấp hơn các thư mục được chỉ định thông qua **FontsFolder**, **ImagesFolder** và **CssStyleSheetFileName**. Nếu thư mục được chỉ định trong **ResourceFolder** không tồn tại, nó sẽ được tạo tự động.
- **ResourceFolderAlias** có mức độ ưu tiên thấp hơn **FontsFolderAlias** và **ImagesFolderAlias**. Nếu **ResourceFolderAlias** trống, giá trị của thuộc tính **ResourceFolder** sẽ được sử dụng để tạo tài nguyên URIs. Nếu **ResourceFolderAlias** được đặt thành "." (dấu chấm), tài nguyên URIs sẽ chỉ chứa tên tệp mà không chỉ định đường dẫn.

### Xuất Tài Nguyên Phông Chữ Mã Hóa Base64

Aspose.Words cung cấp khả năng xác định xem tài nguyên phông chữ có nên được nhúng vào HTML trong Mã Hóa Base64 hay không. Để thực hiện việc này, hãy sử dụng thuộc tính [ExportFontsAsBase64](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontsasbase64/) – đây là phần mở rộng của thuộc tính [ExportFontResources](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/get_exportfontresources/). Theo mặc định, giá trị của nó là **false** và phông chữ được ghi vào các tệp riêng biệt. Nhưng nếu tùy chọn này được đặt thành **true**, phông chữ sẽ được nhúng vào CSS của tài liệu trong Mã Hóa Base64. Thuộc tính **ExportFontsAsBase64** chỉ ảnh hưởng đến định dạng HTML và không ảnh hưởng đến EPUB và MHTML.

Ví dụ mã sau đây cho thấy cách xuất Phông Chữ Được Mã Hóa Base64 sang HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToHTML-ExportFontsAsBase64.cpp" >}}

## Chỉ Định Tùy Chọn Lưu Khi Chuyển đổi thành EPUB

Aspose.Words cho phép chuyển đổi Tài liệu Word thành định dạng EPUB bằng các tùy chọn lưu mặc định hoặc tùy chỉnh. Bạn có thể chỉ định một số tùy chọn bằng cách chuyển một thể hiện của [HtmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/htmlsaveoptions/) sang phương thức `Save`.

Ví dụ mã sau đây cho thấy cách chuyển đổi Tài liệu Word thành EPUB với việc chỉ định một số tùy chọn lưu tùy chỉnh:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertDocumentToEPUB-ConvertDocumentToEPUB.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
