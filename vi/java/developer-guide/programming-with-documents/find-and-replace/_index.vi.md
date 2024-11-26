---
title: Tìm và thay thế trong Java
second_title: Aspose.Words cho Java
articleTitle: Tìm và Thay thế
linktitle: Tìm và Thay thế
type: docs
description: "Tìm một chuỗi hoặc mẫu biểu thức chính quy trong tài liệu của bạn và thay thế nó bằng văn bản bạn muốn sử dụng Java."
weight: 100
url: /vi/java/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Bạn có thể dễ dàng điều hướng trong tài liệu của mình bằng bàn phím và chuột nhưng nếu bạn có nhiều trang để cuộn qua, nó sẽ mất khá lâu để tìm văn bản cụ thể trong một tài liệu dài. Sẽ mất nhiều thời gian hơn khi bạn muốn thay thế những ký tự hoặc từ cụ thể mà bạn đã sử dụng trong tài liệu của mình. Tính năng "Tìm và thay thế" cho phép bạn tìm một chuỗi ký tự trong tài liệu và thay thế nó bằng một chuỗi ký tự khác.

Aspose.Words cho phép bạn tìm một chuỗi cụ thể hoặc mô hình biểu thức chính quy trong tài liệu của bạn và thay thế nó bằng một sự thay thế khác mà không cần cài đặt và sử dụng các ứng dụng bổ sung như Microsoft Word. Điều này sẽ giúp tăng tốc các tác vụ gõ và định dạng, có thể tiết kiệm cho bạn hàng giờ công việc.

Bài viết này giải thích cách áp dụng các thay thế chuỗi và biểu thức chính quy với sự hỗ trợ của các ký tự siêu.

## Các cách để tìm và thay thế {#ways-to-find-and-replace}

Aspose.Words cung cấp hai cách để thực hiện thao tác tìm và thay thế bằng cách sử dụng những điều sau đây:

1. *Thay thế chuỗi đơn giản* – để tìm và thay thế một chuỗi cụ thể bằng một chuỗi khác, bạn cần chỉ định một chuỗi tìm kiếm (các ký tự chữ số và chữ cái) sẽ được thay thế theo tất cả các lần xuất hiện với một chuỗi thay thế được chỉ định. Cả hai chuỗi này đều không được chứa các ký hiệu. Hãy lưu ý rằng so sánh chuỗi có thể nhạy cảm với chữ hoa và chữ thường hoặc bạn có thể không chắc về chính tả hoặc có một số cách đánh vần tương tự.
2. *Biểu thức chính quy* – để chỉ định một biểu thức chính quy để tìm kiếm các chuỗi khớp và thay thế chúng theo biểu thức chính quy của bạn. Chú ý rằng một từ được định nghĩa là chỉ bao gồm các ký tự chữ số và chữ cái. Nếu một sự thay thế được thực hiện với chỉ các từ nguyên bản trùng khớp và chuỗi đầu vào tình cờ chứa các ký hiệu, thì không có câu nào sẽ được tìm thấy.

Ngoài ra, bạn có thể sử dụng các ký tự đặc biệt với việc thay thế chuỗi đơn giản và biểu thức chính quy để chỉ định những khoảng dừng trong hoạt động tìm kiếm và thay thế.

Aspose.Words trình bày chức năng tìm và thay thế với [IReplacingCallBack](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/). Bạn có thể làm việc với nhiều tùy chọn trong quá trình tìm và thay thế bằng [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) lớp.

### Tìm và Thay thế Văn bản bằng Việc Thay thế Dây Đơn giản {#find-and-replace-text-using-simple-string-replacement}

Bạn có thể sử dụng một trong các phương pháp [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.lang.String-java.lang.String) để tìm hoặc thay thế một chuỗi cụ thể và trả về số lần thay thế đã được thực hiện. Trong trường hợp này, bạn có thể chỉ định một chuỗi để thay thế, một chuỗi sẽ thay thế tất cả các lần xuất hiện, liệu việc thay thế có nhạy cảm với chữ hoa hay không và liệu chỉ những từ cô lập mới bị ảnh hưởng.

Mã ví dụ sau cho thấy cách tìm chuỗi " _CustomerName_" và thay thế nó bằng chuỗi " *"James Bond"* ":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-SimpleStringReplacement.java" >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi áp dụng thay thế chuỗi đơn giản:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-java" style="width:600px"/>

Và sau khi áp dụng thay thế chuỗi đơn giản:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-java" style="width:600px"/>

### Tìm và Thay Thế Văn Bản Sử Dụng Bộ Quy Tắc Thường {#find-and-replace-text-using-regular-expressions}

Một biểu thức chính quy (regex) là một mẫu mô tả một chuỗi văn bản nhất định. Giả sử bạn muốn thay thế tất cả các lần xuất hiện của một từ với một lần xuất hiện từ duy nhất. Rồi bạn có thể áp dụng biểu thức chính quy sau để xác định mẫu từ hai từ: `([a-zA-Z]+) \1`.

