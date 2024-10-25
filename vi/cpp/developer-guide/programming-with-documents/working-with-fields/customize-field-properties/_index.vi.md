---
title: Tùy Chỉnh Thuộc Tính Trường trong C++
second_title: Aspose.Words cho C++
articleTitle: Tùy Chỉnh Thuộc Tính Trường
linktitle: Tùy Chỉnh Thuộc Tính Trường
description: "Tìm hiểu cách tùy chỉnh thuộc tính trường trong C++. Đổi tên các trường hợp nhất hoặc nhận kết quả cho các trường không có nút phân tách trong C++."
type: docs
weight: 27
url: /vi/cpp/customize-field-properties/
---

Aspose.Words cung cấp khả năng tương tác theo chương trình với các thuộc tính trường khác nhau. Trong bài viết này, chúng tôi sẽ xem xét một vài ví dụ để bạn hiểu nguyên tắc cơ bản của việc làm việc với các thuộc tính trường. Bạn có thể xem danh sách đầy đủ các thuộc tính cho từng loại trường trong lớp tương ứng trong [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Cập Nhật Thuộc Tính Trường

Đôi khi người dùng cần thay đổi giá trị của một thuộc tính trường. Ví dụ: cập nhật thuộc tính [AuthorName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/get_authorname/) của trường `AUTHOR` hoặc thay đổi thuộc tính [FieldName](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/get_fieldname/) của trường `MERGEFIELD`.

Ví dụ mã sau đây cho thấy cách đổi tên các trường hợp nhất trong Tài Liệu Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RenameMergeFields-RenameMergeFields.cpp" >}}

## Kết Quả Hiển Thị Trường

Aspose.Words cung cấp một thuộc tính để có được kết quả của trường cho các trường không có nút phân cách trường. Chúng tôi gọi đây là "kết quả giả" hoặc kết quả hiển thị; Microsoft Word hiển thị nó trong tài liệu bằng cách tính toán giá trị của trường một cách nhanh chóng, nhưng không có giá trị nào như vậy trong mô hình tài liệu.

Ví dụ mã sau đây cho thấy việc sử dụng thuộc tính [DisplayResult](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_displayresult/):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldDisplayResults-FieldDisplayResults.cpp" >}}