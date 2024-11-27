---
title: Mail Merge với XML Nguồn Dữ liệu trong C#
second_title: Aspose.Words cho .NET
articleTitle: Mail Merge với XML Nguồn Dữ Liệu
linktitle: Mail Merge với XML Nguồn Dữ Liệu
type: docs
description: "Sử dụng nhiều nguồn dữ liệu khác nhau khi thực hiện thao tác Mail Merge, bao gồm tệp XML bằng C#. Ưu điểm chính của việc sử dụng XML là khả năng xác định thứ bậc trực tiếp trong tài liệu."
keywords: "mail merge xml data source c#"
weight: 30
url: /vi/net/mail-merge-with-xml-data-source/
timestamp: 2024-07-11-08-07-06
---

Bạn có thể sử dụng nhiều nguồn dữ liệu khác nhau khi thực hiện thao tác Mail Merge, bao gồm tệp XML. Ưu điểm chính của việc sử dụng XML là khả năng xác định thứ bậc ngay trong tài liệu và sau đó chỉ cần chuyển nó sang Aspose.Words.

Bài viết này sẽ mô tả cách đọc dữ liệu từ tệp XML thay vì trực tiếp từ cơ sở dữ liệu và bao gồm XML làm nguồn dữ liệu để thực hiện thao tác Mail Merge.

## Ưu điểm của XML Như Một Nguồn Dữ liệu

XML nguồn dữ liệu rất tiện dụng để lưu trữ dữ liệu mà không cần chi phí cơ sở dữ liệu. Chúng rất phù hợp cho các ứng dụng ngoại tuyến, nơi người dùng cần thêm, chỉnh sửa và xóa dữ liệu khi họ không thể kết nối với cơ sở dữ liệu.

XML dữ liệu có thể là một nguồn dữ liệu tốt thay thế cho cơ sở dữ liệu quan hệ, đặc biệt nếu bạn làm việc với các ứng dụng web. Hầu hết các dịch vụ web sử dụng XML để trao đổi thông tin. XML - cơ sở dữ liệu định hướng được sử dụng tích cực trên thị trường hiện tại và các nhà phát triển cơ sở dữ liệu quan hệ đang thêm XML khả năng tương thích với sản phẩm của họ để có lợi nhuận cơ sở dữ liệu XML.

Vì XML lưu trữ dữ liệu ở định dạng văn bản thuần túy, nên bộ nhớ độc lập với nền tảng. Do đó, dữ liệu có thể dễ dàng xuất, nhập hoặc đơn giản là di chuyển. XML phổ biến như một nguồn dữ liệu vì nó cung cấp một cách để bảo tồn ý nghĩa ngữ nghĩa của dữ liệu khi giao tiếp giữa các ứng dụng khác nhau.

## Điền Vào Mẫu Hợp nhất Với Dữ liệu từ XML bằng DataSet

XML là tiêu chuẩn phổ biến để trao đổi dữ liệu và các định dạng tài liệu Microsoft Word là các định dạng phổ biến nhất cho các mẫu Mail Merge. Do đó, khả năng chạy Mail Merge từ tệp XML sang tài liệu mẫu Word đã trở thành một yêu cầu phổ biến.

Microsoft Word không cung cấp phương thức trực tiếp để làm việc với XML dữ liệu làm nguồn dữ liệu cho thao tác Mail Merge, trong khi Aspose.Words cho phép bạn thực hiện thao tác Mail Merge với dữ liệu từ nguồn dữ liệu XML. Lưu ý rằng cấu trúc của tài liệu XML cũng có thể thay đổi và dữ liệu vẫn sẽ được đọc chính xác. Điều này cho phép các loại tài liệu XML khác nhau được hợp nhất dễ dàng.

Sử dụng phương thức `ReadXML` để đọc lược đồ và dữ liệu XML vào đối tượng `DataSet`. Đối tượng này sau đó được sử dụng làm nguồn dữ liệu cho mail merge.

{{% alert color="primary" %}}

Bạn có thể sử dụng cùng một mẫu cho các nguồn dữ liệu khác nhau.

{{% /alert %}}

XML sau đây chứa dữ liệu cần thiết để điền vào mẫu hợp nhất:

{{< highlight csharp >}}
<?xml version="1.0" encoding="utf-8"?>
<customers>
	 <customer Name="John Ben Jan" ID="1" Domain="History" City="Boston"/>
 	<customer Name="Lisa Lane" ID="2" Domain="Chemistry" City="LA"/>
	 <customer Name="Dagomir Zits" ID="3" Domain="Heraldry" City="Milwaukee"/>
 	<customer Name="Sara Careira Santy" ID="4" Domain="IT" City="Miami"/>
</customers> 
{{< /highlight >}}

Ví dụ mã sau đây cho thấy cách tải dữ liệu XML vào DataSet và sau đó sử dụng nó làm nguồn dữ liệu:

{{< gist "aspose-words-gists" "0441f68c5209fec25c47d1a0a203fbb0" "xml-mail-merge.cs" >}}

{{% alert color="primary" %}}

Bạn có thể tải xuống tệp mẫu của ví dụ này từ [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Mail%20merge%20data%20-%20Customers.xml).

{{% /alert %}}

Bạn có thể nhận thấy sự khác biệt giữa mẫu trước khi thực hiện thao tác Mail Merge:

<img src="fill-merge-template-from-xml-using-dataset-1.png" alt="fill_merge_template_from_xml_using_dataset" style="width:250px"/>

Và sau khi thực hiện thao tác Mail Merge:

<img src="fill-merge-template-from-xml-using-dataset-2.png" alt="fill_merge_template_from_xml" style="width:285px"/>
