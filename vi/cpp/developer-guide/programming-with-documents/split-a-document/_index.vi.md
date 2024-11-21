---
title: Chia Một Tài liệu trong C++
second_title: Aspose.Words cho C++
articleTitle: Chia Một Tài liệu
linktitle: Chia Một Tài liệu
description: "Chia tài liệu thành nhiều tệp bằng C++. Sử dụng tính năng tách để phân chia tài liệu một cách hiệu quả theo tiêu đề hoặc phần, cũng như theo trang hoặc theo phạm vi trang."
type: docs
weight: 90
url: /vi/cpp/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* hoặc *split a document* là quá trình phá vỡ một tài liệu lớn thành một số lượng lớn các tệp nhỏ hơn. Có nhiều lý do để chia một tập tin. Ví dụ: bạn chỉ cần một số trang từ một tài liệu cụ thể chứ không phải toàn bộ. Hoặc vì lý do riêng tư, bạn chỉ muốn chia sẻ một số phần của tài liệu với những người khác. Với tính năng tách, bạn chỉ có thể nhận được các phần cần thiết của tài liệu và thực hiện các hành động cần thiết với chúng, ví dụ, để đánh dấu, lưu hoặc gửi.

Aspose.Words cung cấp cho bạn một cách hiệu quả để chia một tài liệu thành nhiều tài liệu theo tiêu đề hoặc phần. Bạn cũng có thể chia tài liệu theo trang hoặc theo phạm vi trang. Cả hai tùy chọn tách sẽ được mô tả trong bài viết này.

Để chia tài liệu thành các tệp nhỏ hơn bằng Aspose.Words, bạn cần làm theo các bước sau:

1. Tải tài liệu ở bất kỳ định dạng được hỗ trợ nào.
1. Chia tài liệu.
1. Lưu các tài liệu đầu ra.

Sau khi bạn chia một tài liệu, bạn sẽ có thể mở tất cả các tài liệu đầu ra sẽ bắt đầu với các trang, văn bản cần thiết, v. v.

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng này với chúng tôi [Miễn phí trực tuyến tài liệu splitter](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Chia Một Tài liệu Bằng Cách sử dụng Các Tiêu chí khác nhau {#split-a-document-using-different-criteria}

Aspose.Words cho phép bạn chia tài liệu EPUB hoặc HTML thành các chương theo các tiêu chí khác nhau. Trong quá trình này, kiểu dáng và bố cục của tài liệu nguồn được bảo tồn cho các tài liệu đầu ra.

Bạn có thể chỉ định các tiêu chí bằng cách sử dụng liệt kê [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/). Vì vậy bạn có thể chia tài liệu thành các chương bằng một trong các tiêu chí sau hoặc kết hợp nhiều tiêu chí với nhau:

- tiêu đề đoạn văn,
- phần phá vỡ,
- ngắt cột,
- ngắt trang.

Khi lưu đầu ra thành HTML, Aspose.Words lưu từng chương riêng lẻ dưới dạng tệp HTML riêng biệt. Do đó, tài liệu sẽ được chia thành nhiều tệp HTML. Khi lưu đầu ra vào EPUB, Aspose.Words lưu kết quả trong một tệp EPUB bất kể giá trị `DocumentSplitCriteria` bạn đã sử dụng. Vì vậy, việc sử dụng DocumentSplitCriteria cho EPUB tài liệu chỉ ảnh hưởng đến sự xuất hiện của nội dung của chúng trong các ứng dụng đọc: nội dung sẽ được chia thành các chương và tài liệu sẽ không còn xuất hiện liên tục.

{{% alert color="primary" %}}

Bạn không thể chia tài liệu bằng thuộc tính [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/) khi lưu sang định dạng MHTML.

{{% /alert %}}

Trong phần này, chúng tôi chỉ xem xét một số tiêu chí phân chia có thể.

### Chia Một Tài liệu Theo Phần {#split-a-document-by-sections}

Aspose.Words cũng cho phép bạn sử dụng ngắt phần để chia tài liệu và lưu chúng vào HTML. Với mục đích này, hãy sử dụng **SectionBreak** làm **DocumentSplitCriteria**:

Ví dụ mã sau đây cho thấy cách chia tài liệu thành các phần nhỏ hơn theo phần ngắt (không sử dụng thuộc tính `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## Chia Theo Trang {#splitting-by-pages}

Bạn cũng có thể chia một trang tài liệu theo trang, theo phạm vi trang hoặc bắt đầu với các số trang được chỉ định. Trong trường hợp như vậy, phương thức [ExtractPages](https://reference.aspose.com/words/cpp/aspose.words/document/extractpages/) có thể thực hiện công việc.

Phần này mô tả một số trường hợp sử dụng chia tài liệu theo phân trang bằng cách sử dụng lớp [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) và phương thức **ExtractPages**.

{{% alert color="primary" %}}

Bạn có thể sử dụng bất kỳ [định dạng đầu ra được hỗ trợ bởi Aspose.Words](/words/cpp/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Do nhiều sắc thái xuất hiện trong khi giảm số lượng trang, một kết hợp đầy đủ với bố cục Microsoft Word là một nhiệm vụ khá phức tạp. Do đó, tùy thuộc vào độ phức tạp của tài liệu, có thể có sự khác biệt nhỏ trong bố cục tài liệu kết quả từ tài liệu gốc.

{{% /alert %}}

### Chia Một Trang Tài liệu theo Trang {#split-a-document-page-by-page}

Aspose.Words cho phép bạn chia một trang tài liệu nhiều trang theo từng trang.

Ví dụ mã sau đây cho thấy cách chia tài liệu và lưu từng trang dưới dạng tài liệu riêng biệt:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.h" >}}

### Chia Một Tài liệu Theo Phạm Vi Trang {#split-a-document-by-page-ranges}

Aspose.Words cho phép chia tài liệu nhiều trang theo phạm vi trang. Bạn có thể chia một tệp thành nhiều tệp với nhiều phạm vi trang khác nhau hoặc chỉ cần chọn một phạm vi và chỉ lưu phần này của tài liệu nguồn. Lưu ý rằng bạn có thể chọn phạm vi trang theo số trang tối đa và tối thiểu của tài liệu.

Ví dụ mã sau đây cho thấy cách chia tài liệu thành các phần nhỏ hơn theo phạm vi trang với các chỉ mục bắt đầu và kết thúc cụ thể:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.h" >}}

## Hợp Nhất Tài liệu Chia Với Tài liệu khác {#merge-the-split-document-with-another-file}

Aspose.Words cho phép bạn hợp nhất tài liệu phân chia đầu ra với một tài liệu khác để tạo thành một tài liệu mới. Điều này có thể được gọi là hợp nhất tài liệu.

Ví dụ mã sau đây cho thấy cách hợp nhất một tài liệu chia với một tài liệu khác:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
