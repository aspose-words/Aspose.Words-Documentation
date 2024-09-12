---
title: Định dạng bàn trong Java
second_title: Aspose.Words cho Java
articleTitle: Áp dụng định dạng bảng
linktitle: Áp dụng định dạng bảng
description: "Định dạng bảng trong chi tiết. Sử dụng Java để định dạng từng phần của bảng"
type: docs
weight: 70
url: /vi/java/applying-formatting/
---

Mỗi phần tử của bảng có thể được áp dụng với định dạng khác nhau. Ví dụ, định dạng bảng sẽ được áp dụng vào toàn bộ bảng, định dạng hàng chỉ áp dụng cho các hàng cụ thể và định dạng ô chỉ áp dụng cho một số ô nhất định.

Aspose.Words cung cấp một tập lệnh phong phú API để thu hồi và áp dụng định dạng vào một bảng. Bạn có thể dùng các nút [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/) và [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) để đặt định dạng.

Trong bài viết này chúng ta sẽ nói về cách áp dụng định dạng cho các node bảng khác nhau và những cài đặt định dạng bảng mà Aspose.Words hỗ trợ.

## Áp dụng định dạng cho các nút khác nhau

Trong phần này chúng ta sẽ xem xét việc áp dụng định dạng cho các nút bảng khác nhau.

### Định dạng ở Cấp Bảng

Để áp dụng định dạng cho một bảng bạn có thể sử dụng các thuộc tính được cung cấp trên nút tương ứng **Table** bằng cách sử dụng các lớp [Table](https://reference.aspose.com/words/java/com.aspose.words/table/), [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/), và [TableCollection](https://reference.aspose.com/words/java/com.aspose.words/tablecollection/).

{{% alert color="primary" %}}

Lưu ý rằng bảng phải có ít nhất một hàng trước khi các thuộc tính bảng có thể được áp dụng. Điều này có nghĩa là khi xây dựng một bảng với [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/), định dạng phải được thực hiện sau lần gọi đầu tiên đến [InsertCell](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertCell(), hoặc sau hàng đầu tiên được thêm vào bảng, hoặc khi các nút được chèn trực tiếp vào DOM.

{{% /alert %}}

Hình ảnh bên dưới cho thấy đại diện của các tính năng định dạng **Table** trong Microsoft Word và các thuộc tính tương ứng trong Aspose.Words.

![apply-formatting-to-table-level-aspose-words-java](applying-formatting-to-table-row-and-cell-1.png)

![apply-formatting-to-table-level-aspose-words-java](applying-formatting-to-table-row-and-cell-2.png)

Mã ví dụ sau cho thấy cách áp dụng đường viền chùm của bảng:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-outline-border.java" >}}

Mã ví dụ sau cho thấy cách xây dựng một bảng với tất cả các đường viền được bật (mạng lưới):

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "build-table-with-borders.java" >}}

### Định dạng Dàn xếp Theo Hàng

Định dạng hàng** có thể được kiểm soát bằng cách sử dụng các lớp [Row](https://reference.aspose.com/words/java/com.aspose.words/row/), [RowFormat](https://reference.aspose.com/words/java/com.aspose.words/rowformat/), và [RowCollection](https://reference.aspose.com/words/java/com.aspose.words/rowcollection/).

{{% alert color="primary" %}}

Lưu ý rằng một **Row** chỉ có thể là nút con của một **Table**. Lúc này phải có ít nhất một **Cell** trong **Row** để định dạng được áp dụng cho nó.

{{% /alert %}}

Các hình ảnh dưới đây cho thấy một đại diện của các tính năng định dạng **Row** trong Microsoft Word và các thuộc tính tương ứng trong Aspose.Words.

![apply-formatting-to-row-level-aspose-words-java](applying-formatting-to-table-row-and-cell-3.png)

Mã ví dụ cho thấy cách thay đổi định dạng hàng bảng:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-row-formatting.java" >}}

### Định dạng ở mức tế bào

Định dạng tại cấp tế bào được điều khiển bởi các lớp [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/), [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/), và [CellCollection](https://reference.aspose.com/words/java/com.aspose.words/cellcollection/).

{{% alert color="primary" %}}

Lưu ý rằng một **Cell** chỉ có thể là nút con của một **Row**. Trong cùng lúc, phải có ít nhất một [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) trong **Cell** để định dạng được áp dụng cho nó.

Ngoài **Paragraph** thì bạn còn có thể chèn một **Table** vào **Cell**.

{{% /alert %}}

Các hình bên dưới hiển thị một đại diện của các tính năng định dạng **Cell** trong Microsoft Word và các thuộc tính tương ứng trong Aspose.Words.

![apply-formatting-to-cell-level-aspose-words-java](applying-formatting-to-table-row-and-cell-4.png)

![apply-auto-formatting-to-row-level-aspose-words-java](applying-formatting-to-table-row-and-cell-5.png)

Ví dụ mã sau cho thấy cách thay đổi định dạng của một tế bào bảng:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "modify-cell-formatting.java" >}}

