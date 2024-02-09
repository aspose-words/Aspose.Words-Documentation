---
title: Tìm và thay thế trong C#
second_title: Aspose.Words cho .NET
articleTitle: Tìm và thay thế
linktitle: Tìm và thay thế
type: docs
description: "Tìm một chuỗi hoặc mẫu biểu thức chính quy trong tài liệu của bạn và thay thế nó bằng văn bản bạn muốn bằng C#."
weight: 100
url: /vi/net/find-and-replace/
---

Bạn có thể dễ dàng điều hướng trong tài liệu của mình bằng bàn phím và chuột, nhưng nếu bạn có nhiều trang để cuộn qua, sẽ mất khá nhiều thời gian để tìm thấy văn bản cụ thể trong một tài liệu dài. Sẽ tốn nhiều thời gian hơn khi bạn muốn thay thế một số ký tự hoặc từ nào đó mà bạn đã sử dụng trong tài liệu của mình. Chức năng "Tìm và thay thế" cho phép bạn tìm một chuỗi ký tự trong tài liệu và thay thế nó bằng một chuỗi ký tự khác.

Aspose.Words cho phép bạn tìm một chuỗi hoặc mẫu biểu thức chính quy cụ thể trong tài liệu của mình và thay thế nó bằng một chuỗi thay thế mà không cần cài đặt và sử dụng các ứng dụng bổ sung như Microsoft Word. Điều này sẽ tăng tốc nhiều tác vụ đánh máy và định dạng, có khả năng giúp bạn tiết kiệm hàng giờ làm việc.

Bài viết này giải thích cách áp dụng thay thế chuỗi và biểu thức chính quy với sự hỗ trợ của siêu ký tự.

## Các cách tìm và thay thế {#ways-to-find-and-replace}

Aspose.Words cung cấp hai cách để áp dụng thao tác tìm và thay thế bằng cách sử dụng như sau:

1. *Thay thế chuỗi đơn giản* – để tìm và thay thế một chuỗi cụ thể bằng một chuỗi khác, bạn cần chỉ định chuỗi tìm kiếm (ký tự chữ và số) sẽ được thay thế theo tất cả các lần xuất hiện bằng một chuỗi thay thế được chỉ định khác. Cả hai chuỗi không được chứa ký hiệu. Hãy lưu ý rằng so sánh chuỗi có thể phân biệt chữ hoa chữ thường hoặc bạn có thể không chắc chắn về chính tả hoặc có một số cách viết tương tự.
2. *Biểu thức chính quy* – để chỉ định một biểu thức chính quy nhằm tìm chuỗi khớp chính xác và thay thế chúng theo biểu thức chính quy của bạn. Lưu ý rằng một từ được định nghĩa là chỉ được tạo thành từ các ký tự chữ và số. Nếu việc thay thế được thực hiện chỉ với toàn bộ các từ được khớp và chuỗi đầu vào chứa các ký hiệu thì sẽ không tìm thấy cụm từ nào.

Ngoài ra, bạn có thể sử dụng các siêu ký tự đặc biệt với tính năng thay thế chuỗi đơn giản và các biểu thức thông thường để chỉ định dấu ngắt trong thao tác tìm và thay thế.

