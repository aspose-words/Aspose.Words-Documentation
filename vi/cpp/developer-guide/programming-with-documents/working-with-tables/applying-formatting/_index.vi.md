---
title: Định dạng bảng trong C++
second_title: Aspose.Words cho C++
articleTitle: Áp Dụng Định Dạng
linktitle: Áp Dụng Định Dạng
description: "Định dạng bảng trong chi tiết sử dụng C++. Sử dụng C++ để định dạng mọi phần của bảng."
type: docs
weight: 70
url: /vi/cpp/applying-formatting/
timestamp: 2024-10-21-11-17-44
---

Mỗi phần tử của bảng có thể được áp dụng với các định dạng khác nhau. Ví dụ: định dạng bảng sẽ được áp dụng cho toàn bộ bảng, định dạng hàng chỉ cho các hàng cụ thể, định dạng ô chỉ cho các ô nhất định.

Aspose.Words cung cấp một rich API để truy xuất và áp dụng định dạng cho một bảng. Bạn có thể sử dụng các nút [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [RowFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/) và [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) để đặt định dạng.

Trong bài viết này, chúng ta sẽ nói về cách áp dụng định dạng cho các nút bảng khác nhau và cài đặt định dạng bảng Aspose.Words hỗ trợ.

## Áp dụng Định dạng Cho Các Nút Khác nhau

Trong phần này, chúng ta sẽ xem xét việc áp dụng định dạng cho các nút bảng khác nhau.

### Định Dạng Cấp Bảng

Để áp dụng định dạng cho một bảng, bạn có thể sử dụng các thuộc tính có sẵn trên nút **Table** tương ứng bằng cách sử dụng các lớp [Table](https://reference.aspose.com/words/cpp/aspose.words.tables/table/), [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/) và [TableCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/tablecollection/).

{{% alert color="primary" %}}

Lưu ý rằng bảng phải có ít nhất một hàng trước khi các thuộc tính bảng có thể được áp dụng. Điều này có nghĩa là khi xây dựng một bảng với [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/), định dạng này phải được thực hiện sau cuộc gọi đầu tiên đến [InsertCell](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertcell/) hoặc sau khi hàng đầu tiên được thêm vào bảng hoặc khi các nút được chèn trực tiếp vào DOM.

{{% /alert %}}

Các hình ảnh dưới đây cho thấy một đại diện của các tính năng định dạng **Table** trong Microsoft Word và các thuộc tính tương ứng của chúng trong Aspose.Words.

![formattin-features-table-level-aspose-words-cpp](applying-formatting-1.png)

![formatting-table-options-aspose-words-cpp](applying-formatting-2.png)

Ví dụ mã sau đây cho thấy cách áp dụng đường viền phác thảo cho bảng:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-outline-border.h" >}}

Ví dụ mã sau đây cho thấy cách xây dựng bảng có bật tất cả các đường viền (lưới):

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "build-table-with-borders.h" >}}

### Định Dạng Cấp Hàng

**Cấp hàng**

{{% alert color="primary" %}}

Lưu ý rằng a **Row** chỉ có thể là một nút con của a **Table**. Đồng thời, phải có ít nhất một **Cell** trong **Row** để có thể áp dụng định dạng cho nó.

{{% /alert %}}

Các hình ảnh dưới đây cho thấy một đại diện của các tính năng định dạng **Row** trong Microsoft Word và các thuộc tính tương ứng của chúng trong Aspose.Words.

![formatting-row-level-aspose-words-cpp](applying-formatting-3.png)

Ví dụ mã sau đây cho thấy cách sửa đổi định dạng hàng bảng:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-row-formatting.h" >}}

### Định Dạng Mức Ô

Định dạng cấp ô được điều khiển bởi các lớp [Cell](https://reference.aspose.com/words/cpp/aspose.words.tables/cell/), [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) và [CellCollection](https://reference.aspose.com/words/cpp/aspose.words.tables/cellcollection/).

{{% alert color="primary" %}}

Lưu ý rằng **Cell** chỉ có thể là một nút con của **Row**. Đồng thời, phải có ít nhất một [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/) trong **Cell** để có thể áp dụng định dạng cho nó.

Ngoài **Paragraph**, bạn cũng có thể chèn **Table** vào **Cell**.

{{% /alert %}}

Các hình ảnh dưới đây cho thấy một đại diện của các tính năng định dạng **Cell** trong Microsoft Word và các thuộc tính tương ứng của chúng trong Aspose.Words.

![formatting-cell-level-aspose-words-cpp](applying-formatting-4.png)

![auto-formatting-cell-level-aspose-words-cpp](applying-formatting-5.png)

Ví dụ mã sau đây cho thấy cách sửa đổi định dạng của ô bảng:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "modify-cell-formatting.h" >}}