Mã ví dụ sau cho thấy cách đặt số lượng khoảng trống (điểm) để thêm vào bên trái / trên / bên phải / dưới của nội dung trong ô:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "cell-padding.java" >}}

## Chỉ định Chiều cao Hàng

Cách đơn giản nhất để đặt độ cao hàng là sử dụng **DocumentBuilder**. Sử dụng các thuộc tính **RowFormat** thích hợp bạn có thể đặt cài đặt cao độ mặc định hoặc áp dụng một chiều cao khác nhau cho từng hàng trong bảng.

Trong Aspose.Words, chiều cao hàng bảng được điều khiển bởi:

- thuộc tính cao hàng – [Height](https://reference.aspose.com/words/java/com.aspose.words/row/format#Height)
sử dụng quy tắc chiều cao cho hàng được cung cấp – [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/row/format#HeightRule)

Đồng thời một độ cao khác nhau có thể được đặt cho mỗi hàng - điều này cho phép bạn kiểm soát rộng rãi các cài đặt bảng.

{{% alert color="primary" %}}

Các tùy chọn cho quy tắc chỉ định độ cao của một đối tượng có thể được đặt bằng các [HeightRule](https://reference.aspose.com/words/java/com.aspose.words/heightrule/) trường.

{{% /alert %}}

Mã ví dụ sau cho thấy cách tạo bảng chứa một tế bào duy nhất và áp dụng định dạng hàng:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "apply-row-formatting.java" >}}

## Chỉ định chiều rộng Bảng và Ô

Một bảng trong một Microsoft Word tài liệu cung cấp nhiều cách khác nhau để thu nhỏ bảng và các ô riêng lẻ. Những thuộc tính này cho phép kiểm soát đáng kể sự xuất hiện và hành vi của bảng để Aspose.Words hỗ trợ hành vi của các bảng, giống như ở Microsoft Word.

Điều quan trọng là phải biết rằng các phần tử bảng có nhiều thuộc tính khác nhau có thể ảnh hưởng đến việc tính toán chiều rộng của bảng tổng thể cũng như các ô riêng lẻ

- Chiều rộng ưa thích trên bàn
- Chiều rộng ưa thích trên các ô riêng lẻ
- Cho phép tự động phù hợp trên bàn

Bài viết này giải thích cách các tính năng tính toán chiều rộng bảng khác nhau hoạt động và cách để có được sự kiểm soát đầy đủ về việc tính toán chiều rộng bảng. Đây là
đặc biệt hữu ích để biết trong các trường hợp mà bố cục bảng không xuất hiện như mong đợi.

{{% alert color="primary" %}}

Trong hầu hết các trường hợp, "cell được đề nghị thích hơn chiều rộng bảng". Chiều rộng ô được ưa thích là phù hợp hơn với thông số của định dạng DOCX cũng như mô hình Aspose.Words.

Chiều rộng của ô là một giá trị tính toán cho định dạng DOCX. Chiều rộng của tế bào thực tế có thể phụ thuộc vào nhiều điều. Ví dụ, thay đổi lề trang hoặc chiều rộng bảng ưa thích có thể ảnh hưởng đến độ rộng của các ô thực tế.

Chiều rộng tế bào ưa thích là một thuộc tính của tế bào được lưu trữ trong tài liệu. Nó không phụ thuộc vào bất cứ điều gì và không thay đổi khi bạn thay đổi bảng hoặc các thuộc tính khác của ô đó.

{{% /alert %}}

{{% alert color="primary" %}}

Tất cả tính năng và phương thức được mô tả trong bài viết này đều liên quan đến cách mà các bảng hoạt động trong Microsoft Word. Vậy trong hầu hết các trường hợp, nếu bạn đang xây dựng bảng của mình một cách lập trình nhưng gặp khó khăn khi tạo ra bảng mong muốn, bạn có thể thay vào đó thử tạo nó trực tiếp bằng Microsoft Word và sau đó chỉ cần sao chép giá trị định dạng vào ứng dụng của bạn.

{{% /alert %}}

### Cách sử dụng chiều rộng ưa thích

Chiều rộng mong muốn của một bảng hoặc các ô riêng lẻ được định nghĩa thông qua thuộc tính chiều rộng được ưa thích, đó là kích thước mà một phần tử cố gắng phù hợp. Đó là, chiều rộng ưa thích có thể được chỉ định cho toàn bộ bảng hoặc đối với các tế bào riêng lẻ. Trong một số tình huống có thể không thể vừa vặn chính xác chiều rộng này, nhưng chiều rộng thực tế sẽ gần với giá trị này trong hầu hết các trường hợp.

Loại và giá trị chiều rộng thích hợp được thiết lập bằng cách sử dụng các phương pháp của lớp [PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/)":

- trường [Auto](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#AUTO) để chỉ định tự động hoặc "không chiều rộng ưa thích
- phương thức [FromPercent](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPercent-double) để chỉ định một độ rộng phần trăm
- phương pháp [FromPoints](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#fromPoints-double) để chỉ định chiều rộng theo điểm

Hình ảnh bên dưới là biểu diễn các tính năng *đặt chiều rộng ưa thích* trong Microsoft Word và thuộc tính tương ứng trong Aspose.Words.

![formatting-table-properties-aspose-words-java](applying-formatting-8.png)

Một ví dụ về cách các tùy chọn này được áp dụng cho một bảng thực tế trong một tài liệu có thể được thấy trong hình bên dưới.

![table-applied-options-java](applying-formatting-9.png)

{{% alert color="primary" %}}

Trước khi bạn có thể sử dụng chiều rộng ưa thích trong một bảng, bạn phải đảm bảo rằng bảng chứa ít nhất một hàng. Đây là vì cách định dạng bảng trong một Microsoft Word tài liệu hoặc trong một tài liệu được tạo ra trong Aspose.Words được lưu trữ trong các hàng của bảng.

{{% /alert %}}

#### Chỉ định chiều rộng bảng hoặc tế bào ưa thích

Trong Aspose.Words, chiều rộng bảng và ô được đặt bằng thuộc tính [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) và thuộc tính [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth), với các tùy chọn có sẵn trong việc đếm [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/):

- **Auto** tương đương với không có chiều rộng được yêu thích
- **Percent** phù hợp với phần tử so với không gian có sẵn trong cửa sổ hoặc kích thước thùng chứa và tính toán lại giá trị khi chiều rộng có sẵn thay đổi
- **Points** tương ứng với một phần tử với chiều rộng theo điểm được chỉ định

{{% alert color="primary" %}}

Theo mặc định thì một bảng có thể được mô tả là đã được phù hợp với 100% không gian trống trên trang. Trong trường hợp này, điều đó có nghĩa là bảng sẽ cố gắng chiếm không gian giữa lề trang trái và phải.

{{% /alert %}}

Sử dụng thuộc tính [Table.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/table/#getPreferredWidth) sẽ điều chỉnh chiều rộng ưa thích của nó so với hộp chứa: trang, cột văn bản hoặc ô bảng ngoài nếu nó là một bảng lồng nhau.

Mã ví dụ sau cho thấy cách đặt bảng để tự động phù hợp với 50% chiều rộng trang":

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-page-width.java" >}}

Sử dụng thuộc tính [CellFormat.PreferredWidth](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getPreferredWidth) trên một ô sẽ điều chỉnh chiều rộng ưu tiên của nó.

Mảnh mã ví dụ sau cho thấy cách thiết lập các cài đặt chiều rộng ưa thích khác nhau:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "preferred-width-settings.java" >}}

#### Tìm loại và giá trị chiều rộng ưa thích

Bạn có thể dùng các thuộc tính [Type](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getType) và [Value](https://reference.aspose.com/words/java/com.aspose.words/preferredwidth/#getValue) để tìm chi tiết độ rộng ưa thích của bảng hoặc ô mong muốn.

Ví dụ mã sau cho thấy cách lấy kiểu chiều rộng được ưa thích của một ô bảng:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "retrieve-preferred-width-type.java" >}}

### Cách đặt Autofit

Tính chất [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) cho phép các ô trong bảng phát triển và thu nhỏ theo một tiêu chí được chọn. Ví dụ, bạn có thể dùng tùy chọn **Đặt tự động vào cửa sổ** để bàn tính phù hợp với chiều rộng trang, và tùy chọn **Tự động Đúng Kích Thước Đến Nội Dung** để phép mỗi ô thay đổi kích thước hoặc thu nhỏ theo nội dung của nó.

{{% alert color="primary" %}}

Ngoài ra, thuộc tính **AllowAutoFit** có thể được dùng kết hợp với chiều rộng tế bào ưa thích để định dạng một tế bào mà tự động vừa vặn nội dung của nó, nhưng cũng có một độ rộng ban đầu. Nếu cần thiết, chiều rộng của ô sẽ phát triển vượt qua chiều rộng này.

{{% /alert %}}

Theo mặc định, Aspose.Words chèn một bảng mới bằng cách sử dụng **Auto Fit to Window**. Bàn sẽ được tạo kích thước theo chiều rộng trang có sẵn. Để thay đổi kích thước một bảng, bạn có thể gọi phương thức [AutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#autoFit-int). Phương pháp này chấp nhận một enum [AutoFitBehavior](https://reference.aspose.com/words/java/com.aspose.words/autofitbehavior/) xác định loại tự động phù hợp nào được áp dụng cho bảng.

Điều quan trọng là biết rằng phương pháp tự động vừa và đúng thực chất là một phím tắt áp dụng các thuộc tính khác nhau cho bảng cùng lúc. Đây là các thuộc tính thực sự cho phép bảng có hành vi được quan sát này. Chúng ta sẽ thảo luận về các tính chất này cho mỗi tùy chọn tự động vừa vặn.

Mã ví dụ sau cho thấy cách đặt một bảng để thu nhỏ hoặc phát triển mỗi ô theo nội dung của nó:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-auto-fit.java" >}}

Chúng tôi sẽ dùng bảng sau đây để áp dụng các cài đặt tự động phù hợp khác nhau như một ví dụ minh họa.

<img src="how-to-apply-different-autofit-settings-to-a-table-1.png" alt="apply-different-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

#### Tự động vừa vặn bảng vào cửa sổ

Khi tự động vừa vặn với một cửa sổ được áp dụng cho một bảng, các hoạt động sau đây thực sự được thực hiện phía sau hậu trường:

1. Tính **Table.AllowAutoFit** được bật để tự động thay đổi cột để vừa với nội dung có sẵn, sử dụng giá trị **Table.PreferredWidth** là 100%
2. **CellFormat.PreferredWidth** được xóa khỏi tất cả các ô bảng
      {{% alert color="primary" %}}
   Lưu ý rằng điều này hơi khác với Microsoft Word hành vi, nơi mỗi ô được đặt chiều rộng ưa thích của nó thành các giá trị phù hợp dựa trên kích thước và nội dung hiện tại của họ. Aspose.Words không cập nhật chiều rộng ưa thích vì vậy họ chỉ được dọn dẹp thay thế.
      {{% /alert %}}
3. Chiều rộng cột được tính toán lại cho nội dung bảng hiện tại - kết quả cuối cùng là một bảng chiếm toàn bộ chiều rộng có sẵn
4. Chiều rộng của các cột trong bảng thay đổi tự động khi người dùng chỉnh sửa văn bản

Mã ví dụ sau cho thấy cách tự động thu nhỏ một bảng để phù hợp với chiều rộng trang:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-page-width.java" >}}

Một ví dụ về cách các tùy chọn này được áp dụng cho bảng ở trên có thể thấy trong bức tranh dưới đây.

<img src="how-to-apply-different-autofit-settings-to-a-table-2.png" alt="autofit-table-aspose-words-java" style="width:500px"/>

#### Tự động vừa vặn bảng với nội dung

Khi bảng được tự động phù hợp với nội dung, các bước sau thực sự được thực hiện phía sau hậu trường:

1. Cụm **Table.AllowAutoFit** được kích hoạt để tự động thay đổi kích thước mỗi ô theo nội dung của nó

2. Chiều rộng bảng được ưu tiên đã bị loại bỏ từ **Table.PreferredWidth**, **CellFormat.PreferredWidth** được loại bỏ cho mỗi ô bảng
      {{% alert color="primary" %}}

   Lưu ý rằng tùy chọn tự động này loại bỏ độ rộng ưa thích từ các ô, giống như trong Microsoft Word. Nếu bạn muốn giữ kích thước cột và tăng hoặc giảm số cột để phù hợp với nội dung, bạn nên đặt thuộc tính **Table.AllowAutoFit** là **True** của nó trên chính nó thay vì sử dụng phím tắt autofit.{{% /alert %}}

3. Độ rộng cột được tính toán lại cho nội dung bảng hiện tại - kết quả cuối cùng là một bảng nơi độ rộng của cột và chiều rộng của toàn bộ bảng tự động điều chỉnh để vừa với nội dung khi người dùng chỉnh sửa văn bản

Mã ví dụ sau cho thấy cách tự động vừa vặn bảng với nội dung của nó:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-contents.java" >}}

Ví dụ về cách các tùy chọn này được áp dụng cho bảng trên có thể thấy trong hình bên dưới.

<img src="how-to-apply-different-autofit-settings-to-a-table-3.png" alt="resize-column-autofit-settings-aspose-words-java" style="width:500px"/>

#### Vô hiệu hóa AutoFit trong Bảng và Sử dụng Chiều rộng cột cố định

Nếu bảng đã tắt "tự điều chỉnh", và chiều rộng cột cố định được sử dụng thay thế, các bước sau sẽ được thực hiện:

1. **Table.AllowAutoFit** thuộc tính bị vô hiệu hóa nên các cột không tăng hay thu nhỏ để phù hợp với nội dung của chúng
2. Chiều rộng được ưa thích của toàn bộ bảng là bị loại bỏ từ **Table.PreferredWidth**, **CellFormat.PreferredWidth** bị loại bỏ từ tất cả các ô bảng
3. Kết quả cuối cùng là một bảng có chiều rộng cột được xác định bởi thuộc tính [CellFormat.Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth), và các cột không tự động thay đổi kích thước khi người dùng nhập văn bản hoặc khi trang được thay đổi kích thước

{{% alert color="primary" %}}

Hãy lưu ý rằng nếu không chỉ định chiều rộng cho **CellFormat.Width** thì giá trị mặc định là một inch (72 điểm) được sử dụng.

{{% /alert %}}

Mã ví dụ sau cho thấy cách tắt tính tự điều chỉnh và bật chiều rộng cố định cho bảng đã chỉ định:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "auto-fit-table-to-fixed-column-widths.java" >}}

