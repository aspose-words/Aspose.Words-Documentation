---
title: Định dạng bảng trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Áp dụng định dạng
linktitle: Áp dụng định dạng
description: "Định dạng bảng chi tiết bằng Python. Sử dụng Python để định dạng mọi phần của bảng."
type: docs
weight: 70
url: /vi/python-net/applying-formatting/
---

Mỗi phần tử của bảng có thể được áp dụng với các định dạng khác nhau. Ví dụ: định dạng bảng sẽ được áp dụng cho toàn bộ bảng, định dạng hàng cho chỉ các hàng cụ thể, định dạng ô chỉ cho một số ô nhất định.

Aspose.Words cung cấp API phong phú để truy xuất và áp dụng định dạng cho bảng. Bạn có thể sử dụng các nút [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/) và [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) để đặt định dạng.

Trong bài viết này, chúng ta sẽ nói về cách áp dụng định dạng cho các nút bảng khác nhau và những cài đặt định dạng bảng mà Aspose.Words hỗ trợ.

## Áp dụng định dạng cho các nút khác nhau

Trong phần này, chúng ta sẽ xem xét việc áp dụng định dạng cho các nút bảng khác nhau.

### Định dạng cấp bảng

Để áp dụng định dạng cho một bảng, bạn có thể sử dụng các thuộc tính có sẵn trên nút **Table** tương ứng bằng các lớp [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/) và [TableCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Lưu ý rằng bảng phải có ít nhất một hàng trước khi có thể áp dụng thuộc tính bảng. Điều này có nghĩa là khi tạo bảng bằng [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/), việc định dạng này phải được thực hiện sau lệnh gọi đầu tiên tới [InsertCell](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_cell/#default) hoặc sau khi hàng đầu tiên được thêm vào bảng hoặc khi các nút được chèn trực tiếp vào DOM.

{{% /alert %}}

Các hình ảnh bên dưới thể hiện các tính năng định dạng **Table** trong Microsoft Word và các thuộc tính tương ứng của chúng trong Aspose.Words.

![formattin-features-table-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-1.png)




![formatting-table-options-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-2.png)

Ví dụ mã sau đây cho thấy cách áp dụng đường viền phác thảo cho bảng:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-outline-border.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách tạo bảng với tất cả các đường viền được bật (lưới):

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "build-table-with-borders.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Định dạng cấp hàng

Định dạng **Cấp hàng** có thể được kiểm soát bằng cách sử dụng các lớp [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/), [RowFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/row/row_format/) và [RowCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/rowcollection/).

{{% alert color="primary" %}}

Lưu ý rằng **Row** chỉ có thể là nút con của **Table**. Đồng thời, phải có ít nhất một **Cell** trong **Row** để có thể áp dụng định dạng cho nó.

{{% /alert %}}

Các hình ảnh bên dưới thể hiện các tính năng định dạng **Row** trong Microsoft Word và các thuộc tính tương ứng của chúng trong Aspose.Words.

![formatting-row-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-3.png)


Ví dụ mã sau đây cho thấy cách sửa đổi định dạng hàng của bảng:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-row-formatting.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Định dạng cấp độ ô

Định dạng cấp ô được kiểm soát bởi các lớp [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/cell_format/) và [CellCollection](https://reference.aspose.com/words/python-net/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Lưu ý rằng **Cell** chỉ có thể là nút con của **Row**. Đồng thời, phải có ít nhất một [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) trong **Cell** để có thể áp dụng định dạng cho nó.

Ngoài **Paragraph**, bạn cũng có thể chèn **Table** vào **Cell**.

{{% /alert %}}

Các hình ảnh bên dưới thể hiện các tính năng định dạng **Cell** trong Microsoft Word và các thuộc tính tương ứng của chúng trong Aspose.Words.

![formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-4.png)




![auto-formatting-cell-level-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-5.png)


Ví dụ mã sau đây cho thấy cách sửa đổi định dạng của ô trong bảng:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "modify-cell-formatting.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

Ví dụ về mã sau đây cho thấy cách đặt lượng khoảng trắng (tính bằng điểm) để thêm vào bên trái/trên cùng/phải/dưới cùng của nội dung của ô:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "cell-padding.py" >}}

## Chỉ định chiều cao hàng

Cách đơn giản nhất để đặt chiều cao hàng là sử dụng **DocumentBuilder**. Bằng cách sử dụng thuộc tính **RowFormat** thích hợp, bạn có thể đặt cài đặt chiều cao mặc định hoặc áp dụng chiều cao khác nhau cho mỗi hàng trong bảng.

Trong Aspose.Words, chiều cao hàng của bảng được kiểm soát bởi:

- thuộc tính chiều cao hàng – [Height](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height/)
- thuộc tính quy tắc chiều cao cho hàng đã cho – [HeightRule](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/height_rule/)

Đồng thời, có thể đặt chiều cao khác nhau cho mỗi hàng – điều này cho phép bạn kiểm soát rộng rãi các cài đặt trên bàn.

{{% alert color="primary" %}}

Có thể đặt các tùy chọn quy tắc để chỉ định chiều cao của đối tượng bằng cách sử dụng bảng liệt kê [HeightRule](https://reference.aspose.com/words/python-net/aspose.words/heightrule/).

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách tạo bảng chứa một ô và áp dụng định dạng hàng:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "apply-row-formatting.py" >}}

