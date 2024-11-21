---
title: Hợp Nhất Các Ô Bảng trong C++
second_title: Aspose.Words cho C++
articleTitle: Hợp Nhất Các Ô Bảng
linktitle: Hợp Nhất Các Ô Bảng
description: "Cách hợp nhất các ô bảng trong C++. Kiểm tra xem các ô trong bảng có được hợp nhất hay không bằng C++."
type: docs
weight: 40
url: /vi/cpp/merge-table-cells/
timestamp: 2024-01-27-14-07-04
---

Đôi khi một số hàng nhất định trong bảng yêu cầu một tiêu đề hoặc các khối văn bản lớn chiếm toàn bộ chiều rộng của bảng. Để thiết kế bảng phù hợp, người dùng có thể hợp nhất một số ô bảng thành một. Aspose.Words hỗ trợ các ô được hợp nhất khi làm việc với tất cả các định dạng đầu vào, bao gồm nhập nội dung HTML.

## Cách Hợp Nhất Các Ô Bảng

Trong Aspose.Words, các ô được hợp nhất được biểu thị bằng các thuộc tính sau của lớp [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_horizontalmerge/) mô tả nếu ô là một phần của sự hợp nhất ngang của các ô
- [VerticalMerge](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_verticalmerge/) mô tả nếu ô là một phần của sự hợp nhất theo chiều dọc của các ô

Các giá trị của các thuộc tính này xác định hành vi hợp nhất của các ô:

- Ô đầu tiên trong một chuỗi các ô được hợp nhất sẽ có [CellMerge.First](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Bất kỳ ô nào được hợp nhất sau đó sẽ có [CellMerge.Previous](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)
- Một ô không được hợp nhất sẽ có [CellMerge.None](https://reference.aspose.com/words/cpp/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Đôi khi, khi tải các ô tài liệu hiện có trong một bảng, chúng sẽ xuất hiện được hợp nhất. Tuy nhiên, nó thực sự có thể là một ô dài – đôi khi Microsoft Word xuất các ô đã hợp nhất theo cách này. Điều này có thể gây nhầm lẫn khi cố gắng làm việc với các ô riêng lẻ, nhưng dường như không có bất kỳ mô hình cụ thể nào về thời điểm điều này xảy ra.

{{% /alert %}}

## Kiểm tra Xem Ô có được Hợp nhất hay không

Để kiểm tra xem một ô có phải là một phần của chuỗi các ô được hợp nhất hay không, chúng tôi chỉ cần kiểm tra các thuộc tính **HorizontalMerge** và **VerticalMerge**.

Ví dụ mã sau đây cho thấy cách in kiểu hợp nhất ô ngang và dọc:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "check-cells-merged.h" >}}

## Các Ô được hợp nhất trong Một Bảng {#merge-cells-in-a-table}

Để hợp nhất các ô trong bảng được tạo bằng [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), bạn cần đặt kiểu hợp nhất thích hợp cho mỗi ô nơi dự kiến hợp nhất – đầu tiên **CellMerge.First** và sau đó **CellMerge.Previous**.

Ngoài ra, bạn phải nhớ xóa cài đặt hợp nhất cho các ô không cần hợp nhất – điều này có thể được thực hiện bằng cách đặt ô không hợp nhất đầu tiên thành **CellMerge.None**. Nếu điều này không được thực hiện, tất cả các ô trong bảng sẽ được hợp nhất.

Ví dụ mã sau đây cho thấy cách tạo một bảng có hai hàng trong đó các ô trong hàng đầu tiên được hợp nhất theo chiều ngang:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-merge.h" >}}

Ví dụ mã sau đây cho thấy cách tạo bảng hai cột trong đó các ô trong cột đầu tiên được hợp nhất theo chiều dọc:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "vertical-merge.h" >}}

## Hợp Nhất Các Ô Bảng Trong Các Trường hợp khác

Trong các tình huống khác mà **DocumentBuilder** không được sử dụng, chẳng hạn như trong bảng hiện có, việc hợp nhất các ô theo cách trước đó có thể không dễ dàng như vậy. Thay vào đó, chúng ta có thể bọc các hoạt động cơ bản liên quan đến việc áp dụng các thuộc tính hợp nhất cho các ô trong một phương thức giúp nhiệm vụ dễ dàng hơn nhiều. Phương thức này tương tự như Phương thức Tự động Hóa Hợp nhất, được gọi để hợp nhất một loạt các ô trong bảng.

Mã dưới đây sẽ hợp nhất các ô bảng trong phạm vi được chỉ định, bắt đầu từ ô đã cho và kết thúc ở ô cuối. Trong trường hợp này, phạm vi có thể kéo dài nhiều hàng hoặc cột:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cells.h" >}}

Ví dụ mã sau đây cho thấy cách hợp nhất một phạm vi ô giữa hai ô được chỉ định:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "merge-cell-range.h" >}}

Tùy thuộc vào phiên bản Của Khung Bạn đang sử dụng, bạn có thể muốn tinh chỉnh phương thức này bằng cách biến nó thành một phương thức mở rộng. Trong trường hợp này, bạn có thể gọi phương thức này trực tiếp trên một ô để hợp nhất một phạm vi ô, chẳng hạn như `cell1.Merge(cell2)`.

## Các Ô được Hợp nhất dọc Và Ngang trong Bảng {#vertical-and-Horizontal-merged-cells-in-the-table}

Như chúng tôi đã nói trong các bài viết trước, một bảng trong Microsoft Word là một tập hợp các hàng độc lập. Mỗi hàng có một tập hợp các ô độc lập với các ô của các hàng khác. Do đó, trong bảng Microsoft Word không có đối tượng nào như "cột" và "cột1st" là một cái gì đó giống như "tập hợp các ô 1st của mỗi hàng trong bảng". Điều này cho phép người dùng có một bảng trong đó, ví dụ, hàng 1st bao gồm hai ô – 2cm và 1cm và hàng 2nd bao gồm hai ô khác nhau – 1cm và 2cm rộng. Và Aspose.Words hỗ trợ khái niệm bảng này.

Một bảng trong HTML có cấu trúc cơ bản khác nhau: mỗi hàng có cùng số ô và (điều quan trọng đối với tác vụ) mỗi ô có chiều rộng của cột tương ứng, giống nhau cho tất cả các ô trong một cột. Vì vậy, nếu **HorizontalMerge** và **VerticalMerge** trả về một giá trị không chính xác, hãy sử dụng ví dụ mã sau:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "print-horizontal-and-vertical-merged.h" >}}

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "horizontal-and-vertical-merge-helper-classes.h" >}}

## Chuyển đổi Sang Các Ô Được Hợp nhất Theo Chiều Ngang {#convert-to-horizontally-merged-cells}

Đôi khi không thể phát hiện ô nào được hợp nhất vì một số phiên bản mới hơn của Microsoft Word không còn sử dụng cờ hợp nhất khi các ô được hợp nhất theo chiều ngang. Nhưng đối với các tình huống mà các ô được hợp nhất thành một ô theo chiều ngang theo chiều rộng của chúng bằng cách sử dụng các cờ hợp nhất, Aspose.Words cung cấp phương thức `ConvertToHorizontallyMergedCells` để chuyển đổi các ô. Phương pháp này chỉ đơn giản là biến đổi bảng và thêm các ô mới khi cần thiết.

Ví dụ mã sau đây cho thấy phương thức trên đang hoạt động:

{{< gist "aspose-words-gists" "03b0c69804cda6427adc3f12cc6ba2d3" "convert-to-horizontally-merged-cells.h" >}}
