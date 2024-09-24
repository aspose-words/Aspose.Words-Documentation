---
title: Chia một tài liệu ở Java
second_title: Aspose.Words cho Java
articleTitle: Chia một Tài liệu
linktitle: Chia một Tài liệu
description: "Aspose.Words cho Java cung cấp cho bạn một cách hiệu quả để chia một tài liệu thành nhiều tài liệu bằng các tiêu đề hoặc phần, cũng như trang hoặc phạm vi trang."
type: docs
weight: 90
url: /vi/java/split-a-document/
---

*Splitting* hoặc *chia một tài liệu* là quá trình chia một tài liệu lớn thành nhiều tập tin nhỏ hơn. Có nhiều lý do để chia một tập tin. Ví dụ, bạn chỉ cần một số trang từ một tài liệu cụ thể và không phải toàn bộ tài liệu. Hoặc vì lý do riêng tư bạn muốn chia sẻ chỉ một số phần của tài liệu với người khác. Với tính năng chia tách, bạn có thể chỉ lấy những phần cần thiết của tài liệu và thực hiện các hành động cần thiết với chúng, ví dụ đánh dấu, lưu hoặc gửi.

Aspose.Words cung cấp cho bạn một cách hiệu quả để chia một tài liệu thành nhiều tài liệu bằng tiêu đề hoặc phần. Bạn cũng có thể chia một tài liệu theo trang hoặc theo phạm vi trang. Cả hai tùy chọn chia cắt sẽ được mô tả trong bài viết này.

Để chia một tài liệu thành các tập tin nhỏ hơn bằng Aspose.Words thì bạn cần thực hiện các bước sau:

1. Mở tài liệu ở mọi định dạng được hỗ trợ.
1. Chia tài liệu.
1. Lưu các tài liệu đầu ra.

