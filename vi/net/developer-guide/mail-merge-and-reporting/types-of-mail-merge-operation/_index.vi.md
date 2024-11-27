---
title: Các Loại Hoạt động Mail Merge Trong C#
second_title: Aspose.Words cho .NET
articleTitle: Các Loại Hoạt động Mail Merge
linktitle: Các Loại Hoạt động Mail Merge
type: docs
description: "Thực hiện hai loại hoạt động Mail Merge khác nhau: đơn giản Mail Merge và Mail Merge với các vùng sử dụng C#. Đơn giản Mail Merge lặp lại toàn bộ tài liệu trên mỗi bản ghi nguồn dữ liệu, trong khi Mail Merge với các vùng chỉ lặp lại các vùng được chỉ định trên mỗi bản ghi."
keywords: "how to execute Mail Merge c#"
weight: 20
url: /vi/net/types-of-mail-merge-operations/
timestamp: 2024-07-11-08-07-06
---

Ý tưởng chính của Mail Merge là tự động tạo tài liệu hoặc nhiều tài liệu dựa trên mẫu và dữ liệu được tìm nạp từ nguồn dữ liệu của bạn. Aspose.Words cho phép bạn thực hiện hai loại hoạt động Mail Merge khác nhau: đơn giản Mail Merge và Mail Merge với các vùng.

Ví dụ phổ biến nhất của việc sử dụng simple Mail Merge là khi bạn muốn gửi một tài liệu cho các khách hàng khác nhau bằng cách bao gồm tên của họ ở đầu tài liệu. Để thực hiện việc này, bạn cần tạo các trường hợp nhất như *First Name* và *Last Name* trong mẫu của mình, sau đó điền chúng vào dữ liệu từ nguồn dữ liệu của bạn. Trong khi ví dụ phổ biến nhất về việc sử dụng Mail Merge với các vùng là khi bạn muốn gửi một tài liệu bao gồm các đơn đặt hàng cụ thể với danh sách tất cả các mục trong mỗi đơn hàng. Để thực hiện việc này, bạn sẽ cần tạo các vùng hợp nhất bên trong vùng riêng của mẫu cho mỗi đơn hàng, để điền vào tất cả dữ liệu cần thiết cho các mục.

Sự khác biệt chính giữa cả hai hoạt động hợp nhất là đơn giản Mail Merge (không có vùng) lặp lại toàn bộ tài liệu trên mỗi bản ghi nguồn dữ liệu, trong khi Mail Merge với các vùng chỉ lặp lại các vùng được chỉ định trên mỗi bản ghi. Bạn có thể nghĩ về một thao tác Mail Merge đơn giản như một trường hợp cụ thể để hợp nhất với các vùng trong đó vùng duy nhất là toàn bộ tài liệu.

{{% alert color="primary" %}}

Lớp [MailMerge](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/) đại diện cho chức năng Mail Merge. Với các thuộc tính của nó, bạn có thể tùy chỉnh hành vi cần thiết trước khi thực hiện thao tác Mail Merge.

{{% /alert %}}

## Thao Tác Mail Merge Đơn Giản {#simple-mail-merge-operation}

Một Mail Merge đơn giản được sử dụng để điền vào các trường Mail Merge bên trong mẫu của bạn với dữ liệu cần thiết từ nguồn dữ liệu của bạn (biểu diễn bảng đơn). Vì vậy, nó tương tự như cổ điển Mail Merge trong Microsoft Word.

Bạn có thể thêm một hoặc nhiều trường hợp nhất trong mẫu của mình và sau đó thực hiện thao tác Mail Merge đơn giản. Bạn nên sử dụng nó nếu mẫu của bạn không chứa bất kỳ vùng hợp nhất nào.

Hạn chế chính của việc sử dụng loại này là toàn bộ nội dung tài liệu sẽ được lặp lại cho mỗi bản ghi trong nguồn dữ liệu.

### Cách Thực hiện Thao Tác Mail Merge Đơn giản {#how-to-execute-a-simple-mail-merge-operation}

