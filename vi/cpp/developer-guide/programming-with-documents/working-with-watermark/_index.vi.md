---
title: Làm Việc với Watermark trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Watermark
linktitle: Làm việc Với Watermark
type: docs
description: "Thao tác hình mờ tài liệu bằng C++."
weight: 340
url: /vi/cpp/working-with-watermark/
---

Chủ đề này thảo luận về cách làm việc theo chương trình với watermark bằng Aspose.Words. Hình mờ là hình nền hiển thị phía sau văn bản trong tài liệu. Hình mờ có thể chứa văn bản hoặc hình ảnh được biểu thị bằng lớp [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/).

## Thêm Hình Mờ Vào Tài liệu

Trong Microsoft Word, một hình mờ có thể dễ dàng được chèn vào tài liệu bằng lệnh Chèn Hình Mờ. Aspose.Words cung cấp lớp [watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) để thêm hoặc xóa hình mờ trong tài liệu. Aspose.Words cung cấp liệt kê [WatermarkType ](https://reference.aspose.com/words/cpp/aspose.words/)xác định ba loại hình mờ có thể có (Văn bản, Hình ảnh và Không có) để làm việc.

### Thêm Hình Mờ Văn Bản

Ví dụ mã sau đây trình bày cách chèn hình mờ văn bản trong tài liệu bằng cách xác định [TextWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/textwatermarkoptions/) bằng phương thức [SetText](https://reference.aspose.com/words/cpp/aspose.words/watermark/settext/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cpp" >}}

### Thêm Hình Mờ Hình Ảnh

Ví dụ mã sau đây trình bày cách chèn hình mờ hình ảnh trong tài liệu bằng cách xác định [ImageWatermarkOptions](https://reference.aspose.com/words/cpp/aspose.words/imagewatermarkoptions/) bằng phương thức [SetImage](https://reference.aspose.com/words/cpp/aspose.words/watermark/setimage/).

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cpp" >}}

Hình mờ cũng có thể được chèn bằng lớp hình dạng. Rất dễ dàng để chèn bất kỳ hình dạng hoặc hình ảnh nào vào đầu trang hoặc chân trang và do đó tạo ra một hình mờ thuộc bất kỳ loại nào có thể tưởng tượng được. Ví dụ mã sau đây chèn hình mờ vào Tài liệu Word.

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-AddWatermark-AddWatermark.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}


## Xóa Hình Mờ Khỏi Tài liệu

Lớp [Watermark](https://reference.aspose.com/words/cpp/aspose.words/watermark/) cung cấp phương thức xóa để xóa hình mờ khỏi tài liệu.

Ví dụ mã sau đây cho thấy cách xóa hình mờ khỏi tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cpp" >}}

Nếu các hình mờ được thêm vào bằng cách sử dụng đối tượng lớp [Shape](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/) thì để xóa hình mờ khỏi tài liệu, bạn chỉ phải đặt tên của hình mờ trong khi chèn và sau đó xóa hình mờ bằng tên được gán.

Ví dụ mã sau đây chỉ cho bạn cách đặt tên của hình mờ và xóa nó khỏi tài liệu:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark->set_Name(u"WaterMark");
{{< /highlight >}}


{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cpp" >}}

## Thêm Hình Mờ Trong Ô Bảng

Đôi khi bạn cần chèn hình mờ/hình ảnh vào ô của bảng và hiển thị nó bên ngoài bảng, bạn có thể sử dụng thuộc tính [IsLayoutInCell](https://reference.aspose.com/words/cpp/aspose.words.drawing/shapebase/get_islayoutincell/). Thuộc tính này nhận hoặc đặt cờ cho biết hình dạng được hiển thị bên trong bảng hay bên ngoài bảng. Lưu ý rằng thuộc tính này chỉ hoạt động khi bạn tối ưu hóa tài liệu cho Microsoft Word 2010 bằng phương thức [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/).

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính này:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cpp" >}}
