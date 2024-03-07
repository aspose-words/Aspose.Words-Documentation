---
title: Hợp nhất các ô trong bảng
second_title: Aspose.Words cho Python via .NET
articleTitle: Hợp nhất các ô trong bảng
linktitle: Hợp nhất các ô trong bảng
description: "Cách hợp nhất các ô trong bảng trong Python. Kiểm tra xem các ô trong bảng có được hợp nhất bằng Python hay không."
type: docs
weight: 40
url: /vi/python-net/working-with-merged-cells/
---

Đôi khi một số hàng nhất định trong bảng yêu cầu tiêu đề hoặc khối văn bản lớn chiếm toàn bộ chiều rộng của bảng. Để thiết kế bảng phù hợp, người dùng có thể hợp nhất nhiều ô trong bảng thành một. Aspose.Words hỗ trợ các ô đã hợp nhất khi làm việc với tất cả các định dạng đầu vào, bao gồm cả việc nhập nội dung HTML.

## Cách hợp nhất các ô trong bảng

Trong Aspose.Words, các ô đã hợp nhất được biểu thị bằng các thuộc tính sau của lớp [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/):

- [HorizontalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/horizontal_merge/) mô tả xem ô có phải là một phần của việc hợp nhất các ô theo chiều ngang hay không
- [VerticalMerge](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/vertical_merge/) mô tả xem ô có phải là một phần của việc hợp nhất các ô theo chiều dọc hay không

Giá trị của các thuộc tính này xác định hành vi hợp nhất của các ô:

- Ô đầu tiên trong dãy ô được gộp sẽ có [CellMerge.First](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#first)
- Mọi ô được hợp nhất sau đó sẽ có [CellMerge.Previous](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#previous)
- Ô không được gộp sẽ có [CellMerge.None](https://reference.aspose.com/words/python-net/aspose.words.tables/cellmerge/#none)

{{% alert color="primary" %}}

Đôi khi, khi tải các ô tài liệu hiện có vào một bảng, chúng sẽ có vẻ như đã được hợp nhất. Tuy nhiên, nó thực sự có thể là một ô dài - đôi khi Microsoft Word xuất các ô đã hợp nhất theo cách này. Điều này có thể gây nhầm lẫn khi cố gắng làm việc với từng ô riêng lẻ, nhưng dường như không có bất kỳ khuôn mẫu cụ thể nào về thời điểm điều này xảy ra.

{{% /alert %}}

## Kiểm tra xem ô đã được hợp nhất chưa

Để kiểm tra xem một ô có phải là một phần của chuỗi các ô được hợp nhất hay không, chúng ta chỉ cần kiểm tra thuộc tính **HorizontalMerge** và **VerticalMerge**.

Ví dụ mã sau đây cho thấy cách in kiểu hợp nhất ô ngang và dọc:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "check-cells-merged.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

## Hợp nhất các ô trong bảng khi sử dụng DocumentBuilder

Để hợp nhất các ô trong bảng được tạo bằng [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), bạn cần đặt loại hợp nhất thích hợp cho từng ô cần hợp nhất – đầu tiên là **CellMerge.First** và sau đó là **CellMerge.Previous**.

Ngoài ra, bạn phải nhớ xóa cài đặt hợp nhất cho những ô không cần hợp nhất - điều này có thể được thực hiện bằng cách đặt ô không hợp nhất đầu tiên thành **CellMerge.None**. Nếu điều này không được thực hiện, tất cả các ô trong bảng sẽ được hợp nhất.

Ví dụ mã sau đây cho thấy cách tạo một bảng có hai hàng trong đó các ô ở hàng đầu tiên được hợp nhất theo chiều ngang:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "horizontal-merge.py" >}}

Ví dụ mã sau đây cho thấy cách tạo bảng hai cột trong đó các ô trong cột đầu tiên được hợp nhất theo chiều dọc:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "vertical-merge.py" >}}

## Hợp nhất các ô bảng trong các trường hợp khác

Trong các trường hợp khác mà **DocumentBuilder** không được sử dụng, chẳng hạn như trong bảng hiện có, việc hợp nhất các ô theo cách trước đó có thể không dễ dàng như vậy. Thay vào đó, chúng ta có thể gói gọn các thao tác cơ bản liên quan đến việc áp dụng các thuộc tính hợp nhất cho các ô theo một phương thức giúp thực hiện công việc dễ dàng hơn nhiều. Phương pháp này tương tự như phương pháp tự động hóa Hợp nhất, được gọi để hợp nhất một phạm vi ô trong một bảng.

Mã bên dưới sẽ hợp nhất các ô của bảng trong phạm vi đã chỉ định, bắt đầu từ ô đã cho và kết thúc ở ô cuối. Trong trường hợp này, phạm vi có thể trải rộng trên nhiều hàng hoặc cột:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cells.py" >}}

Ví dụ mã sau đây cho thấy cách hợp nhất một phạm vi ô giữa hai ô được chỉ định:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "merge-cell-range.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Table%20with%20merged%20cells.docx).

{{% /alert %}}

Tùy thuộc vào phiên bản Framework bạn đang sử dụng, bạn có thể muốn tinh chỉnh phương thức này bằng cách biến nó thành một phương thức mở rộng. Trong trường hợp này, bạn có thể gọi phương thức này trực tiếp trên một ô để hợp nhất một phạm vi ô, chẳng hạn như `cell1.Merge(cell2)`.

## Chuyển đổi sang các ô được hợp nhất theo chiều ngang

Đôi khi không thể phát hiện ô nào được hợp nhất vì một số phiên bản Microsoft Word mới hơn không còn sử dụng cờ hợp nhất khi ô được hợp nhất theo chiều ngang. Nhưng đối với các tình huống trong đó các ô được hợp nhất thành một ô theo chiều ngang theo chiều rộng của chúng bằng cách sử dụng cờ hợp nhất, Aspose.Words cung cấp phương thức `ConvertToHorizontallyMergedCells` để chuyển đổi các ô. Phương pháp này chỉ đơn giản là chuyển đổi bảng và thêm các ô mới nếu cần.

Ví dụ mã sau đây cho thấy phương thức trên đang hoạt động:

{{< gist "aspose-words-gists" "b89ea9092bd2486dc056818cf4f73e24" "convert-to-horizontally-merged-cells.py" >}}
