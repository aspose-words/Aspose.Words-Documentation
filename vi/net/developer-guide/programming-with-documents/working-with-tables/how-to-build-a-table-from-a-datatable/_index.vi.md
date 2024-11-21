---
title: Cách tạo bảng từ `DataTable` trong C#
second_title: Aspose.Words cho .NET
articleTitle: Xây dựng bảng từ `DataTable`
linktitle: Xây dựng bảng từ `DataTable`
description: "Ví dụ về điền bảng tài liệu từ cơ sở dữ liệu bên ngoài bằng C#."
type: docs
weight: 120
url: /vi/net/how-to-build-a-table-from-a-datatable/
timestamp: 2024-09-25-11-08-55
---

Thông thường, ứng dụng của bạn sẽ lấy dữ liệu từ cơ sở dữ liệu và lưu trữ dưới dạng **DataTable**. Bạn có thể dễ dàng chèn dữ liệu này vào tài liệu của mình dưới dạng bảng mới và nhanh chóng áp dụng định dạng cho toàn bộ bảng.

{{% alert color="primary" %}}

Lưu ý rằng cách chèn dữ liệu từ **DataTable** vào bảng tài liệu ưa thích là sử dụng [Mail Merge với các khu vực](/words/net/types-of-mail-merge-operations/#mail-merge-with-regions). Kỹ thuật được trình bày trong bài viết này chỉ được đề xuất nếu bạn không thể tạo trước một mẫu phù hợp để hợp nhất dữ liệu, nói cách khác nếu bạn yêu cầu mọi thứ diễn ra theo chương trình.

{{% /alert %}}

Sử dụng Aspose.Words, bạn có thể dễ dàng truy xuất dữ liệu từ cơ sở dữ liệu và lưu trữ dưới dạng bảng:

1. Tạo đối tượng **DocumentBuilder** mới trên **Document** của bạn.
1. Bắt đầu một bảng mới bằng **DocumentBuilder**.
1. Nếu chúng ta muốn chèn tên của từng cột từ **DataTable** làm hàng tiêu đề, sau đó lặp qua từng cột dữ liệu và viết tên cột vào một hàng trong bảng.
1. Lặp lại qua từng **DataRow** trong **DataTable**:
   1. Lặp lại từng đối tượng trong **DataRow**.
   1. Chèn đối tượng vào tài liệu bằng **DocumentBuilder**. Phương thức được sử dụng tùy thuộc vào loại đối tượng được chèn, ví dụ **DocumentBuilder.Writeln** cho văn bản và **DocumentBuilder.InsertImage** cho mảng byte đại diện cho hình ảnh.
   1. Khi kết thúc quá trình xử lý **DataRow**, hàng được **DocumentBuilder** tạo bằng cách sử dụng **DocumentBuilder.EndRow** cũng kết thúc.
1. Khi tất cả các hàng từ **DataTable** đã được xử lý, hãy hoàn tất bảng bằng cách gọi **DocumentBuilder.EndTable**.
1. Cuối cùng, chúng ta có thể đặt kiểu bảng mong muốn bằng cách sử dụng một trong các thuộc tính bảng thích hợp như **Table.StyleIdentifier** để tự động áp dụng định dạng cho toàn bộ bảng.

Phương thức **ImportTableFromDataTable** chấp nhận một đối tượng **DocumentBuilder**, **DataTable** chứa dữ liệu và một cờ xác định xem tiêu đề cột từ **DataTable** có được đưa vào đầu bảng hay không. Phương pháp này xây dựng một bảng từ các tham số này bằng cách sử dụng vị trí và định dạng hiện tại của trình tạo. Cung cấp phương thức nhập dữ liệu từ `DataTable` và chèn dữ liệu đó vào bảng mới bằng DocumentBuilder.

Dữ liệu sau trong **DataTable** của chúng tôi được sử dụng trong ví dụ này:

![how-to-build-a-table-from-a-datatable-aspose-words-net](/words/net/how-to-build-a-table-from-a-datatable/how-to-build-a-table-from-a-datatable-1.png)

Ví dụ mã sau đây cho thấy cách thực thi thuật toán trên trong Aspose.Words:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "import-table-from-data-table.cs" >}}

Sau đó, bạn có thể dễ dàng gọi phương thức này bằng cách sử dụng **DocumentBuilder** và dữ liệu của mình.

Ví dụ về mã sau đây cho biết cách nhập dữ liệu từ `DataTable` và chèn dữ liệu đó vào bảng mới trong tài liệu:

{{< gist "aspose-words-gists" "affb937d8f345f60e6a506e1da3db9fa" "build-table-from-data-table.cs" >}}
