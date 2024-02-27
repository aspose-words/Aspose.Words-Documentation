---
title: Chuyển đổi tài liệu thành hình ảnh trong C#
second_title: Aspose.Words cho .NET
articleTitle: Chuyển đổi tài liệu thành hình ảnh
linktitle: Chuyển đổi tài liệu thành hình ảnh
type: docs
description: "Chuyển đổi tài liệu sang định dạng hình ảnh (JPG, PNG, v.v.). Tạo bản xem trước tài liệu hoặc tạo bản quét tài liệu để gửi hóa đơn bằng C#."
weight: 43
url: /vi/net/convert-a-document-to-an-image/
---

Đôi khi cần phải lấy hình ảnh thay vì tài liệu ở các định dạng khác, chẳng hạn như DOCX hoặc PDF. Ví dụ: bạn cần thêm bản xem trước của bất kỳ trang tài liệu nào vào trang web hoặc ứng dụng của mình hoặc tạo bản "quét" tài liệu để gửi hóa đơn. Đây là lúc bạn có thể cần chuyển đổi lại một tài liệu ở bất kỳ định dạng [định dạng tải được hỗ trợ](https://reference.aspose.com/words/net/aspose.words/loadformat/) nào thành hình ảnh ở bất kỳ định dạng [định dạng lưu được hỗ trợ](https://reference.aspose.com/words/net/aspose.words/saveformat/) nào.

## Chuyển đổi sang hình ảnh {#convert-to-image-format}

Như với tất cả các ví dụ chuyển đổi đã được mô tả, bạn cần tạo tài liệu mới hoặc tải tài liệu hiện có ở bất kỳ định dạng được hỗ trợ nào, thực hiện các thay đổi cần thiết và lưu nó ở bất kỳ định dạng hình ảnh có sẵn nào, ví dụ: JPEG, PNG hoặc BMP.

Ví dụ mã sau đây cho thấy cách chuyển đổi PDF sang JPEG:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Base conversions-PdfToJpeg.cs" >}}

## Chỉ định tùy chọn lưu khi chuyển đổi sang hình ảnh {#specify-save-options-when-converting-to-an-image}

Aspose.Words cung cấp cho bạn lớp [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), lớp này cho phép kiểm soát nhiều hơn cách lưu tài liệu ở các định dạng hình ảnh khác nhau. Một số thuộc tính của lớp này kế thừa hoặc nạp chồng các thuộc tính của các lớp cơ sở như [FixedPageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/) hoặc [SaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/), nhưng cũng có các tùy chọn dành riêng cho việc lưu hình ảnh.

Có thể chỉ định các trang sẽ được chuyển đổi sang định dạng hình ảnh bằng thuộc tính [PageSet](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pageset/). Ví dụ: nó có thể được áp dụng nếu bạn chỉ cần bản xem trước cho trang đầu tiên hoặc cho một trang xác định.

Cũng có thể kiểm soát chất lượng hình ảnh đầu ra và định dạng pixel bằng các thuộc tính sau – [HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/resolution/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/), cũng như thiết lập cài đặt màu hình ảnh, sử dụng các thuộc tính sau – [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecontrast/), [PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/).

Ngoài ra còn có các thuộc tính áp dụng cho một định dạng nhất định, ví dụ: [JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/) hoặc [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/).

Ví dụ về mã sau đây cho thấy cách tạo bản xem trước của trang tài liệu đầu tiên bằng cách áp dụng một số cài đặt bổ sung:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-Working with ImageSaveOptions-GetJpegPageRange.cs" >}}
