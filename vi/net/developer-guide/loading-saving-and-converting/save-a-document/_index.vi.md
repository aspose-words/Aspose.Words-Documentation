---
title: Lưu tài liệu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Lưu tài liệu
linktitle: Lưu tài liệu
type: docs
description: "Lưu tài liệu ở bất kỳ định dạng được hỗ trợ nào bằng C#."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /vi/net/save-a-document/
---

Hầu hết các tác vụ bạn cần thực hiện với Aspose.Words đều liên quan đến việc lưu tài liệu. Để lưu tài liệu, Aspose.Words cung cấp phương thức [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) của lớp [Document](https://reference.aspose.com/words/net/aspose.words/document/). Có những trường hợp quá tải cho phép lưu tài liệu vào một tệp, luồng hoặc đối tượng ASP.NET HttpResponse để gửi tới trình duyệt máy khách. Tài liệu có thể được lưu ở bất kỳ định dạng lưu nào được Aspose.Words hỗ trợ. Để biết danh sách tất cả các định dạng lưu được hỗ trợ, hãy xem bảng liệt kê [SaveFormat](https://reference.aspose.com/words/net/aspose.words/saveformat/).

## Lưu vào tệp {#save-a-document-to-a-file}

Chỉ cần sử dụng phương pháp [Save](https://reference.aspose.com/words/net/aspose.words/document/save/) với tên tệp. Aspose.Words sẽ xác định định dạng lưu từ phần mở rộng tệp mà bạn chỉ định.

Ví dụ mã sau đây cho biết cách tải và lưu tài liệu vào một tệp:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc).

{{% /alert %}}

## Lưu vào luồng {#save-a-document-to-a-stream}

Truyền một đối tượng luồng vào phương thức [Save](https://reference.aspose.com/words/net/aspose.words/document/save/). Cần phải chỉ định rõ ràng định dạng lưu khi lưu vào luồng.

Ví dụ mã sau đây cho biết cách tải và lưu tài liệu vào luồng:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

## Gửi tài liệu tới trình duyệt máy khách {#sending-a-document-to-a-client-browser}

Để gửi tài liệu đến trình duyệt máy khách, hãy sử dụng tính năng quá tải đặc biệt có bốn tham số: tên tệp, định dạng lưu, loại lưu và đối tượng ASP.NET HttpResponse. Cách tài liệu sẽ được hiển thị cho người dùng được thể hiện bằng bảng liệt kê [ContentDisposition](https://reference.aspose.com/words/net/aspose.words/contentdisposition/), xác định xem tài liệu được gửi tới trình duyệt có cung cấp tùy chọn để tự mở trực tiếp trong trình duyệt hay trong ứng dụng được liên kết với phần mở rộng tệp hay không.

Ví dụ về mã sau đây cho biết cách gửi tài liệu đến trình duyệt máy khách từ mã ASP.NET:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

Quá tải phương pháp `Save` này không khả dụng khi sử dụng DLL hồ sơ khách hàng .NET. DLL này nằm trong thư mục **net3.5_ClientProfile**. Hồ sơ khách hàng .NET không bao gồm các tập hợp như **System.Web**, do đó, **HttpResponse** không có sẵn. Điều này hoàn toàn là do thiết kế.

Điều này có thể biểu hiện dưới dạng lỗi:

**"Không quá tải cho phương thức 'Save' lấy tham số '4'."**

Nếu bạn cần sử dụng Aspose.Words trong ứng dụng ASP.NET, bạn nên sử dụng .NET 2.0 DLL ở nơi có sẵn mức quá tải chính xác, như được mô tả trong bài viết này.

## Lưu vào PCL {#save-a-document-to-pcl}

Aspose.Words hỗ trợ lưu tài liệu vào PCL (Ngôn ngữ lệnh máy in). Aspose.Words có thể lưu tài liệu sang định dạng PCL 6 (PCL 6 nâng cao hoặc PCL XL). Lớp `PclSaveOptions` có thể được sử dụng để chỉ định các tùy chọn bổ sung khi lưu tài liệu sang định dạng PCL.

Ví dụ mã sau đây cho thấy cách lưu tài liệu vào PCL bằng các tùy chọn lưu:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Xem thêm

- Thông tin về đối tượng ASP.NET [HttpResponse](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8)
