---
title: Chỉ định Tùy chọn Lưu trong Java
second_title: Aspose.Words cho Java
articleTitle: Chỉ định Tùy chọn Lưu
linktitle: Chỉ định Tùy chọn Lưu
description: "Thiết lập các thuộc tính nâng cao khi lưu một tài liệu bằng Java để có quyền kiểm soát chính xác hơn đối với quá trình."
type: docs
weight: 20
url: /vi/java/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Khi lưu tài liệu, bạn có thể đặt một số thuộc tính tiên tiến. Aspose.Words cung cấp cho bạn lớp [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), điều khiển chính xác hơn quá trình lưu. Có nhiều biến thể của phương thức **Save** chấp nhận đối tượng **SaveOptions** – nó nên là một đối tượng của lớp được kế thừa từ lớp **SaveOptions**. Mỗi định dạng lưu có lớp tương ứng nắm giữ các tùy chọn cho định dạng này, ví dụ: [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) cho việc lưu vào định dạng PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) cho việc lưu vào định dạng Markdown, hoặc [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/) cho việc lưu vào hình ảnh. Bài viết này cung cấp ví dụ về làm việc với một số lớp tùy chọn được kế thừa từ **SaveOptions**.

Mã ví dụ sau cho thấy cách thiết lập các tùy chọn lưu trước khi lưu tài liệu dưới dạng HTML:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifySaveOption-SpecifySaveOption.java" >}}


{{% alert color="primary" %}}

Bạn có thể tải xuống tập tin mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Bài viết mô tả một số thuộc tính bạn có thể kiểm soát khi lưu tài liệu.

## Mã hóa một Tài liệu bằng Mật khẩu

Sử dụng tính năng **Password** để lấy hoặc đặt mật khẩu cho một tài liệu được mã hóa. Sử dụng thuộc tính **Password** của lớp tương ứng để làm việc với định dạng tài liệu được chọn.

Ví dụ, khi lưu một tài liệu với định dạng DOC hay DOT, hãy sử dụng thuộc tính [Password](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/#Password) của lớp [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/).

Ví dụ mã sau cho thấy cách đặt mật khẩu để mã hóa một tài liệu sử dụng phương pháp mã hóa RC4 là như thế nào:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithDocSaveOptions-EncryptDocumentWithPassword.java" >}}

Khi lưu một tài liệu với định dạng ODT hãy sử dụng thuộc tính [Password](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/#Password) của lớp [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/).

Mã ví dụ sau cho thấy cách tải và lưu tài liệu OpenDocument được mã hóa bằng mật khẩu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadAndSaveEncryptedODT.java" >}}

Không phải tất cả định dạng đều hỗ trợ mã hóa và sử dụng **Password** thuộc tính.

## Hiển thị Thông báo tiến trình lưu tài liệu

Aspose.Words cung cấp khả năng sử dụng thuộc tính [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) để nhận thông báo về tiến trình lưu tài liệu.

Nó hiện có sẵn khi lưu vào các định dạng DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack hoặc TXT.

## Cập nhật Thời gian Tạo Tài liệu

"Aspose.Words cung cấp khả năng sử dụng thuộc tính [CreatedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getCreatedTime) để lấy hoặc đặt ngày tạo tài liệu trong UTC". Bạn có thể cập nhật giá trị này trước khi lưu bằng [UpdateCreatedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateCreatedTimeProperty) tùy chọn.

Mã ví dụ bên dưới cho thấy cách cập nhật thời gian tạo tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.java" >}}

## Cập nhật thuộc tính lần lưu mới nhất

Aspose.Words cung cấp khả năng sử dụng thuộc tính [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) để lấy hoặc đặt giá trị xác định việc thuộc tính [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) được cập nhật trước khi lưu.

Mã ví dụ sau cho thấy cách đặt thuộc tính này và lưu tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-WorkingWithOoXML-updateLastSavedTimeProperty.java" >}}

## Lưu Hình Ảnh Đen Trắng với Định Dạng Một Bit trên Mỗi Pixel

Để kiểm soát các tùy chọn lưu ảnh, lớp **ImageSaveOptions** được sử dụng. Ví dụ như bạn có thể sử dụng thuộc tính [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) để thiết lập định dạng pixel cho hình ảnh được tạo ra. Xin lưu ý rằng định dạng pixel của hình ảnh đầu ra có thể khác với giá trị được đặt trước đó do hoạt động của GDI+.

Mã ví dụ sau cho thấy cách lưu một hình ảnh đen trắng với định dạng một bit trên mỗi pixel:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-SaveImageToOnebitPerPixel.java" >}}