Aspose.Words trình bày chức năng tìm và thay thế bằng không gian tên [Aspose.Words.Replacing](https://reference.aspose.com/words/net/aspose.words.replacing/). Bạn có thể làm việc với nhiều tùy chọn trong quá trình tìm và thay thế bằng cách sử dụng lớp [FindReplaceOptions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/).

### Tìm và thay thế văn bản bằng cách thay thế chuỗi đơn giản {#find-and-replace-text-using-simple-string-replacement}

Bạn có thể sử dụng một trong các phương thức [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/#replace/) để tìm hoặc thay thế một chuỗi cụ thể và trả về số lần thay thế đã được thực hiện. Trong trường hợp này, bạn có thể chỉ định một chuỗi cần thay thế, một chuỗi sẽ thay thế tất cả các lần xuất hiện của nó, liệu việc thay thế có phân biệt chữ hoa chữ thường hay không và liệu chỉ các từ độc lập sẽ bị ảnh hưởng hay không.

Ví dụ về mã sau đây cho thấy cách tìm chuỗi "_CustomerName_" và thay thế nó bằng chuỗi *"James Bond"*:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-ReplaceWithString.cs" >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi áp dụng thay thế chuỗi đơn giản:

<img src="/words/net/find-and-replace/before-simple-string-replacement.png" alt="trước khi thay thế chuỗi đơn giản" style="width:600px"/>

Và sau khi áp dụng thay thế chuỗi đơn giản:

<img src="/words/net/find-and-replace/after-simple-string-replacement.png" alt="sau khi thay thế chuỗi đơn giản" style="width:600px"/>

### Tìm và thay thế văn bản bằng biểu thức chính quy {#find-and-replace-text-using-regular-expressions}

Biểu thức chính quy (regex) là một mẫu mô tả một chuỗi văn bản nhất định. Giả sử bạn muốn thay thế tất cả các lần xuất hiện kép của một từ bằng một lần xuất hiện của một từ. Sau đó, bạn có thể áp dụng biểu thức chính quy sau để chỉ định mẫu từ kép: `([a-zA-Z]+) \1`.

Sử dụng phương pháp [Replace](https://reference.aspose.com/words/net/aspose.words/range/replace/) khác để tìm kiếm và thay thế các tổ hợp ký tự cụ thể bằng cách đặt tham số `Regex` làm mẫu biểu thức chính quy để tìm kết quả khớp.

Ví dụ về mã sau đây cho thấy cách thay thế các chuỗi khớp với mẫu biểu thức chính quy bằng chuỗi thay thế được chỉ định:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithRegex-ReplaceWithRegex.cs" >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi áp dụng thay thế chuỗi bằng biểu thức chính quy:

<img src="/words/net/find-and-replace/before-replacement-with-regular-expressions.png" alt="before-thay thế-với biểu thức chính" style="width:600px"/>

Và sau khi áp dụng thay thế chuỗi bằng biểu thức chính quy:

<img src="/words/net/find-and-replace/after-replacement-with-regular-expressions.png" alt="sau khi thay thế bằng biểu thức chính" style="width:600px"/>

### Tìm và thay thế chuỗi bằng siêu ký tự {#find-and-replace-text-using-metacharacters}

Bạn có thể sử dụng siêu ký tự trong chuỗi tìm kiếm hoặc chuỗi thay thế nếu một văn bản hoặc cụm từ cụ thể bao gồm nhiều đoạn văn, phần hoặc trang. Một số siêu ký tự bao gồm **&amp;P** cho dấu ngắt đoạn, **&amp;b** cho dấu ngắt phần, **&amp;m** cho dấu ngắt trang và **&amp;l** cho dấu ngắt dòng.

{{% alert color="primary" %}}

Lưu ý rằng siêu ký tự **&&** bằng **&**. Ví dụ: nếu bạn cần tìm văn bản cho **&amp;P** không phải là dấu ngắt đoạn thì bạn có thể sử dụng **&amp;&amp;P**.

{{% /alert %}}

Ví dụ mã sau đây cho biết cách thay thế văn bản bằng ngắt đoạn và ngắt trang:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-FindReplaceUsingMetaCharacters-ReplaceTextContaingMetaCharacters.cs" >}}

## Tìm và thay thế chuỗi trong đầu trang/chân trang của tài liệu {#find-and-replace-string-in-header-or-footer-of-a-document}

Bạn có thể tìm và thay thế văn bản trong phần đầu trang/chân trang của tài liệu Word bằng lớp [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/).

Ví dụ về mã sau đây cho biết cách thay thế văn bản của phần tiêu đề trong tài liệu của bạn:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceInHeaderAndFooter-ReplaceTextInFooter.cs" >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi áp dụng thay thế chuỗi tiêu đề:

<img src="/words/net/find-and-replace/before-applying-header-string-replacement.png" alt="trước khi áp dụng-tiêu đề-chuỗi-thay thế" style="width:600px"/>

Và sau khi áp dụng thay thế chuỗi tiêu đề:

<img src="/words/net/find-and-replace/after-applying-header-string-replacement.png" alt="sau khi áp dụng-tiêu đề-chuỗi-thay thế" style="width:600px"/>

Ví dụ về mã để thay thế văn bản của phần chân trang trong tài liệu của bạn rất giống với ví dụ về mã tiêu đề trước đó. Tất cả những gì bạn cần làm là thay thế hai dòng sau:

{{< highlight csharp >}}
HeaderFooter header = headersFooters[HeaderFooterType.HeaderPrimary];
header.Range.Replace("Aspose.Words", "Remove", options);
{{< /highlight >}}

Với những điều sau đây:

{{< highlight csharp >}}
HeaderFooter footer = headersFooters[HeaderFooterType.FooterPrimary];
int currentYear = System.DateTime.Now.Year;
footer.Range.Replace("(C) 2006 Aspose Pty Ltd.", $"Copyright (C) {currentYear} by Aspose Pty Ltd.", options);
{{< /highlight >}}

Bạn có thể nhận thấy sự khác biệt giữa tài liệu trước khi áp dụng thay thế chuỗi chân trang:

<img src="/words/net/find-and-replace/before-applying-footer-string-replacement.png" alt="trước khi áp dụng-chân-chuỗi-thay thế" style="width:600px"/>

Và sau khi áp dụng thay thế chuỗi chân trang:

<img src="/words/net/find-and-replace/after-applying-footer-string-replacement.png" alt="sau khi áp dụng-chân-chuỗi-thay thế" style="width:600px"/>

## Bỏ qua văn bản trong khi tìm và thay thế {#ignore-text-during-find-and-replace}

Trong khi áp dụng thao tác tìm và thay thế, bạn có thể bỏ qua một số đoạn văn bản nhất định. Vì vậy, một số phần nhất định của văn bản có thể bị loại khỏi tìm kiếm và tính năng tìm và thay thế chỉ có thể được áp dụng cho các phần còn lại.

Aspose.Words cung cấp nhiều thuộc tính tìm và thay thế để bỏ qua văn bản như [IgnoreDeleted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoredeleted/), [IgnoreFieldCodes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefieldcodes/), [IgnoreFields](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefields/), [IgnoreFootnotes](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignorefootnotes/) và [IgnoreInserted](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/ignoreinserted/).

Ví dụ mã sau đây cho thấy cách bỏ qua văn bản bên trong các bản sửa đổi xóa:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-IgnoreText-IgnoreTextInsideDeleteRevisions.cs" >}}

## Tùy chỉnh thao tác Tìm và Thay thế {#customize-find-and-replace-operation}

Aspose.Words cung cấp nhiều [properties](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/) khác nhau để tìm và thay thế văn bản, chẳng hạn như áp dụng định dạng cụ thể với các thuộc tính [ApplyFont](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyfont/) và [ApplyParagraphFormats](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/applyparagraphformat/), sử dụng các thay thế trong các mẫu thay thế bằng thuộc tính [UseSubstitutions](https://reference.aspose.com/words/net/aspose.words.replacing/findreplaceoptions/usesubstitutions/) và các thuộc tính khác.

Ví dụ về mã sau đây cho biết cách đánh dấu một từ cụ thể trong tài liệu của bạn:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithString-HighlightColor.cs" >}}

Aspose.Words cho phép bạn sử dụng giao diện [IReplacingCallback](https://reference.aspose.com/words/net/aspose.words.replacing/ireplacingcallback/) để tạo và gọi một phương thức tùy chỉnh trong quá trình thay thế. Bạn có thể gặp một số trường hợp sử dụng cần tùy chỉnh thao tác tìm và thay thế, chẳng hạn như thay thế văn bản được chỉ định bằng biểu thức chính quy bằng thẻ HTML, vì vậy về cơ bản bạn sẽ áp dụng thay thế bằng cách chèn HTML.

Nếu bạn cần thay thế một chuỗi bằng thẻ HTML, hãy áp dụng giao diện **IReplacingCallback** để tùy chỉnh thao tác tìm và thay thế để việc khớp bắt đầu khi bắt đầu chạy với nút khớp trong tài liệu của bạn. Hãy để chúng tôi cung cấp một số ví dụ về việc sử dụng **IReplacingCallback**.

Ví dụ mã sau đây cho thấy cách thay thế văn bản được chỉ định bằng HTML:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-ReplaceWithHtml.cs" >}}

Ví dụ mã sau đây cho thấy cách đánh dấu số dương bằng màu xanh lá cây và số âm bằng màu đỏ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-NumberHighlightCallback.cs" >}}

Ví dụ mã sau đây cho thấy cách thêm số dòng vào mỗi dòng:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Find-Replace-ReplaceWithHTML-LineCounter.cs" >}}