## Chỉ định độ rộng của bảng và ô

Bảng trong tài liệu Microsoft Word cung cấp một số cách khác nhau để thay đổi kích thước bảng và từng ô riêng lẻ. Các thuộc tính này cho phép kiểm soát đáng kể hình thức và hoạt động của bảng, do đó Aspose.Words hỗ trợ hoạt động của bảng, như trong Microsoft Word.

Điều quan trọng cần biết là các thành phần bảng trình bày một số thuộc tính khác nhau có thể ảnh hưởng đến cách tính độ rộng của bảng tổng thể cũng như các ô riêng lẻ:

- Chiều rộng ưa thích trên bàn
- Chiều rộng ưa thích trên từng ô riêng lẻ
- Cho phép autofit trên bàn

Bài viết này trình bày chi tiết cách hoạt động của các thuộc tính tính toán chiều rộng bảng khác nhau và cách có toàn quyền kiểm soát tính toán chiều rộng bảng. Đây là
đặc biệt hữu ích khi biết trong những trường hợp bố cục bảng không xuất hiện như mong đợi.

{{% alert color="primary" %}}

Trong hầu hết các trường hợp, ô ưu tiên được khuyến nghị hơn chiều rộng của bảng. Độ rộng ô ưu tiên phù hợp hơn với đặc tả định dạng DOCX cũng như mô hình Aspose.Words.

Độ rộng ô thực tế là giá trị được tính toán cho định dạng DOCX. Chiều rộng ô thực tế có thể phụ thuộc vào nhiều thứ. Ví dụ: thay đổi lề trang hoặc chiều rộng bảng ưa thích có thể ảnh hưởng đến chiều rộng ô thực tế.

Độ rộng ô ưa thích là thuộc tính ô được lưu trữ trong tài liệu. Nó không phụ thuộc vào bất cứ điều gì và không thay đổi khi bạn thay đổi bảng hoặc các thuộc tính khác của ô.

{{% /alert %}}

{{% alert color="primary" %}}

Tất cả các thuộc tính và phương thức được mô tả trong bài viết này đều liên quan đến cách hoạt động của bảng trong Microsoft Word. Vì vậy, trong hầu hết các trường hợp, nếu bạn đang xây dựng bảng theo chương trình nhưng gặp khó khăn khi tạo bảng mong muốn, thay vào đó, bạn có thể thử tạo bảng đó một cách trực quan trong Microsoft Word trước, sau đó chỉ cần sao chép các giá trị định dạng vào ứng dụng của mình.

{{% /alert %}}

### Cách sử dụng chiều rộng ưa thích

Chiều rộng mong muốn của một bảng hoặc các ô riêng lẻ được xác định thông qua thuộc tính chiều rộng ưa thích, là kích thước mà một phần tử cố gắng để phù hợp. Nghĩa là, chiều rộng ưa thích có thể được chỉ định cho toàn bộ bảng hoặc cho từng ô riêng lẻ. Trong một số trường hợp, có thể không khớp chính xác với chiều rộng này, nhưng chiều rộng thực tế sẽ gần với giá trị này trong hầu hết các trường hợp.

Loại và giá trị chiều rộng ưu tiên thích hợp được đặt bằng các phương thức của lớp [PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/):

- phương pháp [Auto](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) để chỉ định tự động hoặc "không có chiều rộng ưu tiên"
- phương pháp [FromPercent](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) để chỉ định chiều rộng phần trăm
- phương pháp [FromPoints](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) để xác định chiều rộng theo điểm

Các hình ảnh bên dưới thể hiện *các tính năng cài đặt chiều rộng ưa thích* trong Microsoft Word và các thuộc tính tương ứng của chúng trong Aspose.Words.

