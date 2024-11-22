---
title: Dọn Dẹp Trước hoặc Trong một Mail Merge Hoạt động
second_title: Aspose.Words cho C++
articleTitle: Dọn Dẹp Trước hoặc Trong một Mail Merge Hoạt động
linktitle: Dọn Dẹp Trước hoặc Trong một Mail Merge Hoạt động
type: docs
description: "Áp dụng các tùy chọn làm sạch và xóa khác nhau chẳng hạn như xóa các trường hợp nhất trước khi thực hiện Mail Merge hoạt động hoặc loại bỏ các khu vực không sử dụng trong một Mail Merge hoạt động."
keywords: "cleanup options Mail Merge c#"
weight: 10
url: /vi/cpp/clean-up-before-or-during-mail-merge/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words cho phép bạn áp dụng các tùy chọn làm sạch và xóa khác nhau chẳng hạn như xóa các trường hợp nhất trước khi thực hiện Mail Merge hoạt động hoặc loại bỏ các khu vực không sử dụng trong một Mail Merge hoạt động. Phần này sẽ giải thích cách xóa các trường đã hợp nhất và cách thiết lập tùy chọn xóa.

## Xóa Các Trường Đã Hợp Nhất

Khi bạn đang sử dụng một số mẫu dài do người khác tạo, bạn có thể muốn xóa tất cả các trường hợp nhất đã tồn tại trong mẫu đó trước khi thực hiện Mail Merge hoạt động. Bạn có thể sử dụng [DeleteFields](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/deletefields/) phương pháp nếu bạn muốn xóa tất cả các trường hợp nhất từ một tài liệu mà không thực hiện một Mail Merge hoạt động. Phương pháp này không bị ảnh hưởng bởi bất kỳ tùy chọn loại bỏ nào của [CleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/get_cleanupoptions/) thuộc tính và thực thi nó chỉ loại bỏ các trường được hợp nhất, không phải bất kỳ trường chứa hoặc đoạn trống nào.

Ví dụ mã sau đây cho thấy cách xóa tất cả các trường hợp nhất khỏi mẫu của bạn mà không cần thực thi Mail Merge hoạt động:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-DeleteFields.h" >}}

## Thiết lập một `Removing` Tùy chọn

Aspose.Words cho phép bạn xóa các trường, vùng và đoạn chưa được hợp nhất khỏi mẫu trong một Mail Merge hoạt động bằng cách sử dụng các tùy chọn loại bỏ.

Sử dụng **CleanupOptions** tài sản cùng với [MailMergeCleanupOptions](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmergecleanupoptions/) liệt kê để thiết lập tùy chọn loại bỏ. Chỉ định mục nào bạn muốn xóa bằng cách chọn các tùy chọn sau (bạn có thể kết hợp nhiều mục):

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

Nếu bạn đang hợp nhất dữ liệu bằng các nguồn dữ liệu riêng biệt thì các tùy chọn xóa đó sẽ chỉ được bật với cuộc gọi cuối cùng của Mail Merge thực hiện phương thức.

{{% /alert %}}

### Xóa Các Đoạn Văn Trống

Một đoạn chỉ bao gồm các trường hợp nhất sẽ trống khi Mail Merge quá trình loại bỏ tất cả các trường hợp nhất của nó là chưa được hợp nhất. Những đoạn trống đó có thể thêm không gian không mong muốn và thay đổi cách báo cáo được tạo sẽ trông như thế nào. Bạn có thể phải đối mặt với hai tình huống với các đoạn văn trong một Mail Merge hoạt động:

1. Các Mail Merge trường sẽ được hợp nhất với dữ liệu trống.
2. Trường hợp nhất không được sử dụng và sẽ bị xóa.

Trong cả hai tình huống **RemoveEmptyParagraphs** tùy chọn sẽ tự động xóa các đoạn trống khỏi tài liệu. Ngoài ra, nó sẽ loại bỏ `TableStart` và TableEnd hợp nhất các trường nếu phần còn lại của đoạn văn trống.

Ví dụ mã sau đây cho thấy cách xóa các đoạn trống:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Mail Merge and Reporting-Working with CleanupOptions-RemoveEmptyParagraphs.h" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Xóa Các Trường Không Sử Dụng

Aspose.Words cho phép bạn loại bỏ bất kỳ không sử dụng Mail Merge các lĩnh vực bằng cách gán các **RemoveUnusedFields** cờ đến **CleanupOptions**. Tùy chọn này sẽ xóa các trường hợp nhất không có dữ liệu tương ứng trong nguồn dữ liệu.

Ví dụ mã sau đây cho thấy làm thế nào để loại bỏ bất kỳ trường hợp nhất không sử dụng từ một tài liệu tự động trong một Mail Merge hoạt động:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveUnusedFields.cpp" >}}

### Xóa Các Trường Chứa

Một trường hợp nhất có thể được chứa trong một trường khác chẳng hạn như một **IF** trường hoặc trường công thức. Xóa trường bên ngoài này khi trường hợp nhất được hợp nhất hoặc xóa khỏi tài liệu.

Ví dụ mã sau đây cho thấy cách xóa các trường có chứa các trường hợp nhất khỏi tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveContainingFields.cpp" >}}

**Lưu ý**

### Xóa Các Hàng Bảng Trống

Aspose.Words cho phép bạn xóa các hàng bảng trống bằng cách gán **RemoveEmptyTableRows** cờ đến **CleanupOptions**. Tùy chọn này sẽ xóa các hàng bảng có chứa các trường hợp nhất trống.

Ví dụ mã sau đây cho thấy cách xóa các hàng bảng trống có chứa Mail Merge khu vực từ một tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Mail-Merge-MailMergeCleanUp-RemoveEmptyTableRows.cpp" >}}
