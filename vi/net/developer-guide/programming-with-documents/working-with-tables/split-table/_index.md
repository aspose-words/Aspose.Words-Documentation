---
title: Chia bảng trong C#
second_title: Aspose.Words cho .NET
articleTitle: Chia bảng
linktitle: Chia bảng
description: "Chia bảng trong C#. Cách chia một bảng thành hai bảng riêng biệt C#."
type: docs
weight: 100
url: /vi/net/split-table/
---

Một bảng, được thể hiện trong Aspose.Words Document Object Model, được tạo thành từ các hàng và ô độc lập, giúp việc chia bảng trở nên dễ dàng.

Để thao tác chia một bảng thành hai bảng, chúng ta chỉ cần di chuyển một số hàng từ bảng gốc sang bảng mới. Để làm điều này, chúng ta cần chọn hàng mà chúng ta muốn chia bảng.

Chúng ta có thể tạo hai bảng từ bảng gốc bằng cách làm theo các bước đơn giản sau:

1. Tạo một bản sao của bảng mà không nhân bản các bảng con để giữ các hàng đã di chuyển và chèn chúng vào sau bảng gốc
2. Bắt đầu từ hàng được chỉ định, di chuyển tất cả các hàng tiếp theo sang bảng thứ hai này

Ví dụ mã sau đây cho thấy cách chia bảng thành hai bảng trên một hàng cụ thể:

{{< gist "aspose-words-gists" "4ab56c5443822fa44f4cac1f45af32b7" "split-table.cs" >}}
