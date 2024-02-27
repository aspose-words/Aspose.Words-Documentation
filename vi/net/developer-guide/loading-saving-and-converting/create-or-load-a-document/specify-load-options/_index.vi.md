---
title: Chỉ định tùy chọn tải trong C#
second_title: Aspose.Words cho .NET
articleTitle: Chỉ định tùy chọn tải
linktitle: Chỉ định tùy chọn tải
description: "Kiểm soát quá trình tải chính xác hơn bằng C#."
type: docs
weight: 10
url: /vi/net/specify-load-options/
---

Khi tải tài liệu, bạn có thể đặt một số thuộc tính nâng cao. Aspose.Words cung cấp cho bạn lớp [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/), cho phép kiểm soát quá trình tải chính xác hơn. Một số định dạng tải có lớp tương ứng chứa các tùy chọn tải cho định dạng tải này, ví dụ: có [PdfLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/pdfloadoptions/) để tải sang định dạng PDF hoặc [TxtLoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/txtloadoptions/) để tải sang TXT. Bài viết này cung cấp các ví dụ về cách làm việc với các tùy chọn của lớp **LoadOptions**.

## Đặt phiên bản Microsoft Word để thay đổi giao diện

Các phiên bản khác nhau của ứng dụng Microsoft Word có thể hiển thị tài liệu theo cách khác nhau. Ví dụ: có một sự cố phổ biến với các tài liệu OOXML như DOCX hoặc DOTX được tạo bằng WPS Office. Trong trường hợp đó, các yếu tố đánh dấu tài liệu thiết yếu có thể bị thiếu hoặc có thể được hiểu khác đi khiến Microsoft Word 2019 hiển thị tài liệu đó khác với Microsoft Word 2010.

Theo mặc định, Aspose.Words mở tài liệu bằng quy tắc Microsoft Word 2019. Nếu bạn cần làm cho việc tải tài liệu xuất hiện giống như nó xảy ra trong một trong các phiên bản ứng dụng Microsoft Word trước đó, bạn nên chỉ định rõ ràng phiên bản mong muốn bằng cách sử dụng thuộc tính [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/) của lớp **LoadOptions**.

Ví dụ mã sau đây cho thấy cách đặt phiên bản Microsoft Word với các tùy chọn tải:

{{< gist "aspose-words-gists" "62b066455ff6af0e8727e3fddae47aee" "load-docx-with-msword-version.cs" >}}

## Đặt tùy chọn ngôn ngữ để thay đổi giao diện

Chi tiết hiển thị tài liệu trong Microsoft Word không chỉ phụ thuộc vào phiên bản ứng dụng và giá trị thuộc tính **MswVersion** mà còn phụ thuộc vào cài đặt ngôn ngữ. Microsoft Word có thể hiển thị tài liệu theo cách khác nhau tùy thuộc vào cài đặt hộp thoại "Tùy chọn ngôn ngữ Office", có thể tìm thấy trong "Tệp → Tùy chọn → Ngôn ngữ". Bằng cách sử dụng hộp thoại này, người dùng có thể chọn, ví dụ: ngôn ngữ chính, ngôn ngữ soát lỗi, ngôn ngữ hiển thị, v.v. Aspose.Words cung cấp thuộc tính [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/) tương đương với hộp thoại này. Nếu đầu ra Aspose.Words khác với đầu ra Microsoft Word, hãy đặt giá trị thích hợp cho **EditingLanguage** – điều này có thể cải thiện tài liệu đầu ra.

Ví dụ mã sau đây cho thấy cách đặt tiếng Nhật là **EditingLanguage**:

{{< gist "aspose-words-gists" "5d49772a182a61eac0dcb9c13c98bc6e" "load-docx-with-japanese-as-editing-language.cs" >}}

## Sử dụng WarningCallback để kiểm soát sự cố khi tải tài liệu

Một số tài liệu có thể bị hỏng, chứa các mục nhập không hợp lệ hoặc có các tính năng hiện không được Aspose.Words hỗ trợ. Nếu bạn muốn biết về các sự cố xảy ra khi tải tài liệu, Aspose.Words cung cấp giao diện [IWarningCallback](https://reference.aspose.com/words/net/aspose.words/iwarningcallback/).

Ví dụ mã sau đây cho thấy việc triển khai giao diện **IWarningCallback**:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "document-loading-warning-callback.cs" >}}

Để nhận thông tin về tất cả các sự cố trong suốt thời gian tải, hãy sử dụng thuộc tính [WarningCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/warningcallback/).

Ví dụ mã sau đây cho thấy cách sử dụng thuộc tính này:

{{< gist "aspose-words-gists" "98a2dc9a7968c829a68373fa824822c9" "load-docx-with-warning-callback.cs" >}}

