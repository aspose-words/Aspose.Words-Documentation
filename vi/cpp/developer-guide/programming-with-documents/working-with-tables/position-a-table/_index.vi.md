---
title: Vị trí bảng trong C++
second_title: Aspose.Words cho C++
articleTitle: Đặt Bàn
linktitle: Đặt Bàn
description: "Chỉ định vị trí bảng trong C++. Nhận căn chỉnh bảng, nhận và đặt vị trí bảng nổi bằng C++."
type: docs
weight: 50
url: /vi/cpp/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Có bảng nổi và bảng nội tuyến:

* **Inline tables** được đặt trên cùng một lớp với văn bản và được đặt trong một luồng văn bản chỉ bao quanh bảng trên và dưới. Các bảng nội tuyến sẽ luôn xuất hiện giữa các đoạn mà bạn đã đặt chúng.
* **Floating tables** được xếp lớp trên văn bản và vị trí của bảng so với đoạn văn được xác định bởi neo bảng. Do đó, vị trí của bảng nổi trong tài liệu bị ảnh hưởng bởi các cài đặt định vị dọc và ngang.

Đôi khi bạn cần định vị một bảng trong một tài liệu theo một cách nhất định. Để thực hiện việc này, bạn cần sử dụng các công cụ căn chỉnh và đặt các thụt lề giữa bảng và văn bản xung quanh.

Trong bài viết này, chúng tôi sẽ thảo luận về những tùy chọn Aspose.Words cung cấp cho định vị.

## Chỉ Định Vị Trí Bảng Nội Tuyến

Bạn có thể đặt vị trí của bảng nội tuyến bằng thuộc tính Aspose.Words API và [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/). Do đó, bạn có thể điều chỉnh căn chỉnh của bảng so với trang tài liệu.

Ví dụ mã sau đây cho thấy cách đặt vị trí của bảng nội tuyến:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "inline-table-position.h" >}}

## Nhận Căn Chỉnh Bảng Nổi

Nếu gói văn bản bảng được đặt thành **Around**, bạn có thể nhận được căn chỉnh ngang và dọc của bảng bằng cách sử dụng thuộc tính [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) và [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/).

Với **other types of text wrapping**, bạn có thể căn chỉnh bảng nội tuyến bằng thuộc tính [Alignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_alignment/).

Ví dụ mã sau đây cho thấy làm thế nào để có được sự liên kết của bảng:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-table-position.h" >}}

## Nhận Vị Trí Bàn Nổi

 Vị trí của một bảng nổi được xác định bằng cách sử dụng các thuộc tính sau:

* [HorizontalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_horizontalanchor/) – một đối tượng để tính toán vị trí nằm ngang của một bảng nổi
* [VerticalAnchor](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_verticalanchor/) – một đối tượng để tính toán vị trí theo chiều dọc của một bảng nổi
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absolutehorizontaldistance/) – vị trí bảng nổi ngang tuyệt đối
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_absoluteverticaldistance/) – vị trí bảng nổi theo chiều dọc tuyệt đối
* [AllowOverlap](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowoverlap/) – tùy chọn bật / tắt chồng chéo với các đối tượng nổi khác
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativehorizontalalignment/) – căn chỉnh ngang tương đối của bảng nổi.
* [RelativeVerticalAlignment](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_relativeverticalalignment/) – căn chỉnh theo chiều dọc tương đối của bảng nổi.

Ví dụ mã sau đây cho thấy làm thế nào để có được vị trí của một bảng nổi:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "get-floating-table-position.h" >}}

## Đặt Vị Trí Bàn Nổi

Cũng giống như getting, bạn có thể đặt vị trí của một bảng nổi bằng cách sử dụng cùng Aspose.Words API.

Điều quan trọng cần biết là căn chỉnh và khoảng cách ngang và dọc là các thuộc tính kết hợp và cái này có thể đặt lại cái kia. Ví dụ: đặt **RelativeHorizontalAlignment** sẽ đặt lại **AbsoluteHorizontalDistance** về giá trị mặc định và ngược lại. Điều này cũng đúng với sự sắp xếp theo chiều dọc.

Ví dụ mã sau đây cho thấy cách đặt vị trí của bảng nổi:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "floating-table-position.h" >}}

## Nhận Khoảng Cách Giữa Bảng Và Văn Bản Xung quanh

Aspose.Words cũng cung cấp một cơ hội để tìm ra khoảng cách giữa các bảng và các văn bản xung quanh:

- [DistanceTop](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancetop/) – giá trị của khoảng cách từ trên cao
- [DistanceBottom](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distancebottom/) – giá trị của khoảng cách nhận thức
- [DistanceRight](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceright/) – giá trị khoảng cách bên phải
- [DistanceLeft](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_distanceleft/) – giá trị khoảng cách ở bên trái

Ví dụ mã sau đây cho thấy cách lấy khoảng cách giữa bảng và văn bản xung quanh:

{{< gist "aspose-words-gists" "eb66dfc4c4820add33be9df57ba4c4cd" "distance-between-table-surrounding-text.h" >}}
