---
title: Áp Dụng Định dạng Tùy chỉnh Cho Các Trường trong C++
second_title: Aspose.Words cho C++
articleTitle: Áp Dụng Định Dạng Tùy chỉnh Cho Các Trường
linktitle: Áp Dụng Định Dạng Tùy chỉnh Cho Các Trường
description: "Định dạng và đánh giá kết quả trường bằng C++."
type: docs
weight: 40
url: /vi/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Đôi khi người dùng cần áp dụng định dạng tùy chỉnh cho các trường. Trong bài viết này, chúng tôi sẽ xem xét một vài ví dụ về cách điều này có thể được thực hiện.

Để tìm hiểu thêm các tùy chọn, hãy xem danh sách đầy đủ các thuộc tính cho từng loại trường trong lớp tương ứng trong [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Cách Áp dụng Định Dạng Tùy chỉnh Cho Kết Quả Trường

Aspose.Words cung cấp API để định dạng tùy chỉnh kết quả của trường. Bạn có thể triển khai giao diện [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) để kiểm soát cách định dạng kết quả trường. Bạn có thể áp dụng công tắc định dạng số, tức là \# "#.## ", công tắc định dạng ngày / giờ, tức là \@ "dd.MM.yyyy", và chuyển đổi định dạng số, tức là \* Thứ tự.

Ví dụ mã sau đây cho thấy cách áp dụng định dạng tùy chỉnh cho kết quả trường:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## Cách đánh giá điều kiện `IF`

Nếu bạn muốn đánh giá điều kiện `IF` sau mail merge, bạn có thể sử dụng phương thức [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) ngay lập tức trả về kết quả đánh giá biểu thức.

Ví dụ mã sau đây cho thấy cách sử dụng phương pháp này:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Cách Áp dụng Định Dạng Tùy chỉnh Cho Trường Thời gian

Theo mặc định Aspose.Words cập nhật `TIME` trường với văn hóa hiện tại định dạng thời gian ngắn. Nếu bạn muốn định dạng trường `TIME` theo yêu cầu của mình, bạn có thể đạt được điều này bằng cách triển khai giao diện [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

Các ví dụ mã sau đây cho thấy cách áp dụng định dạng tùy chỉnh cho trường `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
