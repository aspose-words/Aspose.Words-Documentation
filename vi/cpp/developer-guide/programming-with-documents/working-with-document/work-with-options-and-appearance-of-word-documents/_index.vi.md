---
title: Tùy chọn Và Sự Xuất hiện Của Tài liệu Word
second_title: Aspose.Words cho C++
articleTitle: Làm việc Với Các Tùy chọn Và Sự Xuất hiện Của Tài liệu Word
linktitle: Làm việc Với Các Tùy chọn Và Sự Xuất hiện Của Tài liệu Word
description: "Kiểm soát sự xuất hiện của Các Tài liệu Word có tính đến sự khác biệt giữa các phiên bản Microsoft Word khác nhau."
type: docs
weight: 40
url: /vi/cpp/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Đôi khi bạn có thể cần thay đổi giao diện của tài liệu, ví dụ: đặt tùy chọn ngôn ngữ hoặc số dòng trên mỗi trang.Aspose.Words cung cấp khả năng kiểm soát cách tài liệu sẽ được hiển thị, cũng như một số tùy chọn bổ sung. Bài viết này mô tả những khả năng như vậy.

## Đặt Tùy Chọn Hiển Thị Tài Liệu

Bạn có thể kiểm soát cách một tài liệu sẽ được hiển thị trong Microsoft Word bằng cách sử dụng lớp [ViewOptions](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/). Ví dụ: bạn có thể đặt giá trị thu phóng tài liệu bằng thuộc tính [ZoomPercent](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_zoompercent/) hoặc chế độ xem bằng thuộc tính [ViewType](https://reference.aspose.com/words/cpp/aspose.words.settings/viewoptions/get_viewtype/).

Ví dụ mã sau đây cho thấy cách đảm bảo rằng tài liệu được hiển thị ở mức 50% khi mở trong Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetViewOption-SetViewOption.cpp" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu cho ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 không ghi bất kỳ hệ số thu phóng nào vào tài liệu và không còn đặt thu phóng mặc định từ giá trị được ghi vào tài liệu, thay vào đó, nó dường như sử dụng hệ số thu phóng của tài liệu mở cuối cùng.

{{% /alert %}}

## Đặt Tùy Chọn Hiển Thị Trang

Nếu bạn muốn đặt số ký tự trên mỗi dòng, hãy sử dụng thuộc tính [CharactersPerLine](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_charactersperline/). Bạn cũng có thể đặt số dòng trên mỗi trang cho Tài liệu Word – sử dụng thuộc tính [LinesPerPage](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_linesperpage/) để lấy hoặc đặt số dòng trên mỗi trang trong lưới tài liệu.

{{% alert color="primary" %}}

Trong Microsoft Word, bạn có thể đặt các tham số tương tự bằng tab "Lưới Tài liệu" trong hộp thoại "Thiết lập Trang" chỉ khi cài đặt hỗ trợ ngôn ngữ Châu á.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách đặt số ký tự trên mỗi dòng và số dòng trên mỗi trang cho tài liệu Microsoft Word:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cpp" >}}

## Đặt Tùy Chọn Ngôn Ngữ

Hiển thị một tài liệu trong Microsoft Word phụ thuộc vào ngôn ngữ nào được đặt làm mặc định cho tài liệu này. Nếu không có ngôn ngữ nào được đặt trong mặc định, Microsoft Word lấy thông tin từ hộp thoại "Đặt Tùy chọn Ngôn ngữ Văn phòng", ví dụ: có thể tìm thấy trong "Tệp → Tùy chọn → Ngôn ngữ" trong Microsoft Word 2019.

Với Aspose.Words, bạn cũng có thể thiết lập tùy chọn ngôn ngữ bằng lớp [LanguagePreferences](https://reference.aspose.com/words/cpp/aspose.words.loading/languagepreferences/). Cũng lưu ý rằng để hiển thị chính xác tài liệu của bạn, cần phải đặt phiên bản Microsoft Word mà quá trình tải tài liệu phải khớp – điều này có thể được thực hiện bằng thuộc tính [MswVersion](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_mswversion/).

{{% alert color="primary" %}}

Nếu tài liệu được tạo Aspose.Words của bạn trông không như mong đợi, hãy kiểm tra các giá trị **LanguagePreferences** và **MswVersion** và điều chỉnh chúng nếu cần để khớp với cài đặt cho phiên bản Microsoft Word của bạn.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách thêm Tiếng Nhật vào ngôn ngữ chỉnh sửa:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cpp" >}}

Ví dụ mã sau đây cho thấy cách đặt tiếng nga làm ngôn ngữ chỉnh sửa mặc định:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cpp" >}}

## Tối ưu Hóa Tài liệu Cho Một Phiên Bản Word Cụ Thể

Phương pháp [OptimizeFor](https://reference.aspose.com/words/cpp/aspose.words.settings/compatibilityoptions/optimizefor/) cho phép tối ưu hóa nội dung tài liệu, cũng như hành vi Aspose.Words mặc định cho một phiên bản cụ thể của Microsoft Word. Bạn có thể sử dụng phương pháp này để ngăn Microsoft Word hiển thị ruy-băng "Chế độ Tương thích" khi tải tài liệu. Lưu ý rằng bạn cũng có thể cần đặt thuộc tính `Compliance` Thành Iso29500_2008_Transitional hoặc cao hơn.

Ví dụ mã sau đây cho thấy cách tối ưu hóa nội dung tài liệu cho Microsoft Word 2016:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cpp" >}}
