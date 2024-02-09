---
title: Chuyển đổi giữa các đơn vị đo lường trong C#
second_title: Aspose.Words cho .NET
articleTitle: Chuyển đổi giữa các đơn vị đo lường
linktitle: Chuyển đổi giữa các đơn vị đo lường
description: "Aspose.Words cho .NET có thể giúp bạn cách chuyển đổi giữa các đơn vị đo lường, ví dụ: inch thành điểm và điểm thành inch, pixel thành điểm, điểm thành pixel bằng C#."
type: docs
weight: 20
url: /vi/net/convert-between-measurement-units/
---

Hầu hết các thuộc tính đối tượng được cung cấp trong Aspose.Words API đại diện cho một số phép đo, chẳng hạn như chiều rộng hoặc chiều cao, lề và các khoảng cách khác nhau, chấp nhận các giá trị theo điểm, trong đó 1 inch bằng 72 điểm. Đôi khi điều này không thuận tiện và điểm cần được chuyển đổi sang đơn vị khác.

Aspose.Words cung cấp lớp [ConvertUtil](https://reference.aspose.com/words/net/aspose.words/convertutil/) cung cấp các hàm trợ giúp để chuyển đổi giữa các đơn vị đo lường khác nhau. Nó cho phép chuyển đổi:

- inch, pixel và milimét đến điểm
- trỏ đến inch và pixel
- pixel từ độ phân giải này sang độ phân giải khác

Việc chuyển đổi pixel thành điểm và ngược lại có thể được thực hiện ở độ phân giải 96 dpi (điểm trên mỗi inch) hoặc độ phân giải dpi được chỉ định.

Lớp **ConvertUtil** đặc biệt hữu ích khi thiết lập các thuộc tính trang khác nhau, chẳng hạn như inch là đơn vị đo phổ biến hơn điểm.

Ví dụ mã sau đây cho thấy cách chỉ định thuộc tính trang theo inch:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cs" >}}
