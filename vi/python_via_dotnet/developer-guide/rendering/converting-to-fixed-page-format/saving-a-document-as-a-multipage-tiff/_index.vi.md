---
title: Lưu tài liệu dưới dạng TIFF nhiều trang
second_title: Aspose.Words cho Python via .NET
articleTitle: Lưu tài liệu dưới dạng TIFF nhiều trang
linktitle: Lưu tài liệu dưới dạng TIFF nhiều trang
description: "Chuyển đổi tài liệu thành TIFF nhiều trang bằng Python. Để xác định cách tài liệu được hiển thị trên hình ảnh, bạn cần chỉ định các tùy chọn bổ sung: độ phân giải, số trang, nhị phân hình ảnh, v.v."
type: docs
weight: 30
url: /vi/python-net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Khi làm việc với tài liệu, bạn thường cần chuyển đổi tài liệu của mình thành (các) tệp hình ảnh raster. Điều này đặc biệt phù hợp nếu bạn phải trình bày tài liệu của mình ở định dạng có thể đọc và in được nhưng không thể chỉnh sửa được. Ví dụ: bạn có thể sử dụng hình ảnh raster của trang đầu tiên trong tài liệu làm bản xem trước. Bài viết này mô tả cách chuyển đổi tài liệu sang hình ảnh raster bằng ví dụ về định dạng TIFF – một trong những định dạng hình ảnh phổ biến hơn.

## Chuyển đổi DOC sang TIFF nhiều trang

Trong Aspose.Words, việc chuyển đổi từ DOC sang TIFF có thể được thực hiện bằng một dòng mã, chỉ cần chuyển đường dẫn "lưu vào" và phần mở rộng tệp có liên quan sang phương thức [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/). Phương thức [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) tự động lấy [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) từ phần mở rộng tên tệp được chỉ định trong đường dẫn. Ví dụ sau đây minh họa cách chuyển đổi tài liệu sang định dạng TIFF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-SaveAsTIFF.py" >}}

## Chỉ định các tùy chọn bổ sung khi kết xuất TIFF

Bạn thường cần chỉ định các tùy chọn bổ sung, điều này ảnh hưởng đến kết quả hiển thị. Với mục đích này, hãy sử dụng lớp [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/), lớp này chứa các thuộc tính xác định cách hiển thị tài liệu trên hình ảnh. Bạn có thể chỉ định những điều sau:

- Lưu định dạng để xác định danh sách các tùy chọn có sẵn ([save_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/save_format/))
- Độ phân giải ([horizontal_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/horizontal_resolution/), [vertical_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/vertical_resolution/))
- Số trang ([page_set](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/page_set/))
- Cài đặt màu sắc và ánh sáng ([paper_color](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/paper_color/), [image_color_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_color_mode/), [image_brightness](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_brightness/), [image_contrast](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_contrast/))
- Chất lượng hình ảnh ([jpeg_quality](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/jpeg_quality/), [scale](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/scale/), [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/))
- Phương pháp dùng để nhị phân hóa hình ảnh ([tiff_binarization_method](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_binarization_method/), [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/))
- Định dạng pixel cho hình ảnh được tạo ([pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/))
- Xử lý siêu tệp Windows bằng Aspose.Words ([metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/), [use_gdi_emf_renderer](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/use_gdi_emf_renderer/))
- Các tùy chọn bổ sung mà bạn có thể thấy trong lớp [ImageSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/)

Ví dụ sau đây cho thấy cách chuyển đổi DOC sang TIFF với các tùy chọn đã định cấu hình:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-GetTiffPageRange.py" >}}

## Ngưỡng cho nhị phân hóa TIFF

Hình ảnh TIFF có thể được lưu ở định dạng 1bpp đen trắng bằng cách đặt thuộc tính [pixel_format](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/pixel_format/) thành loại định dạng pixel [FORMAT1BPP_INDEXED](https://reference.aspose.com/words/python-net/aspose.words.saving/imagepixelformat/#format1bpp_indexed) và thuộc tính [tiff_compression](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/tiff_compression/) thành [CCITT3](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt3) hoặc [CCITT4](https://reference.aspose.com/words/python-net/aspose.words.saving/tiffcompression/#ccitt4).

Để phân đoạn hình ảnh, Aspose.Words sử dụng phương pháp đơn giản nhất - phân ngưỡng. Phương pháp này chuyển đổi hình ảnh TIFF thang màu xám thành hình ảnh nhị phân, sử dụng giá trị ngưỡng. Do đó, khi một tài liệu cần được chuyển đổi sang định dạng tệp TIFF, có thể lấy hoặc đặt ngưỡng cho nhị phân TIFF thông qua thuộc tính [threshold_for_floyd_steinberg_dithering](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/threshold_for_floyd_steinberg_dithering/). Giá trị mặc định cho thuộc tính này được đặt thành 128 và giá trị này càng cao thì hình ảnh càng tối.

Ví dụ sau đây cho thấy cách thực hiện nhị phân TIFF với ngưỡng được chỉ định:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_image_save_options-ExposeThresholdControlForTiffBinarization.py" >}}

Dưới đây bạn có thể so sánh các hình ảnh được thực hiện nhị phân TIFF ở các giá trị ngưỡng khác nhau:

<img src="/words/python-net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="lưu-tài liệu-dưới dạng nhiều trang-tiff-aspose-words-net" style="width:800px"/>
