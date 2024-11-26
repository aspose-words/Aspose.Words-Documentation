---
title: Chuyển đổi tài liệu sang HTML
second_title: Aspose.Words cho Python via .NET
articleTitle: Chuyển đổi tài liệu sang HTML, MHTML hoặc EPUB
linktitle: Chuyển đổi tài liệu sang HTML, MHTML hoặc EPUB
description: "Chuyển đổi tài liệu từ hầu hết mọi định dạng sang HTML hoặc MHTML, cũng như sang định dạng EPUB bằng Python. Bạn cũng có thể chỉ định các tùy chọn lưu để quản lý tài liệu đầu ra."
type: docs
weight: 20
url: /vi/python-net/convert-a-document-to-html-mhtml-or-epub/
timestamp: 2024-01-27-14-07-04
---

Các tài liệu ở định dạng bố cục luồng HTML và MHTML cũng rất phổ biến và có thể được sử dụng trên bất kỳ nền tảng web nào. Vì lý do đó, việc chuyển đổi tài liệu sang HTML và MHTML là một tính năng quan trọng của Aspose.Words.

EPUB (viết tắt của "Xuất bản điện tử") là định dạng dựa trên HTML thường được sử dụng để phân phối sách điện tử. Định dạng này được hỗ trợ đầy đủ trong Aspose.Words để xuất sách điện tử tương thích với hầu hết các thiết bị đọc.

## Chuyển đổi một tài liệu

Để chuyển đổi đơn giản sang HTML, MHTML hoặc EPUB, một trong các phương pháp nạp chồng phương thức [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) được sử dụng. Bạn có thể lưu tài liệu vào một tệp hoặc luồng và đặt rõ ràng định dạng lưu tài liệu đầu ra hoặc xác định nó từ phần mở rộng tên tệp.

Ví dụ sau đây cho thấy cách chuyển đổi DOCX sang HTML bằng cách chỉ định định dạng lưu:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(dataDir + "Test File.docx")

# Save the document into HTML.
doc.save(dataDir + "Document", aw.SaveFormat.HTML)
{{< /highlight >}}

