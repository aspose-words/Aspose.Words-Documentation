---
title: So Sánh Tài liệu trong C++
second_title: Aspose.Words cho C++
articleTitle: So Sánh Tài Liệu
linktitle: So Sánh Tài Liệu
type: docs
description: "So sánh hai tài liệu ở bất kỳ định dạng được hỗ trợ nào và hiển thị các thay đổi nội dung bằng C++. Bạn có thể áp dụng các tùy chọn nâng cao khi so sánh."
weight: 60
url: /vi/cpp/compare-documents/
---

So sánh tài liệu là một quá trình xác định các thay đổi giữa hai tài liệu và chứa các thay đổi dưới dạng sửa đổi. Quá trình này so sánh hai tài liệu bất kỳ, bao gồm các phiên bản của một tài liệu cụ thể, sau đó những thay đổi giữa cả hai tài liệu sẽ được hiển thị dưới dạng sửa đổi trong tài liệu đầu tiên.

Phương pháp so sánh đạt được bằng cách so sánh các từ ở cấp độ ký tự hoặc cấp độ từ. Nếu một từ chứa thay đổi ít nhất một ký tự, trong kết quả, sự khác biệt sẽ được hiển thị dưới dạng thay đổi của toàn bộ từ chứ không phải ký tự. Quá trình so sánh này là một nhiệm vụ thông thường trong các ngành pháp lý và tài chính.

Thay vì tìm kiếm thủ công sự khác biệt giữa các tài liệu hoặc giữa các phiên bản khác nhau của chúng, bạn có thể sử dụng Aspose.Words để so sánh tài liệu và nhận các thay đổi nội dung về định dạng, tiêu đề/chân trang, bảng và hơn thế nữa.

Bài viết này giải thích cách so sánh tài liệu và cách chỉ định thuộc tính so sánh nâng cao.

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể so sánh hai tài liệu trực tuyến bằng cách sử dụng [So sánh tài liệu trực tuyến](https://products.aspose.app/words/comparison) công cụ.

Lưu ý rằng phương pháp so sánh, được mô tả dưới đây, được sử dụng trong công cụ này để đảm bảo nhận được kết quả bằng nhau. Vì vậy, bạn sẽ nhận được kết quả tương tự ngay cả khi sử dụng công cụ so sánh trực tuyến hoặc bằng cách sử dụng phương pháp so sánh trong Aspose.Words.

{{% /alert %}}

## Hạn chế Và Định dạng Tệp Được Hỗ trợ {#limitations-and-supported-file-formats}

So sánh tài liệu là một tính năng rất phức tạp. Có nhiều phần khác nhau của sự kết hợp nội dung cần được phân tích để nhận ra tất cả sự khác biệt. Lý do cho sự phức tạp này là do Aspose.Words nhằm mục đích nhận được kết quả so sánh tương tự như thuật toán so sánh Microsoft Word.

Giới hạn chung cho hai tài liệu được so sánh là chúng không được có sửa đổi trước khi gọi phương thức so sánh vì giới hạn này tồn tại trong Microsoft Word.

{{% alert color="primary" %}}

Lưu ý rằng bạn có thể so sánh bất kỳ hai tài liệu trong [các định dạng tệp được hỗ trợ](/words/cpp/supported-document-formats/). Bạn có thể so sánh các đối tượng tài liệu và thậm chí bạn có thể tạo các đối tượng đó từ đầu mà không cần có bất kỳ định dạng cụ thể nào.

{{% /alert %}}

## So Sánh Hai Tài Liệu {#compare-two-documents}

Khi bạn so sánh các tài liệu, sự khác biệt của tài liệu sau từ tài liệu trước hiển thị dưới dạng sửa đổi cho tài liệu trước. Khi bạn sửa đổi một tài liệu, mỗi chỉnh sửa sẽ có bản sửa đổi riêng sau khi chạy phương thức so sánh.

Aspose.Words cho phép bạn xác định sự khác biệt của tài liệu bằng phương thức [Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/) – điều này tương tự như tính năng so sánh tài liệu Microsoft Word. Nó cho phép bạn kiểm tra các tài liệu hoặc phiên bản tài liệu để tìm sự khác biệt và thay đổi, bao gồm các sửa đổi định dạng như thay đổi phông chữ, thay đổi khoảng cách, bổ sung các từ và đoạn văn.

Kết quả của việc so sánh, các tài liệu có thể được xác định là bằng hoặc không bằng nhau. Thuật ngữ tài liệu" bình đẳng " có nghĩa là phương pháp so sánh không thể biểu diễn các thay đổi dưới dạng sửa đổi. Điều này có nghĩa là cả định dạng văn bản tài liệu và văn bản đều giống nhau. Nhưng có thể có sự khác biệt khác giữa các tài liệu. Ví dụ: Microsoft Word chỉ hỗ trợ sửa đổi định dạng cho kiểu và bạn không thể biểu diễn chèn/xóa kiểu. Vì vậy, các tài liệu có thể có một tập hợp các kiểu khác nhau và phương thức **Compare** vẫn không tạo ra bản sửa đổi.

Ví dụ mã sau đây cho thấy cách kiểm tra xem hai tài liệu có bằng nhau hay không:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

Ví dụ mã sau đây cho thấy cách áp dụng phương thức `Compare` cho hai tài liệu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## Chỉ Định Tùy Chọn So Sánh Nâng Cao {#specify-advanced-comparing-properties}

Có nhiều thuộc tính khác nhau của lớp [CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/) mà bạn có thể áp dụng khi muốn so sánh tài liệu.

Ví dụ: Aspose.Words cho phép bạn bỏ qua các thay đổi được thực hiện trong thao tác so sánh đối với một số loại đối tượng nhất định trong tài liệu gốc. Bạn có thể chọn thuộc tính thích hợp cho loại đối tượng, chẳng hạn như [IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), và những người khác bằng cách đặt chúng thành "đúng".

Ngoài ra, Aspose.Words cung cấp thuộc tính [Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/) mà bạn có thể chỉ định theo dõi các thay đổi theo ký tự hay theo từ.

Một thuộc tính phổ biến khác là sự lựa chọn trong đó tài liệu để hiển thị các thay đổi so sánh. Ví dụ: "So sánh hộp thoại tài liệu" trong Microsoft Word có tùy chọn "Hiển thị các thay đổi trong" – điều này cũng ảnh hưởng đến kết quả so sánh. Aspose.Words cung cấp thuộc tính [Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/) phục vụ mục đích này.

Ví dụ mã sau đây cho thấy cách đặt các thuộc tính so sánh nâng cao:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
