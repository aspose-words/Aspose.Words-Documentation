---
title: So sánh các tài liệu trong C#
second_title: Aspose.Words cho .NET
articleTitle: So sánh tài liệu
linktitle: So sánh tài liệu
description: "So sánh hai tài liệu ở bất kỳ định dạng được hỗ trợ nào và hiển thị các thay đổi nội dung bằng C#. Bạn có thể áp dụng các tùy chọn nâng cao khi so sánh."
type: docs
weight: 60
url: /vi/net/compare-documents/
timestamp: 2024-01-27-14-07-04
---

So sánh tài liệu là một quá trình xác định các thay đổi giữa hai tài liệu và chứa các thay đổi đó dưới dạng bản sửa đổi. Quá trình này so sánh hai tài liệu bất kỳ, bao gồm các phiên bản của một tài liệu cụ thể, sau đó những thay đổi giữa cả hai tài liệu sẽ được hiển thị dưới dạng bản sửa đổi trong tài liệu đầu tiên.

Phương pháp so sánh đạt được bằng cách so sánh các từ ở cấp độ ký tự hoặc cấp độ từ. Nếu một từ có sự thay đổi của ít nhất một ký tự thì trong kết quả, sự khác biệt sẽ được hiển thị dưới dạng thay đổi của toàn bộ từ chứ không phải một ký tự. Quá trình so sánh này là một nhiệm vụ thông thường trong ngành pháp lý và tài chính.

Thay vì tìm kiếm sự khác biệt giữa các tài liệu hoặc giữa các phiên bản khác nhau của chúng theo cách thủ công, bạn có thể sử dụng Aspose.Words để so sánh các tài liệu và nhận các thay đổi về nội dung trong định dạng, đầu trang/chân trang, bảng, v.v.

Bài viết này giải thích cách so sánh tài liệu và cách chỉ định các thuộc tính so sánh nâng cao.

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể so sánh trực tuyến hai tài liệu bằng cách sử dụng công cụ [So sánh tài liệu trực tuyến](https://products.aspose.app/words/comparison).

Lưu ý rằng phương pháp so sánh được mô tả bên dưới được sử dụng trong công cụ này để đảm bảo nhận được kết quả như nhau. Vì vậy, bạn sẽ nhận được kết quả tương tự ngay cả khi sử dụng công cụ so sánh trực tuyến hoặc sử dụng phương pháp so sánh trong Aspose.Words.

{{% /alert %}}

## Hạn chế và định dạng tệp được hỗ trợ {#limitations-and-supported-file-formats}

So sánh tài liệu là một tính năng rất phức tạp. Có nhiều phần khác nhau của sự kết hợp nội dung cần được phân tích để nhận ra tất cả sự khác biệt. Lý do cho sự phức tạp này là do Aspose.Words hướng tới mục tiêu đạt được kết quả so sánh giống như thuật toán so sánh Microsoft Word.

Hạn chế chung đối với hai tài liệu được so sánh là chúng không được có bản sửa đổi trước khi gọi phương thức so sánh vì hạn chế này tồn tại trong Microsoft Word.

{{% alert color="primary" %}}

Lưu ý rằng bạn có thể so sánh hai tài liệu bất kỳ trong [Định dạng tài liệu được hỗ trợ](/words/vi/net/supported-document-formats/). Về cơ bản, bạn có thể so sánh các đối tượng tài liệu và thậm chí bạn có thể tạo các đối tượng đó từ đầu mà không cần bất kỳ định dạng cụ thể nào.

{{% /alert %}}

## So sánh hai tài liệu {#compare-two-documents}

Khi bạn so sánh các tài liệu, những điểm khác biệt giữa tài liệu sau và tài liệu trước sẽ hiển thị dưới dạng bản sửa đổi so với tài liệu trước. Khi bạn sửa đổi một tài liệu, mỗi lần chỉnh sửa sẽ có bản sửa đổi riêng sau khi chạy phương thức so sánh.

Aspose.Words cho phép bạn xác định sự khác biệt của tài liệu bằng phương pháp [Compare](https://reference.aspose.com/words/net/aspose.words/document/compare/#compare/) - phương pháp này tương tự như tính năng so sánh tài liệu Microsoft Word. Nó cho phép bạn kiểm tra tài liệu hoặc phiên bản tài liệu để tìm ra sự khác biệt và thay đổi, bao gồm sửa đổi định dạng như thay đổi phông chữ, thay đổi khoảng cách, thêm từ và đoạn văn.

Qua so sánh có thể xác định các tài liệu bằng nhau hoặc không bằng nhau. Thuật ngữ tài liệu "bằng nhau" có nghĩa là phương pháp so sánh không thể biểu thị các thay đổi dưới dạng sửa đổi. Điều này có nghĩa là cả văn bản tài liệu và định dạng văn bản đều giống nhau. Nhưng có thể có sự khác biệt khác giữa các tài liệu. Ví dụ: Microsoft Word chỉ hỗ trợ các bản sửa đổi định dạng cho kiểu và bạn không thể biểu thị việc chèn/xóa kiểu. Vì vậy, tài liệu có thể có một bộ kiểu khác nhau và phương pháp **Compare** vẫn không tạo ra bản sửa đổi nào.

Ví dụ mã sau đây cho biết cách kiểm tra xem hai tài liệu có bằng nhau hay không:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-CompareDocument-CompareForEqual.cs" >}}

Ví dụ về mã sau đây cho thấy cách áp dụng phương pháp `Compare` cho hai tài liệu một cách đơn giản:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-ApplyCompareTwoDocuments.cs" >}}

## Chỉ định các tùy chọn so sánh nâng cao {#specify-advanced-comparing-properties}

Có nhiều thuộc tính khác nhau của lớp [CompareOptions](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/) mà bạn có thể áp dụng khi muốn so sánh tài liệu.

Ví dụ: Aspose.Words cho phép bạn bỏ qua những thay đổi được thực hiện trong quá trình so sánh đối với một số loại đối tượng nhất định trong tài liệu gốc. Bạn có thể chọn thuộc tính thích hợp cho loại đối tượng, chẳng hạn như [IgnoreHeadersAndFooters](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/ignorecomments/) và các thuộc tính khác bằng cách đặt chúng thành "true".

Ngoài ra, Aspose.Words còn cung cấp thuộc tính [Granularity](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/granularity/) mà bạn có thể chỉ định theo dõi các thay đổi theo ký tự hay theo từ.

Một thuộc tính chung khác là sự lựa chọn trong đó tài liệu sẽ hiển thị các thay đổi so sánh. Ví dụ: "Hộp thoại so sánh tài liệu" trong Microsoft Word có tùy chọn "Hiển thị các thay đổi trong" – điều này cũng ảnh hưởng đến kết quả so sánh. Aspose.Words cung cấp thuộc tính [Target](https://reference.aspose.com/words/net/aspose.words.comparing/compareoptions/target/) phục vụ mục đích này.

Ví dụ mã sau đây cho thấy cách đặt thuộc tính so sánh nâng cao:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-CompareDocument-SetAdvancedComparingProperties.cs" >}}