Để chuyển đổi tài liệu sang MHTML hoặc EPUB, hãy sử dụng [SaveFormat.MHTML](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#mhtml) hoặc [SaveFormat.EPUB](https://reference.aspose.com/words/python-net/aspose.words/saveformat/#epub) tương ứng.

## Chuyển đổi tài liệu với thông tin khứ hồi

Định dạng HTML không hỗ trợ nhiều tính năng Microsoft Word và nếu chúng ta cần khôi phục mô hình tài liệu gần với bản gốc nhất có thể, chúng ta cần lưu một số thông tin bổ sung trong tệp HTML. Những thông tin như vậy còn được gọi là "thông tin khứ hồi". Với mục đích này, Aspose.Words cung cấp khả năng xuất thông tin khứ hồi khi lưu vào HTML, MHTML hoặc EPUB bằng thuộc tính **thông tin xuất_khứ hồi**. Việc lưu thông tin khứ hồi cho phép khôi phục các thuộc tính tài liệu như tab, nhận xét, đầu trang và chân trang trong quá trình tải tài liệu ở các định dạng được liệt kê trở lại đối tượng [Document](https://reference.aspose.com/words/python-net/aspose.words/document/).

Giá trị mặc định là *True* cho HTML và *False* cho MHTML và EPUB:

- Khi *True*, thông tin khứ hồi được xuất dưới dạng - aw - * Thuộc tính CSS của các thành phần HTML tương ứng
- Khi *False*, không có thông tin khứ hồi nào được xuất ra các tệp được tạo

Ví dụ về mã sau đây cho biết cách xuất thông tin khứ hồi khi chuyển đổi tài liệu từ DOCX sang HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Chỉ định tùy chọn lưu khi chuyển đổi sang HTML

Aspose.Words cho phép chuyển đổi tài liệu Word sang HTML bằng các tùy chọn lưu mặc định hoặc tùy chỉnh. Một số ví dụ về tùy chọn lưu tùy chỉnh được mô tả bên dưới.

### Chỉ định một thư mục để lưu tài nguyên

Sử dụng Aspose.Words, chúng tôi có thể chỉ định một thư mục vật lý nơi lưu tất cả tài nguyên, chẳng hạn như hình ảnh, phông chữ và CSS bên ngoài khi tài liệu được chuyển đổi sang HTML. Theo mặc định, đây là một chuỗi trống.

Chỉ định thuộc tính [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) là cách đơn giản nhất để đặt thư mục nơi ghi tất cả tài nguyên. Chúng ta có thể sử dụng các thuộc tính riêng lẻ, chẳng hạn như [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) để lưu phông chữ vào thư mục đã chỉ định và [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) để lưu hình ảnh vào một thư mục đã chỉ định. Khi một đường dẫn tương đối được chỉ định, [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/) và [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) tham chiếu đến thư mục chứa tập hợp mã, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) và [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) tham chiếu đến thư mục đầu ra nơi chứa tài liệu HTML.

Trong ví dụ này, [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) chỉ định đường dẫn tương đối. Đường dẫn này đề cập đến thư mục đầu ra nơi lưu tài liệu HTML. Giá trị của thuộc tính [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) được sử dụng để tạo URL cho tất cả các tài nguyên.

Ví dụ mã sau đây cho thấy cách làm việc với các thuộc tính này:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportResources.py" >}}

Bằng cách sử dụng thuộc tính [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/), chúng ta cũng có thể chỉ định tên của thư mục được sử dụng để xây dựng URI của tất cả các tài nguyên được ghi vào tài liệu HTML. Đây là cách đơn giản nhất để chỉ định cách tạo URI cho tất cả các tệp tài nguyên. Thông tin tương tự có thể được chỉ định riêng cho hình ảnh và phông chữ thông qua các thuộc tính [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) và [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) tương ứng.

Tuy nhiên, không có thuộc tính riêng cho CSS. Hoạt động của các thuộc tính [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/), [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/) và [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) không bị thay đổi. Lưu ý rằng thuộc tính [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/) được sử dụng cho cả tên thư mục và tên tệp.

- [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) có mức độ ưu tiên thấp hơn các thư mục được chỉ định qua [fonts_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder/), [images_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder/) và [css_style_sheet_file_name](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/css_style_sheet_file_name/). Nếu thư mục được chỉ định trong [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) không tồn tại, nó sẽ được tạo tự động.
- [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) có mức độ ưu tiên thấp hơn [fonts_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/fonts_folder_alias/) và [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/images_folder_alias/). Nếu [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) trống, giá trị của thuộc tính [resource_folder](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder/) sẽ được sử dụng để tạo URI tài nguyên. Nếu [resource_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/resource_folder_alias/) được đặt thành "." (dấu chấm), URI tài nguyên sẽ chỉ chứa tên tệp mà không chỉ định đường dẫn.

### Xuất tài nguyên phông chữ mã hóa Base64

Aspose.Words cung cấp khả năng chỉ định liệu tài nguyên phông chữ có nên được nhúng vào HTML trong mã hóa Base64 hay không. Để thực hiện điều này, hãy sử dụng thuộc tính [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) – đây là phần mở rộng của thuộc tính [export_font_resources](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_font_resources/). Theo mặc định, giá trị của nó là *False* và phông chữ được ghi vào các tệp riêng biệt. Nhưng nếu tùy chọn này được đặt thành *True*, phông chữ sẽ được nhúng vào CSS của tài liệu ở dạng mã hóa Base64. Thuộc tính [export_fonts_as_base64](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_fonts_as_base64/) chỉ ảnh hưởng đến định dạng HTML và không ảnh hưởng đến EPUB và MHTML.

Ví dụ về mã sau đây cho thấy cách xuất phông chữ được mã hóa Base64 sang HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportFontsAsBase64.py" >}}

## Chỉ định tùy chọn lưu khi chuyển đổi sang EPUB

Aspose.Words cho phép chuyển đổi tài liệu Word sang định dạng EPUB bằng các tùy chọn lưu mặc định hoặc tùy chỉnh. Bạn có thể chỉ định một số tùy chọn bằng cách chuyển một phiên bản [HtmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/) sang phương thức [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/).

Ví dụ mã sau đây cho thấy cách chuyển đổi tài liệu Word sang EPUB bằng cách chỉ định một số tùy chọn lưu tùy chỉnh:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir + "Rendering.docx")

# Create a new instance of HtmlSaveOptions. This object allows us to set options that control
# How the output document is saved.
saveOptions = aw.saving.HtmlSaveOptions()

# Specify the desired encoding.
saveOptions.encoding = "utf-8"

# Specify at what elements to split the internal HTML at. This creates a new HTML within the EPUB 
# which allows you to limit the size of each HTML part. This is useful for readers which cannot read 
# HTML files greater than a certain size e.g 300kb.
saveOptions.document_split_criteria = aw.saving.DocumentSplitCriteria.HEADING_PARAGRAPH

# Specify that we want to export document properties.
saveOptions.export_document_properties = True

# Specify that we want to save in EPUB format.
saveOptions.save_format = aw.SaveFormat.EPUB

# Export the document as an EPUB file.
doc.save(docs_base.artifacts_dir + "Document.EpubConversion_out.epub", saveOptions)
{{< /highlight >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

