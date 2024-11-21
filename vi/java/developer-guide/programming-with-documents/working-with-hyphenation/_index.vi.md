---
title: Làm việc với dấu gạch nối trong Java
second_title: Aspose.Words cho Java
articleTitle: Làm việc với Hyphenation
linktitle: Làm việc với Hyphenation
description: "Sử dụng dấu gạch nối cho sự sắp xếp chặt chẽ hơn của văn bản. Nó cung cấp các thuật toán tiên tiến để làm việc với các từ điển hy-đen và sử dụng các từ điển OpenOffice Java."
type: docs
weight: 220
url: /vi/java/working-with-hyphenation/
timestamp: 2024-01-27-14-07-04
---

Đôi khi việc sử dụng dấu gạch nối là cần thiết để sắp xếp văn bản chặt chẽ hơn trong một tài liệu. Vào cùng lúc, nó là quan trọng để hiểu rằng các đặc tính của từ nối lại có thể khác nhau cho mỗi ngôn ngữ.

Theo thời điểm hiện tại, việc chèn dấu gạch ngang không còn thường xuyên như trước đây, đặc biệt trong các văn bản tiếng Anh. Tuy nhiên việc sử dụng tính năng này có thể ảnh hưởng nghiêm trọng đến các tài liệu của người dùng - sự kết hợp ảnh hưởng đến bố cục và do đó ảnh hưởng đến dạng hiển thị của các tập tin đầu ra, ví dụ ở định dạng PDF.

Đối với việc chia từ ngữ chính xác, các từ điển phân tách ngôn ngữ cụ thể được sử dụng. Aspose.Words sử dụng các thuật toán tiên tiến để làm việc với các từ điển như vậy và cho phép bạn nhận được cùng một cách phân tách như trong Microsoft Word.

## Từ điển ngắt dấu

Các ngôn ngữ khác nhau dùng các quy tắc và nguyên tắc khác nhau để chèn từ, vì vậy giải pháp tối ưu cho việc chèn đúng là phải dùng các từ điển đặc biệt. Aspose.Words sử dụng các từ điển của OpenOffice.

Để kiểm tra chính tả, OpenOffice sử dụng [Hunspell library](https://hunspell.github.io/), đây là một sự tổng quát hóa của thuật toán phân tách câu của TeX. Thuật toán này cho phép tự động không dùng dấu gạch nối, sử dụng các mẫu cạnh tranh và tùy chỉnh. Hunspell sử dụng [Hyphen](https://github.com/hunspell/hyphen) để gạch nối.

{{% alert color="primary" %}}

Từ điển ngắt câu có thể được lấy từ [LibreOffice dictionaries GitHub](https://github.com/LibreOffice/dictionaries). Ví dụ [en-US hyphenation dictionary](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Khi Microsoft Word sử dụng từ điển khác với từ điển của OpenOffice để thực hiện việc chia tách dấu gạch nối, sự chia tách của một số từ được định nghĩa bởi từ điển của OpenOffice có thể khác với từ Microsoft Word chia tách. Vì vậy đôi khi chúng tôi phải khuyên khách hàng thêm các mẫu cần thiết vào từ điển của họ để sửa lỗi phân tách một số từ nhất định.

{{% /alert %}}

## Hyphenation Algorithm

Aspose.Words thực hiện [the TeX hyphenation algorithm](https://github.com/hunspell/hyphen/blob/master/README.hyphen) và có thể tái sử dụng các từ điển phân đoạn của OpenOffice.

Tính năng của thuật toán Aspose.Words nên được tính đến

* Các tham số khoảng cách phân tách (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDRELFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) được xác định trong từ điển phân tách bị bỏ qua. Aspose.Words sử dụng bộ khoảng cách của nó tùy thuộc vào chế độ tương thích tài liệu.
* Thuật toán tách từ trong Aspose.Words hỗ trợ [composite hyphenation](https://github.com/hunspell/hyphen/blob/master/README.compound). Tuy nhiên, Aspose.Words chia các chuỗi ký tự chứa chữ cái và không phải chữ cái thành các phần chỉ có chữ cái (từ) và ngắt chúng riêng.
  Lưu ý rằng Microsoft Word logic phân tách các từ phức tạp tùy thuộc vào chế độ tương thích tài liệu.
*: Thuật toán phân cách trong Aspose.Words không thực hiện [non-standard hyphenation](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Mẫu không theo tiêu chuẩn thì bị bỏ qua.

## Đang tải từ điển phân tách dấu gạch ngang

Để sử dụng tính năng phân từ, trước tiên bạn cần đăng ký một danh sách từ vựng phân từ.Mã ví dụ sau cho thấy cách tải các từ điển phân từ cho các ngôn ngữ được chỉ định từ một tệp:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromFile.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải về tập tin mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Ví dụ mã dưới cho thấy cách tải từ điển ngắt câu cho ngôn ngữ được chỉ định từ một luồng như thế nào:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-LoadHyphenationDictionaryFromStream.java" >}}

{{% alert color="primary" %}}

Bạn có thể tải về tập tin mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Theo cách thay thế khác cho việc đăng ký trước các từ điển phân tách dấu gạch ngang, có thể chỉ đăng ký các từ điển phân tách dấu gạch ngang "theo yêu cầu. Để đạt được điều đó, hãy thực hiện [IHyphenationCallback](https://reference.aspose.com/words/java/com.aspose.words/ihyphenationcallback/) giao diện và sử dụng [Callback](https://reference.aspose.com/words/java/com.aspose.words/hyphenation/#getCallback) callback tĩnh.

Mã ví dụ sau cho thấy cách thực hiện giao diện **IHyphenationCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HyphenateWords-HyphenationCallback.java" >}}

## Tác động của việc ngắt câu lên bố cục

Khi chia văn bản thành các dòng, Aspose.Words kiểm tra mỗi từ để xác định liệu nó có phù hợp hoàn toàn với dòng hiện tại không. Nếu một từ quá dài để phù hợp với cuối dòng, theo mặc định Aspose.Words di chuyển nó đến đầu dòng tiếp theo thay vì sử dụng dấu gạch nối.

Tuy nhiên, tính năng tách từ có thể được sử dụng trong Aspose.Words để chèn dấu gạch nối vào từ để loại bỏ khoảng trống trong văn bản định dạng hoặc giữ cho độ dài dòng bằng nhau trong cột hẹp. Điều này rõ ràng ảnh hưởng đến số lượng dòng và do đó là số trang. Nói cách khác thì sử dụng chức năng phân từ ảnh hưởng đến bố cục tài liệu.

## Hyphnation và Justification (H&J)

Microsoft Word có logic phức tạp để chọn điểm ngắt nếu văn bản được sắp xếp và dấu gạch nối được bật. Nói tóm lại, Microsoft Word có thể thích hơn là thu gọn hoặc kéo dài các khoảng để tránh ngắt dòng. Hơn cả có lẽ là logic này dựa trên [Knuth's article](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words thực hiện thuật toán H&J của riêng mình có cùng kết quả như Microsoft Word và cung cấp cách ngắt dòng giống nhau trong tài liệu đầu ra.

## Xem Thêm

* [Hyphen – hyphenation library](https://github.com/hunspell/hyphen/blob/master/README)
* [Non-standard hyphenation](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Automatic non-standard hyphenation in Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