Ví dụ mã sau đây cho thấy cách đặt dung lượng (tính bằng điểm) để thêm vào bên trái/trên cùng/phải / dưới cùng của nội dung của ô:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "cell-padding.h" >}}

## Chỉ Định Chiều Cao Hàng

Cách đơn giản nhất để đặt chiều cao hàng là sử dụng **DocumentBuilder**. Sử dụng các thuộc tính **RowFormat** thích hợp, bạn có thể đặt cài đặt chiều cao mặc định hoặc áp dụng chiều cao khác nhau cho mỗi hàng trong bảng.

Trong Aspose.Words, chiều cao hàng bảng được điều khiển bởi:

- thuộc tính chiều cao hàng – [Height](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_height/)
- thuộc tính quy tắc chiều cao cho hàng đã cho – [HeightRule](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_heightrule/)

Đồng thời, một chiều cao khác nhau có thể được đặt cho mỗi hàng – điều này cho phép bạn kiểm soát rộng rãi các cài đặt bảng.

{{% alert color="primary" %}}

Các tùy chọn quy tắc để chỉ định chiều cao của một đối tượng có thể được đặt bằng cách sử dụng liệt kê [HeightRule](https://reference.aspose.com/words/cpp/aspose.words/heightrule/).

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách tạo một bảng có chứa một ô duy nhất và áp dụng định dạng hàng:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "apply-row-formatting.h" >}}

## Chỉ Định Chiều Rộng Bảng Và Ô

Một bảng trong tài liệu Microsoft Word cung cấp một số cách khác nhau để thay đổi kích thước bảng và các ô riêng lẻ. Các thuộc tính này cho phép kiểm soát đáng kể sự xuất hiện và hành vi của bảng, do đó Aspose.Words hỗ trợ hành vi của các bảng, như trong Microsoft Word.

Điều quan trọng cần biết là các phần tử bảng trình bày một số thuộc tính khác nhau có thể ảnh hưởng đến cách tính độ rộng của bảng tổng thể, cũng như các ô riêng lẻ:

- Chiều rộng ưa thích trên bàn
- Chiều rộng ưa thích trên các ô riêng lẻ
- Cho phép tự động trang bị trên bàn

Bài viết này trình bày chi tiết cách các thuộc tính tính toán chiều rộng bảng khác nhau hoạt động và cách kiểm soát hoàn toàn tính toán chiều rộng bảng. Đây là
đặc biệt hữu ích để biết trong những trường hợp như vậy mà bố cục bảng không xuất hiện như mong đợi.

{{% alert color="primary" %}}

Trong hầu hết các trường hợp, ô ưa thích được khuyến nghị so với chiều rộng bảng. Chiều rộng ô ưa thích phù hợp hơn với đặc tả định dạng DOCX cũng như mô hình Aspose.Words.

Chiều rộng ô thực sự là một giá trị được tính cho định dạng DOCX. Chiều rộng tế bào thực tế có thể phụ thuộc vào nhiều thứ. Ví dụ: thay đổi lề trang hoặc chiều rộng bảng ưa thích có thể ảnh hưởng đến chiều rộng ô thực tế.

Chiều rộng ô ưa thích là một thuộc tính ô được lưu trữ trong tài liệu. Nó không phụ thuộc vào bất cứ điều gì và không thay đổi khi bạn thay đổi bảng hoặc các thuộc tính khác của ô.

{{% /alert %}}

{{% alert color="primary" %}}

Tất cả các thuộc tính và phương thức được mô tả trong bài viết này có liên quan đến cách các bảng hoạt động trong Microsoft Word. Vì vậy, trong hầu hết các trường hợp, nếu bạn đang xây dựng bảng của mình theo chương trình nhưng cảm thấy khó tạo bảng mong muốn, thay vào đó bạn có thể thử tạo trực quan nó trong Microsoft Word trước và sau đó chỉ cần sao chép các giá trị định dạng vào ứng dụng của bạn.

{{% /alert %}}

### Cách Sử Dụng Chiều Rộng Ưa Thích

Chiều rộng mong muốn của một bảng hoặc các ô riêng lẻ được xác định thông qua thuộc tính chiều rộng ưa thích, đó là kích thước mà một phần tử cố gắng phù hợp. Đó là, chiều rộng ưa thích có thể được chỉ định cho toàn bộ bảng hoặc cho các ô riêng lẻ. Trong một số trường hợp, có thể không phù hợp chính xác với chiều rộng này, nhưng chiều rộng thực tế sẽ gần với giá trị này trong hầu hết các trường hợp.

