---
title: Chuyển đổi giữa các đơn vị đo lường
second_title: Aspose.Words cho Python via .NET
articleTitle: Chuyển đổi giữa các đơn vị đo lường
linktitle: Chuyển đổi giữa các đơn vị đo lường
description: "Aspose.Words cho Python via .NET có thể giúp bạn cách chuyển đổi giữa các đơn vị đo lường, ví dụ: inch thành điểm và điểm thành inch, pixel thành điểm, điểm thành pixel."
type: docs
weight: 20
url: /vi/python-net/convert-between-measurement-units/
---

Hầu hết các thuộc tính đối tượng được cung cấp trong Aspose.Words API đại diện cho một số phép đo, chẳng hạn như chiều rộng hoặc chiều cao, lề và các khoảng cách khác nhau, chấp nhận các giá trị theo điểm, trong đó 1 inch bằng 72 điểm. Đôi khi điều này không thuận tiện và điểm cần được chuyển đổi sang đơn vị khác.

Aspose.Words cung cấp lớp [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) cung cấp các hàm trợ giúp để chuyển đổi giữa các đơn vị đo lường khác nhau. Nó cho phép chuyển đổi inch, pixel và milimet thành điểm, điểm thành inch và pixel, đồng thời chuyển đổi pixel từ độ phân giải này sang độ phân giải khác. Việc chuyển đổi pixel thành điểm và ngược lại có thể được thực hiện ở độ phân giải 96 dpi (điểm trên mỗi inch) hoặc độ phân giải dpi được chỉ định.

Lớp [ConvertUtil](https://reference.aspose.com/words/python-net/aspose.words/convertutil/) đặc biệt hữu ích khi thiết lập các thuộc tính trang khác nhau, chẳng hạn như inch là đơn vị đo phổ biến hơn điểm.

Ví dụ mã sau đây cho thấy cách chỉ định thuộc tính trang theo inch:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConvertBetweenMeasurementUnits.py" >}}
