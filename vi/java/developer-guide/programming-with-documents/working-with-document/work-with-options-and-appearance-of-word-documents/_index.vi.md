---
title: Tùy chọn và Hình dáng của Tài liệu từ
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Tùy chọn và Hình thức của Tài liệu từ Word
linktitle: Làm việc với Tùy chọn và Hình thức của Tài liệu từ Word
description: "Kiểm soát sự xuất hiện của các tài liệu Word trong khi tính đến sự khác biệt giữa các phiên bản Microsoft Word sử dụng Java."
type: docs
weight: 40
url: /vi/java/work-with-word-document-options-and-appearance/
---

Thỉnh thoảng bạn có thể cần thay đổi hình thức của một tài liệu, ví dụ như thiết lập các tùy chọn ngôn ngữ hoặc số dòng trên mỗi trang.Aspose.Words cung cấp khả năng điều khiển cách tài liệu sẽ được hiển thị cũng như một số tùy chọn bổ sung. Bài viết này mô tả những khả năng như vậy.

## Đặt tùy chọn hiển thị tài liệu

Bạn có thể kiểm soát cách một tài liệu sẽ được hiển thị trong Microsoft Word bằng lớp [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/). Ví dụ, bạn có thể thiết lập giá trị phóng to tài liệu bằng thuộc tính [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent), hay chế độ xem bằng thuộc tính [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType).

Mã ví dụ sau cho thấy cách đảm bảo một tài liệu được hiển thị ở chế độ 50% khi mở trong Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tập tin mẫu cho ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 không ghi bất kỳ tỷ lệ phóng đại nào vào tài liệu và không còn thiết lập độ phóng đại mặc định từ giá trị được viết vào tài liệu, thay vào đó dường như sử dụng tỷ lệ phóng đại của tài liệu đã mở cuối cùng.

{{% /alert %}}

## Cài đặt tùy chọn hiển thị trang

Nếu bạn muốn đặt số ký tự trên mỗi dòng, dùng thuộc tính [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine). Bạn cũng có thể đặt số dòng trên mỗi trang cho tài liệu Word – dùng thuộc tính [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) để nhận được hoặc đặt số dòng trên mỗi trang trong lưới tài liệu.

{{% alert color="primary" %}}

Trong Microsoft Word, bạn có thể đặt cùng các tham số bằng cách sử dụng tab "Mạng Lưới Tài liệu" trong hộp thoại "Thiết lập Trang" chỉ khi hỗ trợ ngôn ngữ Á được cài đặt.

{{% /alert %}}

Mã ví dụ sau cho thấy cách đặt số ký tự trên mỗi dòng và số dòng trên mỗi trang cho một Microsoft Word tài liệu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Thiết lập ngôn ngữ tùy chọn

Hiển thị một tài liệu trong Microsoft Word phụ thuộc vào ngôn ngữ nào được đặt làm mặc định cho tài liệu này. Nếu không có ngôn ngữ nào được đặt ở mặc định, Microsoft Word lấy thông tin từ hộp thoại "Đặt ưu tiên ngôn ngữ văn phòng", mà ví dụ như có thể tìm thấy dưới "File → Options → Language" trong Microsoft Word 2019.

Với Aspose.Words bạn cũng có thể thiết lập ngôn ngữ ưa thích bằng cách sử dụng lớp [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/). Và cũng hãy lưu ý rằng để hiển thị tài liệu của bạn chính xác, nó cần được đặt phiên bản Microsoft Word phù hợp với quá trình tải tài liệu – điều này có thể được thực hiện bằng cách sử dụng thuộc tính [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion).

{{% alert color="primary" %}}

Nếu tài liệu được tạo ra Aspose.Words của bạn không hiển thị như mong đợi, hãy kiểm tra các giá trị **LanguagePreferences** và **MswVersion** và điều chỉnh chúng nếu cần thiết để phù hợp với cài đặt cho phiên bản Microsoft Word của bạn.

{{% /alert %}}

Mã ví dụ sau cho thấy cách thêm tiếng Nhật vào các ngôn ngữ chỉnh sửa:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

Mã đoạn ví dụ cho thấy cách thiết lập tiếng Nga là ngôn ngữ chỉnh sửa mặc định:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Tối ưu hóa một tài liệu cho một phiên bản từ khóa cụ thể

Phương pháp [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) cho phép tối ưu hóa nội dung tài liệu cũng như hành vi mặc định Aspose.Words đối với một phiên bản cụ thể của Microsoft Word. Bạn có thể sử dụng phương pháp này để ngăn Microsoft Word hiển thị thanh "Compatibility Mode" khi tài liệu tải. Lưu ý rằng bạn cũng có thể cần thiết lập thuộc tính `Compliance` thành Iso29500_2008_Transitional hoặc cao hơn.

Mẫu mã sau cho thấy cách tối ưu hóa nội dung tài liệu cho Microsoft Word năm 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
