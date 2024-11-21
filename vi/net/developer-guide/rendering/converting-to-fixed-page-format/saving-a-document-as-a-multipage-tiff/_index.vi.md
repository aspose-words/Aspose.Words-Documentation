---
title: Lưu tài liệu dưới dạng TIFF nhiều trang trong C#
second_title: Aspose.Words cho .NET
articleTitle: Lưu tài liệu dưới dạng TIFF nhiều trang
linktitle: Lưu tài liệu dưới dạng TIFF nhiều trang
description: "Chuyển đổi tài liệu thành TIFF nhiều trang bằng C#. Để xác định cách tài liệu được hiển thị trên hình ảnh, bạn cần chỉ định các tùy chọn bổ sung: độ phân giải, số trang, nhị phân hình ảnh, v.v."
type: docs
weight: 30
url: /vi/net/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-07-10-14-38-57
---

Khi làm việc với tài liệu, bạn thường cần chuyển đổi tài liệu của mình thành (các) tệp hình ảnh raster. Điều này đặc biệt phù hợp nếu bạn phải trình bày tài liệu của mình ở định dạng có thể đọc và in được nhưng không thể chỉnh sửa được. Ví dụ: bạn có thể sử dụng hình ảnh raster của trang đầu tiên trong tài liệu làm bản xem trước. Bài viết này mô tả cách chuyển đổi tài liệu sang hình ảnh raster bằng ví dụ về định dạng TIFF – một trong những định dạng hình ảnh phổ biến hơn.

## Chuyển đổi DOC sang TIFF nhiều trang

Trong Aspose.Words, việc chuyển đổi từ DOC sang TIFF có thể được thực hiện bằng một dòng mã, chỉ cần chuyển đường dẫn "lưu vào" và phần mở rộng tệp có liên quan sang phương thức [Save](https://reference.aspose.com/words/net/aspose.words/document/save/#save). Phương thức **Save** tự động lấy `SaveFormat` từ phần mở rộng tên tệp được chỉ định trong đường dẫn. Ví dụ sau đây minh họa cách chuyển đổi tài liệu sang định dạng TIFF:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFF.cs" >}}

## Chỉ định các tùy chọn bổ sung khi kết xuất TIFF

Bạn thường cần chỉ định các tùy chọn bổ sung, điều này ảnh hưởng đến kết quả hiển thị. Với mục đích này, hãy sử dụng lớp [ImageSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), lớp này chứa các thuộc tính xác định cách hiển thị tài liệu trên hình ảnh. Bạn có thể chỉ định những điều sau:

- Lưu định dạng để xác định danh sách các tùy chọn có sẵn ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/saveformat))
- Độ phân giải ([HorizontalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/horizontalresolution/), [VerticalResolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/verticalresolution/), [Resolution](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/resolution))
- Số trang ([PageIndex](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/))
- Cài đặt màu sắc và ánh sáng ([PaperColor](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/papercolor/), [ImageColorMode](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagecolormode/), [ImageBrightness](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/imagebrightness/), [ImageContrast](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/imagecontrast))
- Chất lượng hình ảnh ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/jpegquality/), [Scale](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/scale/), [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/), [GraphicsQualityOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/graphicsqualityoptions))
- Phương pháp dùng để nhị phân hóa hình ảnh ([TiffBinarizationMethod](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffbinarizationmethod/), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/thresholdforfloydsteinbergdithering))
- Định dạng pixel cho hình ảnh được tạo ([PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/pixelformat))
- Xử lý siêu tệp Windows bằng Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/metafilerenderingoptions/), [UseGdiEmfRenderer](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/properties/usegdiemfrenderer))
- Các tùy chọn bổ sung mà bạn có thể thấy trong lớp **ImageSaveOptions**

Ví dụ sau đây cho thấy cách chuyển đổi DOC sang TIFF với các tùy chọn đã định cấu hình:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Rendering-Printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.cs" >}}

## Ngưỡng cho nhị phân hóa TIFF

Hình ảnh TIFF có thể được lưu ở định dạng 1bpp đen trắng bằng cách đặt thuộc tính [PixelFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/pixelformat/) thành loại định dạng pixel Format1bppIndexed và thuộc tính [TiffCompression](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/tiffcompression/) thành Ccitt3 hoặc Ccitt4.

Để phân đoạn hình ảnh, Aspose.Words sử dụng phương pháp đơn giản nhất - phân ngưỡng. Phương pháp này chuyển đổi hình ảnh TIFF thang màu xám thành hình ảnh nhị phân, sử dụng giá trị ngưỡng. Do đó, khi một tài liệu cần được chuyển đổi sang định dạng tệp TIFF, có thể lấy hoặc đặt ngưỡng cho nhị phân TIFF thông qua thuộc tính [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/thresholdforfloydsteinbergdithering/). Giá trị mặc định cho thuộc tính này được đặt thành 128 và giá trị này càng cao thì hình ảnh càng tối.

Ví dụ sau đây cho thấy cách thực hiện nhị phân TIFF với ngưỡng được chỉ định:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.cs" >}}

Dưới đây bạn có thể so sánh các hình ảnh được thực hiện nhị phân TIFF ở các giá trị ngưỡng khác nhau:

<img src="/words/net/saving-a-document-as-a-multipage-tiff/saving-a-document-as-a-multipage-tiff-1.jpg" alt="lưu-tài liệu-dưới dạng nhiều trang-tiff-aspose-words-net" style="width:800px"/>
