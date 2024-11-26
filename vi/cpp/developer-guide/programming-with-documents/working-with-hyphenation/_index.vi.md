---
title: Làm Việc Với Dấu Gạch Nối trong C++
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Gạch Nối
linktitle: Làm việc Với Gạch Nối
description: "Sử dụng dấu gạch nối để sắp xếp văn bản nhỏ gọn hơn bằng cách sử dụng C++. Nó cung cấp các thuật toán nâng cao để làm việc với từ điển gạch nối, sử dụng từ điển OpenOffice."
type: docs
weight: 220
url: /vi/cpp/working-with-hyphenation/
timestamp: 2024-01-30-16-22-34
---

Đôi khi cần phải sử dụng dấu gạch nối để sắp xếp văn bản nhỏ gọn hơn trong tài liệu. Đồng thời, điều quan trọng là phải hiểu rằng các chi tiết cụ thể của gạch nối từ có thể khác nhau đối với mỗi ngôn ngữ.

Ở thời điểm hiện tại, gạch nối không được sử dụng thường xuyên như trước đây, đặc biệt là trong các văn bản tiếng anh. Tuy nhiên, việc sử dụng tính năng này có thể có tác động nghiêm trọng đến tài liệu người dùng – gạch nối ảnh hưởng đến bố cục và do đó, sự xuất hiện của các tệp đầu ra, ví dụ, ở định dạng PDF.

Để phân tách chính xác các từ, từ điển gạch nối dành riêng cho ngôn ngữ được sử dụng. Aspose.Words sử dụng các thuật toán nâng cao để làm việc với các từ điển như vậy và cho phép bạn có được dấu gạch nối giống như trong Microsoft Word.

## Từ Điển Gạch Nối

Vì các ngôn ngữ khác nhau sử dụng các chuẩn mực và quy tắc khác nhau cho gạch nối từ, giải pháp tối ưu cho gạch nối chính xác là sử dụng các từ điển đặc biệt. Aspose.Words sử dụng từ điển OpenOffice.

