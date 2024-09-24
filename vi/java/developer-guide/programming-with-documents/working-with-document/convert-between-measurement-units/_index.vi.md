---
title: Chuyển đổi Đơn vị Đo lường ở Java
second_title: Aspose.Words cho Java
articleTitle: Chuyển đổi giữa các đơn vị đo lường
linktitle: Chuyển đổi giữa các đơn vị đo lường
description: "Aspose.Words cho Java có thể giúp bạn cách để chuyển đổi giữa các đơn vị đo lường, ví dụ, inch sang điểm và điểm sang inch, pixel sang điểm, điểm sang pixel."
type: docs
weight: 20
url: /vi/java/convert-between-measurement-units/
---

Hầu hết các thuộc tính đối tượng được cung cấp trong Aspose.Words API đại diện cho một số đo nào đó, chẳng hạn như chiều rộng hoặc chiều cao, lề và nhiều khoảng cách khác, chấp nhận giá trị bằng điểm, trong đó 1 inch bằng 72 điểm. Đôi khi điều này không thuận tiện và các điểm cần được chuyển đổi sang các đơn vị khác.

Aspose.Words cung cấp lớp [ConvertUtil](https://reference.aspose.com/words/java/com.aspose.words/convertutil/) cung cấp các hàm trợ giúp để chuyển đổi giữa các đơn vị đo lường khác nhau. Nó cho phép chuyển đổi inch, pixel và milimet sang điểm, điểm sang inch và pixel, và chuyển đổi pixel từ độ phân giải một sang khác.Chuyển đổi pixel thành điểm và ngược lại có thể được thực hiện ở các độ phân giải 96 dpi (điểm trên inch) hoặc độ phân giải dpi được chỉ định.

Lớp **ConvertUtil** đặc biệt hữu ích khi thiết lập các thuộc tính trang vì ví dụ như inch là đơn vị đo phổ biến hơn điểm.

Mã ví dụ sau cho thấy cách chỉ định thuộc tính trang bằng inch:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-ConvertBetweenMeasurementUnits-ConvertBetweenMeasurementUnits.java" >}}
