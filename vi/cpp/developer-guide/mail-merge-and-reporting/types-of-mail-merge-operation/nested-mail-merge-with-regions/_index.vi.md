---
title: Lồng nhau Mail Merge Với Các Khu vực trong C++
second_title: Aspose.Words cho C++
articleTitle: Lồng nhau Mail Merge Với Các Khu Vực
linktitle: Lồng nhau Mail Merge Với Các Khu Vực
type: docs
description: "Thực hiện một Mail Merge hoạt động với các khu vực lồng nhau bằng cách sử dụng C++. Hợp nhất lồng nhau là một tính năng cho phép bạn hợp nhất dữ liệu phân cấp từ nguồn dữ liệu của mình vào mẫu hợp nhất của bạn."
keywords: "mail merge with nested regions c++"
weight: 30
url: /vi/cpp/nested-mail-merge-with-regions/
timestamp: 2024-09-24-14-35-44
---

Trong một số trường hợp, bạn có thể cần sử dụng lồng nhau Mail Merge với các khu vực. Hợp nhất lồng nhau là một tính năng cho phép bạn hợp nhất dữ liệu phân cấp từ nguồn dữ liệu của mình vào mẫu hợp nhất để dễ dàng điền vào tài liệu của bạn. Về cơ bản, dữ liệu phân cấp được biểu diễn dưới dạng một tập hợp các mục dữ liệu và các mối quan hệ phân cấp mô tả cách các mục dữ liệu có liên quan với nhau (một mục dữ liệu là cha mẹ của một mục khác).

Aspose.Words cho phép bạn thực hiện một Mail Merge hoạt động với các khu vực lồng nhau. Bạn có thể sử dụng tính năng này nếu bạn có nguồn dữ liệu được sắp xếp thành cấu trúc giống như cây và bạn muốn thực thi Mail Merge hoạt động để điền vào một mẫu với dữ liệu phân cấp.

{{% alert color="primary" %}}

Lồng nhau Mail Merge chỉ có liên quan khi thực hiện một Mail Merge với các khu vực.

{{% /alert %}}

## Lồng Nhau Là Gì Mail Merge

Các Mail Merge vùng được gọi là lồng nhau nếu bạn có hai hoặc nhiều hơn Mail Merge các khu vực mà một trong số chúng nằm bên trong khu vực kia ở dạng phân cấp. Lưu ý rằng mỗi vùng chứa dữ liệu từ một bảng.

Ví dụ phổ biến nhất về lồng nhau Mail Merge là một đơn đặt hàng có chứa một vài mục mà bạn cần liên kết nhiều bảng dữ liệu và trình bày thông tin trong một mẫu.

Hình dưới đây cho thấy hai khu vực lồng nhau trong đó *Order* Mail Merge khu vực là cha mẹ của *Item* Mail Merge khu vực.

<img src="nested-mail-merge-with-regions-1.png" alt="nested_mail_merge_with_regions" style="width:650px"/>

## Cách Xử lý Mail Merge Với Các Khu Vực Lồng Nhau

Dữ liệu được hợp nhất thành một mẫu có thể đến từ nhiều nguồn khác nhau, chủ yếu là cơ sở dữ liệu quan hệ hoặc XML tài liệu. Trong ví dụ của chúng tôi, chúng tôi sẽ sử dụng một [SQLite](https://www.sqlite.org/index.html) cơ sở dữ liệu để lưu trữ dữ liệu của chúng tôi và tải nó với triển khai nguồn dữ liệu tùy chỉnh.

Hình ảnh dưới đây cho thấy dữ liệu từ *Order* bảng được chuyển đến các vùng hợp nhất lồng nhau sẽ được liên kết với *Item* bảng, cũng như đầu ra được tạo trong quá trình hợp nhất hoạt động.

<img src="nested-mail-merge-with-regions-2.png" alt="mail_merge_with_nested_regions" style="width:650px"/>

Như bạn có thể thấy từ tài liệu đầu ra, mỗi đơn hàng từ **Order** bảng được chèn vào mẫu hợp nhất với tất cả các mục liên quan của đơn hàng từ **Item** bàn. Thứ tự tiếp theo sẽ được chèn cùng với các mặt hàng của họ cho đến khi tất cả các đơn đặt hàng và các mặt hàng được liệt kê. Thứ tự làm tổ Mail Merge với các vùng trong mẫu phải khớp với mối quan hệ dữ liệu giữa các bảng trong nguồn dữ liệu.

## Cách Tạo Quan hệ Dữ liệu Từ Nguồn Dữ Liệu Tùy Chỉnh

Thực hiện [IMailMergeDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/) giao diện để tạo các mối quan hệ trong cấu trúc cha-con của nguồn dữ liệu tùy chỉnh của bạn. Sử dụng [GetChildDataSource](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/imailmergedatasource/getchilddatasource/) phương pháp trả về dữ liệu con có liên quan của hồ sơ cha mẹ hiện tại.

Ví dụ mã sau đây trình bày cách tạo hóa đơn bằng cách sử dụng lồng nhau Mail Merge với các khu vực từ [SQLite](https://www.sqlite.org/index.html) cơ sở dữ liệu với [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "nested-mail-merge.h" >}}
