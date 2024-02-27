---
title: Áp dụng định dạng tùy chỉnh cho các trường trong C#
second_title: Aspose.Words cho .NET
articleTitle: Áp dụng định dạng tùy chỉnh cho các trường
linktitle: Áp dụng định dạng tùy chỉnh cho các trường
description: "Định dạng và đánh giá kết quả trường bằng C#."
type: docs
weight: 40
url: /vi/net/applying-custom-formatting-to-fields/
---

Đôi khi người dùng cần áp dụng định dạng tùy chỉnh cho các trường. Trong bài viết này, chúng ta sẽ xem xét một vài ví dụ về cách thực hiện điều này.

Để tìm hiểu thêm các tùy chọn, hãy xem danh sách đầy đủ các thuộc tính cho từng loại trường trong lớp tương ứng trong [Không gian tên trường](https://reference.aspose.com/words/net/aspose.words.fields/).

## Cách áp dụng định dạng tùy chỉnh cho kết quả trường

Aspose.Words cung cấp API để định dạng tùy chỉnh kết quả của trường. Bạn có thể triển khai giao diện [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) để kiểm soát cách định dạng kết quả trường. Bạn có thể áp dụng chuyển đổi định dạng số, tức là \# "#.##", chuyển đổi định dạng ngày/giờ, tức là \@ "dd.MM.yyyy" và chuyển đổi định dạng số, tức là \* Thứ tự.

Ví dụ mã sau đây cho biết cách áp dụng định dạng tùy chỉnh cho kết quả trường:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Cách đánh giá tình trạng `IF`

Nếu bạn muốn đánh giá điều kiện `IF` sau mail merge, bạn có thể sử dụng phương thức [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) trả về ngay kết quả đánh giá biểu thức.

Ví dụ mã sau đây cho thấy cách sử dụng phương pháp này:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Cách áp dụng định dạng tùy chỉnh cho trường thời gian

Theo mặc định, Aspose.Words cập nhật trường `TIME` với định dạng thời gian ngắn của văn hóa hiện tại. Chúng tôi đã phát hiện ra rằng có sự khác biệt giữa định dạng Microsoft Word và định dạng .NET/Windows, cũng như giữa các phiên bản .NET Framework khác nhau. Nếu bạn muốn định dạng trường `TIME` theo yêu cầu của mình, bạn có thể đạt được điều này bằng cách triển khai giao diện [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/).

Các ví dụ về mã sau đây cho biết cách áp dụng định dạng tùy chỉnh cho trường `TIME`:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
