---
title: Làm việc với Hình mờ trong C#
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với Hình mờ
linktitle: Làm việc với Hình mờ
description: "Thao tác hình mờ tài liệu bằng C#."
type: docs
weight: 340
url: /vi/net/working-with-watermark/
---

Chủ đề này thảo luận về cách làm việc theo chương trình với hình mờ bằng Aspose.Words. Hình mờ là hình nền hiển thị phía sau văn bản trong tài liệu. Hình mờ có thể chứa văn bản hoặc hình ảnh được đại diện bởi lớp [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng này với [Hình mờ tài liệu trực tuyến miễn phí](https://products.aspose.app/words/watermark) của chúng tôi.

{{% /alert %}}

## Thêm hình mờ vào tài liệu

Trong Microsoft Word, hình mờ có thể dễ dàng được chèn vào tài liệu bằng lệnh Chèn hình mờ. Aspose.Words cung cấp lớp [watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) để thêm hoặc xóa hình mờ trong tài liệu. Aspose.Words cung cấp [Loại hình mờ](https://reference.aspose.com/words/net/aspose.words/watermark/type/)enumeration xác định ba loại hình mờ có thể sử dụng (Văn bản, Hình ảnh và Không có)

### Thêm hình mờ văn bản

Ví dụ về mã sau đây minh họa cách chèn hình mờ văn bản vào tài liệu bằng cách xác định [TextWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/textwatermarkoptions/) bằng phương pháp [SetText](https://reference.aspose.com/words/net/aspose.words/watermark/settext/#settext):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddTextWatermarkWithSpecificOptions.cs" >}}

### Thêm hình mờ hình ảnh

Ví dụ mã sau đây minh họa cách chèn hình mờ hình ảnh vào tài liệu bằng cách xác định [ImageWatermarkOptions](https://reference.aspose.com/words/net/aspose.words/imagewatermarkoptions/) bằng phương pháp [SetImage](https://reference.aspose.com/words/net/aspose.words/watermark/setimage/#setimage):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-AddImageWatermarkWithSpecificOptions.cs" >}}

Hình mờ cũng có thể được chèn bằng cách sử dụng lớp hình dạng. Rất dễ dàng để chèn bất kỳ hình dạng hoặc hình ảnh nào vào đầu trang hoặc chân trang và do đó tạo ra hình mờ thuộc bất kỳ loại nào có thể tưởng tượng được.

Ví dụ mã sau đây chèn hình mờ vào tài liệu Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Images-AddWatermark-AddWatermark.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}


## Xóa hình mờ khỏi tài liệu

Lớp [Watermark](https://reference.aspose.com/words/net/aspose.words/watermark/) cung cấp phương thức xóa để xóa hình mờ khỏi tài liệu.

Ví dụ mã sau đây cho thấy cách xóa hình mờ khỏi tài liệu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-WorkWithWatermark-RemoveWatermarkFromDocument.cs" >}}

Nếu hình mờ được thêm bằng đối tượng lớp [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) thì để xóa hình mờ khỏi tài liệu, bạn chỉ phải đặt tên của hình mờ trong khi chèn và sau đó xóa hình mờ theo tên được gán.

Ví dụ về mã sau đây chỉ cho bạn cách đặt tên của hình mờ và xóa nó khỏi tài liệu:

{{< highlight csharp >}}

// Set name to be able to remove it afterwards
watermark.Name("WaterMark");
{{< /highlight >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Images-RemoveWatermark-RemoveWatermark.cs" >}}

## Thêm hình mờ vào ô bảng

Đôi khi bạn cần chèn hình mờ/hình ảnh vào ô của bảng và hiển thị nó bên ngoài bảng, bạn có thể sử dụng thuộc tính [IsLayoutInCell](https://reference.aspose.com/words/net/aspose.words.drawing/shapebase/islayoutincell/). Thuộc tính này nhận hoặc đặt cờ cho biết hình dạng được hiển thị bên trong hay bên ngoài bảng. Lưu ý rằng thuộc tính này chỉ hoạt động khi bạn tối ưu hóa tài liệu cho Microsoft Word 2010 bằng phương pháp [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/).

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính này:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Shapes-WorkingWithShapes-SetShapeLayoutInCell.cs" >}}
