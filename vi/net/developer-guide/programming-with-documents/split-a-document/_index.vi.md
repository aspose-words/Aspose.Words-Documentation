---
title: Tách một tài liệu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Tách một tài liệu
linktitle: Tách một tài liệu
description: "Chia tài liệu thành nhiều tệp bằng C#. Sử dụng tính năng phân chia để phân chia tài liệu theo tiêu đề hoặc phần một cách hiệu quả, cũng như theo trang hoặc theo phạm vi trang."
type: docs
weight: 90
url: /vi/net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* hay *tách tài liệu* là quá trình chia một tài liệu lớn thành nhiều tệp nhỏ hơn. Có nhiều lý do khác nhau để chia nhỏ một tập tin. Ví dụ: bạn chỉ cần một số trang từ một tài liệu cụ thể chứ không cần toàn bộ tài liệu. Hoặc vì lý do riêng tư, bạn chỉ muốn chia sẻ một số phần của tài liệu với người khác. Với tính năng chia tách, bạn chỉ có thể lấy những phần được yêu cầu của tài liệu và thực hiện các hành động cần thiết với chúng, chẳng hạn như đánh dấu, lưu hoặc gửi.

Aspose.Words cung cấp cho bạn một cách hiệu quả để chia một tài liệu thành nhiều tài liệu theo tiêu đề hoặc phần. Bạn cũng có thể chia tài liệu theo trang hoặc theo phạm vi trang. Cả hai tùy chọn chia tách sẽ được mô tả trong bài viết này.

Để chia tài liệu thành các tệp nhỏ hơn bằng Aspose.Words, bạn cần làm theo các bước sau:

1. Tải tài liệu ở bất kỳ định dạng nào được hỗ trợ.
1. Chia tài liệu.
1. Lưu tài liệu đầu ra.

