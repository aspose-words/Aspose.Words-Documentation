---
title: Làm việc với Watermark trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Watermark
linktitle: Làm việc với Watermark
type: docs
description: "Chỉnh sửa dấu nước tài liệu sử dụng Java."
weight: 70
url: /vi/java/working-with-watermark/
---

Chủ đề này thảo luận về cách làm việc lập trình với một dấu nước sử dụng Aspose.Words. Một hình nước là một hình ảnh nền hiển thị đằng sau văn bản trong tài liệu. Một dấu nước có thể chứa một văn bản hay một hình ảnh được đại diện bởi lớp [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/).

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử tính năng này với [Free online document watermark](https://products.aspose.app/words/watermark) của chúng tôi.

{{% /alert %}}

## Thêm một dấu nước cho một tài liệu

Trong Microsoft Word, một dấu nước có thể dễ dàng chèn vào một tài liệu bằng cách sử dụng lệnh "Chèn Dấu Nước". Aspose.Words cung cấp lớp [watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) để thêm hoặc bỏ dấu nước trong các tài liệu. Aspose.Words cung cấp danh sách [WatermarkType ](https://reference.aspose.com/words/java/com.aspose.words/watermarktype/) định nghĩa ba loại dấu nước (Văn bản, Hình ảnh và Không) để làm việc với

### Thêm văn bản Watermark

Phần mã ví dụ dưới đây trình diễn cách chèn một chữ nước đánh dấu vào tài liệu bằng cách xác định [TextWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/textwatermarkoptions/) sử dụng phương pháp [SetText](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setText-java.lang.String):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.java" >}}

### Thêm watermark hình ảnh

Mẫu mã sau đây cho thấy cách chèn hình ảnh dấu nước trong một tài liệu bằng cách xác định [ImageWatermarkOptions](https://reference.aspose.com/words/java/com.aspose.words/imagewatermarkoptions/) sử dụng phương pháp [SetImage](https://reference.aspose.com/words/java/com.aspose.words/watermark/#setImage-java.awt.image.BufferedImage):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.java" >}}

Thước nước cũng có thể được chèn bằng cách sử dụng lớp hình dạng cũng vậy. Thật rất dễ dàng để chèn bất kỳ hình dạng hay hình ảnh nào vào đầu trang hoặc chân trang và như vậy tạo ra một dấu nước của bất kỳ loại nào có thể tưởng tượng ra được.

Mã ví dụ sau chèn một hình nước đánh dấu vào tài liệu Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-AddWatermarkToADocument-AddWatermarkToADocument.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Document.doc).

{{% /alert %}}


## Loại bỏ watermark từ một tài liệu

Lớp [Watermark](https://reference.aspose.com/words/java/com.aspose.words/watermark/) cung cấp phương thức `Remove` để loại bỏ dấu nước từ một tài liệu.

Các ví dụ mã dưới đây cho thấy cách xóa dấu nước từ tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-WorkWithWatermark-RemoveWatermarkFromDocument.java" >}}

Để bỏ dấu nước trên một tài liệu bạn phải chỉ định tên của hình dạng dấu nước khi chèn và sau đó bỏ hình dạng dấu nước bằng tên đã được gán.

Mã ví dụ sau cho bạn thấy cách đặt tên hình dạng nước chấm và loại bỏ nó khỏi tài liệu:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-images-RemoveWatermark-RemoveWatermark.java" >}}

## Chèn một Watermark vào một Cell bảng

Đôi lúc bạn cần phải chèn một hình ảnh hoặc dấu nước vào một ô của bảng và hiển thị nó bên ngoài bảng, bạn có thể dùng thuộc tính [IsLayoutInCell](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#isLayoutInCell-boolean). Tính chất này nhận hoặc đặt một cờ cho biết hình dạng hiển thị bên trong bảng hay bên ngoài nó. Lưu ý là tính năng này hoạt động chỉ khi bạn tối ưu hóa tài liệu cho Microsoft Word 2010 bằng phương pháp [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int)

Mã ví dụ sau cho thấy cách sử dụng tính năng này:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.java" >}}
