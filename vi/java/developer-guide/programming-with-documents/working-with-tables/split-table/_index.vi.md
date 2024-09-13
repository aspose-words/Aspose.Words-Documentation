---
title: Phân chia bảng trong Java
second_title: Aspose.Words cho Java
articleTitle: Chia Bảng
linktitle: Chia Bảng
description: "Phân chia bảng trong Java. Cách chia một bảng thành hai bảng riêng biệt Java."
type: docs
weight: 100
url: /vi/java/split-table/
---

Một bảng, được thể hiện trong Aspose.Words Document Object Model là được tạo thành từ các hàng và ô độc lập, làm cho nó dễ chia tách một bảng.

Để thao tác với bảng để chia nó thành hai bảng, chúng ta chỉ cần di chuyển một số hàng từ bảng gốc sang bảng mới. Để làm điều này chúng ta cần chọn hàng mà chúng ta muốn chia bảng.

Chúng ta có thể tạo ra hai bảng từ bảng gốc bằng cách làm theo các bước đơn giản sau đây:

1. Tạo một bản sao của bảng mà không sao chép các con để giữ lại các hàng di chuyển và chèn chúng sau bảng gốc
2. Bắt đầu từ hàng được chỉ định, di chuyển tất cả các hàng tiếp theo sang bảng thứ hai này

Mã ví dụ sau cho thấy cách phân chia bảng thành hai bảng trên một hàng cụ thể:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