![formatting-table-properties-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-8.png)

Bạn có thể xem ví dụ về cách áp dụng các tùy chọn này cho bảng thực trong tài liệu trong hình bên dưới.

![tables-applying-options-python](/words/python-net/applying-formatting/applying-formatting-9.png)

{{% alert color="primary" %}}

Trước khi có thể sử dụng chiều rộng ưa thích trong bảng, bạn phải đảm bảo rằng bảng chứa ít nhất một hàng. Điều này là do định dạng bảng như vậy trong tài liệu Microsoft Word hoặc trong tài liệu được tạo bằng Aspose.Words được lưu trữ trong các hàng của bảng.

{{% /alert %}}

#### Chỉ định bảng ưa thích hoặc chiều rộng ô

Trong Aspose.Words, độ rộng của bảng và ô được đặt bằng thuộc tính [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) và thuộc tính [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/), với các tùy chọn có sẵn trong bảng liệt kê [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/):

- **Auto**, tương đương với việc không đặt chiều rộng ưu tiên
- **Percent**, phù hợp với phần tử tương ứng với không gian có sẵn trong cửa sổ hoặc kích thước vùng chứa và tính toán lại giá trị khi chiều rộng có sẵn thay đổi
- **Points**, tương ứng với một phần tử có chiều rộng được chỉ định tính bằng điểm

{{% alert color="primary" %}}

Theo mặc định, một bảng có thể được mô tả là vừa khít với 100% không gian có sẵn trên trang. Trong trường hợp này, điều này có nghĩa là bảng sẽ cố gắng chiếm khoảng trống giữa lề trang bên trái và bên phải.

{{% /alert %}}

Việc sử dụng thuộc tính [Table.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/table/preferred_width/) sẽ điều chỉnh độ rộng ưa thích của nó so với vùng chứa: trang, cột văn bản hoặc ô bảng bên ngoài nếu đó là bảng lồng nhau.

Ví dụ về mã sau đây cho biết cách đặt bảng tự động vừa với 50% chiều rộng của trang:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

Việc sử dụng thuộc tính [CellFormat.PreferredWidth](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/preferred_width/) trên một ô nhất định sẽ điều chỉnh độ rộng ưa thích của ô đó.

Ví dụ về mã sau đây cho thấy cách đặt các cài đặt chiều rộng ưa thích khác nhau:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "preferred-width-settings.py" >}}

#### Tìm loại và giá trị chiều rộng ưa thích

Bạn có thể sử dụng thuộc tính [Type](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/type/) và [Value](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidth/value/) để tìm chi tiết chiều rộng ưa thích của bảng hoặc ô mong muốn.

Ví dụ mã sau đây cho thấy cách truy xuất loại chiều rộng ưa thích của ô trong bảng:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "retrieve-preferred-width-type.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Cách đặt Tự động điều chỉnh

Thuộc tính [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) cho phép các ô trong bảng phát triển và thu nhỏ theo tiêu chí đã chọn. Ví dụ: bạn có thể sử dụng tùy chọn **Tự động điều chỉnh theo cửa sổ** để điều chỉnh bảng theo chiều rộng của trang và tùy chọn **Tự động điều chỉnh nội dung** để cho phép mỗi ô phát triển hoặc thu nhỏ tùy theo nội dung của nó.

{{% alert color="primary" %}}

Ngoài ra, thuộc tính **AllowAutoFit** có thể được sử dụng cùng với chiều rộng ô ưa thích để định dạng ô tự động khớp với nội dung của nó nhưng cũng có chiều rộng ban đầu. Nếu cần, chiều rộng ô có thể tăng vượt quá chiều rộng này.

{{% /alert %}}

