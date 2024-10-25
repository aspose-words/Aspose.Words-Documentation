---
title: Làm Việc Với Hình ảnh trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm Việc Với Hình Ảnh
linktitle: Làm Việc Với Hình Ảnh
type: docs
description: "Giới thiệu Về Tính năng Hình ảnh, cách tạo và thao tác hình ảnh bằng C++."
weight: 300
url: /vi/cpp/working-with-images/
---

Aspose.Words cho phép người dùng làm việc với hình ảnh một cách rất linh hoạt. Trong bài viết này, bạn chỉ có thể khám phá một số khả năng làm việc với hình ảnh.

## Cách Trích Xuất Hình ảnh Từ Tài liệu

Tất cả các hình ảnh được lưu trữ bên trong **Shape** nút trong một [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Để trích xuất tất cả hình ảnh hoặc hình ảnh có một loại cụ thể từ tài liệu, hãy làm theo các bước sau:

- Sử dụng phương thức [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) để chọn tất cả các nút **Shape**.
- Lặp qua các bộ sưu tập nút kết quả.
- Kiểm tra thuộc tính [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/) boolean.
- Trích xuất dữ liệu hình ảnh bằng thuộc tính [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Lưu dữ liệu hình ảnh vào một tệp.

Ví dụ mã sau đây cho thấy cách trích xuất hình ảnh từ tài liệu và lưu chúng dưới dạng tệp:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Lưu Hình ảnh dưới dạng WMF

Aspose.Words cung cấp chức năng lưu tất cả các hình ảnh có sẵn trong tài liệu vào [WMF ](https://docs.fileformat.com/image/wmf/)định dạng trong khi chuyển đổi DOCX thành RTF.

Ví dụ mã sau đây cho thấy cách lưu hình ảnh dưới dạng WMF với RTF lưu tùy chọn:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
