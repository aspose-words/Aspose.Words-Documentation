---
title: Lưu Tài liệu Dưới Dạng Nhiều trang TIFF trong C++
second_title: Aspose.Words cho C++
articleTitle: Lưu Tài liệu Dưới Dạng Nhiều trang TIFF
linktitle: Lưu Tài liệu Dưới Dạng Nhiều trang TIFF
description: "Chuyển đổi tài liệu thành nhiều trang TIFF bằng C++. Để xác định cách tài liệu được hiển thị trên hình ảnh, bạn cần chỉ định các tùy chọn bổ sung: độ phân giải, số trang, nhị phân hóa hình ảnh, v. v."
type: docs
weight: 40
url: /vi/cpp/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Khi làm việc với tài liệu, bạn thường cần chuyển đổi tài liệu của mình thành(các) tệp hình ảnh raster. Điều này đặc biệt phù hợp nếu bạn phải trình bày tài liệu của mình ở định dạng có thể đọc và in, nhưng không thể chỉnh sửa. Ví dụ: bạn có thể sử dụng hình ảnh raster của trang đầu tiên của tài liệu làm bản xem trước. Bài viết này mô tả cách chuyển đổi tài liệu sang hình ảnh raster bằng ví dụ về định dạng TIFF – một trong những định dạng hình ảnh phổ biến hơn.

## Chuyển đổi DOC Sang Nhiều Trang TIFF

Trong Aspose.Words, việc chuyển đổi từ DOC sang TIFF có thể được thực hiện bằng một dòng mã, bằng cách chuyển đường dẫn "lưu vào" và phần mở rộng tệp có liên quan sang phương thức [Save](https://reference.aspose.com/words/cpp/aspose.words/document/save/). Phương thức **Save** tự động lấy `SaveFormat` từ phần mở rộng tên tệp được chỉ định trong đường dẫn. Ví dụ sau đây trình bày cách chuyển đổi tài liệu sang định dạng TIFF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with ImageSaveOptions-SaveAsTIFF.h" >}}

## Chỉ Định Các Tùy Chọn Bổ Sung Khi Kết Xuất TIFF

Bạn thường cần chỉ định các tùy chọn bổ sung, ảnh hưởng đến kết quả kết xuất. Với mục đích này, hãy sử dụng lớp [ImageSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/), chứa các thuộc tính xác định cách tài liệu được hiển thị trên hình ảnh. Bạn có thể chỉ định những điều sau đây:

- Lưu định dạng để xác định danh sách các tùy chọn có sẵn ([SaveFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_saveformat/))
- Độ phân giải ([HorizontalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_verticalresolution/), [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_resolution/))
- Số trang ([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pageset/))
- Cài đặt màu sắc và ánh sáng ([PaperColor](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_papercolor/), [ImageColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagebrightness/), [ImageContrast](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_imagecontrast/))
- Chất lượng hình ảnh ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/set_jpegquality/), [Scale](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_scale/), [TiffCompression](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffcompression/), GraphicsQualityOptions)
- Phương pháp được sử dụng để nhị phân hóa hình ảnh ([TiffBinarizationMethod](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/))
- Định dạng Pixel cho hình ảnh được tạo ([PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/))
- Windows xử lý metafiles bằng cách Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_usegdiemfrenderer/))
- Các tùy chọn bổ sung mà bạn có thể thấy trong lớp **ImageSaveOptions**

Ví dụ sau đây cho thấy cách chuyển đổi DOC thành TIFF với các tùy chọn được định cấu hình:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cpp" >}}

## Ngưỡng Cho TIFF Binarization

Hình ảnh TIFF có thể được lưu ở định dạng 1bpp b/w bằng cách đặt thuộc tính [PixelFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_pixelformat/) Thành Định dạng1bppIndexed kiểu định dạng pixel và thuộc tính `TiffCompression` thành Ccitt3 hoặc Ccitt4.

Đối với phân đoạn hình ảnh, Aspose.Words sử dụng phương pháp đơn giản nhất - ngưỡng. Phương pháp này chuyển đổi hình ảnh TIFF thang màu xám thành hình ảnh nhị phân, sử dụng giá trị ngưỡng. Do đó, khi một tài liệu cần được chuyển đổi sang định dạng tệp TIFF, có thể lấy hoặc đặt ngưỡng cho TIFF nhị phân hóa thông qua thuộc tính [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/cpp/aspose.words.saving/imagesaveoptions/get_thresholdforfloydsteinbergdithering/). Giá trị mặc định cho thuộc tính này được đặt thành 128 và giá trị này càng cao, hình ảnh càng tối.

Ví dụ sau đây cho thấy cách thực hiện nhị phân hóa TIFF với một ngưỡng được chỉ định:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cpp" >}}

Dưới đây, bạn có thể so sánh hình ảnh mà TIFF nhị phân hóa được thực hiện ở các giá trị ngưỡng khác nhau:

![save-a-document-as-a-multipage-tiff-aspose-words-cpp](saving-a-document-as-a-multipage-tiff-1.jpg)
