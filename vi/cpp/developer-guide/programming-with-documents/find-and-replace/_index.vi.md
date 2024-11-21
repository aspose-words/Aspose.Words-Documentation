---
title: Tìm Và Thay thế trong C++
second_title: Aspose.Words cho C++
articleTitle: Tìm Và Thay thế
linktitle: Tìm Và Thay thế
type: docs
description: "Tìm một chuỗi hoặc mẫu biểu thức chính quy trong tài liệu của bạn và thay thế nó bằng văn bản bạn muốn sử dụng C++."
weight: 100
url: /vi/cpp/find-and-replace/
timestamp: 2024-01-27-14-07-04
---

Bạn có thể dễ dàng điều hướng trong tài liệu của mình bằng bàn phím và chuột, nhưng nếu bạn có nhiều trang để cuộn qua, sẽ mất khá nhiều thời gian để tìm văn bản cụ thể trong một tài liệu dài. Sẽ tốn nhiều thời gian hơn khi bạn muốn thay thế một số ký tự hoặc từ nhất định mà bạn đã sử dụng trong tài liệu của mình. Chức năng" Tìm và thay thế " cho phép bạn tìm một chuỗi các ký tự trong tài liệu và thay thế nó bằng một chuỗi ký tự khác.

Aspose.Words cho phép bạn tìm một chuỗi cụ thể hoặc mẫu biểu thức chính quy trong tài liệu của mình và thay thế nó bằng một giải pháp thay thế mà không cần cài đặt và sử dụng các ứng dụng bổ sung như Microsoft Word. Điều này sẽ tăng tốc nhiều tác vụ đánh máy và định dạng, có khả năng giúp bạn tiết kiệm hàng giờ làm việc.

Bài viết này giải thích cách áp dụng thay thế chuỗi và biểu thức chính quy với sự hỗ trợ của các siêu ký tự.

## Cách Tìm Và Thay thế {#ways-to-find-and-replace}

Aspose.Words cung cấp hai cách để áp dụng thao tác tìm và thay thế bằng cách sử dụng các cách sau:

1. *Simple string replacement* – để tìm và thay thế một chuỗi cụ thể bằng một chuỗi khác, bạn cần chỉ định một chuỗi tìm kiếm (ký tự chữ và số) sẽ được thay thế theo tất cả các lần xuất hiện bằng một chuỗi thay thế khác được chỉ định. Cả hai chuỗi không được chứa ký hiệu. Hãy lưu ý rằng việc so sánh chuỗi có thể phân biệt chữ hoa chữ thường hoặc bạn có thể không chắc chắn về chính tả hoặc có một số cách viết tương tự.
2. *Regular expressions* – để chỉ định một biểu thức chính quy nhằm tìm chuỗi khớp chính xác và thay thế chúng theo biểu thức chính quy của bạn. Lưu ý rằng một từ được định nghĩa là chỉ bao gồm các ký tự chữ và số. Nếu thực hiện thay thế chỉ với các từ nguyên vẹn được khớp và chuỗi đầu vào tình cờ chứa các ký hiệu, thì sẽ không tìm thấy cụm từ nào.

Ngoài ra, bạn có thể sử dụng các siêu ký tự đặc biệt với thay thế chuỗi đơn giản và biểu thức chính quy để chỉ định ngắt trong thao tác tìm và thay thế.