Theo mặc định, Aspose.Words chèn bảng mới bằng **Tự động điều chỉnh theo cửa sổ**. Bảng sẽ có kích thước theo chiều rộng trang có sẵn. Để thay đổi kích thước bảng, bạn có thể gọi phương thức [AutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/auto_fit/#autofitbehavior). Phương thức này chấp nhận một bảng liệt kê [AutoFitBehavior](https://reference.aspose.com/words/python-net/aspose.words.tables/autofitbehavior/) chỉ định loại tự động điều chỉnh nào được áp dụng cho bảng.

Điều quan trọng cần biết là phương pháp tự động điều chỉnh thực chất là một phím tắt áp dụng các thuộc tính khác nhau cho bảng cùng một lúc. Đây là những thuộc tính thực sự cung cấp cho bảng hành vi được quan sát. Chúng ta sẽ thảo luận về các thuộc tính này cho từng tùy chọn tự động điều chỉnh.

Ví dụ mã sau đây cho thấy cách đặt bảng để thu nhỏ hoặc tăng kích thước từng ô theo nội dung của nó:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-auto-fit.py" >}}

#### Tự động điều chỉnh bảng thành cửa sổ

Khi áp dụng tính năng tự động điều chỉnh cho một cửa sổ cho một bảng, các thao tác sau thực sự được thực hiện một cách ngầm:

1. Thuộc tính **Table.AllowAutoFit** được kích hoạt để tự động thay đổi kích thước các cột cho phù hợp với nội dung có sẵn, sử dụng giá trị **Table.PreferredWidth** là 100%
2. **CellFormat.PreferredWidth** bị xóa khỏi tất cả các ô của bảng
      {{% alert color="primary" %}}
   Lưu ý rằng điều này hơi khác so với hành vi của Microsoft Word, trong đó chiều rộng ưu tiên của mỗi ô được đặt thành các giá trị phù hợp dựa trên kích thước và nội dung hiện tại của chúng. Aspose.Words không cập nhật chiều rộng ưa thích nên thay vào đó chúng chỉ bị xóa.
      {{% /alert %}}
3. Độ rộng cột được tính toán lại cho nội dung bảng hiện tại – kết quả cuối cùng là một bảng chiếm toàn bộ chiều rộng có sẵn
4. Độ rộng của các cột trong bảng tự động thay đổi khi người dùng chỉnh sửa văn bản

Ví dụ về mã sau đây cho thấy cách tự động điều chỉnh bảng theo chiều rộng của trang:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-page-width.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Tự động khớp bảng với nội dung

Khi bảng được tự động điều chỉnh nội dung, các bước sau đây thực sự được thực hiện một cách ngầm:

1. Thuộc tính **Table.AllowAutoFit** được kích hoạt để tự động thay đổi kích thước từng ô theo nội dung của nó

2. Xóa chiều rộng bảng ưa thích khỏi **Table.PreferredWidth**, **CellFormat.PreferredWidth** cho từng ô trong bảng
      {{% alert color="primary" %}}

   Lưu ý rằng tùy chọn tự động điều chỉnh này sẽ loại bỏ chiều rộng ưu tiên khỏi các ô, giống như trong Microsoft Word. Nếu muốn giữ nguyên kích thước cột và tăng giảm số cột cho vừa với nội dung, bạn nên đặt thuộc tính **Table.AllowAutoFit** thành **True** riêng thay vì sử dụng phím tắt tự động điều chỉnh.{{% /alert %}}

3. Độ rộng cột được tính toán lại cho nội dung bảng hiện tại – kết quả cuối cùng là một bảng trong đó độ rộng cột và chiều rộng của toàn bộ bảng được tự động thay đổi kích thước để phù hợp nhất với nội dung khi người dùng chỉnh sửa văn bản

Ví dụ về mã sau đây cho thấy cách tự động điều chỉnh một bảng cho phù hợp với nội dung của nó:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-contents.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

#### Tắt tính năng Tự động khớp trong bảng và sử dụng độ rộng cột cố định

Nếu một bảng đã tắt tính năng tự động điều chỉnh và thay vào đó sử dụng chiều rộng cột cố định thì các bước sau sẽ được thực hiện:

1. Thuộc tính **Table.AllowAutoFit** bị vô hiệu hóa nên các cột không thể phát triển hoặc thu nhỏ theo nội dung của chúng
2. Chiều rộng ưa thích của toàn bộ bảng bị xóa khỏi **Table.PreferredWidth**, **CellFormat.PreferredWidth** bị xóa khỏi tất cả các ô của bảng
3. Kết quả cuối cùng là một bảng có độ rộng cột được xác định bởi thuộc tính [CellFormat.Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/) và các cột của nó không được tự động thay đổi kích thước khi người dùng nhập văn bản hoặc khi trang được thay đổi kích thước

{{% alert color="primary" %}}

Lưu ý rằng nếu không chỉ định chiều rộng cho **CellFormat.Width** thì giá trị mặc định là một inch (72 điểm) sẽ được sử dụng.

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách tắt tính năng tự động điều chỉnh và bật chiều rộng cố định cho bảng đã chỉ định:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "auto-fit-table-to-fixed-column-widths.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Tables.docx).

{{% /alert %}}

### Thứ tự ưu tiên khi tính chiều rộng ô

Aspose.Words cho phép người dùng xác định độ rộng của bảng hoặc ô thông qua nhiều đối tượng, bao gồm [CellFormat](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/) – thuộc tính [Width](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/width/q) của nó hầu hết còn sót lại từ các phiên bản trước, tuy nhiên, nó vẫn hữu ích trong việc đơn giản hóa việc thiết lập độ rộng ô.

Điều quan trọng cần biết là thuộc tính **CellFormat.Width** hoạt động khác nhau tùy thuộc vào thuộc tính chiều rộng nào khác đã tồn tại trong bảng.

Aspose.Words sử dụng thứ tự sau để tính chiều rộng ô:

|  Đặt hàng |  Tài sản |  Sự miêu tả |
|  -----  |  ------------------------------------------------------------  |  ------------------------------------------------------------  |
|  1      |  [AllowAutoFit](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_auto_fit/) được xác định |  Nếu **AutoFit** được bật:<br>- bảng có thể dài hơn chiều rộng ưa thích để chứa nội dung – nó thường không co lại dưới chiều rộng ưa thích<br>- mọi thay đổi đối với giá trị **CellFormat.Width** đều bị bỏ qua và thay vào đó, ô sẽ khớp với nội dung của nó |
|  2      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) có giá trị **Points** hoặc **Percent** |  **CellFormat.Width** bị bỏ qua |
|  3      |  [PreferredWidthType](https://reference.aspose.com/words/python-net/aspose.words.tables/preferredwidthtype/) có giá trị **Auto** |  Giá trị từ **CellFormat.Width** được sao chép và trở thành chiều rộng ưa thích của ô (tính bằng điểm) |

{{% alert color="primary" %}}

Mọi thay đổi đối với thuộc tính chiều rộng sẽ không được cập nhật theo chiều rộng ưu tiên và thay vào đó phải được áp dụng cho chiều rộng ưu tiên.

{{% /alert %}}

{{% alert color="primary" %}}

Trong khi tạo bố cục bảng cố định, hãy chỉ định chiều rộng ô. Không thể lưu ô không có chiều rộng sang định dạng DOC. Về nguyên tắc, các định dạng tài liệu khác ngoài DOC, chẳng hạn như DOCX, cho phép lưu các ô không có chiều rộng trong bố cục bảng cố định.

{{% /alert %}}

## Cho phép khoảng cách giữa các ô

Bạn có thể nhận hoặc đặt bất kỳ khoảng trắng bổ sung nào giữa các ô trong bảng tương tự như tùy chọn "Khoảng cách ô" trong Microsoft Word. Điều này có thể được thực hiện bằng cách sử dụng thuộc tính [AllowCellSpacing](https://reference.aspose.com/words/python-net/aspose.words.tables/table/allow_cell_spacing/).

Bạn có thể xem ví dụ về cách áp dụng các tùy chọn này cho bảng thực trong tài liệu trong hình bên dưới.

<img src="/words/python-net/applying-formatting/applying-formatting-10.png" alt="format-cách-giữa các ô-aspose-words-python" style="width:500px"/>

Ví dụ mã sau đây cho thấy cách đặt khoảng cách giữa các ô:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "allow-cell-spacing.py" >}}

