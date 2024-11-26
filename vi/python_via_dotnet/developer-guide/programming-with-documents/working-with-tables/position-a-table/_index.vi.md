---
title: Vị trí bảng trong Python
second_title: Aspose.Words cho Python
articleTitle: Định vị một bảng
linktitle: Định vị một bảng
description: "Chỉ định vị trí bảng trong Python. Căn chỉnh bảng, nhận và đặt vị trí bảng nổi bằng Python."
type: docs
weight: 50
url: /vi/python-net/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Có bảng nổi và bảng nội tuyến:

* **Bảng nội tuyến** được đặt trên cùng một lớp với văn bản và được đặt trong luồng văn bản chỉ bao quanh bảng bên trên và bên dưới. Bảng nội tuyến sẽ luôn xuất hiện giữa các đoạn văn nơi bạn đặt chúng.
* **Bàn nổi** được xếp lớp trên văn bản và vị trí của bảng so với đoạn văn được xác định bằng neo bảng. Vì điều này, vị trí của bảng nổi trong tài liệu bị ảnh hưởng bởi cài đặt định vị dọc và ngang.

Đôi khi bạn cần định vị một bảng trong tài liệu theo một cách nhất định. Để làm điều này, bạn cần sử dụng các công cụ căn chỉnh và đặt khoảng cách thụt lề giữa bảng và văn bản xung quanh.

Trong bài viết này, chúng tôi sẽ thảo luận về những tùy chọn mà Aspose.Words cung cấp cho việc định vị.

## Chỉ định vị trí bảng nội tuyến

Bạn có thể đặt vị trí của bảng nội tuyến bằng cách sử dụng thuộc tính Aspose.Words API và [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/). Do đó, bạn có thể điều chỉnh căn chỉnh của bảng so với trang tài liệu.

Ví dụ mã sau đây cho thấy cách đặt vị trí của bảng nội tuyến:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "inline-table-position.py" >}}

## Nhận căn chỉnh bảng nổi

Nếu gói văn bản của bảng được đặt thành **Around**, bạn có thể căn chỉnh theo chiều ngang và chiều dọc của bảng bằng cách sử dụng thuộc tính [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) và [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/).

Với **các kiểu gói văn bản khác**, bạn có thể căn chỉnh bảng nội tuyến bằng thuộc tính [Alignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/alignment/).

Ví dụ mã sau đây cho thấy cách căn chỉnh bảng:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-table-position.py" >}}

## Nhận vị trí bàn nổi

 Vị trí của bảng nổi được xác định bằng các thuộc tính sau:

* [HorizontalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/horizontal_anchor/) – đối tượng tính toán định vị ngang của bàn nổi
* [VerticalAnchor](https://reference.aspose.com/words/python-net/aspose.words.tables/table/vertical_anchor/) – đối tượng tính toán vị trí thẳng đứng của bàn nổi
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_horizontal_distance/) – vị trí bàn nổi ngang tuyệt đối
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/python-net/aspose.words.tables/table/absolute_vertical_distance/) – vị trí bàn nổi thẳng đứng tuyệt đối
* [AllowOverlap](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_overlap/) – tùy chọn bật/tắt tính năng chồng lấp với các vật thể nổi khác
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_horizontal_alignment/) – căn chỉnh theo chiều ngang tương đối của bảng nổi.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/python-net/aspose.words.tables/table/relative_vertical_alignment/) – căn chỉnh theo chiều dọc tương đối của bảng nổi.

Ví dụ mã sau đây cho thấy cách lấy vị trí của bảng nổi:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "get-floating-table-position.py" >}}

## Đặt vị trí bàn nổi

Cũng giống như nhận, bạn có thể đặt vị trí của bảng nổi bằng cách sử dụng cùng một Aspose.Words API.

Điều quan trọng cần biết là căn chỉnh và khoảng cách ngang và dọc là các thuộc tính kết hợp và cái này có thể đặt lại cái kia. Ví dụ: đặt **RelativeHorizontalAlignment** sẽ đặt lại **AbsoluteHorizontalDistance** về giá trị mặc định và ngược lại. Tương tự là true cho sự sắp xếp theo chiều dọc.

Ví dụ mã sau đây cho thấy cách đặt vị trí của bảng nổi:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "floating-table-position.py" >}}

## Nhận khoảng cách giữa bảng và văn bản xung quanh

Aspose.Words cũng cung cấp cơ hội tìm hiểu khoảng cách giữa các bảng và văn bản xung quanh:

- [DistanceTop](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) – giá trị khoảng cách từ trên xuống
- [DistanceBottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/) – giá trị khoảng cách nhận thức
- [DistanceRight](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/) – giá trị khoảng cách ở bên phải
- [DistanceLeft](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/) – giá trị khoảng cách bên trái

Ví dụ mã sau đây cho thấy cách lấy khoảng cách giữa bảng và văn bản xung quanh nó:

{{< gist "aspose-words-gists" "1768d04dbe9222138611d5ad4047beef" "distance-between-table-surrounding-text.py" >}}