Khi mẫu của bạn đã sẵn sàng, bạn có thể bắt đầu thực hiện thao tác Mail Merge đơn giản. Aspose.Words cho phép bạn thực hiện một thao tác Mail Merge đơn giản bằng cách sử dụng [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/#execute/) khác nhau chấp nhận các đối tượng dữ liệu khác nhau làm nguồn dữ liệu.

Ví dụ mã sau đây cho thấy cách thực hiện thao tác Mail Merge đơn giản bằng một trong các phương thức [Execute](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/execute/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "execute-simple-mail-merge.cs" >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi thực hiện đơn giản mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template" style="width:300px"/>

Và sau khi thực hiện đơn giản mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge" style="width:300px"/>

### Cách Tạo Nhiều Tài Liệu Đã Hợp Nhất

Trong Aspose.Words, thao tác Mail Merge tiêu chuẩn chỉ lấp đầy một tài liệu duy nhất với nội dung từ nguồn dữ liệu của bạn. Vì vậy, bạn sẽ cần thực hiện thao tác Mail Merge nhiều lần để tạo nhiều tài liệu được hợp nhất làm đầu ra.

Ví dụ mã sau đây cho thấy cách tạo nhiều tài liệu được hợp nhất trong thao tác Mail Merge:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "produce-multiple-documents.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

## Mail Merge Với Các Vùng

Bạn có thể tạo các vùng khác nhau trong mẫu của mình để có các vùng đặc biệt mà bạn có thể chỉ cần điền dữ liệu của mình. Sử dụng Mail Merge với các vùng nếu bạn muốn chèn bảng, các hàng có dữ liệu lặp lại để làm cho tài liệu của bạn tự động phát triển bằng cách chỉ định các vùng đó trong mẫu của bạn.

Bạn có thể tạo các vùng lồng nhau (con) cũng như hợp nhất các vùng. Ưu điểm chính của việc sử dụng loại này là tự động tăng các bộ phận bên trong tài liệu. Xem thêm chi tiết trong bài viết tiếp theo "Lồng Mail Merge Với Các Vùng".

{{% alert color="primary" %}}

Thông tin về vùng Mail Merge có thể được lấy bằng lớp [MailMergeRegionInfo](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergeregioninfo/).

{{% /alert %}}

### Cách Thực thi Mail Merge Với Các Vùng

Vùng Mail Merge là một phần cụ thể bên trong tài liệu có điểm bắt đầu và điểm kết thúc. Cả hai điểm được biểu diễn dưới dạng các trường Mail Merge có tên cụ thể *"TableStart:XXX"* và *"TableEnd:XXX"*. Tất cả nội dung được bao gồm trong vùng Mail Merge sẽ tự động được lặp lại cho mọi bản ghi trong nguồn dữ liệu.

Aspose.Words cho phép bạn thực thi Mail Merge với các vùng sử dụng [Execute methods](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/#executewithregions/) khác nhau chấp nhận các đối tượng dữ liệu khác nhau làm nguồn dữ liệu.

Bước đầu tiên, chúng ta cần tạo `DataSet` để chuyển nó sau này dưới dạng tham số đầu vào cho phương thức `ExecuteWithRegions`:

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "create-data-set.cs" >}}

Ví dụ mã sau đây cho thấy cách thực thi Mail Merge với các vùng bằng phương thức [ExecuteWithRegions(DataSet)](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/executewithregions/):

{{< gist "aspose-words-gists" "341b834e9b6a84ac6885e907e0ea4229" "mail-merge-with-regions.cs" >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi thực hiện Mail Merge với các vùng:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

Và sau khi thực hiện Mail Merge với các vùng:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

### Giới hạn của Mail Merge Với Các Khu Vực

Có một số điểm quan trọng mà bạn cần xem xét khi thực hiện Mail Merge với các vùng:

* Điểm bắt đầu *TableStart:Orders* và điểm kết thúc *TableEnd:Orders* cả hai đều cần nằm trong cùng một hàng hoặc ô. Ví dụ: nếu bạn bắt đầu một vùng hợp nhất trong một ô của bảng, bạn phải kết thúc vùng hợp nhất trong cùng một hàng với ô đầu tiên.
* Tên trường hợp nhất phải khớp với tên của cột trong DataTable của bạn. Trừ khi bạn đã chỉ định các trường được ánh xạ, Mail Merge với các vùng sẽ không thành công đối với bất kỳ trường hợp nhất nào có tên khác với tên của cột.

Nếu một trong những quy tắc này bị phá vỡ, bạn sẽ nhận được kết quả bất ngờ hoặc một ngoại lệ có thể bị ném.

{{% alert color="primary" %}}

Nếu bạn không sử dụng các vùng Mail Merge, thì nó sẽ tương tự như Microsoft Word mail merge và toàn bộ nội dung tài liệu sẽ được lặp lại cho mỗi bản ghi trong nguồn dữ liệu.

{{% /alert %}}