Loại chiều rộng và giá trị ưa thích thích hợp được đặt bằng các phương thức của lớp [PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/):

- phương thức [Auto](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/auto/) để chỉ định tự động hoặc "không có chiều rộng ưu tiên"
- phương pháp [FromPercent](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompercent/) để chỉ định chiều rộng phần trăm
- phương thức [FromPoints](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/frompoints/) để chỉ định chiều rộng trong các điểm

Các hình ảnh dưới đây cho thấy một đại diện của *preferred width setting features* trong Microsoft Word và các thuộc tính tương ứng của chúng trong Aspose.Words.

![formatting-table-properties-aspose-words-cpp](applying-formatting-8.png)

Một ví dụ về cách các tùy chọn này được áp dụng cho một bảng thực trong tài liệu có thể được nhìn thấy trong hình dưới đây.

![todo:image_alt_text](applying-formatting-9.png)

{{% alert color="primary" %}}

Trước khi bạn có thể sử dụng chiều rộng ưa thích trong bảng, bạn phải đảm bảo rằng bảng chứa ít nhất một hàng. Điều này là do định dạng bảng như vậy trong tài liệu Microsoft Word hoặc trong tài liệu được tạo trong Aspose.Words được lưu trữ trong các hàng của bảng.

{{% /alert %}}

#### Chỉ Định Chiều Rộng Bảng Hoặc Ô Ưa Thích

Trong Aspose.Words, chiều rộng bảng và ô được đặt bằng thuộc tính [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) và thuộc tính [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/), với các tùy chọn có sẵn trong liệt kê [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/):

- **Auto**, tương đương với không có bộ chiều rộng ưa thích
- **Percent**, phù hợp với phần tử so với không gian có sẵn trong cửa sổ hoặc kích thước vùng chứa và tính toán lại giá trị khi chiều rộng có sẵn thay đổi
- **Points**, tương ứng với một phần tử có chiều rộng được chỉ định trong các điểm

{{% alert color="primary" %}}

Theo mặc định, một bảng có thể được mô tả là được trang bị cho 100% không gian có sẵn trên trang. Trong trường hợp này, điều này có nghĩa là bảng sẽ cố gắng chiếm khoảng trống giữa lề trang trái và phải.

{{% /alert %}}

Sử dụng thuộc tính [Table.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_preferredwidth/) sẽ điều chỉnh độ rộng ưa thích của nó so với vùng chứa của nó: trang, cột văn bản hoặc ô bảng bên ngoài nếu nó là một bảng lồng nhau.

Ví dụ mã sau đây cho thấy cách đặt bảng thành tự động phù hợp với 50% chiều rộng trang:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-to-page-width.h" >}}

Sử dụng thuộc tính [CellFormat.PreferredWidth](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_preferredwidth/) trên một ô nhất định sẽ điều chỉnh chiều rộng ưa thích của nó.

Ví dụ mã sau đây cho thấy cách đặt các cài đặt độ rộng ưa thích khác nhau:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "preferred-width-settings.h" >}}

#### Tìm Loại Chiều Rộng Và Giá trị Ưa Thích

Bạn có thể sử dụng thuộc tính [Type](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) và [Value](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidthtype/) để tìm chi tiết chiều rộng ưa thích của bảng hoặc ô mong muốn.

Ví dụ mã sau đây cho thấy cách truy xuất loại chiều rộng ưa thích của ô bảng:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "retrieve-preferred-width-type.h" >}}

### Cách Đặt Autofit

Thuộc tính [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) cho phép các ô trong bảng phát triển và thu nhỏ theo tiêu chí đã chọn. Ví dụ: bạn có thể sử dụng tùy chọn **AutoFit to Window** để khớp bảng với chiều rộng của trang và tùy chọn **AutoFit to Content** để cho phép mỗi ô phát triển hoặc thu nhỏ theo nội dung của nó.

{{% alert color="primary" %}}

Ngoài ra, thuộc tính **AllowAutoFit** có thể được sử dụng cùng với chiều rộng ô ưa thích để định dạng ô tự động phù hợp với nội dung của nó, nhưng cũng có chiều rộng ban đầu. Nếu cần thiết, chiều rộng tế bào sau đó có thể phát triển qua chiều rộng này.

{{% /alert %}}

