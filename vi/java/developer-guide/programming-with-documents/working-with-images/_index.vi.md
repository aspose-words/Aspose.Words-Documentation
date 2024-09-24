---
title: Làm việc với ảnh trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với hình ảnh
linktitle: Làm việc với hình ảnh
type: docs
description: "Hình dạng hình ảnh trong chi tiết và tính năng nâng cao được cung cấp bởi Aspose.Words cho Java."
weight: 300
url: /vi/java/working-with-images/
---

Aspose.Words" cho phép người dùng làm việc với hình ảnh theo một cách rất linh hoạt. Trong bài viết này, bạn chỉ có thể khám phá một số khả năng làm việc với hình ảnh.

## Cách Lấy Ảnh ra từ Tài liệu {#how-to-extract-images-from-a-document}

Tất cả hình ảnh được lưu trữ bên trong các **Shape** node trong một tài liệu. Để trích xuất tất cả các hình ảnh hoặc hình ảnh có một loại cụ thể từ tài liệu, làm theo các bước sau:

- Sử dụng [getChildNodes](https://reference.aspose.com/words/java/com.aspose.words/shape/#getChildNodes) phương pháp để chọn tất cả các node hình dạng.
- Lặp qua các bộ sưu tập nút.
- Kiểm tra thuộc tính [hasImage](https://reference.aspose.com/words/java/com.aspose.words/shape/#hasImage) boolean.
- Lấy dữ liệu ảnh bằng thuộc tính [ImageData](https://reference.aspose.com/words/java/com.aspose.words/shape/#getImageData).
Lưu dữ liệu hình ảnh vào tập tin.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-ExtractImagesToFiles-ExtractImagesToFiles.java" >}}

## Cách chèn mã vạch trên mỗi trang tài liệu {#how-to-insert-barcode-on-each-documen-page}

Ví dụ này cho phép bạn thêm cùng một hoặc các mã vạch khác nhau trên tất cả hoặc các trang cụ thể trong tài liệu Word. Không có cách trực tiếp nào để thêm mã vạch trên tất cả các trang của một tài liệu nhưng bạn có thể sử dụng [moveToSection](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToSection-int), [moveToHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#moveToHeaderFooter-int) và [insertImage](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertImage(byte[]) các phương pháp để di chuyển đến bất kỳ phần nào hoặc tiêu đề/chân trang và chèn hình ảnh mã vạch như bạn có thể thấy trong đoạn mã sau

Mã ví dụ sau cho thấy cách chèn một hình ảnh mã vạch vào mỗi trang trong một tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeImage.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-InsertBarcodeImage-InsertBarcodeIntoFooter.java" >}}

## Khóa tỷ số khung hình của hình ảnh {#lock-aspect-ratio-of-image}

Tỷ lệ khung hình của một hình học là tỷ lệ của kích thước ở các chiều khác nhau. Bạn có thể khóa tỷ lệ khung hình của một hình ảnh bằng [AspectRatioLocked](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAspectRatioLocked). Giá trị mặc định của tỷ số hình phụ thuộc vào [ShapeType](https://reference.aspose.com/words/java/com.aspose.words/shapetype/). Đó là true cho `ShapeType.Image` và false cho các kiểu hình dạng khác.

Mảnh mã ví dụ sau cho thấy cách làm việc với tỉ lệ khía cạnh:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetImageAspectRatioLocked-DocumentBuilderSetImageAspectRatioLocked.java" >}}

## Cách lấy giới hạn thực của hình dạng trong điểm {#how-to-get-actual-bounds-of-shape-in-points}

Nếu bạn muốn hộp giới hạn thực tế của hình dạng được hiển thị trên trang, bạn có thể đạt được điều đó bằng cách sử dụng thuộc tính [BoundsInPoints](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#getBoundsInPoints).

Ví dụ mã sau cho thấy cách sử dụng thuộc tính này:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.java" >}}

## Cắt hình ảnh

Lấy cạnh của một hình ảnh thường đề cập đến việc loại bỏ các phần ngoài không mong muốn của một hình ảnh để giúp cải thiện khung hình. Nó cũng được dùng để loại bỏ một số phần của một hình ảnh để tăng sự tập trung vào một khu vực nhất định.

Ví dụ mã sau cho thấy cách để đạt được điều này bằng Aspose.Words API":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImageCall.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-CropImages-CropImage.java" >}}

## Lưu hình ảnh thành WMF

Aspose.Words cung cấp chức năng để lưu tất cả các hình ảnh có sẵn trong một tài liệu sang [WMF ](https://docs.fileformat.com/image/wmf/) định dạng khi chuyển đổi từ DOCX sang RTF.

Ví dụ về đoạn mã sau cho thấy cách lưu hình ảnh dưới dạng WMF với các tùy chọn lưu RTF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.java" >}}
