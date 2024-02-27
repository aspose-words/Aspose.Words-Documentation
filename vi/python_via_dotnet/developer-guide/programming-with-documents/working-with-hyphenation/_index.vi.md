---
title: Làm việc với dấu gạch nối trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Làm việc với dấu gạch nối
linktitle: Làm việc với dấu gạch nối
description: "Sử dụng dấu gạch nối để sắp xếp văn bản gọn hơn bằng Python. Nó cung cấp các thuật toán nâng cao để làm việc với từ điển gạch nối, sử dụng từ điển OpenOffice."
type: docs
weight: 220
url: /vi/python-net/working-with-hyphenation/
---

Đôi khi cần sử dụng dấu gạch nối để sắp xếp văn bản trong tài liệu gọn hơn. Đồng thời, điều quan trọng là phải hiểu rằng các chi tiết cụ thể của việc gạch nối từ có thể khác nhau đối với mỗi ngôn ngữ.

Ở thời điểm hiện tại, dấu gạch nối không được sử dụng thường xuyên như trước, đặc biệt là trong các văn bản tiếng Anh. Tuy nhiên, việc sử dụng tính năng này có thể có tác động nghiêm trọng đến tài liệu của người dùng – dấu gạch nối ảnh hưởng đến bố cục và do đó, hình thức của các tệp đầu ra, chẳng hạn như ở định dạng PDF.

Để phân tách chính xác các từ, từ điển gạch nối dành riêng cho ngôn ngữ được sử dụng. Aspose.Words sử dụng các thuật toán nâng cao để làm việc với các từ điển như vậy và cho phép bạn có được dấu gạch nối giống như trong Microsoft Word.

## Từ điển gạch nối

Vì các ngôn ngữ khác nhau sử dụng các quy tắc và quy tắc khác nhau để gạch nối từ nên giải pháp tối ưu để gạch nối chính xác là sử dụng các từ điển đặc biệt. Aspose.Words sử dụng từ điển OpenOffice.

Để kiểm tra chính tả, OpenOffice sử dụng [thư viện Hunspell](https://hunspell.github.io/), đây là một dạng khái quát hóa thuật toán gạch nối của TeX. Thuật toán này cho phép gạch nối không chuẩn tự động bằng cách sử dụng các mẫu gạch nối tiêu chuẩn và tùy chỉnh cạnh tranh. Hunspell sử dụng [Dấu gạch nối](https://github.com/hunspell/hyphen) để gạch nối.

{{% alert color="primary" %}}

Từ điển gạch nối có thể được lấy từ [Từ điển LibreOffice GitHub](https://github.com/LibreOffice/dictionaries). Ví dụ: [Từ điển gạch nối en-US](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Vì Microsoft Word sử dụng các từ điển khác ngoài từ điển OpenOffice để thực hiện gạch nối, nên việc gạch nối một số từ được định nghĩa bởi từ điển OpenOffice có thể khác với gạch nối Microsoft Word. Vì lý do này, đôi khi chúng tôi phải khuyên khách hàng thêm các mẫu cần thiết vào từ điển của họ để sửa lỗi gạch nối của các từ cụ thể.

{{% /alert %}}

## Thuật toán gạch nối

Aspose.Words triển khai [thuật toán gạch nối TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) và có thể sử dụng lại các từ điển gạch nối từ OpenOffice.

Cần tính đến các tính năng sau của thuật toán Aspose.Words:

* Các tham số khoảng cách gạch nối (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) được chỉ định trong từ điển gạch nối sẽ bị bỏ qua. Aspose.Words sử dụng bộ thông số khoảng cách riêng tùy thuộc vào chế độ tương thích của tài liệu.
* Thuật toán gạch nối trong Aspose.Words hỗ trợ [gạch nối tổng hợp](https://github.com/hunspell/hyphen/blob/master/README.compound). Tuy nhiên, Aspose.Words chia các chuỗi ký tự chứa các ký tự chữ cái và không phải chữ cái hỗn hợp thành các phần chỉ có chữ cái (từ) và gạch nối chúng một cách riêng biệt.
  Lưu ý rằng logic gạch nối Microsoft Word của các từ ghép phụ thuộc vào chế độ tương thích của tài liệu.
* Thuật toán gạch nối trong Aspose.Words không triển khai [gạch nối không chuẩn](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Các mẫu không chuẩn bị bỏ qua.

## Đang tải từ điển gạch nối

Để sử dụng tính năng gạch nối, trước tiên hãy đăng ký từ điển gạch nối. Ví dụ về mã sau đây cho thấy cách tải từ điển gạch nối cho các ngôn ngữ được chỉ định từ một tệp:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-HyphenateWordsOfLanguages.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Ví dụ về mã sau đây cho thấy cách tải từ điển gạch nối cho ngôn ngữ được chỉ định từ một luồng:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_hyphenation-LoadHyphenationDictionaryForLanguage.py" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Tác động của dấu gạch nối trên bố cục

Khi chia văn bản thành dòng, Aspose.Words kiểm tra từng từ xem nó có khớp hoàn toàn với dòng hiện tại hay không. Nếu một từ khác quá dài không vừa với cuối dòng, theo mặc định, Aspose.Words sẽ di chuyển nó đến đầu dòng tiếp theo thay vì gạch nối nó.

Tuy nhiên, tính năng gạch nối có thể được sử dụng trong Aspose.Words để chèn dấu gạch nối vào các từ nhằm loại bỏ các khoảng trống trong văn bản căn đều hoặc để duy trì độ dài dòng đều trong các cột hẹp. Điều này rõ ràng có thể ảnh hưởng đến số dòng và do đó ảnh hưởng đến số trang. Nói cách khác, việc sử dụng chức năng gạch nối sẽ ảnh hưởng đến bố cục tài liệu.

## Gạch nối và căn lề (H&amp;J)

Microsoft Word có logic phức tạp để chọn điểm dừng nếu văn bản được căn đều và bật tính năng gạch nối. Nói tóm lại, Microsoft Word có thể muốn thu nhỏ hoặc kéo dài khoảng trắng để tránh hiện tượng gạch nối dòng. Rất có thể logic này dựa trên [Bài viết của Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words triển khai thuật toán H&amp;J của riêng mình, mang lại kết quả tương tự như Microsoft Word và cung cấp khả năng ngắt dòng giống hệt nhau trong tài liệu đầu ra.

## Xem thêm

* [Dấu gạch nối – thư viện gạch nối](https://github.com/hunspell/hyphen/blob/master/README)
* [Dấu gạch nối không chuẩn](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Tự động gạch nối không chuẩn trong Open Office](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
