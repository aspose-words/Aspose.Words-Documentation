---
title: Chuyển đổi một Tài liệu thành Hình ảnh trong Java
second_title: Aspose.Words cho Java
articleTitle: Chuyển đổi một tài liệu thành hình ảnh
linktitle: Chuyển đổi một tài liệu thành hình ảnh
type: docs
description: "Chuyển đổi một tài liệu sang định dạng hình ảnh (JPG, PNG, v.v.). Tạo bản xem tài liệu hoặc tạo bản quét tài liệu để gửi hóa đơn bằng cách sử dụng Java."
weight: 35
url: /vi/java/convert-a-document-to-an-image/
---

Đôi khi nó được yêu cầu để lấy một hình ảnh thay cho các tài liệu ở định dạng khác như DOCX hoặc PDF. Ví dụ, bạn cần thêm một bản xem trước của bất kỳ trang tài liệu nào vào trang web hoặc ứng dụng của mình hoặc tạo một "hình quét" của một tài liệu để gửi hóa đơn. Đây là khi bạn có thể cần chuyển đổi một tài liệu trong bất kỳ [supported load format](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) thành một hình ảnh, lần nữa, trong bất kỳ [supported save format](https://reference.aspose.com/words/java/com.aspose.words/saveformat/).

## Chuyển đổi sang Định Dạng Hình Ảnh

Như tất cả các ví dụ chuyển đổi đã được mô tả, bạn cần tạo một tài liệu mới hoặc tải một tài liệu hiện có trong bất kỳ định dạng nào được hỗ trợ, thực hiện các thay đổi cần thiết và lưu nó ở bất kỳ định dạng hình ảnh nào có sẵn, ví dụ như JPEG, PNG hay BMP.

Mã ví dụ sau cho thấy cách chuyển đổi từ DOCX sang JPEG:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocxToJpeg.java" >}}

## Chỉ định tùy chọn Lưu khi Chuyển đổi sang Hình ảnh

Aspose.Words cung cấp bạn với lớp [ImageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), cho phép kiểm soát hơn về cách các tài liệu được lưu trong nhiều định dạng hình ảnh. Một số thuộc tính của lớp này thừa kế hoặc ghi đè các thuộc tính của các lớp cơ sở như [FixedPageSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/) hoặc [SaveOptions](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/), nhưng cũng có các tùy chọn cụ thể cho việc lưu hình ảnh.

Có thể chỉ định các trang cần chuyển đổi sang định dạng hình ảnh bằng thuộc tính [PageSet](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPageSet). Ví dụ, nó có thể được áp dụng nếu bạn chỉ cần một bản xem trước cho trang đầu tiên hoặc cho một trang cụ thể.

Cũng có thể kiểm soát chất lượng hình ảnh đầu ra và định dạng pixel bằng các thuộc tính sau – [HorizontalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getHorizontalResolution), [VerticalResolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getVerticalResolution), [Resolution](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/), [Scale](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getScale), [PixelFormat](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPixelFormat), cũng như thiết lập các cài đặt màu sắc của hình ảnh, sử dụng các thuộc tính sau – [ImageBrightness](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageBrightness), [ImageColorMode](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageColorMode), [ImageContrast](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getImageContrast), [PaperColor](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getPaperColor).

Cũng có thuộc tính áp dụng cho một định dạng nhất định, ví dụ như [JpegQuality](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getJpegQuality) hay [TiffCompression](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getTiffCompression).

Mã ví dụ sau cho thấy cách tạo một bản xem trước của trang đầu tiên của tài liệu với việc áp dụng một số cài đặt bổ sung:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToImage-ConvertDocumentToImage.java" >}}
