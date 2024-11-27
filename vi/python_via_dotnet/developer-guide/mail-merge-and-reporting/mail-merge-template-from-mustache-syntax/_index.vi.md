---
title: Mail Merge Mustache Cú Pháp
second_title: Aspose.Words cho Python via .NET
articleTitle: Mail Merge Mẫu từ Mustache Cú Pháp
linktitle: Mail Merge Mẫu từ Mustache Cú Pháp
type: docs
description: "Tạo mẫu với cú pháp Mustache bằng cách sử dụng Python. Cú pháp Mustache là tùy chọn duy nhất để sử dụng với các mẫu không chứa các trường (HTML hoặc TXT). Với các mẫu Word, bạn có hai tùy chọn: trường hoặc cú pháp Mustache."
keywords: "mail merge template mustache syntax python"
weight: 40
url: /vi/python-net/mail-merge-template-from-mustache-syntax/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words cho phép bạn tạo các mẫu với cú pháp mustache ngoài các mẫu quen thuộc. A Mustache là một biến thể thay thế của cú pháp mẫu bao gồm các tên thẻ được bao quanh bởi `{{ }}` và được hỗ trợ bởi một đối tượng mô hình chứa dữ liệu cho mẫu.

Cú pháp Mustache là tùy chọn duy nhất để sử dụng với các mẫu không chứa các trường, chẳng hạn như các mẫu HTML và TXT. Với các mẫu Word, bạn có hai tùy chọn để sử dụng các trường hoặc cú pháp Mustache.

Cú pháp Mustache hỗ trợ thẻ *foreach*, đây là một giải pháp thay thế cho việc sử dụng Mail Merge với các vùng. Vì vậy, lợi ích là bạn có thể sử dụng cú pháp mustache nếu vì lý do nào đó bạn không thể hoặc đơn giản là bạn không muốn sử dụng các trường hợp nhất và hợp nhất các khu vực.

Bạn cũng có thể kết hợp các trường Mail Merge với một số trường bổ sung bằng cách sử dụng thẻ *foreach* như trong hình bên dưới.

<img src="mustache-syntax.png" alt="mustache_syntax" style="width:800px"/>

## Tạo mẫu Mustache

Điểm quan trọng đầu tiên cần làm rõ là Mustache không phải là công cụ tạo khuôn mẫu. Mustache là một biến thể cú pháp khác có sẵn cho bất kỳ mẫu nào trong [load format](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) được hỗ trợ bởi Aspose.Words. Do đó, bạn có thể tạo một mẫu như vậy cả theo chương trình và thông qua giao diện, bạn chỉ cần bao gồm một số cú pháp nhất định và tuân thủ đặc tả Mustache.

Giả sử rằng bạn cần gửi cùng một email đến 50 người nhận để cá nhân hóa lời chào với tên tương ứng của họ. Bạn có thể thay thế tên của người nhận bằng một số trình giữ chỗ như sau:

> Dear {{FirstName}}
>
> I hereby...

Câu hỏi ở đây: làm thế nào bạn có thể tạo 50 email từ 1 mẫu Mustache duy nhất? Để trả lời điều đó, bạn cần thực hiện Mail Merge với các vùng để điền vào dấu ngoặc nhọn cho giữ chỗ trong mẫu với dữ liệu thực tế và tạo tài liệu đầu ra.

<img src="mustache-template.png" alt="mustache_template" style="width:650px"/>

{{% alert color="primary" %}}

Như bạn nhận thấy từ ví dụ trên, trong Mustache, bạn cần sử dụng niềng răng xoăn cho trình giữ chỗ trông giống như mustache khi bạn xoay niềng răng xoăn 90 độ theo chiều kim đồng hồ.

{{% /alert %}}

## Làm việc với Cú pháp Mustache

Mustache được biểu diễn dưới dạng một thứ tự không logic vì nó thiếu bất kỳ câu lệnh luồng điều khiển cụ thể nào như *for* vòng lặp và *if* và *else* điều kiện. Nhưng bạn có thể sử dụng phần danh sách xử lý thẻ và lambdas để đạt được đánh giá và lặp có điều kiện. Vì vậy, để bao gồm cú pháp Mustache trong thao tác Mail Merge, bạn sẽ cần sử dụng thuộc tính [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/) và đặt giá trị của nó thành *True*.

## Sử dụng Các Trường `IF` Để Làm Cho Mail Merge Thông minh

Aspose.Words cho phép bạn sử dụng các trường Mail Merge và các thẻ Mustache với câu lệnh `IF`. Các trường `IF` có thể được sử dụng trong bất kỳ tài liệu Mail Merge nào để ngăn chặn các khoảng trắng và dấu phẩy không mong muốn nếu một trường trống.

Công thức trường `IF` được hiển thị bên dưới:

**{ IF [Condition] [Display Result 1] [Display Result 2] }**

Ở đây, Điều kiện có thể là trường hợp nhất hoặc thẻ Mustache.

Ví dụ: bạn có thể sử dụng các trường `IF` nếu bạn cần chèn "của anh ấy"," của cô ấy"," anh ấy "hoặc" cô ấy " tùy thuộc vào giới tính như sau:

**{ IF { MERGEFIELD Gender } = "MALE" "văn bản đúng" " văn bản sai"}**

**{ IF "{{ GENDER }}" = "MALE" "văn bản đúng" " văn bản sai"}**

Ví dụ mã sau đây cho thấy cách thực hiện thao tác Mail Merge với các trường Mustache tags và `IF`:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Mail Merge and Reporting-base_operations-UseOfifelseMustacheSyntax.py" >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi áp dụng thuộc tính [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-1.png" alt="mustache_if_field" style="width:800px"/>

Và sau khi áp dụng thuộc tính [use_non_merge_fields](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/use_non_merge_fields/):

<img src="mustache-if-field-2.png" alt="mustache-if-field-2.png" style="width:800px"/>
