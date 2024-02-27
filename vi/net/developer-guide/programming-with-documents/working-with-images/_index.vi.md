---
title: Làm việc với hình ảnh trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với hình ảnh
linktitle: Làm việc với hình ảnh
description: "Hình ảnh chi tiết và các tính năng nâng cao được Aspose.Words cung cấp cho .NET."
type: docs
weight: 300
url: /vi/net/working-with-images/
---

Aspose.Words cho phép người dùng làm việc với hình ảnh một cách rất linh hoạt. Trong bài viết này, bạn chỉ có thể khám phá một số khả năng làm việc với hình ảnh.

## Cách chèn hình ảnh {#insert-an-image}

[DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) cung cấp một số phương thức nạp chồng của phương thức [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) cho phép bạn chèn hình ảnh nội tuyến hoặc hình ảnh nổi. Nếu hình ảnh là siêu tệp EMF hoặc WMF, nó sẽ được chèn vào tài liệu ở định dạng siêu tệp. Tất cả các hình ảnh khác sẽ được lưu trữ ở định dạng PNG. Phương thức **InsertImage** có thể sử dụng hình ảnh từ nhiều nguồn khác nhau:

- Từ một tệp hoặc `URL` bằng cách chuyển [InsertImage](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertimage/) tham số `String`
- Từ một luồng bằng cách truyền tham số `Stream` **InsertImage**
- Từ một đối tượng Image bằng cách truyền tham số Image **InsertImage**
- Từ một mảng byte bằng cách truyền tham số mảng byte **InsertImage**

Đối với mỗi phương pháp **InsertImage**, còn có các mức quá tải khác cho phép bạn chèn hình ảnh với các tùy chọn sau:
- Nội tuyến hoặc nổi tại một vị trí cụ thể, ví dụ **InsertImage**
- Tỷ lệ phần trăm hoặc kích thước tùy chỉnh, ví dụ: **InsertImage**; hơn nữa, phương thức **InsertImage** trả về một đối tượng [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) vừa được tạo và chèn để bạn có thể sửa đổi thêm các thuộc tính của Hình dạng

### Cách chèn hình ảnh nội tuyến {#insert-an-inline-image}

Chuyển một chuỗi đại diện cho tệp chứa hình ảnh tới **InsertImage** để chèn hình ảnh vào tài liệu dưới dạng đồ họa nội tuyến

Ví dụ mã sau đây cho biết cách chèn hình ảnh nội tuyến ở vị trí con trỏ vào tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertInlineImage.cs" >}}

### Cách chèn hình ảnh nổi {#insert-a-floating-image}

Ví dụ về mã sau đây cho biết cách chèn hình ảnh nổi từ tệp hoặc `URL` ở vị trí và kích thước được chỉ định:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderInsertImage-DocumentBuilderInsertFloatingImage.cs" >}}

## Cách trích xuất hình ảnh từ tài liệu {#how-to-extract-images-from-a-document}

Tất cả hình ảnh được lưu trữ bên trong các nút **Shape** trong [Document](https://reference.aspose.com/words/net/aspose.words/document/). Để trích xuất tất cả hình ảnh hoặc hình ảnh có loại cụ thể từ tài liệu, hãy làm theo các bước sau:

- Sử dụng phương pháp [GetChildNodes](https://reference.aspose.com/words/net/aspose.words/compositenode/getchildnodes/) để chọn tất cả các nút **Shape**.
- Lặp lại thông qua các bộ sưu tập nút kết quả.
- Kiểm tra thuộc tính boolean [HasImage](https://reference.aspose.com/words/net/aspose.words.drawing/shape/hasimage/).
- Trích xuất dữ liệu hình ảnh bằng thuộc tính [ImageData](https://reference.aspose.com/words/net/aspose.words.drawing/shape/imagedata/).
- Lưu dữ liệu hình ảnh vào một tập tin.

Ví dụ mã sau đây cho thấy cách trích xuất hình ảnh từ tài liệu và lưu chúng dưới dạng tệp:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Images.docx).

{{% /alert %}}

## Cách chèn mã vạch trên mỗi trang tài liệu {#how-to-insert-barcode-on-each-documen-page}

Ví dụ này minh họa cách bạn thêm các mã vạch giống nhau hoặc khác nhau trên tất cả hoặc các trang cụ thể của tài liệu Word. Không có cách trực tiếp để thêm mã vạch trên tất cả các trang của tài liệu nhưng bạn có thể sử dụng các phương thức **MoveToSection**, **MoveToHeaderFooter** và **InsertImage** để di chuyển đến bất kỳ phần hoặc đầu trang/chân trang nào và chèn hình ảnh mã vạch như bạn có thể thấy trong đoạn mã sau.

Ví dụ mã sau đây cho biết cách chèn hình ảnh mã vạch trên mỗi trang của tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeImage.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-InsertBarcodeImage-InsertBarcodeIntoFooter.cs" >}}

## Khóa tỷ lệ khung hình của hình ảnh {#lock-aspect-ratio-of-image}

Tỷ lệ khung hình của hình dạng hình học là tỷ lệ kích thước của nó theo các kích thước khác nhau. Bạn có thể khóa tỷ lệ khung hình của hình ảnh bằng [AspectRatioLocked](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/aspectratiolocked/). Giá trị mặc định của tỷ lệ khung hình của hình dạng phụ thuộc vào [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype/). Đó là *true* cho `ShapeType.Image` và *false* cho các loại hình dạng khác.

Ví dụ mã sau đây cho thấy cách làm việc với tỷ lệ khung hình:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetAspectRatioLocked.cs" >}}

## Cách nhận giới hạn hình dạng thực tế theo điểm {#how-to-get-actual-bounds-of-shape-in-points}

Nếu bạn muốn hộp giới hạn thực tế của hình được hiển thị trên trang, bạn có thể đạt được điều này bằng cách sử dụng thuộc tính [BoundsInPoints](https://reference.aspose.com/words/net/aspose.words.rendering/noderendererbase/boundsinpoints/).

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính này:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-GetActualShapeBoundsPoints.cs" >}}

## Cắt hình ảnh {#crop-images}

Việc cắt xén hình ảnh thường đề cập đến việc loại bỏ các phần bên ngoài không mong muốn của hình ảnh để giúp cải thiện khung hình. Nó cũng được sử dụng để loại bỏ một số phần của hình ảnh nhằm tăng sự tập trung vào một khu vực cụ thể.

Ví dụ về mã sau đây cho thấy cách đạt được điều này bằng Aspose.Words API:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImageCall.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-CropImages-CropImage.cs" >}}

## Lưu hình ảnh dưới dạng WMF {#save-images-as-wmf}

Aspose.Words cung cấp chức năng lưu tất cả hình ảnh có sẵn trong tài liệu sang định dạng [WMF](https://docs.fileformat.com/image/wmf/) trong khi chuyển đổi DOCX sang RTF.

Ví dụ mã sau đây cho thấy cách lưu hình ảnh dưới dạng WMF với các tùy chọn lưu RTF:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cs" >}}
