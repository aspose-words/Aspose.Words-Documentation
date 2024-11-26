---
title: Lưu một tài liệu dưới dạng nhiều trang TIFF trong Java
second_title: Aspose.Words cho Java
articleTitle: Lưu một Tài liệu dưới dạng TIFF nhiều trang
linktitle: Lưu một Tài liệu dưới dạng TIFF nhiều trang
description: "Chuyển đổi tài liệu thành một hình ảnh raster, được thảo luận trên ví dụ của định dạng TIFF. Để xác định cách TIFF hiển thị bạn cần phải chỉ định các tùy chọn bổ sung: độ phân giải, số trang, hình ảnh nhị phân hóa, v.v. bằng Java."
type: docs
weight: 30
url: /vi/java/saving-a-document-as-a-multipage-tiff/
timestamp: 2024-01-27-14-07-04
---

Khi làm việc với tài liệu, bạn thường cần chuyển đổi tài liệu của bạn thành một tập tin hình ảnh raster(s). Điều này đặc biệt quan trọng nếu bạn phải trình bày tài liệu của mình ở một định dạng có thể đọc và có thể in, nhưng không chỉnh sửa. Ví dụ, bạn có thể sử dụng một hình ảnh raster của trang đầu tiên trong tài liệu như là một bản xem trước. Bài viết mô tả cách chuyển đổi một tài liệu sang hình ảnh raster sử dụng ví dụ của định dạng TIFF – một trong những định dạng hình ảnh phổ biến nhất.

## Đổi DOC thành TIFF nhiều trang

Trong Aspose.Words, chuyển đổi từ DOC sang TIFF có thể thực hiện với một dòng mã, đơn giản là truyền đường dẫn "Lưu vào" và phần mở rộng tệp liên quan đến phương thức [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.io.OutputStream-com.aspose.words.SaveOptions). Phương pháp **Save** sẽ tự động suy ra `SaveFormat` từ phần mở rộng tập tin được chỉ rõ trong đường dẫn. Ví dụ sau cho thấy cách chuyển đổi tài liệu sang định dạng TIF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFF.java" >}}

## Chỉ định Tùy chọn Thêm Khi Xử lý TIFF

Bạn thường phải chỉ rõ các tùy chọn bổ sung, ảnh hưởng đến kết quả hiển thị. Vì mục đích này, hãy dùng lớp [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), chứa các thuộc tính quyết định cách thức hiển thị tài liệu trên hình ảnh. Bạn có thể chỉ rõ những điều sau đây:

- Lưu định dạng để xác định danh sách các tùy chọn có sẵn ([SaveFormat](https://reference.aspose.com/words/net/aspose.words.saving/imagesaveoptions/saveformat/))
- Độ phân giải ([HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#Resolution))
- Số trang ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PageCount))":
Các cài đặt màu và ánh sáng ([PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ImageContrast))
- Chất lượng hình ảnh ([JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression), [GraphicsQualityOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#GraphicsQualityOptions))
- Phương pháp được dùng để nhị phân hình ảnh ([TiffBinarizationMethod](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffBinarizationMethod), [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#ThresholdForFloydSteinbergDithering))
- Định dạng pixel cho hình ảnh được tạo ra ( [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#PixelFormat) )
- Windows xử lý tập tin bằng cách Aspose.Words ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions), [UseGdiEmfRenderer](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions#UseGdiEmfRenderer))
"- Tùy chọn bổ sung mà bạn có thể thấy trong lớp **ImageSaveOptions**"

Ví dụ sau cho thấy cách chuyển đổi từ DOC sang TIFF với các tùy chọn được cấu hình

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveAsMultipageTiff-SaveAsTIFFUsingImageSaveOptions.java" >}}

## Độ ngưỡng cho TIFF Binarization

Hình ảnh TIFF có thể được lưu ở định dạng 1bpp màu đen trắng bằng cách thiết lập thuộc tính [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat) thành loại pixel Format1bppIndexed và thuộc tính [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression) thành hoặc Ccitt3 hoặc Ccitt4.

Đối với phân đoạn hình ảnh, Aspose.Words sử dụng phương pháp đơn giản nhất – ngưỡng. Phương pháp này chuyển đổi một hình ảnh màu xám TIFF thành một hình ảnh nhị phân sử dụng giá trị ngưỡng. Vì vậy, khi một tài liệu cần được chuyển đổi sang định dạng tệp TIFF, nó là có thể để nhận hoặc đặt ngưỡng cho TIFF nhị phân hóa qua [ThresholdForFloydSteinbergDithering](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getThresholdForFloydSteinbergDithering) thuộc tính. Giá trị mặc định của thuộc tính này được đặt thành 128, và càng cao giá trị này, hình ảnh càng tối.

Ví dụ sau cho thấy thực hiện tiff nhị phân với ngưỡng được chỉ định như thế nào:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-ImageColorFilters-ExposeThresholdControlForTiffBinarization.java" >}}

Dưới đây bạn có thể so sánh hình ảnh đã được thực hiện nhị phân hóa TIFF tại các giá trị ngưỡng khác nhau:

<img src="saving-a-document-as-a-multipage-tiff-1.jpg" alt="saving-a-document-as-a-multipage-tiff-aspose-words-java" style="width:800px"/>