Theo mặc định, Aspose.Words chèn một bảng mới bằng **AutoFit to Window**. Bảng sẽ có kích thước theo chiều rộng trang có sẵn. Để thay đổi kích thước bảng, bạn có thể gọi phương thức [AutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/autofit/). Phương pháp này chấp nhận liệt kê [AutoFitBehavior](https://reference.aspose.com/words/cpp/aspose.words.tables/autofitbehavior/) chỉ định loại autofit nào được áp dụng cho bảng.

Điều quan trọng cần biết là phương thức autofit thực sự là một phím tắt áp dụng các thuộc tính khác nhau cho bảng cùng một lúc. Đây là những thuộc tính thực sự cung cấp cho bảng hành vi quan sát được. Chúng tôi sẽ thảo luận về các thuộc tính này cho mỗi tùy chọn autofit.

Ví dụ mã sau đây cho thấy cách đặt bảng để thu nhỏ hoặc phát triển từng ô theo nội dung của nó:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-auto-fit.h" >}}

#### AutoFit Bảng Để Cửa Sổ

Khi tự động chuyển sang cửa sổ được áp dụng cho bảng, các thao tác sau thực sự được thực hiện ở hậu trường:

1. Thuộc tính **Table.AllowAutoFit** được bật để tự động thay đổi kích thước các cột để phù hợp với nội dung có sẵn, sử dụng giá trị **Table.PreferredWidth** là 100%
2. **CellFormat.PreferredWidth** bị xóa khỏi tất cả các ô bảng
   {{% alert color="primary" %}}
   Lưu ý rằng điều này hơi khác so với hành vi Microsoft Word, trong đó chiều rộng ưa thích của mỗi ô được đặt thành các giá trị thích hợp dựa trên kích thước và nội dung hiện tại của chúng. Aspose.Words không cập nhật chiều rộng ưa thích để thay vào đó chúng chỉ bị xóa.
   {{% /alert %}}
3. Chiều rộng cột được tính toán lại cho nội dung bảng hiện tại – kết quả cuối cùng là một bảng chiếm toàn bộ chiều rộng có sẵn
4. Chiều rộng của các cột trong bảng sẽ tự động thay đổi khi người dùng chỉnh sửa văn bản

Ví dụ mã sau đây cho thấy cách tự động nối bảng với chiều rộng trang:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-page-width.h" >}}

#### AutoFit Bảng Thành Nội Dung

Khi bảng được tự động trang bị nội dung, các bước sau đây thực sự được thực hiện đằng sau hậu trường:

1. Thuộc tính **Table.AllowAutoFit** được bật để tự động thay đổi kích thước từng ô theo nội dung của nó

2. Chiều rộng bảng ưa thích được loại bỏ khỏi **Table.PreferredWidth**, **CellFormat.PreferredWidth** được loại bỏ cho mỗi ô bảng
   {{% alert color="primary" %}}

   Lưu ý rằng tùy chọn autofit này loại bỏ chiều rộng ưa thích khỏi các ô, giống như trong Microsoft Word. Nếu bạn muốn giữ kích thước cột và tăng hoặc giảm các cột để phù hợp với nội dung, bạn nên tự đặt thuộc tính **Table.AllowAutoFit** thành **True** thay vì sử dụng phím tắt autofit.{{% /alert %}}

3. Chiều rộng cột được tính toán lại cho nội dung bảng hiện tại – kết quả cuối cùng là bảng trong đó chiều rộng cột và chiều rộng của toàn bộ bảng được tự động thay đổi kích thước để phù hợp nhất với nội dung khi người dùng chỉnh sửa văn bản

Ví dụ mã sau đây cho thấy cách tự động trang bị bảng cho nội dung của nó:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-contents.h" >}}

#### Vô hiệu hóa AutoFit Trong Bảng Và Sử dụng Độ Rộng Cột Cố định

Nếu một bảng có autofit bị vô hiệu hóa và chiều rộng cột cố định được sử dụng thay thế, các bước sau được thực hiện:

1. **Table.AllowAutoFit** thuộc tính bị vô hiệu hóa để các cột không phát triển hoặc thu nhỏ nội dung của chúng
2. Chiều rộng ưa thích của toàn bộ bảng được loại bỏ khỏi **Table.PreferredWidth**, **CellFormat.PreferredWidth** được loại bỏ khỏi tất cả các ô của bảng
3. Kết quả cuối cùng là một bảng có độ rộng cột được xác định bởi thuộc tính [CellFormat.Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) và các cột của nó không được tự động thay đổi kích thước khi người dùng nhập văn bản hoặc khi trang được thay đổi kích thước

{{% alert color="primary" %}}

Lưu ý rằng nếu không có chiều rộng được chỉ định cho **CellFormat.Width**, giá trị mặc định của một inch (72 điểm) được sử dụng.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách tắt autofit và bật chiều rộng cố định cho bảng được chỉ định:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "auto-fit-table-to-fixed-column-widths.h" >}}