Sử dụng phương thức khác [Replace](https://reference.aspose.com/words/java/com.aspose.words/range/#replace-java.util.regex.Pattern-java.lang.String) để tìm kiếm và thay thế các chuỗi ký tự cụ thể bằng cách đặt tham số `Regex` như một mẫu biểu thức chính quy để tìm các sự phù hợp.

Mã ví dụ sau cho thấy cách thay thế chuỗi phù hợp với mẫu biểu thức chính quy bằng chuỗi thay thế được chỉ định:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-UsingRegularExpression.java" >}}


Bạn có thể thấy sự khác biệt giữa tài liệu trước khi áp dụng thay thế chuỗi với biểu thức chính quy:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

Và sau khi áp dụng thay thế chuỗi với biểu thức chính quy là:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-java" style="width:600px"/>

### Tìm và Thay thế Chuỗi Sử dụng Hoặc Tạo Bằng Chữ Đặc Biệt {#find-and-replace-text-using-metacharacters}

Bạn có thể dùng ký tự thông dụng trong chuỗi tìm kiếm hoặc chuỗi thay thế nếu một văn bản cụ thể hay cụm từ được cấu thành từ nhiều đoạn văn, phần hoặc trang. Một số ký tự siêu ký bao gồm **&p** cho một đoạn ngắt, **&b** cho một phần ngắt, **&m** cho một trang ngắt, và **&l** cho một dòng ngắt.

{{% alert color="primary" %}}

Xin lưu ý ký tự siêu **&&** bằng với **&**. Ví dụ, nếu bạn cần tìm văn bản cho **&p** đó không phải là một đoạn ngắt, sau đó bạn có thể sử dụng **&&p**.

{{% /alert %}}

Mã ví dụ sau cho thấy cách thay thế văn bản với đoạn và ngắt trang:
{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextContaingMetaCharacters.java" >}}

## Tìm và thay thế chuỗi trong tiêu đề/xử lý của một tài liệu {#find-and-replace-string-in-header-or-footer-of-a-document}

Bạn có thể tìm và thay thế văn bản trong phần tiêu đề/lối chân của một tài liệu Word bằng cách sử dụng lớp [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/).

Mã ví dụ sau cho thấy cách thay thế văn bản của phần tiêu đề trong tài liệu của bạn:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInHeader.java" >}}


Bạn có thể nhận ra sự khác biệt giữa tài liệu trước khi áp dụng thay thế chuỗi tiêu đề:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Và sau khi áp dụng việc thay thế chuỗi tiêu đề:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-java" style="width:600px"/>

Mẫu mã để thay thế văn bản của phần chân trang trong tài liệu của bạn rất giống với ví dụ mã đầu trước đó. Cái duy nhất bạn cần làm là thay thế hai dòng sau đây:

{{< highlight java >}}
HeaderFooter header = headersFooters.get(HeaderFooterType.HEADER_PRIMARY);
header.getRange().replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Với các điều sau:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceTextInFooter.java" >}}


Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi áp dụng thay thế chuỗi chân đế:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

Và sau khi áp dụng các thay thế chuỗi chân trang:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-java" style="width:600px"/>

## Làm Ngơ Đối Với Văn bản Trong Tìm và Thay Thế {#ignore-text-during-find-and-replace}

Khi áp dụng chức năng tìm và thay thế, bạn có thể bỏ qua một số phân đoạn trong văn bản. Vậy, một số phần của văn bản có thể bị loại khỏi tìm kiếm và thay thế chỉ áp dụng cho các phần còn lại.

Aspose.Words cung cấp nhiều thuộc tính tìm và thay thế để bỏ qua văn bản như [IgnoreDeleted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreDeleted), [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes), [IgnoreFields](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFields), [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes) và [IgnoreInserted](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreInserted).

Mã ví dụ sau cho thấy cách bỏ qua văn bản bên trong các lần sửa đổi xóa:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-IgnoreText-IgnoreTextInsideDeleteRevisions.java" >}}

## Tuỳ chỉnh hoạt động Tìm và Thay thế {#customize-find-and-replace-operation}

Aspose.Words cung cấp nhiều các [properties](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) khác nhau để tìm và thay thế văn bản như áp dụng định dạng cụ thể với [ApplyFont](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyFont) và [ApplyParagraphFormats](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getApplyParagraphFormat) thuộc tính, sử dụng sự thay thế trong các mẫu thay thế với [UseSubstitutions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getUseSubstitutions) thuộc tính và những thứ khác.

Mảnh mã ví dụ sau cho thấy cách làm nổi bật một từ cụ thể trong tài liệu của bạn:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-CustomizeFindAndReplaceOperation.java" >}}


Aspose.Words cho phép bạn dùng giao diện [IReplacingCallback](https://reference.aspose.com/words/java/com.aspose.words/ireplacingcallback/) để tạo và gọi phương thức tùy chỉnh trong hoạt động thay thế. Bạn có thể có một số trường hợp sử dụng mà bạn cần tùy chỉnh hoạt động tìm kiếm và thay thế chẳng hạn như thay thế văn bản được chỉ định với biểu thức chính quy bằng các thẻ HTML, vì vậy cơ bản bạn sẽ áp dụng thay thế với chèn HTML.

Nếu bạn cần thay thế một chuỗi với thẻ HTML, hãy áp dụng **IReplacingCallback** giao diện để tùy chỉnh hoạt động tìm kiếm và thay thế để sự trùng hợp bắt đầu từ đầu của một chuỗi chạy với nút khớp của tài liệu của bạn. Hãy cung cấp một vài ví dụ về việc sử dụng **IReplacingCallback**.

Ví dụ mã sau cho thấy cách thay thế văn bản được chỉ định với HTML như sau:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-ReplaceWithHtml.java" >}}


Mã ví dụ sau cho thấy cách làm nổi bật số dương bằng màu xanh và số âm bằng màu đỏ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-NumberHighlightCallback.java" >}}

Ví dụ mã sau cho thấy cách thêm số dòng vào mỗi dòng":

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-find_replace-FindAndReplace-TestLineCounter.java" >}}
