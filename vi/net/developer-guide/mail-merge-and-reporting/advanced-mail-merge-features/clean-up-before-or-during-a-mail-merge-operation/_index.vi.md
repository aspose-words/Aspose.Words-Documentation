---
title: Dọn Dẹp trước hoặc Trong Mail Merge
second_title: Aspose.Words cho .NET
articleTitle: Dọn Dẹp Trước hoặc Trong Một Hoạt động Mail Merge
linktitle: Dọn Dẹp Trước hoặc Trong Một Hoạt động Mail Merge
type: docs
description: "Áp dụng các tùy chọn làm sạch và xóa khác nhau như xóa các trường hợp nhất trước khi thực hiện thao tác Mail Merge hoặc xóa các vùng không sử dụng trong thao tác Mail Merge bằng C#."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /vi/net/clean-up-before-or-during-mail-merge/
timestamp: 2024-07-11-08-07-06
---

Aspose.Words cho phép bạn áp dụng các tùy chọn làm sạch và xóa khác nhau như xóa các trường hợp nhất trước khi thực hiện thao tác Mail Merge hoặc xóa các vùng không sử dụng trong thao tác Mail Merge. Phần này sẽ giải thích cách xóa các trường đã hợp nhất và cách thiết lập tùy chọn xóa.

## Xóa Các Trường Đã Hợp Nhất

Khi bạn đang sử dụng một số mẫu dài được tạo bởi người khác, bạn có thể muốn xóa tất cả các trường hợp nhất đã tồn tại trong mẫu đó trước khi thực hiện thao tác Mail Merge. Bạn có thể sử dụng phương thức [DeleteFields](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/deletefields/) nếu bạn muốn xóa tất cả các trường hợp nhất khỏi tài liệu mà không thực hiện thao tác Mail Merge. Phương thức này không bị ảnh hưởng bởi bất kỳ tùy chọn xóa nào của thuộc tính [CleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/cleanupoptions/) và thực thi nó chỉ xóa các trường được hợp nhất, không phải bất kỳ trường chứa hoặc đoạn trống nào.

Ví dụ mã sau đây cho thấy cách xóa tất cả các trường hợp nhất khỏi mẫu của bạn mà không thực hiện thao tác Mail Merge:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "delete-fields.cs" >}}

## Thiết lập tùy chọn `Removing`

Aspose.Words cho phép bạn xóa các trường, vùng và đoạn chưa được hợp nhất khỏi mẫu trong thao tác Mail Merge bằng cách sử dụng các tùy chọn xóa.

Sử dụng thuộc tính **CleanupOptions** cùng với liệt kê [MailMergeCleanupOptions](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmergecleanupoptions/) để đặt tùy chọn xóa. Chỉ định mục nào bạn muốn xóa bằng cách chọn các tùy chọn sau (bạn có thể kết hợp nhiều mục):

* Xóa các đoạn văn trống
* Loại bỏ các vùng không sử dụng
* Xóa các trường không sử dụng
* Xóa các trường chứa
* Xóa các trường tĩnh
* Xóa các hàng bảng trống

Bạn có thể xem xét trường hợp nhất là chưa được hợp nhất trong một trong các điều kiện sau:

1. Nếu trường hợp nhất trong nguồn dữ liệu không có cột hoặc trường ánh xạ.
2. Nếu trường hợp nhất trong nguồn dữ liệu chứa trường ánh xạ nhưng dữ liệu là null.

{{% alert color="primary" %}}

Nếu bạn đang hợp nhất dữ liệu bằng các nguồn dữ liệu riêng biệt thì các tùy chọn xóa đó sẽ chỉ được bật với lệnh gọi cuối cùng của phương thức thực thi Mail Merge.

{{% /alert %}}

### Xóa Các Đoạn Văn Trống

Một đoạn chỉ bao gồm các trường hợp nhất sẽ trống khi quá trình Mail Merge loại bỏ tất cả các trường hợp nhất của nó là chưa được hợp nhất. Những đoạn trống đó có thể thêm không gian không mong muốn và thay đổi cách báo cáo được tạo sẽ trông như thế nào. Bạn có thể phải đối mặt với hai tình huống với các đoạn trong một hoạt động Mail Merge:

1. Trường Mail Merge sẽ được hợp nhất với dữ liệu trống.
2. Trường hợp nhất không được sử dụng và sẽ bị xóa.

Trong cả hai trường hợp, tùy chọn **RemoveEmptyParagraphs** sẽ tự động xóa các đoạn trống khỏi tài liệu. Ngoài ra, nó sẽ xóa các trường hợp hợp nhất `TableStart` và TableEnd nếu phần còn lại của đoạn văn trống.

Ví dụ mã sau đây cho thấy cách xóa các đoạn trống:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-paragraphs.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Table%20with%20fields.docx).

{{% /alert %}}

### Loại Bỏ Các Vùng Không Sử Dụng

Trong các phiên bản trước của Aspose.Words, các vùng Mail Merge trống đã tự động bị xóa khỏi tài liệu trong quá trình hoạt động Mail Merge. Với Phiên bản Mới nhất Của Aspose.các từ, vùng trống Mail Merge vẫn còn sau thao tác Mail Merge theo mặc định. Tuy nhiên, bạn có thể sử dụng tùy chọn **RemoveUnusedRegions** để xóa các vùng Mail Merge chưa sử dụng trong quá trình hoạt động Mail Merge. Ví dụ: bạn có thể hợp nhất tài liệu với nguồn dữ liệu trống không chứa bảng dữ liệu dẫn đến các vùng không sử dụng trong tài liệu.

Ví dụ mã sau đây cho thấy cách xóa các vùng hợp nhất không sử dụng:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unmerged-regions.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20destination%20-%20Northwind%20suppliers.docx).

{{% /alert %}}

**Lưu ý**

### Xóa Các Trường Không Sử Dụng

Aspose.Words cho phép bạn xóa mọi trường Mail Merge chưa sử dụng bằng cách gán cờ **RemoveUnusedFields** cho **CleanupOptions**. Tùy chọn này sẽ xóa các trường hợp nhất không có dữ liệu tương ứng trong nguồn dữ liệu.

Ví dụ mã sau đây cho thấy cách tự động xóa mọi trường hợp nhất không sử dụng khỏi tài liệu trong thao tác Mail Merge:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-unused-fields.cs" >}}

### Xóa Các Trường Chứa

Một trường hợp nhất có thể được chứa trong một trường khác như trường **IF** hoặc trường công thức. Xóa trường bên ngoài này khi trường hợp nhất được hợp nhất hoặc xóa khỏi tài liệu.

Ví dụ mã sau đây cho thấy cách xóa các trường có chứa các trường hợp nhất khỏi tài liệu:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-containing-fields.cs" >}}

**Lưu ý**

### Xóa Các Hàng Bảng Trống

Aspose.Words cho phép bạn xóa các hàng bảng trống bằng cách gán cờ **RemoveEmptyTableRows** cho **CleanupOptions**. Tùy chọn này sẽ xóa các hàng bảng có chứa các trường hợp nhất trống.

Ví dụ mã sau đây cho thấy cách xóa các hàng bảng trống chứa vùng Mail Merge khỏi tài liệu:

{{< gist "aspose-words-gists" "f39874821cb317d245a769c9ce346fea" "remove-empty-table-rows.cs" >}}
