---
title: Chuyển đổi tài liệu thành hình ảnh
second_title: Aspose.Words cho Python via .NET
articleTitle: Chuyển đổi tài liệu thành hình ảnh
linktitle: Chuyển đổi tài liệu thành hình ảnh
type: docs
description: "Chuyển đổi tài liệu sang định dạng hình ảnh (JPG, PNG, v.v.). Tạo bản xem trước tài liệu hoặc tạo bản quét tài liệu để gửi hóa đơn bằng Python."
weight: 43
url: /vi/python-net/convert-a-document-to-an-image/
---

Đôi khi cần phải lấy hình ảnh thay vì tài liệu ở các định dạng khác, chẳng hạn như DOCX hoặc PDF. Ví dụ: bạn cần thêm bản xem trước của bất kỳ trang tài liệu nào vào trang web hoặc ứng dụng của mình hoặc tạo bản "quét" tài liệu để gửi hóa đơn. Đây là lúc bạn có thể cần chuyển đổi lại một tài liệu ở bất kỳ định dạng [định dạng tải được hỗ trợ](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) nào thành hình ảnh ở bất kỳ định dạng [định dạng lưu được hỗ trợ](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) nào.

## Chuyển đổi sang định dạng hình ảnh {#convert-to-image-format}

Như với tất cả các ví dụ chuyển đổi đã được mô tả, bạn cần tạo tài liệu mới hoặc tải tài liệu hiện có ở bất kỳ định dạng được hỗ trợ nào, thực hiện các thay đổi cần thiết và lưu nó ở bất kỳ định dạng hình ảnh có sẵn nào, ví dụ: JPEG, PNG hoặc BMP.

Ví dụ mã sau đây cho thấy cách chuyển đổi PDF sang JPEG:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-PdfToJpeg.py" >}}

## Chỉ định tùy chọn lưu khi chuyển đổi sang hình ảnh {#specify-save-options-when-converting-to-an-image}

Aspose.Words cung cấp cho bạn lớp [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), lớp này cho phép kiểm soát nhiều hơn cách lưu tài liệu ở các định dạng hình ảnh khác nhau. Một số thuộc tính của lớp này kế thừa hoặc nạp chồng các thuộc tính của các lớp cơ sở như [FixedPageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/) hoặc [SaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/), nhưng cũng có các tùy chọn dành riêng cho việc lưu hình ảnh.

Có thể chỉ định các trang sẽ được chuyển đổi sang định dạng hình ảnh bằng thuộc tính [page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/). Ví dụ: nó có thể được áp dụng nếu bạn chỉ cần bản xem trước cho trang đầu tiên hoặc cho một trang xác định.

Cũng có thể kiểm soát chất lượng hình ảnh đầu ra và định dạng pixel bằng các thuộc tính sau – [horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/), cũng như thiết lập cài đặt màu hình ảnh, sử dụng các thuộc tính sau – [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/), [paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/).

Ngoài ra còn có các thuộc tính áp dụng cho một định dạng nhất định, ví dụ: [jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/) hoặc [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/).

Ví dụ về mã sau đây cho thấy cách tạo bản xem trước của trang tài liệu đầu tiên bằng cách áp dụng một số cài đặt bổ sung:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetJpegPageRange.py" >}}