Sau khi chia tài liệu, bạn sẽ có thể mở tất cả các tài liệu đầu ra bắt đầu bằng các trang, văn bản, v.v. được yêu cầu.

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng này với [Bộ chia tài liệu trực tuyến miễn phí](https://products.aspose.app/words/splitter) của chúng tôi.

{{% /alert %}}

## Tách tài liệu bằng các tiêu chí khác nhau {#split-a-document-using-different-criteria}

Aspose.Words cho phép bạn chia tài liệu EPUB hoặc HTML thành các chương theo nhiều tiêu chí khác nhau. Trong quá trình này, kiểu dáng và bố cục của tài liệu nguồn được giữ nguyên cho tài liệu đầu ra.

Bạn có thể chỉ định tiêu chí bằng cách sử dụng bảng liệt kê [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/documentsplitcriteria/). Vì vậy, bạn có thể chia tài liệu thành các chương bằng cách sử dụng một trong các tiêu chí sau hoặc kết hợp nhiều tiêu chí lại với nhau:

- đoạn tiêu đề,
- Phá vỡ phần,
- ngắt cột,
- ngắt trang.

Khi lưu đầu ra thành HTML, Aspose.Words lưu từng chương riêng lẻ dưới dạng tệp HTML riêng biệt. Kết quả là tài liệu sẽ được chia thành nhiều tệp HTML. Khi lưu kết quả đầu ra vào EPUB, Aspose.Words lưu kết quả vào một tệp EPUB duy nhất bất kể giá trị `DocumentSplitCriteria` bạn đã sử dụng. Vì vậy, việc sử dụng DocumentSplitCriteria cho tài liệu EPUB chỉ ảnh hưởng đến sự xuất hiện nội dung của chúng trong ứng dụng đọc: nội dung sẽ được chia thành các chương và tài liệu sẽ không còn xuất hiện liên tục nữa.

{{% alert color="primary" %}}

Bạn không thể chia tài liệu bằng thuộc tính [DocumentSplitCriteria](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitcriteria/) khi lưu sang định dạng MHTML.

{{% /alert %}}

Trong phần này, chúng tôi chỉ xem xét một số tiêu chí phân chia có thể có.

### Tách tài liệu theo tiêu đề {#split-a-document-by-headings}

Để chia tài liệu thành các chương theo tiêu đề, hãy sử dụng giá trị **HeadingParagraph** của thuộc tính **DocumentSplitCriteria**.

Nếu bạn cần chia tài liệu theo cấp độ cụ thể của các đoạn tiêu đề, chẳng hạn như tiêu đề 1, 2 và 3, hãy sử dụng thuộc tính [DocumentSplitHeadingLevel](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentsplitheadinglevel/). Đầu ra sẽ được chia thành các đoạn được định dạng với cấp độ tiêu đề được chỉ định.

Ví dụ mã sau đây cho thấy cách chia tài liệu thành các phần nhỏ hơn theo tiêu đề:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentByHeadingsHtml.cs" >}}

Xin lưu ý rằng đối với tiêu chí này, Aspose.Words chỉ hỗ trợ lưu sang định dạng HTML khi chia tách.

Khi lưu vào EPUB, tài liệu không được chia thành nhiều tệp và sẽ chỉ có một tệp đầu ra.

### Tách tài liệu theo phần {#split-a-document-by-sections}

Aspose.Words cũng cho phép bạn sử dụng ngắt phần để chia nhỏ tài liệu và lưu chúng vào HTML. Với mục đích này, hãy sử dụng **SectionBreak** làm **DocumentSplitCriteria**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Loading-and-Saving-ConvertDocumentToHtml-SplitDocumentBySectionsHtml.cs" >}}

Có một cách khác để chia tài liệu nguồn thành nhiều tài liệu đầu ra và bạn có thể chọn bất kỳ định dạng đầu ra nào được Aspose.Words hỗ trợ.

Ví dụ về mã sau đây cho biết cách chia tài liệu thành các phần nhỏ hơn bằng dấu ngắt phần (không sử dụng thuộc tính `DocumentSplitCriteria`):

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cs" >}}

## Chia theo trang {#splitting-by-pages}

Bạn cũng có thể chia trang tài liệu theo trang, theo phạm vi trang hoặc bắt đầu bằng số trang được chỉ định. Trong trường hợp đó, phương pháp [ExtractPages](https://reference.aspose.com/words/net/aspose.words/document/extractpages/) có thể thực hiện được công việc này.

Phần này mô tả một số trường hợp sử dụng việc chia tài liệu theo phân trang bằng cách sử dụng lớp [Document](https://reference.aspose.com/words/net/aspose.words/document/) và phương pháp **ExtractPages**.

{{% alert color="primary" %}}

Bạn có thể sử dụng bất kỳ [Định dạng tài liệu được hỗ trợ](/words/vi/net/supported-document-formats/) nào.

{{% /alert %}}

{{% alert color="primary" %}}

Do có nhiều sắc thái xuất hiện trong khi giảm số lượng trang nên việc khớp hoàn toàn với bố cục Microsoft Word là một công việc khá phức tạp. Do đó, tùy thuộc vào độ phức tạp của tài liệu, có thể có một chút khác biệt trong bố cục tài liệu thu được so với tài liệu gốc.

{{% /alert %}}

### Chia trang tài liệu theo trang {#split-a-document-page-by-page}

Aspose.Words cho phép bạn chia trang tài liệu nhiều trang theo trang.

Ví dụ mã sau đây cho thấy cách chia tài liệu và lưu từng trang dưới dạng tài liệu riêng biệt:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.cs" >}}

### Tách tài liệu theo phạm vi trang {#split-a-document-by-page-ranges}

Aspose.Words cho phép chia tài liệu nhiều trang theo phạm vi trang. Bạn có thể chia một tệp thành nhiều tệp với nhiều phạm vi trang khác nhau hoặc chỉ chọn một phạm vi và chỉ lưu phần này của tài liệu nguồn. Lưu ý rằng bạn có thể chọn phạm vi trang theo số trang tối đa và tối thiểu của tài liệu.

Ví dụ về mã sau đây cho thấy cách chia tài liệu thành các phần nhỏ hơn theo phạm vi trang với chỉ mục bắt đầu và kết thúc cụ thể:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.cs" >}}

## Tùy chọn gọi lại để lưu tài liệu {#callback-option-for-saving-a-document}

Bạn có thể sử dụng thuộc tính [DocumentPartSavingCallback](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/documentpartsavingcallback/) để kiểm soát cách Aspose.Words lưu các phần tài liệu khi tài liệu này được xuất sang định dạng HTML. Thuộc tính này cho phép bạn đổi tên các tệp đầu ra hoặc thậm chí chuyển hướng chúng thành các luồng tùy chỉnh.

Xin lưu ý rằng lệnh gọi lại này không hữu ích khi lưu vào EPUB vì tất cả các phần đầu ra phải được lưu vào một vùng chứa duy nhất – tệp .epub. Vì vậy, chuyển hướng luồng không được hỗ trợ và hiệu ứng đổi tên không hiển thị do các tệp được đổi tên bên trong vùng chứa.

## Hợp nhất tài liệu được tách với tài liệu khác {#merge-the-split-document-with-another-file}

Aspose.Words cho phép bạn hợp nhất tài liệu tách đầu ra với tài liệu khác để tạo thành tài liệu mới. Điều này có thể được gọi là hợp nhất tài liệu.

Ví dụ mã sau đây cho thấy cách hợp nhất một tài liệu được chia tách với một tài liệu khác:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cs" >}}
