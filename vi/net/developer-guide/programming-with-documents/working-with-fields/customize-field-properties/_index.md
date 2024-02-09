---
title: Tùy chỉnh thuộc tính trường trong C#
second_title: Aspose.Words cho .NET
articleTitle: Tùy chỉnh thuộc tính trường
linktitle: Tùy chỉnh thuộc tính trường
description: "Tìm hiểu cách tùy chỉnh thuộc tính trường trong C#. Đổi tên các trường hợp nhất hoặc lấy kết quả cho các trường không có nút phân cách trong .NET."
type: docs
weight: 27
url: /vi/net/customize-field-properties/
---

Aspose.Words cung cấp khả năng tương tác theo chương trình với các thuộc tính trường khác nhau. Trong bài viết này, chúng ta sẽ xem xét một vài ví dụ để bạn hiểu nguyên tắc cơ bản khi làm việc với các thuộc tính trường. Bạn có thể xem danh sách đầy đủ các thuộc tính cho từng loại trường trong lớp tương ứng trong [Không gian tên trường](https://reference.aspose.com/words/net/aspose.words.fields/).

## Cập nhật thuộc tính trường

Đôi khi người dùng cần thay đổi giá trị của thuộc tính trường. Ví dụ: cập nhật thuộc tính [AuthorName](https://reference.aspose.com/words/net/aspose.words.fields/fieldauthor/authorname/) của trường `AUTHOR` hoặc thay đổi thuộc tính [FieldName](https://reference.aspose.com/words/net/aspose.words.fields/fieldmergefield/fieldname/) của trường `MERGEFIELD`.

Ví dụ mã sau đây cho biết cách đổi tên các trường phối trong tài liệu Word:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cs" >}}

## Kết quả hiển thị trường

Aspose.Words cung cấp thuộc tính để lấy kết quả của trường cho các trường không có nút phân tách trường. Chúng tôi gọi đây là "kết quả giả" hoặc kết quả hiển thị; MS Word hiển thị nó trong tài liệu bằng cách tính toán giá trị của trường một cách nhanh chóng, nhưng không có giá trị như vậy trong mô hình tài liệu.

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính [DisplayResult](https://reference.aspose.com/words/net/aspose.words.fields/field/displayresult/):

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cs" >}}