### Thứ tự Ưu tiên khi Tính Chiều Rộng Ô

Aspose.Words cho phép người dùng xác định chiều rộng của bảng hoặc ô thông qua nhiều đối tượng, bao gồm [CellFormat](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/) – thuộc tính [Width](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_width/) của nó chủ yếu còn sót lại từ các phiên bản trước, tuy nhiên, nó vẫn hữu ích để đơn giản hóa việc đặt chiều rộng ô.

Điều quan trọng cần biết là thuộc tính **CellFormat.Width** hoạt động khác nhau tùy thuộc vào thuộc tính chiều rộng nào khác đã tồn tại trong bảng.

Aspose.Words sử dụng thứ tự sau để tính chiều rộng ô:

| Đặt hàng | Tài sản | Mô tả |
| :- | :- | :- |
|  | [AllowAutoFit](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowautofit/) được xác định | Nếu **AutoFit** được bật:<br />– bảng có thể phát triển qua chiều rộng ưa thích để chứa nội dung-nó thường không co lại dưới chiều rộng ưa thích<br />- bất kỳ thay đổi nào đối với giá trị **CellFormat.Width** đều bị bỏ qua và thay vào đó ô sẽ phù hợp với nội dung của nó |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) với giá trị **Points** hoặc **Percent** | **CellFormat.Width** bị bỏ qua |
|  | [PreferredWidthType](https://reference.aspose.com/words/cpp/aspose.words.tables/preferredwidth/get_type/) với giá trị **Auto** | Giá trị từ **CellFormat.Width** được sao chép và trở thành chiều rộng ưa thích của ô (tính bằng điểm) |

{{% alert color="primary" %}}

Bất kỳ thay đổi nào đối với thuộc tính width không được cập nhật theo chiều rộng ưa thích và thay vào đó phải được áp dụng cho chiều rộng ưa thích.

{{% /alert %}}

{{% alert color="primary" %}}

Trong khi tạo bố cục bảng cố định, chỉ định chiều rộng ô. Một ô không có chiều rộng không thể được lưu thành định dạng DOC. Các định dạng tài liệu khác ngoài DOC, chẳng hạn như DOCX, về nguyên tắc, cho phép lưu các ô không có chiều rộng trong bố cục bảng cố định.

{{% /alert %}}

## Cho Phép Khoảng Cách Giữa Các Ô

Bạn có thể nhận hoặc đặt bất kỳ khoảng trắng bổ sung nào giữa các ô bảng tương tự như tùy chọn "Khoảng Cách Ô" trong Microsoft Word. Điều này có thể được thực hiện bằng cách sử dụng thuộc tính [AllowCellSpacing](https://reference.aspose.com/words/cpp/aspose.words.tables/table/get_allowcellspacing/).

Một ví dụ về cách các tùy chọn này được áp dụng cho một bảng thực trong tài liệu có thể được nhìn thấy trong hình dưới đây.

<img src="applying-formatting-10.png" alt="formatting-spacing-between-cells-aspose-words-cpp" style="width:500px"/>

Ví dụ mã sau đây cho thấy cách đặt khoảng cách giữa các ô:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "allow-cell-spacing.h" >}}

## Áp dụng Đường Viền và Bóng

Các đường viền và bóng có thể được áp dụng cho toàn bộ bảng bằng cách sử dụng [Table.SetBorder](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborder/), [Table.SetBorders](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setborders/) và [Table.SetShading](https://reference.aspose.com/words/cpp/aspose.words.tables/table/setshading/) hoặc chỉ cho các ô cụ thể bằng cách sử dụng [CellFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_borders/) và [CellFormat.Shading](https://reference.aspose.com/words/cpp/aspose.words.tables/cellformat/get_shading/). Ngoài ra, các đường viền hàng có thể được đặt bằng [RowFormat.Borders](https://reference.aspose.com/words/cpp/aspose.words.tables/rowformat/get_borders/), tuy nhiên không thể áp dụng bóng theo cách này.

Các hình ảnh dưới đây hiển thị cài đặt đường viền và bóng trong Microsoft Word và các thuộc tính tương ứng của chúng trong Aspose.Words.

![formatting-border-line-aspose-words-cpp](applying-formatting-6.png)

![formatting-cell-color-aspose-words-cpp](applying-formatting-7.png)

Ví dụ mã sau đây cho thấy cách định dạng bảng và ô với các đường viền và sắc thái khác nhau:

{{< gist "aspose-words-gists" "4f1d7039f19f9f49472a50cc0d0fc475" "format-table-and-cell-with-different-borders.h" >}}