Một ví dụ về cách áp dụng các tùy chọn này vào bảng trên có thể được thấy trong hình bên dưới.

<img src="how-to-apply-different-autofit-settings-to-a-table-4.png" alt="disable-autofit-settings-to-a-table-aspose-words-java" style="width:500px"/>

### Thứ tự của sự ưu tiên khi tính chiều rộng của tế bào

Aspose.Words cho phép người dùng định nghĩa chiều rộng của một bảng hoặc ô thông qua nhiều đối tượng, bao gồm [CellFormat](https://reference.aspose.com/words/java/com.aspose.words/cellformat/) – thuộc tính [Width](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getWidth) của nó phần lớn còn thừa từ các phiên bản trước, nhưng nó vẫn hữu ích trong việc đơn giản hóa việc đặt chiều rộng của ô.

Điều quan trọng là phải biết rằng tính chất **CellFormat.Width** hoạt động khác nhau tùy thuộc vào việc những tính chất chiều rộng nào đã tồn tại trong bảng.

Aspose.Words dùng thứ tự sau đây để tính chiều rộng của các ô:

| Đơn hàng | Tính chất | Mô tả |
| ----- | ------------------------------------------------------------ | ------------------------------------------------------------ |
|1| [AllowAutoFit](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowAutoFit) được xác định | Nếu **AutoFit** được bật: <br>- bàn có thể phát triển vượt quá chiều rộng ưa thích để chứa nội dung - nó thường không thu nhỏ dưới chiều rộng ưa thích <br>- bất kỳ thay đổi nào đối với giá trị **CellFormat.Width** bị bỏ qua và ô sẽ vừa với nội dung của nó thay vì |
|2| [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) có giá trị là **Points** hoặc **Percent** | **CellFormat.Width** được bỏ qua |
|3| [PreferredWidthType](https://reference.aspose.com/words/java/com.aspose.words/preferredwidthtype/) với giá trị là **Auto** | Giá trị từ **CellFormat.Width** được sao chép và trở thành độ rộng ưa thích của ô (tính bằng điểm) |

{{% alert color="primary" %}}

Những thay đổi đối với thuộc tính độ rộng không được cập nhật trong chiều rộng ưa thích và phải thay vào đó được áp dụng cho chiều rộng ưa thích.

{{% /alert %}}

{{% alert color="primary" %}}

Khi tạo bố cục bảng cố định, hãy chỉ định chiều rộng ô. Một tế bào không có chiều rộng không thể được lưu dưới dạng định dạng DOC. Các định dạng tài liệu khác với DOC như DOCX cho phép, nguyên tắc là lưu trữ các ô mà không có chiều rộng trong bố cục bảng cố định.

{{% /alert %}}

## Cho phép cách giữa các ô

Bạn có thể lấy hoặc đặt thêm không gian giữa các ô bảng tương tự như tùy chọn "Cell spacing" trong Microsoft Word. Điều này có thể thực hiện bằng cách sử dụng tính [AllowCellSpacing](https://reference.aspose.com/words/java/com.aspose.words/table/#getAllowCellSpacing) thuộc tính.

Một ví dụ về cách các tùy chọn này được áp dụng cho một bảng thực tế trong một tài liệu có thể thấy ở hình bên dưới.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-java" style="width:500px"/>

Mã ví dụ sau cho thấy cách đặt khoảng cách giữa các ô:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "allow-cell-spacing.java" >}}

## Áp dụng viền và bóng đổ

Biên và bóng có thể áp dụng cho toàn bộ bảng bằng cách sử dụng [Table.SetBorder](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorder-int-int-double-java.awt.Color-boolean), [Table.SetBorders](https://reference.aspose.com/words/java/com.aspose.words/table/#setBorders-int-double-java.awt.Color) và [Table.SetShading](https://reference.aspose.com/words/java/com.aspose.words/table/#setShading-int-java.awt.Color-java.awt.Color), hoặc chỉ áp dụng cho các ô cụ thể bằng cách sử dụng [CellFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getBorders) và [CellFormat.Shading](https://reference.aspose.com/words/java/com.aspose.words/cellformat/#getShading). Ngoài ra, các đường viền hàng có thể được đặt bằng [RowFormat.Borders](https://reference.aspose.com/words/java/com.aspose.words/rowformat/#getBorders), tuy nhiên không thể áp dụng hiệu ứng này theo cách đó.

Các hình bên dưới cho thấy các thiết lập đường viền và bóng trong Microsoft Word và thuộc tính tương ứng của chúng trong Aspose.Words.

![apply-borders-shading-aspose-words-java-1](applying-formatting-to-table-row-and-cell-6.png)


![apply-borders-shading-aspose-words-java-2](applying-formatting-to-table-row-and-cell-7.png)


Mã ví dụ sau cho thấy cách định dạng bảng và các ô với đường viền khác nhau và hiệu ứng bóng đổ:

{{< gist "aspose-words-gists" "1c794bd06eb1e3b67f0368daa6f23b1f" "format-table-and-cell-with-different-borders.java" >}}