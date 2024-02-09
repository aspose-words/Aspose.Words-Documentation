---
title: Chỉ định tùy chọn tải trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Chỉ định tùy chọn tải
linktitle: Chỉ định tùy chọn tải
description: "Kiểm soát quá trình tải chính xác hơn bằng Python."
type: docs
weight: 10
url: /vi/python-net/specify-load-options/
---

Khi tải tài liệu, bạn có thể đặt một số thuộc tính nâng cao. Aspose.Words cung cấp cho bạn lớp [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/), cho phép kiểm soát quá trình tải chính xác hơn. Một số định dạng tải có lớp tương ứng chứa các tùy chọn tải cho định dạng tải này, ví dụ: có [PdfLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/pdfloadoptions/) để tải sang định dạng PDF hoặc [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/) để tải sang TXT. Bài viết này cung cấp các ví dụ về cách làm việc với các tùy chọn của lớp [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

## Đặt phiên bản Microsoft Word để thay đổi giao diện

Các phiên bản khác nhau của ứng dụng Microsoft Word có thể hiển thị tài liệu theo cách khác nhau. Ví dụ: có một sự cố phổ biến với các tài liệu OOXML như DOCX hoặc DOTX được tạo bằng WPS Office. Trong trường hợp đó, các yếu tố đánh dấu tài liệu thiết yếu có thể bị thiếu hoặc có thể được hiểu khác đi khiến Microsoft Word 2019 hiển thị tài liệu đó khác với Microsoft Word 2010.

Theo mặc định, Aspose.Words mở tài liệu bằng quy tắc Microsoft Word 2019. Nếu bạn cần làm cho việc tải tài liệu xuất hiện giống như nó xảy ra trong một trong các phiên bản ứng dụng Microsoft Word trước đó, bạn nên chỉ định rõ ràng phiên bản mong muốn bằng cách sử dụng thuộc tính [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) của lớp [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/).

Ví dụ mã sau đây cho thấy cách đặt phiên bản Microsoft Word với các tùy chọn tải:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-SetMSWordVersion.py" >}}

## Đặt tùy chọn ngôn ngữ để thay đổi giao diện

Chi tiết hiển thị tài liệu trong Microsoft Word không chỉ phụ thuộc vào phiên bản ứng dụng và giá trị thuộc tính [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) mà còn phụ thuộc vào cài đặt ngôn ngữ. Microsoft Word có thể hiển thị tài liệu theo cách khác nhau tùy thuộc vào cài đặt hộp thoại "Tùy chọn ngôn ngữ Office", có thể tìm thấy trong "Tệp → Tùy chọn → Ngôn ngữ". Bằng cách sử dụng hộp thoại này, người dùng có thể chọn, ví dụ: ngôn ngữ chính, ngôn ngữ soát lỗi, ngôn ngữ hiển thị, v.v. Aspose.Words cung cấp thuộc tính [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) tương đương với hộp thoại này. Nếu đầu ra Aspose.Words khác với đầu ra Microsoft Word, hãy đặt giá trị thích hợp cho [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/) – điều này có thể cải thiện tài liệu đầu ra.

Ví dụ mã sau đây cho thấy cách đặt tiếng Nhật là [EditingLanguage](https://reference.aspose.com/words/python-net/aspose.words.loading/editinglanguage/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

## Sử dụng TempFolder để tránh ngoại lệ bộ nhớ

Aspose.Words hỗ trợ các tài liệu cực lớn có hàng nghìn trang chứa đầy nội dung phong phú. Việc tải những tài liệu như vậy có thể cần nhiều RAM. Trong quá trình tải, Aspose.Words cần nhiều bộ nhớ hơn để chứa các cấu trúc tạm thời được sử dụng để phân tích tài liệu.

Nếu bạn gặp sự cố với ngoại lệ Hết bộ nhớ trong khi tải tài liệu, hãy thử sử dụng thuộc tính [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/). Trong trường hợp này, Aspose.Words sẽ lưu trữ một số dữ liệu trong các tệp tạm thời thay vì bộ nhớ và điều này có thể giúp tránh ngoại lệ như vậy.

Ví dụ mã sau đây cho biết cách đặt [temp_folder](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/temp_folder/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UseTempFolder.py" >}}

## Đặt mã hóa rõ ràng

Hầu hết các định dạng tài liệu hiện đại đều lưu trữ nội dung của chúng bằng Unicode và không yêu cầu xử lý đặc biệt. Mặt khác, vẫn còn nhiều tài liệu sử dụng một số mã hóa tiền Unicode và đôi khi bỏ sót thông tin mã hóa hoặc thậm chí bản chất không hỗ trợ mã hóa thông tin. Aspose.Words cố gắng tự động phát hiện mã hóa thích hợp theo mặc định, nhưng trong một số ít trường hợp, bạn có thể cần sử dụng mã hóa khác với mã hóa được thuật toán nhận dạng mã hóa của chúng tôi phát hiện. Trong trường hợp này, hãy sử dụng thuộc tính [encoding](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/encoding/) để nhận hoặc đặt mã hóa.

Ví dụ về mã sau đây cho biết cách đặt mã hóa để ghi đè mã hóa được chọn tự động:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-LoadWithEncoding.py" >}}

## Tải tài liệu được mã hóa

Bạn có thể tải tài liệu Word được mã hóa bằng mật khẩu. Để thực hiện việc này, hãy sử dụng một hàm tạo quá tải đặc biệt, chấp nhận đối tượng [LoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/). Đối tượng này chứa thuộc tính [password](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/password/), chỉ định chuỗi mật khẩu.

Ví dụ về mã sau đây cho thấy cách tải tài liệu được mã hóa bằng mật khẩu:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-OpenEncryptedDocument.py" >}}

Nếu bạn không biết trước liệu tệp có được mã hóa hay không, bạn có thể sử dụng lớp [FileFormatUtil](https://reference.aspose.com/words/python-net/aspose.words/fileformatutil/), lớp này cung cấp các phương thức tiện ích để làm việc với các định dạng tệp, chẳng hạn như phát hiện định dạng tệp hoặc chuyển đổi phần mở rộng tệp sang/từ các bảng liệt kê định dạng tệp. Để phát hiện xem tài liệu có được mã hóa hay không và có yêu cầu mật khẩu để mở hay không, hãy sử dụng thuộc tính [is_encrypted](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/is_encrypted/).

Ví dụ về mã sau đây cho thấy cách xác minh tài liệu có được mã hóa hay không:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-working_with_file_format-VerifyEncryptedDocument.py" >}}
