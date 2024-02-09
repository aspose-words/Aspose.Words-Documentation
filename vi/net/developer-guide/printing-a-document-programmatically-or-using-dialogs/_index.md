---
title: In tài liệu ở định dạng C#
second_title: Aspose.Words cho .NET
articleTitle: In tài liệu theo chương trình hoặc sử dụng hộp thoại
linktitle: In tài liệu theo chương trình hoặc sử dụng hộp thoại
description: "In tài liệu trên Server bằng XpsPrint API không được quản lý hoặc qua máy in đã chọn với Hộp thoại Xem trước và Cài đặt In ở dạng C#."
type: docs
weight: 55
url: /vi/net/print-a-document-programmatically-or-using-dialogs/
---

Bài viết này mô tả cách in tài liệu xử lý văn bản từ ứng dụng Dịch vụ ASP.NET hoặc Windows bằng Aspose.Words và `XpsPrint` API. Nó cũng trình bày các phương pháp in tài liệu bằng các hộp thoại Cài đặt, Xem trước bản in và Tiến trình in, đồng thời giải thích cách giảm thời gian của lệnh in tài liệu đầu tiên.

## In tài liệu trên Server thông qua `XpsPrint` API

Phần này dành cho những người dùng muốn gửi tài liệu XPS tới XpsPrint API không được quản lý từ một ứng dụng .NET bằng Aspose.Words.

### Hạn chế của việc in tài liệu trong ứng dụng Dịch vụ ASP.NET hoặc Windows

Khi phát triển một ứng dụng .NET tạo ra một số kết quả in ra, bạn thường có thể sử dụng các lớp được cung cấp trong không gian tên *System.Drawing.Printing* hoặc các lớp Tổ chức Trình bày Windows (WPF). Tuy nhiên, nếu ứng dụng là ứng dụng ASP.NET hoặc Dịch vụ Windows thì các tùy chọn in sẽ bị hạn chế vì Microsoft không khuyến khích sử dụng phương pháp này. Các lớp In .NET Framework không được ứng dụng dịch vụ hỗ trợ. Điều này bao gồm các trang ASP, thường chạy trong ngữ cảnh của dịch vụ máy chủ.

Các lớp trong không gian tên *System.Drawing.Printing* không được hỗ trợ để sử dụng trong dịch vụ Windows hoặc ứng dụng hay dịch vụ ASP.NET và việc cố gắng sử dụng chúng có thể làm giảm hiệu suất dịch vụ, ngoại lệ trong thời gian chạy và các vấn đề khác. Việc sử dụng WPF để xây dựng các dịch vụ Windows cũng không được hỗ trợ. Vì WPF là một công nghệ trình bày nên dịch vụ Windows yêu cầu các quyền thích hợp để thực hiện các hoạt động trực quan liên quan đến tương tác của người dùng. Nếu dịch vụ Windows không có các quyền như vậy thì có thể xảy ra những kết quả không mong muốn.

