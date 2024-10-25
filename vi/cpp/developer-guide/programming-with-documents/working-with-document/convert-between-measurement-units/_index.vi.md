---
title: Chuyển Đổi Giữa Các Đơn vị Đo lường trong C++
second_title: Aspose.Words cho C++
articleTitle: Chuyển Đổi Giữa Các Đơn Vị Đo Lường
linktitle: Chuyển Đổi Giữa Các Đơn Vị Đo Lường
description: "Aspose.Words cho C++ có thể giúp bạn làm thế nào để chuyển đổi giữa các đơn vị đo lường, ví dụ, inch đến điểm và điểm đến inch, điểm ảnh đến điểm, điểm đến điểm ảnh."
type: docs
weight: 20
url: /vi/cpp/convert-between-measurement-units/
---

Hầu hết các thuộc tính đối tượng được cung cấp trong Aspose.Words API đại diện cho một số phép đo, chẳng hạn như chiều rộng hoặc chiều cao, lề và các khoảng cách khác nhau, chấp nhận các giá trị tính bằng điểm, trong đó 1 inch bằng 72 điểm. Đôi khi điều này không thuận tiện và các điểm cần được chuyển đổi sang các đơn vị khác.

Aspose.Words cung cấp lớp [ConvertUtil](https://reference.aspose.com/words/cpp/class/aspose.words.convert_util) cung cấp các hàm trợ giúp để chuyển đổi giữa các đơn vị đo lường khác nhau. Nó cho phép chuyển đổi inch, pixel và milimét thành điểm, trỏ đến inch và pixel và chuyển đổi pixel từ độ phân giải này sang độ phân giải khác.Chuyển đổi pixel thành điểm và ngược lại có thể được thực hiện ở độ phân giải 96 dpi (chấm trên inch) hoặc độ phân giải dpi được chỉ định.

Lớp **ConvertUtil** đặc biệt hữu ích khi đặt các thuộc tính trang khác nhau vì, ví dụ, inch là các đơn vị đo lường phổ biến hơn điểm.

Ví dụ mã sau đây cho thấy cách chỉ định thuộc tính trang tính bằng inch:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-ConvertUtil-UtilityClasses-ConvertBetweenMeasurementUnits.cpp" >}}

