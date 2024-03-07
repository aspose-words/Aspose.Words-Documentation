---
title: Aspose.Words cho .NET qua COM Interop
second_title: Aspose.Words cho .NET
articleTitle: Cách sử dụng Aspose.Words cho .NET qua COM Interop
linktitle: Cách sử dụng Aspose.Words cho .NET qua COM Interop
type: docs
description: "Sử dụng Aspose.Words cho .NET qua COM Interop bằng Python, PHP, VBScript, JScript và các ngôn ngữ lập trình khác."
weight: 130
url: /vi/net/how-to-use-aspose-words-via-com-interop/
---

Thông tin trong chủ đề này áp dụng cho các tình huống mà bạn muốn sử dụng Aspose.Words cho .NET thông qua COM Interop bằng bất kỳ ngôn ngữ lập trình nào sau đây:

- ASP
- Delphi ([Ví dụ](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
- Tập lệnh
- Perl
- PHP
- Xây dựng quyền lực
- Python
- VBScript
- Visual Basic

## Làm việc với COM Interop

Aspose.Words dành cho .NET thực thi dưới sự kiểm soát của .NET Framework và đây được gọi là mã được quản lý. Mã được viết bằng tất cả các ngôn ngữ trên chạy bên ngoài .NET Framework và được gọi là mã không được quản lý. Tương tác giữa mã không được quản lý và Aspose.Words xảy ra thông qua cơ sở .NET có tên là COM Interop.

Đối tượng Aspose.Words là đối tượng .NET, nhưng khi được sử dụng qua COM Interop, chúng xuất hiện dưới dạng đối tượng COM trong ngôn ngữ lập trình của bạn. Do đó, tốt nhất bạn nên đảm bảo rằng bạn biết cách tạo và sử dụng các đối tượng COM bằng ngôn ngữ lập trình của mình trước khi bắt đầu sử dụng Aspose.Words.

Dưới đây là những chủ đề mà cuối cùng bạn sẽ cần phải nắm vững:

- Sử dụng các đối tượng COM trong ngôn ngữ lập trình của bạn. Xem thêm tài liệu về ngôn ngữ lập trình của bạn và các chủ đề dành riêng cho ngôn ngữ đó trong tài liệu này.
- Làm việc với các đối tượng COM được hiển thị bởi .NET COM Interop. Xem [Interoperate với mã không được quản lý](https://learn.microsoft.com/en-us/dotnet/framework/interop/) và [Hiển thị các thành phần .NET Framework cho COM](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com) trong MSDN.
- Mô hình đối tượng tài liệu Aspose.Words. Xem Aspose.Words [Hướng dẫn dành cho nhà phát triển](/words/vi/net/developer-guide/) và [API Reference](https://reference.aspose.com/words/net/).

## Đăng ký Aspose.Words cho .NET bằng COM Interop

Sau [Cài đặt](/words/vi/net/installation/), bạn cần đăng ký Aspose.Words cho COM Interop bằng tiện ích `regasm.exe`.

`regasm.exe` là một công cụ có trong .NET Framework SDK. Tất cả các công cụ SDK .NET Framework đều nằm trong thư mục `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\`, ví dụ *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

Để lấy tệp tlb, hãy chạy `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase` bằng cmd, trong đó `<installdir>` là thư mục nơi bạn đã cài đặt Aspose.Words, thường là `%USERPROFILE%\.nuget\packages\aspose.words\`.

## Làm việc với Aspose.Words qua COM Interop

### ProgIDs

ProgID là viết tắt của "mã định danh lập trình", nó là tên của lớp `COM` mà bạn cần sử dụng để tạo một đối tượng.

Hiện tại, Aspose.Words định nghĩa bốn đối tượng COM có thể tạo công khai. ProgIDs của họ là:

- ComHelper
- Tài liệu
- Trình tạo tài liệu
- Giấy phép

ProgIDs bao gồm tên thư viện ("Aspose.Words") và tên lớp.

### Thư viện loại

Trong quá trình cài đặt, Aspose.Words.tlb (thư viện loại COM) được sao chép vào máy tính của bạn để:

- Dành cho .NET Framework 4.0 tới **<installdir>\lib\net40-client**

Nếu ngôn ngữ lập trình của bạn (ví dụ Visual Basic hoặc Delphi) cho phép bạn tham chiếu thư viện kiểu `COM`, thì hãy thêm tham chiếu đến **Aspose.Words.tlb** và bạn sẽ có thể xem tất cả các lớp, phương thức, thuộc tính và bảng liệt kê Aspose.Words trong Trình duyệt đối tượng của mình.

### Tạo đối tượng COM

Việc tạo đối tượng .NET tương tự như tạo đối tượng COM thông thường:

**VBScript**

```
Người trợ giúp mờ
Đặt trình trợ giúp = CreateObject("Aspose.Words.ComHelper")
 
```

Sau khi được tạo, bạn có thể truy cập các phương thức và thuộc tính của đối tượng, như thể đó là đối tượng `COM`:

**VBScript**

```
tài liệu mờ
Đặt doc = helper.Open("C:\my.doc")
 
```

Một số phương thức có tình trạng quá tải và chúng sẽ được COM Interop hiển thị với hậu tố số được thêm vào, ngoại trừ phương thức đầu tiên không thay đổi. Ví dụ: quá tải phương thức `Document.Save` trở thành `Document.Save`, `Document.Save_2`, `Document.Save_3`, v.v.

Để biết thêm thông tin, hãy xem thêm các bài viết dành riêng cho ngôn ngữ trong tài liệu này.

### Tạo một hội bao bọc

Nếu bạn cần sử dụng nhiều lớp, phương thức và thuộc tính Aspose.Words, hãy cân nhắc việc tạo một tập hợp trình bao bọc (sử dụng C# hoặc bất kỳ ngôn ngữ lập trình .NET nào khác), điều này sẽ giúp tránh sử dụng Aspose.Words trực tiếp từ mã không được quản lý.

Một cách tiếp cận tốt là phát triển một hợp ngữ .NET tham chiếu đến Aspose.Words và thực hiện tất cả công việc với nó, đồng thời chỉ hiển thị tập hợp tối thiểu các lớp và phương thức cho mã không được quản lý. Khi đó, ứng dụng của bạn sẽ chỉ hoạt động với thư viện trình bao bọc của bạn.

Việc giảm số lượng lớp và phương thức bạn cần gọi qua COM Interop có thể đơn giản hóa dự án của bạn vì việc sử dụng các lớp .NET thông qua COM Interop thường đòi hỏi các kỹ năng nâng cao.