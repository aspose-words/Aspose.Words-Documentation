---
title: Chuyển đổi một tài liệu trong Java
second_title: Aspose.Words cho Java
articleTitle: Chuyển đổi một Tài liệu
linktitle: Chuyển đổi một Tài liệu
type: docs
weight: 30
url: /vi/java/convert-a-document/
description: "Chuyển đổi dễ dàng các tài liệu từ một định dạng sang định dạng khác. Bạn có thể làm việc với tất cả các định dạng phổ biến nhất như Microsoft Word định dạng như DOCX hoặc DOC, định dạng OpenDocument như ODT hoặc OTT, các định dạng web như HTML hoặc XHTML, các định dạng văn bản như MarkDown hoặc TXT, và nhiều hơn nữa bằng cách sử dụng Java."
---

Khả năng chuyển đổi tài liệu dễ dàng và đáng tin cậy từ một định dạng sang một định dạng khác là một trong những lĩnh vực tính năng chính của Aspose.Words. Việc chuyển đổi đó chẳng là gì khác ngoài việc kết hợp giữa các thao tác tải và lưu.

## Sự Chuyển đổi Tài liệu {#what-is-document-conversion} là gì?

Hầu hết các nhiệm vụ mà bạn muốn thực hiện với Aspose.Words đều liên quan đến việc tải hoặc lưu một tài liệu theo một định dạng nào đó. Như đã đề cập ở các phần trước, [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) là enum quy định tất cả các *load* hoặc *import* định dạng được hỗ trợ bởi Aspose.Words, và [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) enum quy định tất cả các *save* hoặc *export* định dạng được hỗ trợ bởi Aspose.Words. Do đó Aspose.Words có thể chuyển đổi một tài liệu từ bất kỳ định dạng tải nào được hỗ trợ thành bất kỳ định dạng lưu nào được hỗ trợ. Theo quy tắc, chuyển đổi như vậy yêu cầu một số giai đoạn tính toán. Tuy nhiên từ quan điểm người dùng chuyển đổi từ định dạng tài liệu sang một định dạng khác là rất đơn giản và có thể thực hiện được với chỉ hai bước:

1. Tải tài liệu của bạn vào một đối tượng [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) bằng cách sử dụng một trong các hàm tạo của nó.
1. Gọi một trong các [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) phương thức của đối tượng **Document** và chỉ định định dạng đầu ra mong muốn.

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng này với chúng tôi [Free online converter](https://products.aspose.app/words/conversion).

{{% /alert %}}

## Chuyển đổi phổ biến {#popular-conversions}

Phần hiện tại mô tả các chuyển đổi phổ biến cũng như ý tưởng làm việc với một số nhóm định dạng khi tải và lưu. Sử dụng ví dụ trong phần này, bạn có thể hiểu rằng quy trình chuyển đổi thực sự là khá phổ biến, và không có điểm nào trong việc mô tả tất cả các lựa chọn khả dĩ vì có hàng trăm chúng do lượng [formats supported by Aspose.Words for Java](/words/java/supported-document-formats/) lớn.

{{% alert color="primary" %}}

Xin lưu ý rằng dưới đây là các kết hợp chuyển đổi phổ biến nhất và không phải tất cả kết hợp đều liên kết đến trang cụ thể nào. Đây là trường hợp vì bài viết của chúng tôi không có các ví dụ cho mọi cặp chuyển đổi - hầu hết các chuyển đổi đều tương tự nhau. Đảm bảo điều này bằng cách nghiên cứu các bài viết trong mục hiện tại.

{{% /alert %}}

<div class="row">
	<div class="col-md-6">
		<h2>Chuyển đổi từ Word sang PDF</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Convert DOC to PDF</a></li>
				<li><a href="/words/java/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Convert DOCX to PDF</a></li>
				<li>và những người khác</li>
			< /ul>
		<h2>Chuyển đổi ảnh sang PDF</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-pdf/#convert-an-image-to-pdf">Convert JPG to PDF</a></li>
				<li><a href="/words/java/convert-a-document-to-pdf/#convert-an-image-to-pdf">Convert TIFF to PDF</a></li>
				<li>và những người khác</li>
			</ul>
		<h2>Chuyển đổi Định Dạng Web sang PDF</h2>
			<ul>
				<li>Chuyển đổi Markdown thành PDF</li>
				<li>Chuyển HTML sang PDF</li>
				<li>Chuyển đổi MHT (MHTML) sang PDF</li>
				"<li>và những người khác</li>"
			</ul>
		<h2>Chuyển đổi Định dạng Khác sang PDF</h2>
			<ul>
				<li>Chuyển đổi từ RTF sang PDF</li>
				<li>Chuyển đổi ODT sang PDF</li>
				<li>Chuyển đổi TXT sang PDF</li>
				<li>Chuyển đổi Mobi sang PDF</li>
				"<li>và các người khác</li>"
			<ul>
	<div>
	<div class="col-md-6">
		<h2>Chuyển đổi một Tài liệu thành Hình ảnh</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-an-image/">Convert DOCX to JPG</a></li>
				<li>Chuyển đổi DOC sang PNG</li>
				<li>và những người khác</li>
			</ul>
		<h2>Chuyển đổi tài liệu thành Markdown</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-markdown/">Convert a Document to Markdown</a></li>
				<li>Chuyển đổi HTML thành Markdown</li>
				<li>và những người khác</li>
			< / ul >
		<h2>Chuyển đổi Tài liệu thành HTML</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Convert Word to HTML</a></li>
				<li>Chuyển đổi Markdown sang HTML</li>
				<li>Chuyển đổi Mobi sang EPUB</li>
				<li>và những người khác</li>
			<ul>
		<h2>Làm việc với một Tài liệu trong một Cơ sở dữ liệu</h2>
			<ul>
				<li><a href="/words/java/serialize-and-work-with-a-document-in-a-database/">Serialize and Work with a Document in a Database</a></li>
			</ul>
		<h2>Các ví dụ khác</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-mhtml-and-send-it-by-email/">Convert a Document to MHTML and Send It by Email</a></li>
				<li>Chuyển đổi DOCX sang DOC</li>
				<li>Chuyển HTML thành Word</li>
				<li>và những người khác</li>
			< / ul >
	</div>
</div>
