---
title: Chia bảng trong Python
second_title: Aspose.Words cho Python
articleTitle: Chia bảng
linktitle: Chia bảng
description: "Chia bảng trong Python. Cách chia một bảng thành hai bảng riêng biệt Python."
type: docs
weight: 100
url: /vi/python-net/split-table/
timestamp: 2024-01-27-14-07-04
---

Một bảng, được thể hiện trong Aspose.Words Document Object Model, được tạo thành từ các hàng và ô độc lập, giúp việc chia bảng trở nên dễ dàng.

Để thao tác chia một bảng thành hai bảng, chúng ta chỉ cần di chuyển một số hàng từ bảng gốc sang bảng mới. Để làm điều này, chúng ta cần chọn hàng mà chúng ta muốn chia bảng.

Chúng ta có thể tạo hai bảng từ bảng gốc bằng cách làm theo các bước đơn giản sau:

1. Tạo một bản sao của bảng mà không nhân bản các bảng con để giữ các hàng đã di chuyển và chèn chúng vào sau bảng gốc
2. Bắt đầu từ hàng được chỉ định, di chuyển tất cả các hàng tiếp theo sang bảng thứ hai này

Ví dụ mã sau đây cho thấy cách chia bảng thành hai bảng trên một hàng cụ thể:

{{< gist "aspose-words-gists" "d31be78b25b463dd4eb31c85c60fc549" "split-table.py" >}}