Sau khi bạn phân chia một tài liệu, bạn sẽ có thể mở tất cả các tài liệu đầu ra bắt đầu với trang cần thiết, văn bản,...

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng này với chúng tôi [Free online document splitter](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Chia một Tài liệu dùng các Tiêu chí khác nhau {#split-a-document-using-different-criteria}

Aspose.Words cho phép bạn chia các tài liệu EPUB hoặc HTML thành chương theo các tiêu chí khác nhau. Trong quá trình này, kiểu và bố cục của tài liệu nguồn được lưu giữ cho các tài liệu đầu ra.

Bạn có thể chỉ định tiêu chí bằng cách sử dụng [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) enumerations. Vậy bạn có thể chia một tài liệu thành các chương theo một trong những tiêu chí dưới đây hoặc kết hợp nhiều tiêu chí hơn với nhau:

- đoạn văn tiêu đề
- phần chia đoạn
- column break,
- ngắt trang.

Khi lưu đầu ra sang HTML, Aspose.Words lưu từng chương riêng thành một tập tin HTML. Kết quả, tài liệu sẽ được chia thành nhiều tập tin HTML. Khi lưu đầu ra sang EPUB, Aspose.Words lưu kết quả vào một tập tin EPUB duy nhất bất kể giá trị bạn đã sử dụng `DocumentSplitCriteria`. Vậy sử dụng DocumentSplitCriteria cho tài liệu EPUB chỉ ảnh hưởng đến sự xuất hiện của nội dung trong ứng dụng đọc: nội dung sẽ được chia thành các chương và tài liệu sẽ không còn xuất hiện liên tục nữa.

{{% alert color="primary" %}}

Bạn không thể chia một tài liệu bằng thuộc tính [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) khi lưu sang định dạng MHTML.

{{% /alert %}}

Trong phần này, chúng ta chỉ xét một số tiêu chí chia tách có thể xảy ra.

### Chia một tài liệu bằng các tiêu đề {#split-a-document-by-headings}

Để chia một tài liệu thành các chương bằng cách sử dụng tiêu đề, hãy dùng giá trị **HeadingParagraph** thuộc tính **DocumentSplitCriteria**.

Nếu bạn cần chia một tài liệu bằng một mức tiêu đề cụ thể của các đoạn văn, chẳng hạn như tiêu đề 1, 2 và 3, cũng sử dụng thuộc tính [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel). Kết quả sẽ được chia thành các đoạn văn được định dạng với mức tiêu đề được chỉ định.

Mã ví dụ sau đây cho thấy cách chia một tài liệu thành các phần nhỏ hơn bằng tiêu đề:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Vui lòng lưu ý rằng đối với tiêu chí này Aspose.Words chỉ hỗ trợ lưu về định dạng HTML khi chia tách.

Khi lưu sang định dạng EPUB, tài liệu không được chia tách thành nhiều tập tin và sẽ chỉ có một tập tin đầu ra.

### Chia một Tài liệu theo Phần {#split-a-document-by-sections}

Aspose.Words cũng cho phép bạn sử dụng các sự phân chia phần để chia nhỏ các tài liệu và lưu chúng thành HTML. Cho mục đích này, hãy sử dụng **SectionBreak** làm **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Có một cách khác để chia nguồn tài liệu thành nhiều tài liệu đầu ra và bạn có thể chọn bất kỳ định dạng đầu ra nào được hỗ trợ bởi Aspose.Words.

Mã ví dụ sau cho thấy cách chia một tài liệu thành các phần nhỏ hơn bằng các đoạn ngắt (không sử dụng thuộc tính `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Chia tách theo Trang {#splitting-by-pages}

Bạn cũng có thể chia một trang tài liệu theo từng trang, theo từng khoảng trang hoặc bắt đầu từ số trang được chỉ định. Trong trường hợp này, phương pháp [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) có thể thực hiện công việc.

Phần này mô tả một số trường hợp sử dụng của việc chia tài liệu bằng cách sử dụng lớp [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) và phương pháp **ExtractPages**.

{{% alert color="primary" %}}

Bạn có thể dùng bất kỳ [output format supported by Aspose.Words](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Do nhiều sắc thái xuất hiện khi giảm số trang, một sự khớp hoàn toàn với Microsoft Word bố cục là khá một nhiệm vụ phức tạp. "Do đó tùy thuộc vào độ phức tạp của văn bản, có thể có những khác biệt nhỏ trong bố cục văn bản từ văn bản gốc."

{{% /alert %}}

### Chia một trang tài liệu theo từng trang {#split-a-document-page-by-page}

Aspose.Words cho phép bạn chia một tài liệu nhiều trang thành từng trang riêng.

Mã ví dụ sau cho thấy cách chia một tài liệu và lưu mỗi trang là một tài liệu riêng:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Chia một tài liệu theo phạm vi trang {#split-a-document-by-page-ranges}

Aspose.Words cho phép phân chia tài liệu nhiều trang theo phạm vi trang. Bạn có thể chia một tệp thành nhiều tệp với các phạm vi trang khác nhau hoặc chỉ chọn một phạm vi và lưu phần này của tài liệu nguồn. Bạn hãy lưu ý rằng bạn có thể chọn một phạm vi trang theo số trang tối đa và tối thiểu của tài liệu.

Mã ví dụ sau cho thấy cách chia một tài liệu thành các phần nhỏ hơn bằng phạm vi trang với chỉ số bắt đầu và kết thúc cụ thể:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Tùy chọn callback để lưu tài liệu {#callback-option-for-saving-a-document}

Bạn có thể dùng thuộc tính [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) để kiểm soát cách mà Aspose.Words lưu trữ các phần của tài liệu khi tài liệu này xuất ra định dạng HTML. Tính năng này cho phép bạn đổi tên các tập tin đầu ra hoặc thậm chí chuyển hướng chúng vào các dòng tùy chỉnh.

Xin lưu ý rằng khi gọi lại không hữu ích khi lưu sang EPUB vì tất cả các phần đầu ra phải được lưu vào một thùng duy nhất -- tệp .epub. Vậy là chuyển hướng luồng không được hỗ trợ và hiệu ứng của việc đổi tên là không hiển thị vì các tập tin được đổi tên bên trong hộp chứa.

## Kết hợp tài liệu bị chia tách với một tài liệu khác {#merge-the-split-document-with-another-file}

Aspose.Words cho phép bạn kết hợp tài liệu phân chia đầu ra với một tài liệu khác để tạo thành một tài liệu mới. Đây có thể được gọi là hợp nhất tài liệu.

Mã ví dụ sau cho thấy cách kết hợp một tài liệu bị chia nhỏ với một tài liệu khác:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
