---
title: So sánh tài liệu trong Java
second_title: Aspose.Words cho Java
articleTitle: So sánh tài liệu
linktitle: So sánh tài liệu
type: docs
description: "So sánh hai tài liệu ở bất kỳ định dạng nào được hỗ trợ và hiển thị những thay đổi nội dung. Bạn có thể áp dụng các tùy chọn nâng cao khi so sánh bằng cách sử dụng Java."
weight: 60
url: /vi/java/compare-documents/
timestamp: 2024-01-27-14-07-04
---

So sánh tài liệu là một quy trình xác định sự thay đổi giữa hai tài liệu và chứa đựng những thay đổi đó dưới dạng sửa đổi. Quá trình này so sánh bất kỳ hai tài liệu nào, bao gồm cả các phiên bản của một tài liệu cụ thể, sau đó sự thay đổi giữa cả hai tài liệu sẽ được hiển thị như những sửa đổi trong tài liệu đầu tiên.

Phương pháp so sánh đạt được bằng cách so sánh các từ ở mức ký tự hoặc ở mức từ. Nếu một từ chứa sự thay đổi ít nhất một ký tự, trong kết quả, sự khác biệt sẽ được hiển thị là sự thay đổi của toàn bộ từ, không phải một ký tự. Quá trình so sánh đó là một công việc thông thường trong ngành pháp lý và tài chính.

Thay vì tìm kiếm bằng tay sự khác biệt giữa các tài liệu hoặc giữa các phiên bản của chúng, bạn có thể sử dụng Aspose.Words để so sánh các tài liệu và nhận được thay đổi nội dung trong định dạng, tiêu đề/ chân trang, bảng và nhiều hơn nữa.

Bài viết này giải thích cách so sánh các tài liệu và cách xác định các thuộc tính so sánh nâng cao.

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể so sánh hai tài liệu trực tuyến bằng cách sử dụng [Document comparison online](https://products.aspose.app/words/comparison) công cụ.

Lưu ý phương pháp so sánh được mô tả bên dưới được sử dụng trong công cụ này để đảm bảo kết quả bằng nhau. Vì vậy, bạn sẽ nhận được kết quả tương tự ngay cả khi sử dụng công cụ so sánh trực tuyến hoặc bằng cách sử dụng phương pháp so sánh trong Aspose.Words.

{{% /alert %}}

## Hạn chế và Định dạng Tập tin Hỗ trợ {#limitations-and-supported-file-formats}

So sánh tài liệu là một tính năng rất phức tạp. Có nhiều phần khác nhau của kết hợp nội dung cần được phân tích để nhận ra tất cả những khác biệt. Lý do cho sự phức tạp này là bởi Aspose.Words nhằm mục đích có cùng kết quả so sánh với thuật toán so sánh Microsoft Word.

Hạn chế chung cho hai tài liệu được so sánh là chúng không thể có các sửa đổi trước khi gọi phương thức so sánh, hạn chế này tồn tại trong Microsoft Word.

{{% alert color="primary" %}}

Lưu ý là bạn có thể so sánh bất kỳ hai tài liệu nào trong [supported file formats](/words/java/supported-document-formats/). Về cơ bản, bạn có thể so sánh các đối tượng tài liệu và thậm chí tạo ra những đối tượng đó từ đầu mà không cần định dạng cụ thể nào.

{{% /alert %}}

## So sánh Hai Tài liệu {#compare-two-documents}

Khi so sánh các tài liệu thì sự khác nhau của tài liệu sau với tài liệu trước được thể hiện dưới dạng sửa đổi cho tài liệu trước đó. Khi bạn sửa đổi một tài liệu, mỗi chỉnh sửa sẽ có phiên bản riêng sau khi chạy phương pháp so sánh.

Aspose.Words cho phép bạn xác định sự khác biệt của tài liệu bằng phương pháp [Compare](https://reference.aspose.com/words/java/com.aspose.words/document/#compare-com.aspose.words.Document-java.lang.String-java.util.Date) – điều này tương tự như tính năng so sánh tài liệu Microsoft Word. Nó cho phép bạn kiểm tra các tài liệu hoặc phiên bản tài liệu để tìm sự khác nhau và thay đổi, bao gồm những thay đổi định dạng như thay đổi phông chữ, khoảng cách thay đổi, thêm từ và đoạn.

Sau khi so sánh, các tài liệu có thể được xác định là bằng nhau hay không bằng nhau. Các tài liệu "bằng nhau" có nghĩa là phương pháp so sánh không thể biểu diễn những thay đổi như là sửa đổi. Điều này có nghĩa là cả văn bản tài liệu và định dạng văn bản đều giống nhau. Nhưng có thể có những khác biệt khác giữa các tài liệu. Ví dụ, Microsoft Word chỉ hỗ trợ phiên bản định dạng cho kiểu, và bạn không thể đại diện cho việc chèn/xóa kiểu. Vì vậy các tài liệu có thể có một bộ kiểu khác nhau và phương pháp **Compare** vẫn tạo ra không có bản sửa đổi.

Ví dụ sau cho thấy cách kiểm tra hai tài liệu có bằng nhau hay không

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-wordDocumentsAreEqual.java" >}}

Mã ví dụ sau cho thấy cách áp dụng phương pháp `Compare` vào hai tài liệu đơn giản:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-caseWhenDocumentHasRevisions.java" >}}

## Chỉ định Tùy chọn so sánh nâng cao {#specify-advanced-comparing-properties}

Có rất nhiều thuộc tính khác nhau của lớp [CompareOptions](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/) mà bạn có thể áp dụng khi bạn muốn so sánh các tài liệu.

Ví dụ như Aspose.Words cho phép bạn bỏ qua những thay đổi được thực hiện trong một hoạt động so sánh đối với một số loại đối tượng nhất định bên trong tài liệu gốc. Bạn có thể chọn thuộc tính phù hợp cho kiểu đối tượng, chẳng hạn như [IgnoreHeadersAndFooters](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreHeadersAndFooters), [IgnoreFormatting](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreFormatting), [IgnoreComments](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getIgnoreComments), và những cái khác bằng cách đặt chúng thành "true".

Ngoài ra, Aspose.Words cung cấp thuộc tính [Granularity](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getGranularity) mà bạn có thể chỉ định để theo dõi thay đổi bằng ký tự hay từ.

Một thuộc tính khác là lựa chọn tài liệu nào để hiển thị những thay đổi so sánh. Ví dụ, hộp thoại "So sánh tài liệu" trong Microsoft Word có tùy chọn "Hiển thị thay đổi trong" - điều này cũng ảnh hưởng đến kết quả so sánh. Aspose.Words cung cấp thuộc tính [Target](https://reference.aspose.com/words/java/com.aspose.words/compareoptions/#getTarget) để đáp ứng mục đích này.

Mã ví dụ sau cho thấy cách đặt các thuộc tính so sánh nâng cao:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-CompareTwoWordDocuments-AdvancedComparingProperties.java" >}}