Đối tượng Aspose.Words [Document](https://reference.aspose.com/words/net/aspose.words/document/) cung cấp một họ các phương thức [Print](https://reference.aspose.com/words/net/aspose.words/document/methods/print/index) để in tài liệu. Các phương thức này sử dụng các lớp in .NET được xác định trong không gian tên *System.Drawing.Printing*. Có nhiều khách hàng Aspose.Words đã sử dụng thành công chúng để in trong các ứng dụng phía máy chủ của họ. Tuy nhiên, bài viết này trình bày một phương pháp in thay thế phù hợp với khuyến nghị của Microsoft.

### Phương pháp in tài liệu trên Server

Cách thích hợp để in tài liệu theo Microsoft là sử dụng XpsPrint API không được quản lý. API này có sẵn trên Windows 7, Windows Server 2008 R2 và trên Windows Vista với điều kiện là Bản cập nhật nền tảng cho Windows Vista được cài đặt.

Vì Aspose.Words có thể dễ dàng chuyển đổi bất kỳ tài liệu nào sang XPS, bạn chỉ cần viết mã chuyển tài liệu XPS sang `XpsPrint` API. Vấn đề duy nhất là `XpsPrint` API không được quản lý và yêu cầu một số kiến thức về công nghệ Platform Invoke.

Để in một tài liệu, Aspose.Words cung cấp một lớp **XpsPrintHelper** chứa một phương thức Print đơn giản, trong đó bạn chỉ cần chỉ định các tham số sau (xem thêm chi tiết trong bài viết [In tài liệu qua XPS API](/words/net/missing-features-in-openxml/)):

- Tài liệu bạn muốn in.
- Tên máy in.
- Tên công việc (tùy chọn).
- Giá trị Boolean, chỉ định liệu chương trình có nên đợi cho đến khi lệnh in hoàn tất hay không. Do đó, hệ thống sẽ kiểm tra xem tài liệu đã được in thành công hay quay lại ngay sau khi gửi lệnh in. Trong trường hợp cuối cùng, không thể xác định liệu lệnh in có thành công hay không.

Khi gặp bất kỳ vấn đề nào khi gửi hoặc in tài liệu, phương pháp này sẽ đưa ra một ngoại lệ.

Ví dụ mã bên dưới cho thấy cách in tài liệu bằng lớp **XpsPrintHelper**:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Khi bạn chạy dự án, nó sẽ in một tài liệu mẫu trên máy in được chỉ định và mở cửa sổ bảng điều khiển để hiển thị kết quả in. Khi lệnh in hoàn tất hoặc có lỗi, hệ thống sẽ hiển thị thông báo thành công hoặc văn bản về ngoại lệ được ném ra.

Bạn cũng có thể đặt một số cài đặt in bằng lớp [PageSetup](https://reference.aspose.com/words/net/aspose.words/pagesetup/). Ví dụ: trong Microsoft Word, các khay máy in được xác định cho từng phần và dành riêng cho máy in. Do đó, bạn có thể thay đổi các giá trị này theo chương trình cho từng phần thông qua thuộc tính [FirstPageTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/firstpagetray/) và [OtherPagesTray](https://reference.aspose.com/words/net/aspose.words/pagesetup/otherpagestray/).

{{% alert color="primary" %}}

Trong một số trường hợp, bạn có thể cần sử dụng mẫu này mà không cần Aspose.Words. Ví dụ: khi bạn đã có tài liệu XPS và chỉ muốn in nó từ ứng dụng Dịch vụ ASP.NET hoặc Windows. Sau đó, bạn có thể xóa phương thức `Print`.

{{% /alert %}}

Có hai tình trạng quá tải của phương pháp **XpsPrintHelper**.**Print**. Quá tải đầu tiên lấy một đối tượng [Document](https://reference.aspose.com/words/net/aspose.words/document/) và lưu nó vào `MemoryStream` ở định dạng XPS. Quá tải thứ hai chấp nhận một đối tượng `Stream`. Luồng phải chứa tài liệu ở định dạng XPS.

Bạn có thể tải xuống các ví dụ về nạp chồng phương thức từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip).

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## In tài liệu bằng hộp thoại cài đặt và xem trước bản in

Khi làm việc với các tài liệu, thường phải in chúng ra một máy in đã chọn. Sẽ rất hữu ích khi sử dụng hộp thoại xem trước bản in để kiểm tra trực quan cách tài liệu được in sẽ xuất hiện và chọn các tùy chọn in phù hợp.

Aspose.Words không có hộp thoại hoặc biểu mẫu tích hợp nhưng triển khai lớp [AsposeWordsPrintDocument](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/), dựa trên lớp .NET **PrintDocument**. Một phiên bản của lớp này có thể được chuyển tới biểu mẫu **PrintPreviewDialog** để xem trước và in tài liệu. Ngoài ra, lớp [Hộp thoại InXem trước](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) xác định đầu ra để truyền tới máy in.

Ví dụ sau đây cho thấy cách sử dụng các lớp này để in tài liệu từ Aspose.Words thông qua hộp thoại Cài đặt và xem trước bản in:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

Thuộc tính **AllowSomePages** cho phép bạn chọn nhiều trang để in nếu giá trị của thuộc tính này là True. Theo mặc định, tất cả các trang trong phạm vi đều được chọn để in.

{{% /alert %}}

Để tối ưu hóa giao diện của cài đặt hộp thoại Xem trước bản in, hãy chỉ định các thuộc tính của lớp **PrintPreviewDialog**.

## In nhiều trang trên một tờ

Việc linh hoạt hơn khi in tài liệu luôn có lợi. Sử dụng .NET và Aspose.Words, bạn có thể dễ dàng tinh chỉnh thao tác in để triển khai logic tùy chỉnh của mình bằng cách xác định cách tài liệu sẽ xuất hiện trên trang in.

Như trong phần trước, Aspose.Words triển khai lớp **MultipagePrintDocument**, dựa trên lớp .NET **PrintDocument**. Điều này có nghĩa là cơ sở hạ tầng in .NET hiện có có thể được sử dụng theo cách sao cho các hộp thoại in và xem trước bản in sẽ cho phép hiển thị trực quan tài liệu trước khi in. Lớp **MultipagePrintDocument** cung cấp khả năng in nhiều trang trên một tờ giấy.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Kết quả của ví dụ mã này được hiển thị bên dưới:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Ẩn hộp thoại tiến trình in khi in tài liệu

Hộp thoại Tiến trình In không xuất hiện khi in tài liệu bằng phương pháp [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). Tuy nhiên, hộp thoại này xuất hiện trong khi in bằng phương pháp [Print](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/) khác. Trong trường hợp này, để ngăn hộp thoại In xuất hiện, bạn nên chỉ định cài đặt máy in hợp lệ và bộ điều khiển in tiêu chuẩn trong phương pháp này, như trong ví dụ bên dưới:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

## Cách giảm thời gian của cuộc gọi đầu tiên để in tài liệu

Aspose.Words đọc và lưu trữ một số trường **PrinterSettings** để giảm thời gian in. Bạn có thể đạt được điều này bằng cách gọi phương thức [CachePrinterSettings](https://reference.aspose.com/words/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/). Phương thức này được gọi trước khi quá trình in bắt đầu nếu nó chưa được thực thi trước đó. Lưu ý rằng tổng thời gian in có và không có lệnh gọi của phương thức này gần như giống nhau. Mục đích của việc sử dụng phương pháp này là để giảm thời gian gọi đầu tiên của phương thức [Print](https://reference.aspose.com/words/net/aspose.words/document/print/). Ví dụ mã sau đây cho thấy cách sử dụng phương pháp này:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Xem thêm

- [Cập nhật nền tảng cho Windows Vista](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