## Sử dụng ResourceLoadingCallback để kiểm soát việc tải tài nguyên bên ngoài

Tài liệu có thể chứa các liên kết bên ngoài tới hình ảnh nằm ở đâu đó trên đĩa cục bộ, mạng hoặc Internet. Aspose.Words tự động tải những hình ảnh như vậy vào tài liệu, nhưng có những trường hợp cần phải kiểm soát quá trình này. Ví dụ: để quyết định xem chúng ta có thực sự cần tải một hình ảnh nào đó hay có thể bỏ qua nó. Tùy chọn tải [ResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/resourceloadingcallback/) cho phép bạn kiểm soát điều này.

Ví dụ mã sau đây cho thấy việc triển khai giao diện [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "html-linked-resource-loading-callback.cs" >}}

Ví dụ mã sau đây cho biết cách sử dụng thuộc tính **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "513c134d5e8e8126c385324f2d001a9b" "load-html-with-resource-loading-callback.cs" >}}

## Sử dụng TempFolder để tránh ngoại lệ bộ nhớ

Aspose.Words hỗ trợ các tài liệu cực lớn có hàng nghìn trang chứa đầy nội dung phong phú. Việc tải những tài liệu như vậy có thể cần nhiều RAM. Trong quá trình tải, Aspose.Words cần nhiều bộ nhớ hơn để chứa các cấu trúc tạm thời được sử dụng để phân tích tài liệu.

Nếu bạn gặp sự cố với ngoại lệ Hết bộ nhớ trong khi tải tài liệu, hãy thử sử dụng thuộc tính [TempFolder](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/tempfolder/). Trong trường hợp này, Aspose.Words sẽ lưu trữ một số dữ liệu trong các tệp tạm thời thay vì bộ nhớ và điều này có thể giúp tránh ngoại lệ như vậy.

Ví dụ mã sau đây cho biết cách đặt **TempFolder**:

{{< gist "aspose-words-gists" "80fb635124a6afc0e75b9f17d1eab40c" "load-docx-using-temp-folder.cs" >}}

## Đặt mã hóa rõ ràng

Hầu hết các định dạng tài liệu hiện đại đều lưu trữ nội dung của chúng bằng Unicode và không yêu cầu xử lý đặc biệt. Mặt khác, vẫn còn nhiều tài liệu sử dụng một số mã hóa tiền Unicode và đôi khi bỏ sót thông tin mã hóa hoặc thậm chí bản chất không hỗ trợ mã hóa thông tin. Aspose.Words cố gắng tự động phát hiện mã hóa thích hợp theo mặc định, nhưng trong một số ít trường hợp, bạn có thể cần sử dụng mã hóa khác với mã hóa được thuật toán nhận dạng mã hóa của chúng tôi phát hiện. Trong trường hợp này, hãy sử dụng thuộc tính [Encoding](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/encoding/) để nhận hoặc đặt mã hóa.

Ví dụ về mã sau đây cho biết cách đặt mã hóa để ghi đè mã hóa được chọn tự động:

{{< gist "aspose-words-gists" "507181f2c99ba13012c441f1c436d9a7" "load-txt-using-encoding.cs" >}}

## Tải tài liệu được mã hóa

Bạn có thể tải tài liệu Word được mã hóa bằng mật khẩu. Để thực hiện việc này, hãy sử dụng một hàm tạo quá tải đặc biệt, chấp nhận đối tượng [LoadOptions](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/). Đối tượng này chứa thuộc tính [Password](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/password/), chỉ định chuỗi mật khẩu.

Ví dụ mã sau đây cho thấy cách tải tài liệu được mã hóa bằng mật khẩu:

{{< gist "aspose-words-gists" "5b929b4208996737657de94443bc2852" "load-encrypted-docx.cs" >}}

Nếu bạn không biết trước liệu tệp có được mã hóa hay không, bạn có thể sử dụng lớp [FileFormatUtil](https://reference.aspose.com/words/net/aspose.words/fileformatutil/), lớp này cung cấp các phương thức tiện ích để làm việc với các định dạng tệp, chẳng hạn như phát hiện định dạng tệp hoặc chuyển đổi phần mở rộng tệp sang/từ các bảng liệt kê định dạng tệp. Để phát hiện xem tài liệu có được mã hóa hay không và có yêu cầu mật khẩu để mở hay không, hãy sử dụng thuộc tính [IsEncrypted](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/isencrypted/).

Ví dụ về mã sau đây cho biết cách xác minh OpenDocument xem nó có được mã hóa hay không:

{{< gist "aspose-words-gists" "935e41f0f59c7d8bd8a082ccc14f6b84" "verify-odt-is-encrypted.cs" >}}