Để kiểm tra chính tả, OpenOffice sử dụng [Hunspell thư viện](https://hunspell.github.io/), đó là sự khái quát hóa thuật toán gạch nối Của TeX. Thuật toán này cho phép gạch nối phi tiêu chuẩn tự động sử dụng các mẫu gạch nối tiêu chuẩn và tùy chỉnh cạnh tranh. Hunspell sử dụng [Dấu gạch nối](https://github.com/hunspell/hyphen) để gạch nối.

{{% alert color="primary" %}}

Từ điển gạch nối có thể được lấy từ [LibreOffice từ điển GitHub](https://github.com/LibreOffice/dictionaries). Ví dụ, [vi - US từ điển gạch nối](https://github.com/LibreOffice/dictionaries/blob/master/en/hyph_en_US.dic).

{{% /alert %}}

{{% alert color="primary" %}}

Vì Microsoft Word sử dụng từ điển khác với từ điển OpenOffice để thực hiện gạch nối, dấu gạch nối của một số từ được xác định bởi từ điển OpenOffice có thể khác với gạch nối Microsoft Word. Vì lý do này, đôi khi chúng tôi phải khuyên khách hàng thêm các mẫu cần thiết vào từ điển của họ để sửa dấu gạch nối của các từ cụ thể.

{{% /alert %}}

## Thuật Toán Gạch Nối

Aspose.Words thực hiện [thuật toán gạch nối TeX](https://github.com/hunspell/hyphen/blob/master/README.hyphen) và có thể tái sử dụng OpenOffice từ điển gạch nối.

Các tính năng sau của thuật toán Aspose.Words cần được tính đến:

* Tham số khoảng cách gạch nối (LEFTHYPHENMIN, RIGHTHYPHENMIN, COMPOUNDLEFTHYPHENMIN, COMPOUNDRIGHTHYPHENMIN) được chỉ định trong từ điển gạch nối bị bỏ qua. Aspose.Words sử dụng bộ tham số khoảng cách riêng tùy thuộc vào chế độ tương thích tài liệu.
* Thuật toán gạch nối trong Aspose.Words hỗ trợ [gạch nối tổng hợp](https://github.com/hunspell/hyphen/blob/master/README.compound). Tuy nhiên, Aspose.Words chia các chuỗi ký tự chứa các ký tự chữ cái hỗn hợp và không phải chữ cái thành các phần chỉ có chữ cái (từ) và gạch nối chúng riêng biệt.
  Lưu ý rằng Microsoft Word logic gạch nối của các từ ghép phụ thuộc vào chế độ tương thích tài liệu.
* Thuật toán gạch nối trong Aspose.Words không thực hiện [gạch nối không chuẩn](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf). Các mẫu không chuẩn bị bị bỏ qua.

## Tải Từ Điển Gạch Nối

Để sử dụng tính năng gạch nối, trước tiên hãy đăng ký từ điển gạch nối.Ví dụ mã sau đây cho thấy cách tải từ điển gạch nối cho các ngôn ngữ được chỉ định từ một tệp:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-HyphenateWordsOfLanguages.h" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách tải từ điển gạch nối cho ngôn ngữ được chỉ định từ một luồng:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-LoadHyphenationDictionaryForLanguage.h" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples)

{{% /alert %}}

Thay thế cho từ điển gạch nối đăng ký trước, chỉ có thể đăng ký từ điển gạch nối bắt buộc "theo yêu cầu". Để đạt được điều đó, hãy triển khai giao diện [IHyphenationCallback](https://reference.aspose.com/words/cpp/aspose.words/ihyphenationcallback/) và sử dụng cuộc gọi lại tĩnh [Callback](https://reference.aspose.com/words/cpp/aspose.words/hyphenation/get_callback/).

Ví dụ mã sau đây cho thấy cách triển khai giao diện **IHyphenationCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Hyphenation-CustomHyphenation.h" >}}

## Tác động Của Gạch Nối Trên Bố Cục

Khi chia văn bản thành các dòng, Aspose.Words kiểm tra từng từ xem nó có hoàn toàn phù hợp với dòng hiện tại hay không. Nếu một từ khác quá dài để vừa ở cuối dòng, theo mặc định Aspose.Words di chuyển nó đến đầu dòng tiếp theo thay vì gạch nối nó.

Tuy nhiên, tính năng gạch nối có thể được sử dụng trong Aspose.Words để chèn dấu gạch nối vào các từ để loại bỏ các khoảng trống trong văn bản hợp lý hoặc để duy trì độ dài dòng chẵn trong các cột hẹp. Điều này rõ ràng có thể ảnh hưởng đến số lượng dòng và do đó số lượng trang. Nói cách khác, sử dụng chức năng gạch nối ảnh hưởng đến bố cục tài liệu.

## Gạch nối và Biện Minh (H & J)

Microsoft Word có logic phức tạp để chọn điểm dừng nếu văn bản được chứng minh và gạch nối được bật. Nói tóm lại, Microsoft Word có thể thích thu nhỏ hoặc kéo dài không gian để tránh gạch nối dòng. Hầu hết có lẽ logic này dựa trên [Bài viết của Knuth](https://www.eprg.org/G53DOC/pdfs/knuth-plass-breaking.pdf).

Aspose.Words thực hiện thuật toán H&J của riêng nó cho kết quả tương tự như Microsoft Word và cung cấp ngắt dòng giống hệt nhau trong tài liệu đầu ra.

## Xem Thêm

* [Thư viện gạch nối – gạch nối](https://github.com/hunspell/hyphen/blob/master/README)
* [Gạch nối không chuẩn](https://github.com/hunspell/hyphen/blob/master/README.nonstandard)
* [Gạch nối tự động không chuẩn Trong Văn Phòng Mở](https://github.com/hunspell/hyphen/blob/master/doc/tb87nemeth.pdf)
