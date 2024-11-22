---
title: Đơn giản Mail Merge Hoạt động trong C++
second_title: Aspose.Words cho C++
articleTitle: Đơn giản Mail Merge Hoạt động
linktitle: Đơn giản Mail Merge Hoạt động
type: docs
description: "Một đơn giản Mail Merge được sử dụng để điền vào Mail Merge các trường bên trong mẫu của bạn với dữ liệu cần thiết từ nguồn dữ liệu của bạn-nó tương tự như cổ điển Mail Merge trong Microsoft Word. Thêm một hoặc nhiều trường hợp nhất trong mẫu của bạn và sau đó thực hiện đơn giản Mail Merge hoạt động."
keywords: "how to execute Mail Merge c++"
weight: 10
url: /vi/cpp/simple-mail-merge-operation/
timestamp: 2024-09-24-14-35-44
---

Một đơn giản Mail Merge được sử dụng để điền vào Mail Merge các trường bên trong mẫu của bạn với dữ liệu cần thiết từ nguồn dữ liệu của bạn (biểu diễn bảng đơn). Vì vậy, nó tương tự như cổ điển Mail Merge trong Microsoft Word.

Bạn có thể thêm một hoặc nhiều trường hợp nhất trong mẫu của mình và sau đó thực hiện đơn giản Mail Merge hoạt động. Bạn nên sử dụng nó nếu mẫu của bạn không chứa bất kỳ vùng hợp nhất nào.

Hạn chế chính của việc sử dụng loại này là toàn bộ nội dung tài liệu sẽ được lặp lại cho mỗi bản ghi trong nguồn dữ liệu.

## Làm Thế Nào Để Thực hiện Một Đơn Giản Mail Merge Hoạt động

Khi mẫu của bạn đã sẵn sàng, bạn có thể bắt đầu thực hiện đơn giản Mail Merge hoạt động. Aspose.Words cho phép bạn thực hiện một đơn giản Mail Merge hoạt động sử dụng khác nhau [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) các phương thức chấp nhận các đối tượng dữ liệu khác nhau làm nguồn dữ liệu.

Ví dụ mã sau đây cho thấy cách thực hiện đơn giản Mail Merge hoạt động bằng cách sử dụng một trong các [Execute](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/execute/) phương pháp:

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "simple-mail-merge.h" >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi thực hiện đơn giản mail merge:

<img src="execute-simple-mail-merge-1.png" alt="simple_mail_merge_template-aspose-words-cpp" style="width:300px"/>

Và sau khi thực hiện đơn giản mail merge:

<img src="execute-simple-mail-merge-2.png" alt="execute_simple_mail_merge-aspose-words-cpp" style="width:300px"/>

## Cách Tạo Nhiều Tài Liệu Đã Hợp Nhất

Trong Aspose.Words, tiêu chuẩn Mail Merge hoạt động chỉ lấp đầy một tài liệu duy nhất với nội dung từ nguồn dữ liệu của bạn. Vì vậy, bạn sẽ cần phải thực hiện Mail Merge hoạt động nhiều lần để tạo ra một vài tài liệu sáp nhập như là một đầu ra.

Ví dụ mã sau đây cho thấy cách tạo một vài tài liệu được hợp nhất trong một Mail Merge hoạt động với [SQLiteCpp](https://github.com/SRombauts/SQLiteCpp):

{{< gist "aspose-words-gists" "3435df005db9907ec9ba3a6b777ae6fb" "multiple-documents-mail-merge.h" >}}
