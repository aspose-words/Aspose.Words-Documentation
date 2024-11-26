---
title: Chỉ Định Tùy chọn Tải trong C++
second_title: Aspose.Words cho C++
articleTitle: Chỉ Định Tùy Chọn Tải
linktitle: Chỉ Định Tùy Chọn Tải
description: "Kiểm soát chính xác hơn quá trình tải."
type: docs
weight: 10
url: /vi/cpp/specify-load-options/
timestamp: 2024-01-30-16-22-34
---

Khi tải tài liệu, bạn có thể đặt một số thuộc tính nâng cao. Aspose.Words cung cấp cho bạn lớp [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/), cho phép kiểm soát chính xác hơn quá trình tải. Một số định dạng tải có một lớp tương ứng chứa các tùy chọn tải cho định dạng tải này, ví dụ: có [PdfLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/pdfloadoptions/) để tải đến PDF định dạng hoặc [TxtLoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/) để tải đến TXT. Bài viết này cung cấp các ví dụ về làm việc với các tùy chọn của lớp **LoadOptions**.

## Đặt Phiên bản Microsoft Word Để Thay đổi Giao Diện

Các phiên bản khác nhau của ứng dụng Microsoft Word có thể hiển thị tài liệu một cách thờ ơ. Ví dụ, có một vấn đề nổi tiếng với các tài liệu OOXML như DOCX hoặc DOTX được sản xuất bằng Văn phòng WPS. Trong trường hợp như vậy, các yếu tố đánh dấu tài liệu thiết yếu có thể bị thiếu hoặc có thể được giải thích khác nhau khiến Microsoft Word 2019 hiển thị tài liệu đó khác với Microsoft Word 2010.

Theo mặc định Aspose.Words mở tài liệu bằng quy tắc Microsoft Word 2019. Nếu bạn cần làm cho tải tài liệu xuất hiện như nó sẽ xảy ra trong một trong các phiên bản ứng dụng Microsoft Word trước đó, bạn nên chỉ định rõ ràng phiên bản mong muốn bằng thuộc tính [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/) của lớp **LoadOptions**.

Ví dụ mã sau đây cho thấy cách đặt phiên bản Microsoft Word với các tùy chọn tải:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetMSWordVersion.cpp" >}}

## Đặt Tùy Chọn Ngôn ngữ Để Thay đổi Giao Diện

Chi tiết hiển thị tài liệu trong Microsoft Word không chỉ phụ thuộc vào phiên bản ứng dụng và giá trị thuộc tính **MswVersion** mà còn phụ thuộc vào cài đặt ngôn ngữ. Microsoft Word có thể hiển thị tài liệu khác nhau tùy thuộc vào cài đặt hộp thoại "Tùy Chọn Ngôn ngữ Văn phòng", có thể tìm thấy trong "Tệp → Tùy chọn → Ngôn ngữ". Sử dụng hộp thoại này, người dùng có thể chọn, ví dụ: ngôn ngữ chính, ngôn ngữ kiểm chứng, ngôn ngữ hiển thị, v. v. Aspose.Words cung cấp thuộc tính [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_languagepreferences/) tương đương với hộp thoại này. Nếu đầu ra Aspose.Words khác với đầu ra Microsoft Word, hãy đặt giá trị thích hợp cho **EditingLanguage** – điều này có thể cải thiện tài liệu đầu ra.

Ví dụ mã sau đây cho thấy cách đặt Tiếng Nhật là **EditingLanguage**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

## Sử dụng WarningCallback Để Kiểm Soát Sự Cố Trong Khi Tải Tài liệu

Một số tài liệu có thể bị hỏng, chứa các mục không hợp lệ hoặc có các tính năng hiện không được Aspose.Words hỗ trợ. Nếu bạn muốn biết về các sự cố xảy ra trong khi tải tài liệu, Aspose.Words cung cấp giao diện [IWarningCallback](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/).

Ví dụ mã sau đây cho thấy việc triển khai giao diện **IWarningCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-DocumentLoadingWarningCallback.cpp" >}}

Để có được thông tin về tất cả các vấn đề trong suốt thời gian tải, hãy sử dụng thuộc tính `WarningCallback`.

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính này:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsWarningCallback.cpp" >}}