Aspose.Words trình bày chức năng tìm và thay thế bằng không gian tên [Aspose.Words.Replacing](https://reference.aspose.com/words/cpp/namespace/aspose.words.replacing). Bạn có thể làm việc với nhiều tùy chọn trong quá trình tìm và thay thế bằng lớp [FindReplaceOptions](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/).

### Tìm Và Thay Thế Văn bản Bằng Cách Sử dụng Thay Thế Chuỗi Đơn giản {#find-and-replace-text-using-simple-string-replacement}

Bạn có thể sử dụng một trong các phương thức [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) để tìm hoặc thay thế một chuỗi cụ thể và trả về số lượng thay thế đã được thực hiện. Trong trường hợp này, bạn có thể chỉ định một chuỗi sẽ được thay thế, một chuỗi sẽ thay thế tất cả các lần xuất hiện của nó, liệu sự thay thế có phân biệt chữ hoa chữ thường hay không và liệu chỉ những từ độc lập mới bị ảnh hưởng.

Ví dụ mã sau đây cho thấy cách tìm chuỗi "_CustomerName_" và thay thế nó bằng chuỗi *"James Bond"*:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cpp" >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi áp dụng thay thế chuỗi đơn giản:

<img src="before-simple-string-replacement.png" alt="before-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

Và sau khi áp dụng thay thế chuỗi đơn giản:

<img src="after-simple-string-replacement.png" alt="after-simple-string-replacement-aspose-words-cpp" style="width:600px"/>

### Tìm Và Thay Thế Văn bản bằng Các Biểu Thức Chính quy {#find-and-replace-text-using-regular-expressions}

Biểu thức chính quy (regex) là một mẫu mô tả một chuỗi văn bản nhất định. Giả sử bạn muốn thay thế tất cả các lần xuất hiện kép của một từ bằng một lần xuất hiện từ. Sau đó, bạn có thể áp dụng biểu thức chính quy sau để chỉ định mẫu từ kép: `([a-zA-Z]+) \1`.

Sử dụng phương thức [Replace](https://reference.aspose.com/words/cpp/aspose.words/range/replace/) khác để tìm kiếm và thay thế các kết hợp ký tự cụ thể bằng cách đặt tham số `Regex` làm mẫu biểu thức chính quy để tìm kết quả khớp.

Ví dụ mã sau đây cho thấy cách thay thế các chuỗi khớp với mẫu biểu thức chính quy bằng một chuỗi thay thế được chỉ định:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cpp" >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi áp dụng thay thế chuỗi bằng các biểu thức chính quy:

<img src="before-replacement-with-regular-expressions.png" alt="before-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

Và sau khi áp dụng thay thế chuỗi bằng các biểu thức chính quy:

<img src="after-replacement-with-regular-expressions.png" alt="after-replacement-with-regular-expressions-aspose-words-cpp" style="width:600px"/>

### Tìm Và Thay Thế Chuỗi Bằng Metacharacters {#find-and-replace-text-using-metacharacters}

Bạn có thể sử dụng siêu ký tự trong chuỗi tìm kiếm hoặc chuỗi thay thế nếu một văn bản hoặc cụm từ cụ thể bao gồm nhiều đoạn văn, phần hoặc trang. Một số siêu ký tự bao gồm **&p** cho ngắt đoạn, **&b** cho ngắt phần, **&m** cho ngắt trang và **&l** cho ngắt dòng.

{{% alert color="primary" %}}

Lưu ý rằng metacharacter **&&** bằng **&**. Ví dụ: nếu bạn cần tìm văn bản cho **&p** không phải là ngắt đoạn, thì bạn có thể sử dụng **&&p**.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách thay thế văn bản bằng đoạn văn và ngắt trang:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cpp" >}}

## Tìm Và Thay Thế Chuỗi Trong Tiêu đề / Chân Trang của Tài liệu {#find-and-replace-string-in-header-or-footer-of-a-document}

Bạn có thể tìm và thay thế văn bản trong phần đầu trang/chân trang của Tài liệu Word bằng lớp [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/).

Ví dụ mã sau đây cho thấy cách thay thế văn bản của phần tiêu đề trong tài liệu của bạn:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cpp" >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi áp dụng thay thế chuỗi tiêu đề:

<img src="before-applying-header-string-replacement.png" alt="before-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Và sau khi áp dụng thay thế chuỗi tiêu đề:

<img src="after-applying-header-string-replacement.png" alt="after-applying-header-string-replacement-aspose-words-cpp" style="width:600px"/>

Ví dụ mã để thay thế văn bản của phần chân trang trong tài liệu của bạn rất giống với ví dụ mã tiêu đề trước đó. Tất cả những gì bạn cần làm là thay thế hai dòng sau:

{{< highlight csharp >}}
auto header = headersFooters->idx_get(HeaderFooterType::HeaderPrimary);
header->get_Range()->Replace(u"Aspose.Words", u"Remove", options);
{{< /highlight >}}

Với những điều sau đây:

{{< highlight csharp >}}
auto footer = headersFooters->idx_get(HeaderFooterType::FooterPrimary);
footer->get_Range()->Replace(u"(C) 2006 Aspose Pty Ltd.", u"Copyright (C) Aspose Pty Ltd.", options);
{{< /highlight >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi áp dụng thay thế chuỗi chân trang:

<img src="before-applying-footer-string-replacement.png" alt="before-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

Và sau khi áp dụng thay thế chuỗi chân trang:

<img src="after-applying-footer-string-replacement.png" alt="after-applying-footer-string-replacement-aspose-words-cpp" style="width:600px"/>

## Bỏ Qua Văn Bản Trong Quá trình Tìm Và Thay thế {#ignore-text-during-find-and-replace}

Trong khi áp dụng thao tác tìm và thay thế, bạn có thể bỏ qua một số phân đoạn nhất định của văn bản. Vì vậy, một số phần của văn bản có thể được loại trừ khỏi tìm kiếm và việc tìm và thay thế chỉ có thể được áp dụng cho các phần còn lại.

Aspose.Words cung cấp nhiều thuộc tính tìm và thay thế để bỏ qua văn bản như[IgnoreDeleted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions), [IgnoreFieldCodes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignorefootnotes/), và [IgnoreInserted](https://reference.aspose.com/words/cpp/aspose.words.replacing/findreplaceoptions/get_ignoreinserted/).

Ví dụ mã sau đây cho thấy cách bỏ qua văn bản bên trong xóa các bản sửa đổi:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cpp" >}}

## Tùy Chỉnh Tìm Và Thay Thế Hoạt động {#customize-find-and-replace-operation}

Aspose.Words cung cấp nhiều [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) khác nhau để tìm và thay thế văn bản như áp dụng định dạng cụ thể bằng các thuộc tính [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) và [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), sử dụng các thay thế trong các mẫu thay thế bằng thuộc tính [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) và các thuộc tính khác.

Ví dụ mã sau đây cho thấy cách đánh dấu một từ cụ thể trong tài liệu của bạn:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cpp" >}}

Aspose.Words cho phép bạn sử dụng giao diện [IReplacingCallback](https://reference.aspose.com/words/cpp/aspose.words.replacing/ireplacingcallback/) để tạo và gọi một phương thức tùy chỉnh trong một thao tác thay thế. Bạn có thể có một số trường hợp sử dụng khi bạn cần tùy chỉnh thao tác tìm và thay thế, chẳng hạn như thay thế văn bản được chỉ định bằng biểu thức chính quy bằng thẻ HTML, vì vậy về cơ bản bạn sẽ áp dụng thay thế bằng chèn HTML.

Nếu bạn cần thay thế một chuỗi bằng thẻ HTML, hãy áp dụng giao diện **IReplacingCallback** để tùy chỉnh thao tác tìm và thay thế để kết quả khớp bắt đầu khi bắt đầu chạy bằng nút khớp của tài liệu của bạn. Hãy để chúng tôi cung cấp một số ví dụ về việc sử dụng **IReplacingCallback**.

Ví dụ mã sau đây cho thấy cách thay thế văn bản được chỉ định bằng HTML:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cpp" >}}

Ví dụ mã sau đây cho thấy cách làm nổi bật các số dương bằng màu xanh lá cây và số âm bằng màu đỏ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cpp" >}}

Ví dụ mã sau đây cho thấy cách thêm số dòng vào mỗi dòng:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cpp" >}}
