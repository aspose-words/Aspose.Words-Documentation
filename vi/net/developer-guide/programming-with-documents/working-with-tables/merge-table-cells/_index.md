---
title: Hợp nhất các ô bảng trong C#
second_title: Aspose.Words cho .NET
articleTitle: Hợp nhất các ô trong bảng
linktitle: Hợp nhất các ô trong bảng
description: "Cách hợp nhất các ô trong bảng trong C#. Kiểm tra xem các ô trong bảng có được hợp nhất bằng C# hay không."
type: docs
weight: 40
url: /vi/net/working-with-merged-cells/
---

Đôi khi một số hàng nhất định trong bảng yêu cầu tiêu đề hoặc khối văn bản lớn chiếm toàn bộ chiều rộng của bảng. Để thiết kế bảng phù hợp, người dùng có thể hợp nhất nhiều ô trong bảng thành một. Aspose.Words hỗ trợ các ô đã hợp nhất khi làm việc với tất cả các định dạng đầu vào, bao gồm cả việc nhập nội dung HTML.

## Cách hợp nhất các ô trong bảng

Trong Aspose.Words, các ô đã hợp nhất được biểu thị bằng các thuộc tính sau của lớp [CellFormat](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/horizontalmerge/) mô tả xem ô có phải là một phần của việc hợp nhất các ô theo chiều ngang hay không
- [VerticalMerge](https://reference.aspose.com/words/net/aspose.words.tables/cellformat/verticalmerge/) mô tả xem ô có phải là một phần của việc hợp nhất các ô theo chiều dọc hay không

Giá trị của các thuộc tính này xác định hành vi hợp nhất của các ô:

- Ô đầu tiên trong dãy ô được gộp sẽ có [CellMerge.First](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
- Mọi ô được hợp nhất sau đó sẽ có [CellMerge.Previous](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)
- Ô không được gộp sẽ có [CellMerge.None](https://reference.aspose.com/words/net/aspose.words.tables/cellmerge/)

{{% alert color="primary" %}}

Đôi khi, khi tải các ô tài liệu hiện có vào một bảng, chúng sẽ có vẻ như đã được hợp nhất. Tuy nhiên, nó thực sự có thể là một ô dài - đôi khi Microsoft Word xuất các ô đã hợp nhất theo cách này. Điều này có thể gây nhầm lẫn khi cố gắng làm việc với từng ô riêng lẻ, nhưng dường như không có bất kỳ khuôn mẫu cụ thể nào về thời điểm điều này xảy ra.

{{% /alert %}}

## Kiểm tra xem ô đã được hợp nhất chưa

Để kiểm tra xem một ô có phải là một phần của chuỗi các ô được hợp nhất hay không, chúng ta chỉ cần kiểm tra thuộc tính **HorizontalMerge** và **VerticalMerge**.

Ví dụ mã sau đây cho thấy cách in kiểu hợp nhất ô ngang và dọc:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "check-cells-merged.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Hợp nhất các ô trong bảng khi sử dụng DocumentBuilder

Để hợp nhất các ô trong bảng được tạo bằng [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/), bạn cần đặt loại hợp nhất thích hợp cho từng ô cần hợp nhất – đầu tiên là **CellMerge.First** và sau đó là **CellMerge.Previous**.

Ngoài ra, bạn phải nhớ xóa cài đặt hợp nhất cho những ô không cần hợp nhất - điều này có thể được thực hiện bằng cách đặt ô không hợp nhất đầu tiên thành **CellMerge.None**. Nếu điều này không được thực hiện, tất cả các ô trong bảng sẽ được hợp nhất.

Ví dụ mã sau đây cho thấy cách tạo một bảng có hai hàng trong đó các ô ở hàng đầu tiên được hợp nhất theo chiều ngang:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-merge.cs" >}}

Ví dụ mã sau đây cho thấy cách tạo bảng hai cột trong đó các ô trong cột đầu tiên được hợp nhất theo chiều dọc:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "vertical-merge.cs" >}}

## Hợp nhất các ô bảng trong các trường hợp khác

Trong các trường hợp khác mà **DocumentBuilder** không được sử dụng, chẳng hạn như trong bảng hiện có, việc hợp nhất các ô theo cách trước đó có thể không dễ dàng như vậy. Thay vào đó, chúng ta có thể gói gọn các thao tác cơ bản liên quan đến việc áp dụng các thuộc tính hợp nhất cho các ô theo một phương thức giúp thực hiện công việc dễ dàng hơn nhiều. Phương pháp này tương tự như phương pháp tự động Hợp nhất, được gọi để hợp nhất một phạm vi ô trong một bảng.

Mã bên dưới sẽ hợp nhất các ô của bảng trong phạm vi đã chỉ định, bắt đầu từ ô đã cho và kết thúc ở ô cuối. Trong trường hợp này, phạm vi có thể trải rộng trên nhiều hàng hoặc cột:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cells.cs" >}}

Ví dụ mã sau đây cho thấy cách hợp nhất một phạm vi ô giữa hai ô được chỉ định:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "merge-cell-range.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

Tùy thuộc vào phiên bản .NET Framework bạn đang sử dụng, bạn có thể muốn tinh chỉnh phương pháp này bằng cách biến nó thành một phương thức mở rộng. Trong trường hợp này, bạn có thể gọi phương thức này trực tiếp trên một ô để hợp nhất một phạm vi ô, chẳng hạn như `cell1.Merge(cell2)`.

## Các ô được hợp nhất theo chiều dọc và chiều ngang trong bảng HTML

Như chúng tôi đã nói trong các bài viết trước, bảng trong Microsoft Word là một tập hợp các hàng độc lập. Mỗi hàng có một tập hợp các ô độc lập với các ô của các hàng khác. Do đó, trong bảng Microsoft Word không có đối tượng nào được gọi là "cột" và "cột thứ 1" giống như "tập hợp các ô đầu tiên của mỗi hàng trong bảng". Điều này cho phép người dùng có một bảng trong đó, ví dụ: hàng thứ nhất bao gồm hai ô – 2cm và 1cm, và hàng thứ 2 bao gồm hai ô khác nhau – rộng 1cm và 2cm. Và Aspose.Words hỗ trợ khái niệm bảng này.

Một bảng trong HTML có cấu trúc khác nhau về cơ bản: mỗi hàng có cùng số ô và (điều quan trọng đối với nhiệm vụ) mỗi ô có chiều rộng của cột tương ứng, giống nhau cho tất cả các ô trong một cột. Vì vậy, nếu **HorizontalMerge** và **VerticalMerge** trả về giá trị không chính xác, hãy sử dụng ví dụ mã sau:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "print-horizontal-and-vertical-merged.cs" >}}

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "horizontal-and-vertical-merge-helper-classes.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Chuyển đổi sang các ô được hợp nhất theo chiều ngang

Đôi khi không thể phát hiện ô nào được hợp nhất vì một số phiên bản Microsoft Word mới hơn không còn sử dụng cờ hợp nhất khi ô được hợp nhất theo chiều ngang. Nhưng đối với các tình huống trong đó các ô được hợp nhất thành một ô theo chiều ngang theo chiều rộng của chúng bằng cách sử dụng cờ hợp nhất, Aspose.Words cung cấp phương thức `ConvertToHorizontallyMergedCells` để chuyển đổi các ô. Phương pháp này chỉ đơn giản là chuyển đổi bảng và thêm các ô mới nếu cần.

Ví dụ mã sau đây cho thấy phương thức trên đang hoạt động:

{{< gist "aspose-words-gists" "93de23a2f74a7f2e4971ed203874c983" "convert-to-horizontally-merged-cells.cs" >}}
