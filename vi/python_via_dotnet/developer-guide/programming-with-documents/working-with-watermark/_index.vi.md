---
title: Làm việc với Hình mờ trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với Hình mờ
linktitle: Làm việc với Hình mờ
description: "Tạo và quản lý hình mờ trong tài liệu bằng Python."
type: docs
weight: 340
url: /vi/python-net/working-with-watermark/
---

Chủ đề này thảo luận về cách làm việc theo chương trình với hình mờ bằng Aspose.Words. Hình mờ là hình nền hiển thị phía sau văn bản trong tài liệu. Hình mờ có thể chứa văn bản hoặc hình ảnh được đại diện bởi lớp [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/).

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng này với [Hình mờ tài liệu trực tuyến miễn phí](https://products.aspose.app/words/watermark) của chúng tôi.

{{% /alert %}}

## Cách thêm hình mờ vào tài liệu

Trong Microsoft Word, hình mờ có thể dễ dàng được chèn vào tài liệu bằng lệnh Chèn hình mờ. Aspose.Words cung cấp lớp [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) để thêm hoặc xóa hình mờ trong tài liệu. Aspose.Words cung cấp bảng liệt kê [WatermarkType](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/) xác định ba loại hình mờ có thể sử dụng ([TEXT](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#text), [IMAGE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#image) và [NONE](https://reference.aspose.com/words/python-net/aspose.words/watermarktype/#none))

### Thêm hình mờ văn bản

Ví dụ mã sau đây minh họa cách chèn hình mờ văn bản vào tài liệu bằng cách xác định [TextWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/textwatermarkoptions/) bằng phương pháp [set_text](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_text/).

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddTextWatermarkWithSpecificOptions.py" >}}

### Thêm hình mờ hình ảnh

Ví dụ mã sau đây minh họa cách chèn hình mờ hình ảnh vào tài liệu bằng cách xác định [ImageWatermarkOptions](https://reference.aspose.com/words/python-net/aspose.words/imagewatermarkoptions/) bằng phương pháp [set_image](https://reference.aspose.com/words/python-net/aspose.words/watermark/set_image/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddImageWatermarkWithSpecificOptions.py" >}}

Hình mờ cũng có thể được chèn bằng cách sử dụng lớp hình dạng. Rất dễ dàng để chèn bất kỳ hình dạng hoặc hình ảnh nào vào đầu trang hoặc chân trang và do đó tạo ra hình mờ thuộc bất kỳ loại nào có thể tưởng tượng được.

Ví dụ mã sau đây chèn hình mờ vào tài liệu Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-AddWatermark.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [đây](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)

{{% /alert %}}


## Xóa hình mờ khỏi tài liệu

Lớp [Watermark](https://reference.aspose.com/words/python-net/aspose.words/watermark/) cung cấp phương thức xóa để xóa hình mờ khỏi tài liệu.

Ví dụ mã sau đây cho thấy cách xóa hình mờ khỏi tài liệu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermarkFromDocument.py" >}}

Nếu hình mờ được thêm bằng đối tượng lớp [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) thì để xóa hình mờ khỏi tài liệu, bạn chỉ phải đặt tên của hình mờ trong khi chèn và sau đó xóa hình mờ theo tên được gán.

Ví dụ về mã sau đây chỉ cho bạn cách đặt tên của hình mờ và xóa nó khỏi tài liệu:

{{< highlight python >}}
# Set name to be able to remove it afterwards
watermark.name = "WaterMark"
{{< /highlight >}}

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_watermark-RemoveWatermark.py" >}}

## Thêm hình mờ vào ô bảng

Đôi khi bạn cần chèn hình mờ/hình ảnh vào ô của bảng và hiển thị nó bên ngoài bảng, bạn có thể sử dụng thuộc tính [is_layout_in_cell](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/is_layout_in_cell/). Thuộc tính này nhận hoặc đặt cờ cho biết hình dạng được hiển thị bên trong hay bên ngoài bảng. Lưu ý rằng thuộc tính này chỉ hoạt động khi bạn tối ưu hóa tài liệu cho Microsoft Word 2010 bằng phương pháp [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/).

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính này:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Graphic Elements-working_with_shapes-LayoutInCell.py" >}}
