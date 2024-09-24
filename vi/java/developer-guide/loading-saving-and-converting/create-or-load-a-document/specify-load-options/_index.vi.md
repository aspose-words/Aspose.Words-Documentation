---
title: Chỉ định các tùy chọn tải trong Java
second_title: Aspose.Words cho Java
articleTitle: Chỉ định Tùy chọn tải
linktitle: Chỉ định Tùy chọn tải
description: "Thiết lập các thuộc tính nâng cao khi tải một tài liệu bằng Java để có được quyền kiểm soát chính xác hơn quá trình."
type: docs
weight: 10
url: /vi/java/specify-load-options/
---

Khi tải một tài liệu bạn có thể đặt một số thuộc tính nâng cao. Aspose.Words cung cấp cho bạn lớp [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/), điều này cho phép kiểm soát chính xác hơn quá trình tải. Một số định dạng tải xuống có một lớp tương ứng mà giữ các tùy chọn tải cho định dạng này tải xuống, ví dụ, có [PdfLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfloadoptions/) cho tải để định dạng PDF hoặc [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) cho tải để định dạng TXT. Bài viết này cung cấp các ví dụ về việc làm việc với các tùy chọn của lớp **LoadOptions**.

## Đặt Microsoft Word Phiên bản để thay đổi kiểu dáng

Các phiên bản khác nhau của ứng dụng Microsoft Word có thể hiển thị các tài liệu với cách thức khác nhau. Ví dụ có một vấn đề nổi tiếng với các tập tin OOXML như DOCX hay DOTX sản xuất bằng văn phòng. Trong những trường hợp như vậy, các yếu tố đánh dấu tài liệu cơ bản có thể thiếu hoặc được giải thích khác nhau gây ra Microsoft Word 2019 hiển thị tài liệu khác so với Microsoft Word 2010.

Theo mặc định Aspose.Words mở các tài liệu sử dụng quy tắc năm Microsoft Word 2019. Nếu bạn cần để làm cho việc tải tài liệu xuất hiện như trong một trong các phiên bản ứng dụng trước đó Microsoft Word, bạn nên chỉ rõ phiên bản mong muốn bằng thuộc tính [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) của lớp **LoadOptions**.

Mã ví dụ sau cho thấy cách đặt phiên bản Microsoft Word với các tùy chọn tải:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetMSWordVersion.java" >}}

## Đặt sự ưa thích ngôn ngữ để thay đổi vẻ ngoài

Những chi tiết hiển thị một tài liệu trong Microsoft Word phụ thuộc không chỉ vào phiên bản ứng dụng và giá trị thuộc tính **MswVersion** mà còn phụ thuộc vào các cài đặt ngôn ngữ. Microsoft Word có thể hiển thị tài liệu khác nhau tùy thuộc vào các cài đặt "Office Language Preferences" (Cài đặt Ngôn ngữ Office), được tìm thấy trong "File → Options → Languаge". Sử dụng hộp thoại này người dùng có thể chọn, ví dụ, ngôn ngữ chính, ngôn ngữ kiểm tra, ngôn ngữ hiển thị, và như vậy. Aspose.Words cung cấp thuộc tính [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getLanguagePreferences) là tương đương của hộp thoại này. Nếu Aspose.Words đầu ra khác với Microsoft Word đầu ra thì hãy đặt giá trị phù hợp cho **EditingLanguage** – điều này có thể cải thiện tài liệu đầu ra.

Mẫu mã sau cho thấy cách đặt tiếng Nhật là **EditingLanguage**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

## Sử dụng WarningCallback để Kiểm soát Những Vấn đề khi Tải Tài liệu

