---
title: Chia Bảng trong C++
second_title: Aspose.Words cho C++
articleTitle: Bảng Chia
linktitle: Bảng Chia
description: "Chia bảng trong C++. Cách chia một bảng thành hai bảng riêng biệt C++."
type: docs
weight: 100
url: /vi/cpp/split-table/
timestamp: 2024-01-27-14-07-04
---

Một bảng, được biểu diễn Trong Mô hình Đối tượng Tài liệu Aspose.Words, được tạo thành từ các hàng và ô độc lập, giúp bạn dễ dàng tách một bảng.

Để thao tác một bảng để chia nó thành hai bảng, chúng ta chỉ cần di chuyển một số hàng từ bảng gốc sang bảng mới. Để làm điều này, chúng ta cần chọn hàng mà chúng ta muốn chia bảng.

Chúng ta có thể tạo hai bảng từ bảng gốc bằng cách làm theo các bước đơn giản sau:

1. Tạo một bản sao của bảng mà không nhân bản các con để giữ các hàng đã di chuyển và chèn chúng sau bảng gốc
2. Bắt đầu từ hàng được chỉ định, di chuyển tất cả các hàng tiếp theo đến bảng thứ hai này

Ví dụ mã sau đây cho thấy cách chia một bảng thành hai bảng trên một hàng cụ thể:

{{< gist "aspose-words-gists" "29ce7710cab8c3ef18e912a5813e0d36" "split-table.h" >}}
