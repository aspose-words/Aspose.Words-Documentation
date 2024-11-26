---
title: Vị trí bàn trong Java
second_title: Aspose.Words cho Java
articleTitle: Đặt một Bảng
linktitle: Đặt một Bảng
description: "Chỉ định vị trí của bảng trong Java. Nhận căn lề bảng, nhận và đặt vị trí bảng nổi sử dụng Java."
type: docs
weight: 50
url: /vi/java/position-a-table/
timestamp: 2024-01-27-14-07-04
---

Có bảng nổi và bảng inline:

* **Bảng in-line** được đặt trên cùng một lớp với văn bản và được đặt trong dòng chảy của văn bản bao quanh bảng trên và dưới. Bảng in-line sẽ luôn xuất hiện giữa các đoạn văn mà bạn đặt chúng.
* **Bảng nổi** được xếp chồng trên văn bản, và vị trí của bảng so với đoạn văn xác định bởi neo bảng. Vì thế vị trí của bảng nổi trong tài liệu bị ảnh hưởng bởi các cài đặt định vị thẳng đứng và ngang.

Đôi khi bạn cần đặt một bảng trong một tài liệu theo cách nhất định. Để làm điều này bạn cần sử dụng các công cụ căn chỉnh và đặt khoảng cách giữa bảng với văn bản xung quanh.

Trong bài viết này chúng ta sẽ thảo luận những tùy chọn mà Aspose.Words cung cấp để đặt vị trí.

## Chỉ định Vị trí Bảng Nhúng

Bạn có thể đặt vị trí của một bảng inline bằng cách sử dụng thuộc tính Aspose.Words, API và [Alignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getAlignment). Như vậy bạn có thể điều chỉnh căn chỉnh của bảng so với trang giấy tài liệu.

Ví dụ mã sau đây cho thấy cách đặt vị trí của bảng inline:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "inline-table-position.java" >}}

## Lấy Tạo Bảng nổi

Nếu văn bản ô bàn là đặt thành **Around**, bạn có thể lấy được căn thẳng ngang và dọc của bảng bằng các thuộc tính [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) và [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment).

Với **các loại khác của việc quấn văn bản** bạn có thể nhận được căn chỉnh bảng trong dòng bằng thuộc tính **Alignment**.

Mã ví dụ sau cho thấy cách nhận biết căn chỉnh bảng:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-table-position.java" >}}

## Lấy Vị trí Bảng Lơ lửng

 Vị trí của bảng nổi được xác định bằng các thuộc tính sau:

* [HorizontalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getHorizontalAnchor) – một đối tượng cho việc tính vị trí ngang của bảng nổi
* [VerticalAnchor](https://reference.aspose.com/words/java/com.aspose.words/table/#getVerticalAnchor) – một đối tượng để tính toán vị trí thẳng đứng của một bảng nổi
* [AbsoluteHorizontalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteHorizontalDistance) – vị trí bảng trôi nổi ngang tuyệt đối
* [AbsoluteVerticalDistance](https://reference.aspose.com/words/java/com.aspose.words/table/#getAbsoluteVerticalDistance) – vị trí bảng nổi tuyệt đối theo chiều dọc
* [AllowOverlap](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowOverlap) – tùy chọn để bật/tắt chồng chéo với các đối tượng nổi khác
* [RelativeHorizontalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeHorizontalAlignment) – căn chỉnh bảng nổi về mức ngang
* [RelativeVerticalAlignment](https://reference.aspose.com/words/java/com.aspose.words/table/#getRelativeVerticalAlignment) – căn chỉnh nổi theo chiều dọc tương đối.

Mã ví dụ sau đây cho thấy cách để nhận vị trí của một bảng trôi nổi:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "get-floating-table-position.java" >}}

## Đặt Vị trí Bảng Treo Lơ lửng

Cũng như với việc nhận, bạn có thể đặt vị trí của một bảng nổi bằng cách sử dụng cùng Aspose.Words API.

Điều quan trọng là biết rằng căn chỉnh và khoảng cách ngang và dọc là các thuộc tính kết hợp, một người có thể đặt lại người kia. Ví dụ, đặt **RelativeHorizontalAlignment** sẽ đặt lại **AbsoluteHorizontalDistance** về giá trị mặc định và ngược lại. Cũng vậy là true cho việc sắp xếp dọc.

Mã ví dụ sau cho thấy cách đặt vị trí của một bảng nổi

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "floating-table-position.java" >}}

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "relative-horizontal-or-vertical-position.java" >}}

## Nhận khoảng cách giữa bảng và văn bản xung quanh

Aspose.Words cũng cung cấp cơ hội để tìm ra khoảng cách giữa các bảng và văn bản bao quanh

- [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop) – giá trị của khoảng cách từ trên xuống
"- [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom) – giá trị của khoảng cách nhận thức"
"- [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight) – giá trị khoảng cách ở bên phải"
- [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft) – giá trị khoảng cách ở bên trái

Mã ví dụ sau cho thấy cách lấy khoảng cách giữa bảng và văn bản bao quanh nó:

{{< gist "aspose-words-gists" "0f235c484e5edae70a542ebdaae40fd8" "distance-between-table-surrounding-text.java" >}}
