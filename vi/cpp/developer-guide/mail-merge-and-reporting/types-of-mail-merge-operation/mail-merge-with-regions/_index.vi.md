---
title: Mail Merge Với Các Khu vực trong C++
second_title: Aspose.Words cho C++
articleTitle: Mail Merge Với Các Khu Vực
linktitle: Mail Merge Với Các Khu Vực
type: docs
description: "Tạo các vùng khác nhau trong mẫu của bạn để có các vùng đặc biệt mà bạn có thể chỉ cần điền dữ liệu của mình. Sử dụng Mail Merge với các vùng nếu bạn muốn chèn bảng, các hàng có dữ liệu lặp lại để làm cho tài liệu của bạn tự động phát triển."
keywords: "how to execute Mail Merge c++"
weight: 20
url: /vi/cpp/mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Bạn có thể tạo các vùng khác nhau trong mẫu của mình để có các vùng đặc biệt mà bạn có thể chỉ cần điền dữ liệu của mình. Sử dụng Mail Merge với các vùng nếu bạn muốn chèn bảng, các hàng có dữ liệu lặp lại để làm cho tài liệu của bạn tự động phát triển bằng cách chỉ định các vùng đó trong mẫu của bạn.

Bạn có thể tạo các vùng lồng nhau (con) cũng như hợp nhất các vùng. Ưu điểm chính của việc sử dụng loại này là tự động tăng các bộ phận bên trong tài liệu. Xem thêm chi tiết trong bài viết tiếp theo " Lồng Nhau Mail Merge Với Các Khu vực".

{{% alert color="primary" %}}

Thông tin về a Mail Merge khu vực có thể thu được bằng cách sử dụng [MailMergeRegionInfo](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergeregioninfo/) lớp học.

{{% /alert %}}

## Làm thế nào Để Thực hiện Mail Merge Với Các Khu Vực

A Mail Merge vùng là một phần cụ thể bên trong một tài liệu có điểm bắt đầu và điểm kết thúc. Cả hai điểm được biểu diễn dưới dạng Mail Merge các trường có tên cụ thể *"TableStart:XXX"* và *"TableEnd:XXX"*. Tất cả nội dung được bao gồm trong một Mail Merge vùng sẽ tự động được lặp lại cho mọi bản ghi trong nguồn dữ liệu.

Aspose.Words cho phép bạn thực hiện Mail Merge với các khu vực sử dụng một trong các [ExecuteWithRegions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/executewithregions/) phương pháp chấp nhận [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) nguồn dữ liệu tùy chỉnh.

Ví dụ mã sau đây cho thấy cách thực thi Mail Merge với các khu vực từ cơ sở dữ liệu sqlite với [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi thực hiện Mail Merge với các khu vực:

<img src="execute-mail-merge-with-regions-1.png" alt="mail_merge_with_regions_template" style="width:850px"/>

Và sau khi thực hiện Mail Merge với các khu vực:

<img src="execute-mail-merge-with-regions-2.png" alt="mail_merge_with_regions_execute" style="width:850px"/>

## Hạn chế của Mail Merge Với Các Khu Vực

Có một số điểm quan trọng mà bạn cần xem xét khi thực hiện một Mail Merge với các khu vực:

* Điểm bắt đầu *TableStart:Orders* và điểm kết thúc *TableEnd:Orders* cả hai cần phải ở trong cùng một hàng hoặc ô. Ví dụ: nếu bạn bắt đầu một vùng hợp nhất trong một ô của bảng, bạn phải kết thúc vùng hợp nhất trong cùng một hàng với ô đầu tiên.
  Tên trường hợp nhất phải khớp với tên cột trong của bạn DataTable. Trừ khi bạn chỉ định các trường được ánh xạ, Mail Merge với các vùng sẽ không thành công cho bất kỳ trường hợp nhất nào có tên khác với tên cột.
* Aspose.Words cho C++ chỉ hỗ trợ [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) và [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) nguồn dữ liệu dựa trên. Không giống như .NET và Java, C++ không có một nền tảng chéo được chấp nhận chung API để làm việc với cơ sở dữ liệu (như ADODB, ODBC, hoặc JDBC). Để làm việc với một nguồn dữ liệu cụ thể, bạn phải thực hiện [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) hoặc [IMailMergeDataSourceRoot](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasourceroot/) giao diện.

Nếu một trong những quy tắc này bị phá vỡ, bạn sẽ nhận được kết quả bất ngờ hoặc một ngoại lệ có thể bị ném.

{{% alert color="primary" %}}

Nếu bạn không sử dụng Mail Merge vùng, sau đó nó sẽ tương tự như Microsoft Word mail merge, và toàn bộ nội dung tài liệu sẽ được lặp lại cho mỗi bản ghi trong nguồn dữ liệu.

{{% /alert %}}

