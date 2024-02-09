---
title: Chỉ định tùy chọn lưu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Chỉ định tùy chọn lưu
linktitle: Chỉ định tùy chọn lưu
description: "Kiểm soát chính xác hơn quá trình lưu bằng C#."
type: docs
weight: 10
url: /vi/net/specify-save-options/
---

Khi lưu tài liệu, bạn có thể đặt một số thuộc tính nâng cao. Aspose.Words cung cấp cho bạn lớp [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), cho phép kiểm soát quá trình lưu chính xác hơn. Có quá nhiều phương thức **Save** chấp nhận một đối tượng **SaveOptions** – nó phải là một đối tượng của một lớp dẫn xuất từ lớp **SaveOptions**. Mỗi định dạng lưu có một lớp tương ứng chứa các tùy chọn lưu cho định dạng lưu này, ví dụ: có [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/) để lưu sang định dạng PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/) để lưu sang định dạng Markdown hoặc [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/) để lưu vào hình ảnh. Bài viết này cung cấp các ví dụ về cách làm việc với một số lớp tùy chọn bắt nguồn từ **SaveOptions**.

Ví dụ mã sau đây cho thấy cách đặt tùy chọn lưu trước khi lưu tài liệu vào HTML:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Bài viết mô tả một số thuộc tính mà bạn có thể kiểm soát khi lưu tài liệu.

## Mã hóa tài liệu bằng mật khẩu

Sử dụng thuộc tính **Password** để nhận hoặc đặt mật khẩu cho tài liệu được mã hóa. Sử dụng thuộc tính **Password** của lớp tương ứng để làm việc với định dạng tài liệu đã chọn.

Ví dụ: khi lưu tài liệu sang định dạng DOC hoặc DOT, hãy sử dụng thuộc tính [Password](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/password/) của lớp [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/).

Ví dụ mã sau đây cho thấy cách đặt mật khẩu để mã hóa tài liệu bằng phương pháp mã hóa RC4:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cs" >}}

Khi lưu tài liệu sang định dạng Odt, hãy sử dụng thuộc tính [Password](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/password/) của lớp [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/).

Ví dụ về mã sau đây cho biết cách tải và lưu OpenDocument được mã hóa bằng mật khẩu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cs" >}}

Không phải tất cả các định dạng đều hỗ trợ mã hóa và sử dụng thuộc tính **Password**.

## Hiển thị thông báo tiến trình lưu tài liệu

Aspose.Words cung cấp khả năng sử dụng thuộc tính [ProgressCallback](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/progresscallback/) để nhận thông báo về tiến trình lưu tài liệu.

Nó hiện có sẵn khi lưu vào các định dạng DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack hoặc TXT.

## Cập nhật thời gian tạo tài liệu

Aspose.Words cung cấp khả năng sử dụng thuộc tính [CreatedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/createdtime/) để lấy hoặc đặt ngày tạo tài liệu theo giờ UTC. Bạn cũng có thể cập nhật giá trị này trước khi lưu bằng tùy chọn [UpdateCreatedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatecreatedtimeproperty/).

Ví dụ mã sau đây cho thấy cách cập nhật thời gian tạo tài liệu:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with PdfSaveOptions-UpdateIfLastPrinted.cs" >}}

## Cập nhật thuộc tính được lưu lần cuối

Aspose.Words cung cấp khả năng sử dụng thuộc tính [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) để nhận hoặc đặt giá trị xác định xem thuộc tính [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) có được cập nhật hay không trước khi lưu.

Ví dụ mã sau đây cho biết cách đặt thuộc tính này và lưu tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cs" >}}

## Kiểm soát tài nguyên bên ngoài khi lưu tài liệu vào HTML hoặc SVG

Để chuyển đổi HTML hoặc SVG thành PDF, chỉ cần gọi phương thức [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save/) và chỉ định tên tệp có phần mở rộng ".PDF". Nếu bạn muốn tải hình ảnh, CSS, v.v. từ các nguồn bên ngoài, bạn có thể sử dụng [IResourceSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/iresourcesavingcallback/).

Ví dụ về mã sau đây cho thấy cách chuyển đổi HTML sang PDF và tải hình ảnh từ các nguồn bên ngoài:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ImageLoadingWithCredentialsHandler-ImageLoadingWithCredentialsHandler.cs" >}}

## Lưu hình ảnh đen trắng với định dạng một bit cho mỗi pixel

Để kiểm soát các tùy chọn lưu hình ảnh, lớp **ImageSaveOptions** được sử dụng. Ví dụ: bạn có thể sử dụng thuộc tính [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) để đặt định dạng pixel cho hình ảnh được tạo. Xin lưu ý rằng định dạng pixel của hình ảnh đầu ra có thể khác với giá trị đã đặt do hoạt động của GDI+.

Ví dụ mã sau đây cho thấy cách lưu hình ảnh đen trắng với định dạng một bit cho mỗi pixel:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cs" >}}
