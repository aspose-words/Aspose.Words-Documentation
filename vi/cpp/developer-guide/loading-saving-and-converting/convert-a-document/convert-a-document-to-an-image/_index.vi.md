---
title: Chuyển Đổi Tài liệu Thành Hình ảnh trong C++
second_title: Aspose.Words cho C++
articleTitle: Chuyển Đổi Tài liệu Thành Hình Ảnh
linktitle: Chuyển Đổi Tài liệu Thành Hình Ảnh
type: docs
description: "Chuyển đổi tài liệu sang định dạng hình ảnh (JPG, PNG, v. v.). Tạo bản xem trước tài liệu hoặc tạo bản quét tài liệu để gửi hóa đơn."
weight: 43
url: /vi/cpp/convert-a-document-to-an-image/
---

Đôi khi cần phải có hình ảnh thay vì tài liệu ở các định dạng khác, chẳng hạn như DOCX hoặc PDF. Ví dụ: bạn cần thêm bản xem trước của bất kỳ trang tài liệu nào vào trang web hoặc ứng dụng của mình hoặc tạo "quét" tài liệu để gửi hóa đơn. Đây là khi bạn có thể cần chuyển đổi một tài liệu trong bất kỳ [supported load format](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) thành hình ảnh, một lần nữa, trong bất kỳ [supported save format](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) nào.

## Chuyển đổi Sang Định Dạng Hình ảnh

Như với tất cả các ví dụ chuyển đổi đã được mô tả, bạn cần tạo một tài liệu mới hoặc tải một tài liệu hiện có ở bất kỳ định dạng được hỗ trợ nào, thực hiện các thay đổi cần thiết và lưu nó ở bất kỳ định dạng hình ảnh có sẵn nào, ví dụ: JPEG, PNG hoặc BMP.

Ví dụ mã sau đây cho thấy cách chuyển đổi DOCX thành JPEG:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Base conversions-DocxToJpeg.h" >}}

## Chỉ Định Tùy Chọn Lưu khi Chuyển Đổi Thành Hình Ảnh

Aspose.Words cung cấp cho bạn lớp [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), giúp kiểm soát nhiều hơn cách các tài liệu được lưu ở các định dạng hình ảnh khác nhau. Một số thuộc tính của lớp này kế thừa hoặc quá tải các thuộc tính của các lớp cơ sở như [FixedPageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/) hoặc [SaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/), nhưng cũng có các tùy chọn cụ thể để lưu hình ảnh.

Có thể chỉ định các trang sẽ được chuyển đổi sang định dạng hình ảnh bằng thuộc tính [PageSet](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/). Ví dụ: nó có thể được áp dụng nếu bạn chỉ cần xem trước cho trang đầu tiên hoặc cho một trang xác định.

Cũng có thể kiểm soát chất lượng hình ảnh đầu ra và định dạng pixel bằng các thuộc tính sau– [HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_scale/), [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/), cũng như thiết lập cài đặt màu hình ảnh, sử dụng các thuộc tính sau– [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagebrightness/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecontrast/), [PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_papercolor/).

Ngoài ra còn có các thuộc tính áp dụng cho một định dạng nhất định, ví dụ: [JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_jpegquality/) hoặc [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/).

Ví dụ mã sau đây cho thấy cách tạo bản xem trước của trang tài liệu đầu tiên bằng cách áp dụng một số cài đặt bổ sung:


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-ConvertWordDocument-ConvertDocumentToImage.cpp" >}}