## Sử dụng ResourceLoadingCallback Để Kiểm Soát Tải Tài Nguyên Bên ngoài

Tài liệu có thể chứa các liên kết bên ngoài đến hình ảnh nằm ở đâu đó trên đĩa cục bộ, mạng hoặc Internet. Aspose.Words tự động tải những hình ảnh đó vào tài liệu, nhưng có những tình huống khi quá trình này cần được kiểm soát. Ví dụ, để quyết định xem chúng ta có thực sự cần tải một hình ảnh nhất định hay có thể bỏ qua nó. Tùy chọn tải ResourceLoadingCallback cho phép bạn kiểm soát điều này.

Ví dụ mã sau đây cho thấy việc triển khai giao diện IResourceLoadingCallback:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-HtmlLinkedResourceLoadingCallback.cpp" >}}

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsResourceLoadingCallback.cpp" >}}

## Sử dụng TempFolder Để Tránh Ngoại Lệ Bộ Nhớ

Aspose.Words hỗ trợ các tài liệu cực kỳ lớn có hàng nghìn trang chứa đầy nội dung phong phú. Tải các tài liệu như vậy có thể yêu cầu nhiều RAM. Trong quá trình tải, Aspose.Words cần nhiều bộ nhớ hơn để giữ các cấu trúc tạm thời được sử dụng để phân tích tài liệu.

Nếu bạn gặp sự cố với ngoại lệ Ngoài Bộ Nhớ trong khi tải tài liệu, hãy thử sử dụng thuộc tính [TempFolder](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_tempfolder/). Trong trường hợp này, Aspose.Words sẽ lưu trữ một số dữ liệu trong các tệp tạm thời thay vì bộ nhớ và điều này có thể giúp tránh một ngoại lệ như vậy.

Ví dụ mã sau đây cho thấy cách đặt **TempFolder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-SetTempFolder.cpp" >}}

## Đặt Mã Hóa Rõ ràng

Hầu hết các định dạng tài liệu hiện đại lưu trữ nội dung của chúng Trong Unicode và không yêu cầu xử lý đặc biệt. Mặt khác, vẫn còn nhiều tài liệu sử dụng một số mã Hóa Trước Unicode và đôi khi bỏ lỡ thông tin mã hóa hoặc thậm chí không hỗ trợ thông tin mã hóa theo bản chất. Aspose.Words cố gắng tự động phát hiện mã hóa thích hợp theo mặc định, nhưng trong một trường hợp hiếm hoi, bạn có thể cần sử dụng mã hóa khác với mã hóa được phát hiện bởi thuật toán nhận dạng mã hóa của chúng tôi. Trong trường hợp này, hãy sử dụng thuộc tính [Encoding](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_encoding/) để lấy hoặc đặt mã hóa.

Ví dụ mã sau đây cho thấy cách đặt mã hóa để ghi đè mã hóa được chọn tự động:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-LoadOptionsEncoding.cpp" >}}

## Tải Tài Liệu Được Mã Hóa

Bạn có thể tải Tài liệu Word được mã hóa bằng mật khẩu. Để thực hiện việc này, hãy sử dụng quá tải hàm tạo đặc biệt, chấp nhận đối tượng [LoadOptions](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/). Đối tượng này chứa thuộc tính [Password](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_password/), chỉ định chuỗi mật khẩu.

Ví dụ mã sau đây cho thấy cách tải tài liệu được mã hóa bằng mật khẩu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-OpenEncryptedDocument-OpenEncryptedDocument.cpp" >}}

Nếu bạn không biết trước liệu tệp có được mã hóa hay không, bạn có thể sử dụng lớp [FileFormatUtil](https://reference.aspose.com/words/cpp/aspose.words/fileformatutil/), cung cấp các phương thức tiện ích để làm việc với các định dạng tệp, chẳng hạn như phát hiện định dạng tệp hoặc chuyển đổi phần mở rộng tệp thành/từ liệt kê định dạng tệp. Để phát hiện xem tài liệu có được mã hóa hay không và yêu cầu mật khẩu để mở nó, hãy sử dụng thuộc tính `IsEncrypted`.

Ví dụ mã sau đây cho thấy cách xác minh OpenDocument nó có được mã hóa hay không:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Load_Options-VerifyODTdocument.cpp" >}}