## Áp dụng đường viền và bóng

Đường viền và bóng có thể được áp dụng cho toàn bộ bảng bằng [Table.SetBorder](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_border/), [Table.SetBorders](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_borders/) và [Table.SetShading](https://reference.aspose.com/words/python-net/aspose.words.tables/table/set_shading/) hoặc chỉ cho các ô cụ thể bằng [CellFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/borders/) và [CellFormat.Shading](https://reference.aspose.com/words/python-net/aspose.words.tables/cellformat/shading/). Ngoài ra, đường viền hàng có thể được đặt bằng [RowFormat.Borders](https://reference.aspose.com/words/python-net/aspose.words.tables/rowformat/borders/), tuy nhiên không thể áp dụng bóng theo cách này.

Các hình ảnh bên dưới hiển thị cài đặt đường viền và bóng trong Microsoft Word cũng như các thuộc tính tương ứng của chúng trong Aspose.Words.

![formatting-border-line-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-6.png)

![formatting-cell-color-aspose-words-python](/words/python-net/applying-formatting/applying-formatting-7.png)

Ví dụ mã sau đây cho biết cách định dạng bảng và ô có đường viền và màu sắc khác nhau:

{{< gist "aspose-words-gists" "cc27d25b7638915607d1d60373c08da9" "format-table-and-cell-with-different-borders.py" >}}