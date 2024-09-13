---
title: Gộp Sàn Bảng trong Java
second_title: Aspose.Words cho Java
articleTitle: Kết hợp các ô bảng
linktitle: Kết hợp các ô bảng
description: "Cách kết hợp các ô trong Java. Kiểm tra xem các ô trong một bảng có được hợp nhất hay không bằng cách sử dụng Java."
type: docs
weight: 40
url: /vi/java/working-with-merged-cells/
---

Đôi khi một số hàng trong bảng cần tiêu đề hoặc các khối văn bản lớn chiếm đầy chiều rộng của bảng. Để thiết kế bảng đúng cách, người dùng có thể hợp nhất nhiều ô vào một. Aspose.Words hỗ trợ các ô được hợp nhất khi làm việc với tất cả các định dạng nhập, bao gồm nhập nội dung HTML.

## Cách Nối Thép Sàn Bảng

Trong Aspose.Words, các ô kết hợp được biểu diễn bởi thuộc tính sau của lớp [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getHorizontalMerge) mô tả nếu ô là một phần của sự hợp nhất ngang giữa các ô
- [VerticalMerge](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getVerticalMerge) mô tả nếu tế bào là một phần của sự hợp nhất theo chiều dọc của các tế bào

Giá trị của các thuộc tính xác định hành vi hợp nhất của các ô:

- Ống đầu tiên trong một chuỗi các ô kết hợp sẽ có [CellMerge.First](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#FIRST)
"- Bất kì các ô hợp nhất nào sẽ có [CellMerge.Previous](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#PREVIOUS)"
- Một ô không được kết hợp sẽ có [CellMerge.None](https://reference.aspose.com/words/java/com.aspose.words/cellmerge/#NONE)

![work-with-merged-cells-aspose-words-java](working-with-merged-cells-1.png)

{{% alert color="primary" %}}

Đôi khi, khi tải các ô của một tài liệu hiện có vào bảng, chúng sẽ xuất hiện là bị hợp nhất. Tuy nhiên, nó thực ra có thể là một tế bào dài – đôi khi Microsoft Word xuất các tế bào đã hợp nhất theo cách này. Đây có thể khiến người ta bối rối khi cố gắng làm việc với các tế bào riêng lẻ nhưng không có vẻ như có một mẫu cụ thể nào về thời điểm xảy ra điều này.

{{% /alert %}}

## Kiểm tra nếu một tế bào được hợp nhất

Để kiểm tra một ô có thuộc chuỗi các ô hợp nhất hay không, chúng ta chỉ cần kiểm tra tính chất **HorizontalMerge** và **VerticalMerge** của nó.

Ví dụ sau cho thấy cách in loại hợp nhất các ô ngang và dọc:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "check-cells-merged.java" >}}

## Merge Cell Khi Sử Dụng DocumentBuilder

Để kết hợp các ô trong một bảng được tạo bằng [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), bạn cần thiết lập loại kết hợp thích hợp cho từng ô nơi dự kiến sự kết hợp – lần đầu tiên **CellMerge.First** và sau đó là **CellMerge.Previous**.

Và bạn phải nhớ xóa cài đặt hợp nhất cho các ô mà không cần hợp nhất – điều này có thể thực hiện bằng cách đặt ô đầu tiên không hợp nhất là **CellMerge.None**. Nếu không thực hiện điều này thì tất cả các ô trong bảng sẽ được hợp nhất.

Mã ví dụ sau cho thấy cách tạo một bảng với hai hàng trong đó các ô ở hàng đầu được kết hợp ngang:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-merge.java" >}}

Mã ví dụ sau cho thấy cách tạo một bảng hai cột, trong đó các ô ở cột đầu tiên được kết hợp theo chiều dọc:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "vertical-merge.java" >}}

## Hợp nhất các ô bảng trong các trường hợp khác

Trong các tình huống khác mà " **DocumentBuilder** " không được sử dụng, chẳng hạn như trong một bảng hiện có, việc hợp nhất các ô theo cách trước đây có thể không dễ dàng bằng. Thay vì, chúng ta có thể bọc các thao tác cơ bản liên quan đến việc áp dụng tính năng hợp nhất vào các ô trong một phương pháp khiến nhiệm vụ này dễ dàng hơn nhiều. Phương pháp này tương tự phương pháp tự động hóa "Merge", được gọi để hợp nhất một phạm vi các ô trong bảng.

Mã dưới đây sẽ kết hợp các ô trong phạm vi được chỉ định, bắt đầu từ ô đã cho và kết thúc tại ô cuối. Trong trường hợp này, khoảng cách có thể trải dài trên nhiều hàng hoặc cột:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cells.java" >}}

Mã ví dụ sau cho thấy cách kết hợp một phạm vi các ô giữa hai ô được chỉ định:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "merge-cell-range.java" >}}

## Các ô hợp nhất thẳng đứng và ngang trong bảng HTML

Như chúng ta đã nói trong các bài trước, một bảng trong Microsoft Word là một tập hợp các hàng độc lập. Mỗi hàng có một tập các ô không phụ thuộc vào các ô của các hàng khác.   Và Aspose.Words hỗ trợ khái niệm bảng này.

Một bảng trong HTML có cấu trúc cơ bản khác nhau: mỗi hàng có cùng số lượng ô và (nếu quan trọng đối với nhiệm vụ) mỗi ô có độ rộng của cột tương ứng, giống như tất cả các ô trong một cột. Vậy nếu **HorizontalMerge** và **VerticalMerge** trả về giá trị không chính xác thì dùng đoạn mã ví dụ sau đây

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "print-horizontal-and-vertical-merged.java" >}}

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "horizontal-and-vertical-merge-helper-classes.java" >}}

## Chuyển đổi sang tế bào hợp nhất ngang

Đôi khi không thể phát hiện được các ô nào đã được kết hợp vì một số phiên bản mới hơn của Microsoft Word không còn sử dụng cờ kết hợp khi các ô kết hợp theo chiều ngang. Nhưng đối với tình huống mà các ô được hợp nhất ngang theo chiều rộng bằng cờ hợp nhất thì Aspose.Words cung cấp phương pháp `ConvertToHorizontallyMergedCells` để chuyển đổi các ô. Phương pháp này đơn giản chỉ biến đổi bảng và thêm những ô mới khi cần thiết.

Mã ví dụ sau cho thấy phương pháp trên đang hoạt động như thế nào:

{{< gist "aspose-words-gists" "4fe6fda3615c0c441401e2131533d93b" "convert-to-horizontally-merged-cells.java" >}}
