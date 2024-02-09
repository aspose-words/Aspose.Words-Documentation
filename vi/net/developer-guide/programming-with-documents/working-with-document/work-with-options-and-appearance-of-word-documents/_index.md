---
title: Tùy chọn và giao diện Tài liệu Word
second_title: Aspose.Words cho .NET
articleTitle: Làm việc với các tùy chọn và giao diện của tài liệu Word
linktitle: Làm việc với các tùy chọn và giao diện của tài liệu Word
description: "Kiểm soát sự xuất hiện của tài liệu Word có tính đến sự khác biệt giữa các phiên bản Microsoft Word khác nhau bằng C#."
type: docs
weight: 40
url: /vi/net/work-with-word-document-options-and-appearance/
---

Đôi khi, bạn có thể cần thay đổi giao diện của tài liệu, chẳng hạn như đặt tùy chọn ngôn ngữ hoặc số dòng trên mỗi trang. Aspose.Words cung cấp khả năng kiểm soát cách hiển thị tài liệu cũng như một số tùy chọn bổ sung. Bài viết này mô tả những khả năng như vậy.

## Đặt tùy chọn hiển thị tài liệu

Bạn có thể kiểm soát cách hiển thị tài liệu trong Microsoft Word bằng lớp [ViewOptions](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/). Ví dụ: bạn có thể đặt giá trị thu phóng tài liệu bằng thuộc tính [ZoomPercent](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/zoompercent/) hoặc chế độ xem bằng thuộc tính [ViewType](https://reference.aspose.com/words/net/aspose.words.settings/viewoptions/viewtype/).

Ví dụ về mã sau đây cho biết cách đảm bảo rằng tài liệu được hiển thị ở mức 50% khi mở trong Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetViewOption-SetViewOption.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu cho ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 không ghi bất kỳ hệ số thu phóng nào vào tài liệu và không còn đặt mức thu phóng mặc định từ giá trị được ghi vào tài liệu, thay vào đó, nó dường như sử dụng hệ số thu phóng của tài liệu mở cuối cùng.

{{% /alert %}}

## Đặt tùy chọn hiển thị trang

Nếu bạn muốn đặt số ký tự trên mỗi dòng, hãy sử dụng thuộc tính [CharactersPerLine](https://reference.aspose.com/words/net/aspose.words/pagesetup/charactersperline/). Bạn cũng có thể đặt số dòng trên mỗi trang cho tài liệu Word - sử dụng thuộc tính [LinesPerPage](https://reference.aspose.com/words/net/aspose.words/pagesetup/linesperpage/) để nhận hoặc đặt số dòng trên mỗi trang trong lưới tài liệu.

{{% alert color="primary" %}}

Trong Microsoft Word, bạn chỉ có thể đặt các tham số tương tự bằng cách sử dụng tab "Lưới tài liệu" trong hộp thoại "Thiết lập trang" khi cài đặt hỗ trợ ngôn ngữ Châu Á.

{{% /alert %}}

Ví dụ về mã sau đây cho biết cách đặt số ký tự trên mỗi dòng và số dòng trên mỗi trang cho tài liệu Microsoft Word:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocumentPageSetup-DocumentPageSetup.cs" >}}

## Đặt tùy chọn ngôn ngữ

Hiển thị tài liệu trong Microsoft Word tùy thuộc vào ngôn ngữ nào được đặt làm mặc định cho tài liệu này. Nếu không có ngôn ngữ nào được đặt ở chế độ mặc định, Microsoft Word sẽ lấy thông tin từ hộp thoại "Đặt tùy chọn ngôn ngữ văn phòng", ví dụ: bạn có thể tìm thấy hộp thoại này trong "Tệp → Tùy chọn → Ngôn ngữ" trong Microsoft Word 2019.

Với Aspose.Words, bạn cũng có thể thiết lập tùy chọn ngôn ngữ bằng lớp [LanguagePreferences](https://reference.aspose.com/words/net/aspose.words.loading/languagepreferences/). Cũng lưu ý rằng để hiển thị chính xác tài liệu của bạn, cần phải đặt phiên bản Microsoft Word phù hợp với quá trình tải tài liệu - điều này có thể được thực hiện bằng cách sử dụng thuộc tính [MswVersion](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/mswversion/).

{{% alert color="primary" %}}

Nếu tài liệu được tạo Aspose.Words của bạn trông không như mong đợi, hãy kiểm tra các giá trị **LanguagePreferences** và **MswVersion** rồi điều chỉnh chúng nếu cần để khớp với cài đặt cho phiên bản Microsoft Word của bạn.

{{% /alert %}}

Ví dụ mã sau đây cho thấy cách thêm tiếng Nhật vào ngôn ngữ chỉnh sửa:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-AddJapaneseAsEditinglanguages.cs" >}}

Ví dụ mã sau đây cho thấy cách đặt tiếng Nga làm ngôn ngữ chỉnh sửa mặc định:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-Setuplanguagepreferences-SetRussianAsDefaultEditingLanguage.cs" >}}

## Tối ưu hóa tài liệu cho một phiên bản Word cụ thể

Phương pháp [OptimizeFor](https://reference.aspose.com/words/net/aspose.words.settings/compatibilityoptions/optimizefor/) cho phép tối ưu hóa nội dung tài liệu cũng như hành vi Aspose.Words mặc định cho một phiên bản Microsoft Word cụ thể. Bạn có thể sử dụng phương pháp này để ngăn Microsoft Word hiển thị dải băng "Chế độ tương thích" khi tải tài liệu. Lưu ý rằng bạn cũng có thể cần đặt thuộc tính `Compliance` thành Iso29500_2008_Transitional hoặc cao hơn.

Ví dụ mã sau đây cho thấy cách tối ưu hóa nội dung tài liệu cho Microsoft Word 2016:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-SetCompatibilityOptions-OptimizeFor.cs" >}}
