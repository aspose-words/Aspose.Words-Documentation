---
title: Chuyển Đổi Một Tài liệu trong C++
second_title: Aspose.Words cho C++
articleTitle: Chuyển đổi Tài liệu
linktitle: Chuyển đổi Tài liệu
type: docs
description: "Dễ dàng chuyển đổi tài liệu từ định dạng này sang định dạng khác bằng C++. Bạn có thể làm việc với tất cả các định dạng phổ biến nhất như Microsoft Word các định dạng như DOCX hoặc DOC, OpenDocument các định dạng như ODT hoặc OTT, các định dạng web như HTML hoặc XHTML, các định dạng văn bản như MarkDown hoặc TXT và các định dạng khác."
keywords: "convert a document c++, convert documents from one format to another c++, convert to markdown c++, convert pdf to docx C++, convert docx to pdf C++, convert doc to pdf C++, convert a document Aspose for C++"
weight: 30
url: /vi/cpp/convert-a-document/
timestamp: 2024-09-25-11-08-55
---

Khả năng chuyển đổi tài liệu từ định dạng này sang định dạng khác một cách dễ dàng và đáng tin cậy là một trong những lĩnh vực tính năng chính của Aspose.Words. Một chuyển đổi như vậy không gì khác hơn là sự kết hợp của các hoạt động tải và lưu.

## Chuyển Đổi Tài Liệu Là Gì {#what-is-document-conversion}

Hầu như bất kỳ tác vụ nào bạn muốn thực hiện với Aspose.Words đều liên quan đến việc tải hoặc lưu tài liệu ở một số định dạng. Như đã đề cập trong các phần trước, liệt kê [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) chỉ định tất cả các định dạng *load* hoặc *import* được hỗ trợ bởi Aspose.Words và liệt kê [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) chỉ định tất cả các định dạng *save* hoặc *export* được hỗ trợ bởi Aspose.Words. Do đó, Aspose.Words có thể chuyển đổi tài liệu từ bất kỳ định dạng tải được hỗ trợ nào thành bất kỳ định dạng lưu được hỗ trợ nào. Theo quy định, một chuyển đổi như vậy đòi hỏi một số giai đoạn tính toán. Tuy nhiên, từ góc độ người dùng, việc chuyển đổi từ định dạng tài liệu sang định dạng khác rất đơn giản và có thể được thực hiện chỉ với hai bước:

1. Tải tài liệu của bạn vào một đối tượng [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) bằng một trong các hàm tạo của nó.
1. Gọi một trong các phương thức [Save](https://reference.aspose.com/words/cpp/class/aspose.words.saving.save_output_parameters) trên đối tượng **Document** và chỉ định định dạng đầu ra mong muốn.

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng chuyển đổi bằng cách sử dụng [Chuyển đổi trực tuyến miễn phí](https://products.aspose.app/words/conversion) công cụ.

{{% /alert %}}

## Chuyển Đổi Phổ Biến {#popular-conversions}

Phần hiện tại mô tả các chuyển đổi phổ biến, cũng như các ý tưởng để làm việc với một số kết hợp các định dạng khi tải và lưu. Sử dụng các ví dụ của phần này, bạn có thể hiểu rằng bản thân quá trình chuyển đổi khá phổ biến và không có ích gì khi mô tả tất cả các tùy chọn có thể, vì có vài trăm trong số chúng do số lượng lớn [các định dạng được hỗ trợ bởi Aspose.Words cho C++](/words/cpp/supported-document-formats/).

{{% alert color="primary" %}}

Xin lưu ý rằng dưới đây là các kết hợp chuyển đổi phổ biến nhất và không phải mọi kết hợp đều được liên kết với trang xác định. Đây là trường hợp bởi vì các bài viết của chúng tôi không có ví dụ cho mỗi cặp chuyển đổi – hầu như tất cả các chuyển đổi đều khá giống nhau. Hãy chắc chắn về điều này bằng cách nghiên cứu các bài viết trong phần hiện tại.

{{% /alert %}}

<div class="row">
	<div class="col-md-6">
		<h2>Chuyển Đổi Từ thành PDF</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Chuyển đổi DOC thành PDF</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Chuyển đổi DOCX thành PDF</a></li>
				<li>và những người khác</li>
			</ul>
		<h2>Chuyển Đổi Hình ảnh thành PDF</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">Chuyển đổi JPG thành PDF</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">Chuyển đổi TIFF thành PDF</a></li>
				<li>và những người khác</li>
			</ul>
		<h2>Chuyển Đổi Định dạng Web thành PDF</h2>
			<ul>
				<li>Chuyển đổi Markdown thành PDF</li>
				<li>Chuyển đổi HTML thành PDF</li>
				<li>Chuyển đổi MHT (MHTML) thành PDF</li>
				<li>và những người khác</li>
			</ul>
		<h2>Chuyển Đổi Các Định dạng khác thành PDF</h2>
			<ul>
				<li>Chuyển đổi RTF thành PDF</li>
				<li>Chuyển đổi ODT thành PDF</li>
				<li>Chuyển đổi TXT thành PDF</li>
				<li>Chuyển Đổi Mobi thành PDF</li>
				<li>và những người khác</li>
			</ul>
	</div>
	<div class="col-md-6">
		<h2>Chuyển Đổi Tài liệu Thành Hình Ảnh</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-an-image/">Chuyển đổi DOCX thành JPG</a></li>
				<li>Chuyển đổi DOC thành PNG</li>
				<li>và những người khác</li>
			</ul>
		<h2>Chuyển Đổi Tài liệu thành Markdown</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-markdown/">Chuyển Đổi Tài liệu thành Markdown</a></li>
				<li>Chuyển đổi HTML thành Markdown</li>
				<li>và những người khác</li>
			</ul>
		<h2>Chuyển Đổi Tài liệu thành HTML</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Chuyển Đổi Word thành HTML</a></li>
				<li>Chuyển đổi Markdown thành HTML</li>
				<li>Chuyển Đổi Mobi thành EPUB</li>
				<li>và những người khác</li>
			</ul>
		<h2>Các Ví Dụ Khác</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-mhtml-and-send-it-by-email/">Chuyển Đổi Tài liệu thành MHTML Và Gửi Qua Email</a></li>
				<li>Chuyển đổi DOCX thành DOC</li>
				<li>Chuyển đổi HTML Sang Word</li>
				<li>và những người khác</li>
			</ul>
	</div>
</div>
