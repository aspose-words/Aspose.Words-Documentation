---
title: Chỉ Định Tùy chọn Lưu trong C++
second_title: Aspose.Words cho C++
articleTitle: Chỉ Định Tùy Chọn Lưu
linktitle: Chỉ Định Tùy Chọn Lưu
description: "Kiểm soát chính xác hơn quá trình lưu."
type: docs
weight: 10
url: /vi/cpp/specify-save-options/
timestamp: 2024-01-27-14-07-04
---

Khi lưu tài liệu, bạn có thể đặt một số thuộc tính nâng cao. Aspose.Words cung cấp cho bạn lớp [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), cho phép kiểm soát chính xác hơn quá trình lưu. Có quá tải của phương thức **Save** chấp nhận một đối tượng **SaveOptions** – nó phải là một đối tượng của một lớp có nguồn gốc từ lớp **SaveOptions**. Mỗi định dạng lưu có một lớp tương ứng chứa các tùy chọn lưu cho định dạng lưu này, ví dụ: có [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) để lưu sang định dạng PDF, [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions) để lưu sang định dạng Markdown hoặc [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/) để lưu vào hình ảnh. Bài viết này cung cấp các ví dụ về làm việc với một số lớp tùy chọn có nguồn gốc từ **SaveOptions**.

Ví dụ mã sau đây cho thấy cách đặt các tùy chọn lưu trước khi lưu tài liệu vào HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-SpecifySaveOption-SpecifySaveOption.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Bài viết mô tả một vài thuộc tính bạn có thể kiểm soát khi lưu tài liệu.

## Mã hóa Tài liệu Bằng Mật Khẩu

Sử dụng thuộc tính **Password** để lấy hoặc đặt mật khẩu cho tài liệu được mã hóa. Sử dụng thuộc tính **Password** của lớp tương ứng để làm việc với định dạng tài liệu đã chọn.

Ví dụ: khi lưu tài liệu sang định dạng DOC hoặc DOT, hãy sử dụng thuộc tính [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/get_password/) của lớp [DocSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.doc_save_options).

Ví dụ mã sau đây cho thấy cách đặt mật khẩu để mã hóa tài liệu bằng phương pháp mã hóa RC4:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithDoc-EncryptDocumentWithPassword.cpp" >}}

Khi lưu tài liệu sang định dạng ODT, hãy sử dụng thuộc tính [Password](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/get_password/) của lớp [OdtSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.odt_save_options).

Ví dụ mã sau đây cho thấy cách tải và lưu OpenDocument được mã hóa bằng mật khẩu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadAndSaveEncryptedODT.cpp" >}}

Không phải tất cả các định dạng đều hỗ trợ mã hóa và sử dụng thuộc tính **Password**.

## Hiển Thị Thông Báo Tiến Trình Lưu Tài Liệu

Aspose.Words cung cấp khả năng sử dụng thuộc tính [ProgressCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_progresscallback/) để nhận thông báo về tiến trình lưu tài liệu.

Nó hiện có sẵn khi lưu vào DOCX, FlatOpc, DOCM, DOTM, DOTX, HTML, MHTML, EPUB, XamlFlow, XamlFlowPack, hoặc định dạng TXT.

## Cập Nhật Thời Gian Tạo Tài liệu

Aspose.Words cung cấp khả năng sử dụng thuộc tính [CreatedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_createdtime/) để lấy hoặc đặt ngày tạo tài liệu trong UTC. Bạn cũng có thể cập nhật giá trị này trước khi lưu bằng tùy chọn [UpdateCreatedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatecreatedtimeproperty/).

Ví dụ mã sau đây cho thấy cách cập nhật thời gian tạo tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-UpdateIfLastPrinted.cpp" >}}

## Cập Nhật Tài Sản Đã Lưu Cuối Cùng

Aspose.Words cung cấp khả năng sử dụng thuộc tính [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/set_updatelastsavedtimeproperty/) để nhận hoặc đặt giá trị xác định xem thuộc tính [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/) có được cập nhật trước khi lưu hay không.

Ví dụ mã sau đây cho thấy cách đặt thuộc tính này và lưu tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-WorkingWithOoxml-UpdateLastSavedTimeProperty.cpp" >}}

## Lưu Hình Ảnh Đen Trắng Với Một Bit Cho Mỗi Định Dạng Pixel

Để kiểm soát các tùy chọn lưu hình ảnh, lớp **ImageSaveOptions** được sử dụng. Ví dụ: bạn có thể sử dụng thuộc tính [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_pixelformat/) để đặt định dạng pixel cho các hình ảnh được tạo. Xin lưu ý rằng định dạng pixel của hình ảnh đầu ra có thể khác với giá trị đặt vì công việc của GDI+.

Ví dụ mã sau đây cho thấy cách lưu hình ảnh đen trắng với một bit cho mỗi định dạng pixel:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-SaveImageToOnebitPerPixel.cpp" >}}