Một số tài liệu có thể bị hỏng, chứa các mục nhập không hợp lệ hoặc có các tính năng chưa được hỗ trợ bởi Aspose.Words. Nếu bạn muốn biết về vấn đề xảy ra khi tải một tài liệu, Aspose.Words cung cấp giao diện [IWarningCallback](https://reference.aspose.com/words/java/com.aspose.words/iwarningcallback/)

Ví dụ về mã sau cho thấy việc thực hiện của giao diện **IWarningCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-DocumentLoadingWarningCallback.java" >}}

Để có được thông tin về tất cả những vấn đề xảy ra trong thời gian tải, hãy dùng thuộc tính [WarningCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getWarningCallback).

Mẫu mã sau cho thấy cách sử dụng tính chất này:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsWarningCallback.java" >}}

## Dùng ResourceLoadingCallback để Kiểm soát Tải Tài nguyên Ngoài

Một tài liệu có thể chứa các liên kết ngoài đến hình ảnh nằm ở đâu đó trên một đĩa cục bộ, mạng hay internet. Aspose.Words tự động tải vào hình ảnh như vậy vào một tài liệu, nhưng có những tình huống khi quá trình này cần phải được kiểm soát. Ví dụ để quyết định chúng ta có thực sự cần tải một hình ảnh cụ thể hay có lẽ bỏ qua nó. Tùy chọn tải lên [ResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getResourceLoadingCallback) cho phép bạn kiểm soát điều này.

Mã ví dụ sau cho thấy việc thực hiện giao diện [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-HtmlLinkedResourceLoadingCallback.java" >}}

Mã ví dụ sau cho thấy cách sử dụng thuộc tính **ResourceLoadingCallback**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-LoadOptionsCallbacks-LoadOptionsResourceLoadingCallback.java" >}}

## Hãy dùng "TempFolder" để tránh ngoại lệ bộ nhớ

Aspose.Words hỗ trợ các tài liệu cực kỳ lớn có hàng ngàn trang đầy nội dung phong phú. Tải những tài liệu như vậy có thể yêu cầu rất nhiều RAM. Trong quá trình tải, Aspose.Words cần nhiều bộ nhớ hơn để giữ các cấu trúc tạm thời được sử dụng để phân tích một tài liệu.

Nếu bạn gặp lỗi ngoại lệ "Out of Memory" khi tải một tài liệu, hãy thử sử dụng thuộc tính [TempFolder](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getTempFolder). Trong trường hợp này, Aspose.Words sẽ lưu trữ một số dữ liệu trong các tập tin tạm thời thay vì bộ nhớ, và điều này có thể giúp tránh được sự ngoại lệ như thế này.

Ví dụ mã sau cho thấy cách thiết lập **TempFolder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-SetTempFolder.java" >}}

## Đặt mã hóa rõ ràng

Hầu hết định dạng tài liệu hiện đại lưu trữ nội dung của họ trong Unicode và không yêu cầu xử lý đặc biệt. Mặt khác, vẫn còn nhiều tài liệu sử dụng một số mã hóa trước Unicode và đôi khi hoặc không có thông tin mã hóa hoặc thậm chí không hỗ trợ mã hóa thông tin theo bản chất. Aspose.Words cố gắng phát hiện tự động mã hóa phù hợp mặc định, nhưng trong trường hợp hiếm hoi bạn có thể cần phải sử dụng mã hóa khác với mã hóa được phát hiện bởi thuật toán nhận dạng mã hóa của chúng tôi. Trong trường hợp này, sử dụng thuộc tính [Encoding](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getEncoding) để lấy hoặc đặt mã hóa.

Mã ví dụ sau cho thấy cách thiết lập mã hóa để ghi đè lên mã được chọn tự động:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-LoadOptionsEncoding.java" >}}

## Tải các tài liệu đã mã hóa

Bạn có thể tải các tài liệu word đã được mã hóa bằng mật khẩu. Để thực hiện điều này, hãy dùng một nhà khai thác quá tải đặc biệt chấp nhận một [LoadOptions](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/) đối tượng. Đối tượng này chứa thuộc tính [Password](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPassword), chỉ định chuỗi mật khẩu.

Ví dụ mã sau cho thấy cách tải một tài liệu đã được mã hóa bằng mật khẩu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-OpenDocument-OpenEncryptedDocument.java" >}}

Nếu bạn không biết trước liệu tập tin có được mã hóa hay không, bạn có thể sử dụng lớp [FileFormatUtil](https://reference.aspose.com/words/java/com.aspose.words/fileformatutil/), cung cấp các phương thức tiện ích cho việc làm việc với định dạng tập tin, chẳng hạn như xác định định dạng tập tin hoặc chuyển đổi phần mở rộng tập tin thành/từ các enum về định dạng tập tin. Để phát hiện xem tài liệu có bị mã hóa và yêu cầu mật khẩu để mở nó, hãy sử dụng thuộc tính [IsEncrypted](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#isEncrypted).

Ví dụ về mã sau cho thấy cách xác minh OpenDocument xem nó có được mã hóa hay không:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SpecifyLoadOptions-VerifyODTdocument.java" >}}
