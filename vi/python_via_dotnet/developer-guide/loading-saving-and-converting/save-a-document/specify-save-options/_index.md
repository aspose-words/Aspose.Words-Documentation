---
title: Chỉ định tùy chọn lưu trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Chỉ định tùy chọn lưu
linktitle: Chỉ định tùy chọn lưu
description: "Kiểm soát chính xác hơn quá trình lưu bằng Python."
type: docs
weight: 10
url: /vi/python-net/specify-save-options/
---

Khi lưu tài liệu, bạn có thể đặt một số thuộc tính nâng cao. Aspose.Words cung cấp cho bạn lớp [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), cho phép kiểm soát quá trình lưu chính xác hơn. Có quá nhiều phương thức [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) chấp nhận đối tượng [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/) – nó phải là đối tượng của một lớp dẫn xuất từ lớp [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/). Mỗi định dạng lưu có một lớp tương ứng chứa các tùy chọn lưu cho định dạng lưu này, ví dụ: có [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) để lưu thành định dạng PDF hoặc [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) để lưu vào hình ảnh. Bài viết này cung cấp các ví dụ về cách làm việc với một số lớp tùy chọn bắt nguồn từ [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/).

Ví dụ mã sau đây cho thấy cách đặt tùy chọn lưu trước khi lưu tài liệu vào HTML:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_html_save_options-ExportRoundtripInformation.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Bài viết mô tả một số thuộc tính mà bạn có thể kiểm soát khi lưu tài liệu.

## Mã hóa tài liệu bằng mật khẩu

Sử dụng thuộc tính **mật khẩu** để nhận hoặc đặt mật khẩu cho tài liệu được mã hóa. Sử dụng thuộc tính **mật khẩu** của lớp tương ứng để làm việc với định dạng tài liệu đã chọn.

Ví dụ: khi lưu tài liệu sang định dạng DOC hoặc DOT, hãy sử dụng thuộc tính [password](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/password/) của lớp [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/).

Ví dụ mã sau đây cho thấy cách đặt mật khẩu để mã hóa tài liệu bằng phương pháp mã hóa RC4:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_doc_save_options-EncryptDocumentWithPassword.py" >}}

Khi lưu tài liệu sang định dạng [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/), hãy sử dụng thuộc tính [password](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/password/) của lớp [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/).

Ví dụ mã sau đây cho thấy cách tải và lưu Docx được mã hóa bằng mật khẩu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-EncryptDocxWithPassword.py" >}}

Không phải tất cả các định dạng đều hỗ trợ mã hóa và sử dụng thuộc tính **mật khẩu**.

## Cập nhật thời gian tạo tài liệu

Aspose.Words cung cấp khả năng sử dụng thuộc tính [created_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/created_time/) để lấy hoặc đặt ngày tạo tài liệu theo giờ UTC. Bạn cũng có thể cập nhật giá trị này trước khi lưu bằng tùy chọn [update_created_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_created_time_property/).

Ví dụ mã sau đây cho thấy cách cập nhật thời gian tạo tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-UpdateIfLastPrinted.py" >}}

## Cập nhật thuộc tính được lưu lần cuối

Aspose.Words cung cấp khả năng sử dụng thuộc tính [update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) để nhận hoặc đặt giá trị xác định xem thuộc tính [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) có được cập nhật hay không trước khi lưu.

Ví dụ mã sau đây cho biết cách đặt thuộc tính này và lưu tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

## Lưu hình ảnh đen trắng với định dạng một bit cho mỗi pixel

Để kiểm soát các tùy chọn lưu hình ảnh, lớp [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/) được sử dụng. Ví dụ: bạn có thể sử dụng thuộc tính [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) để đặt định dạng pixel cho hình ảnh được tạo. Xin lưu ý rằng định dạng pixel của hình ảnh đầu ra có thể khác với giá trị đã đặt do hoạt động của skia.

Ví dụ mã sau đây cho thấy cách lưu hình ảnh đen trắng với định dạng một bit cho mỗi pixel:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-Format1BppIndexed.py" >}}
