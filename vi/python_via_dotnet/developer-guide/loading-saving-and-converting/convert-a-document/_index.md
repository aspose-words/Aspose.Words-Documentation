---
title: Chuyển đổi tài liệu trong Python
second_title: Aspose.Words cho Python via .NET
articleTitle: Chuyển đổi một tài liệu
linktitle: Chuyển đổi một tài liệu
type: docs
url: /vi/python-net/convert-a-document/
weight: 30
description: "Dễ dàng chuyển đổi tài liệu từ định dạng này sang định dạng khác bằng Python. Bạn có thể làm việc với tất cả các định dạng phổ biến nhất như định dạng Microsoft Word như DOCX hoặc DOC, định dạng OpenDocument như ODT hoặc OTT, định dạng web như HTML hoặc XHTML, định dạng văn bản như MarkDown hoặc TXT và các định dạng khác."
keywords: "convert a document python, convert documents from one format to another python, convert to markdown python, convert pdf to docx python, convert docx to pdf python, convert doc to pdf python, convert a document Aspose for Python"
---

Khả năng chuyển đổi tài liệu từ định dạng này sang định dạng khác một cách dễ dàng và đáng tin cậy là một trong những tính năng chính của Aspose.Words. Việc chuyển đổi như vậy không gì khác hơn là sự kết hợp giữa các hoạt động tải và lưu.

Hầu hết mọi tác vụ bạn muốn thực hiện với Aspose.Words đều liên quan đến việc tải hoặc lưu tài liệu ở một số định dạng. Như đã đề cập trong các phần trước, bảng liệt kê [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) chỉ định tất cả các định dạng *load* hoặc *import* được Aspose.Words hỗ trợ và bảng liệt kê [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) chỉ định tất cả các định dạng *save* hoặc *export* được Aspose.Words hỗ trợ. Do đó, Aspose.Words có thể chuyển đổi tài liệu từ bất kỳ định dạng tải được hỗ trợ nào sang bất kỳ định dạng lưu được hỗ trợ nào. Theo quy định, việc chuyển đổi như vậy đòi hỏi nhiều giai đoạn tính toán. Tuy nhiên, việc chuyển đổi phối cảnh người dùng từ định dạng tài liệu sang định dạng khác tự nó rất đơn giản và có thể được thực hiện chỉ bằng hai bước:

1. Tải tài liệu của bạn vào đối tượng [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) bằng cách sử dụng một trong các hàm tạo của nó.
1. Gọi một trong các phương thức [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) trên đối tượng [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) và chỉ định định dạng đầu ra mong muốn.

{{% alert color="primary" %}}

**Thử trực tuyến**

Bạn có thể thử chức năng chuyển đổi bằng cách sử dụng công cụ [Công cụ chuyển đổi trực tuyến miễn phí](https://products.aspose.app/words/conversion) của chúng tôi.

{{% /alert %}}

Phần hiện tại mô tả các chuyển đổi phổ biến cũng như các ý tưởng để làm việc với một số kết hợp định dạng khi tải và lưu. Sử dụng các ví dụ trong phần này, bạn có thể hiểu rằng bản thân quá trình chuyển đổi khá phổ biến và không có ích gì khi mô tả tất cả các tùy chọn có thể có, vì có hàng trăm tùy chọn trong số đó do số lượng lớn [Định dạng tài liệu được hỗ trợ](/words/vi/python-net/supported-document-formats/).

{{% alert color="primary" %}}

Xin lưu ý rằng bên dưới là các kết hợp chuyển đổi phổ biến nhất và không phải mọi kết hợp đều được liên kết đến trang xác định. Trường hợp này xảy ra vì bài viết của chúng tôi không có ví dụ cho từng cặp chuyển đổi – hầu hết tất cả các chuyển đổi đều khá giống nhau. Hãy chắc chắn điều này bằng cách nghiên cứu các bài viết trong phần hiện tại.

{{% /alert %}}

<div class="row">
		<div class="col-md-4">
				<h2>Chuyển đổi Word sang PDF</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Chuyển đổi DOC sang PDF</a></li>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Chuyển đổi DOCX sang PDF</a></li>
								<li>và những người khác</li>
						</ul>
				<h2>Chuyển đổi hình ảnh sang PDF</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">Chuyển đổi JPG sang PDF</a></li>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">Chuyển TIFF sang PDF</a></li>
								<li>và những người khác</li>
						</ul>
				<h2>Chuyển đổi định dạng web sang PDF</h2>
						<ul>
								<li>Chuyển đổi Markdown sang PDF</li>
								<li>Chuyển đổi HTML sang PDF</li>
								<li>Chuyển đổi MHT (MHTML) sang PDF</li>
								<li>và những người khác</li>
						</ul>
				<h2>Chuyển đổi các định dạng khác sang PDF</h2>
						<ul>
								<li>Chuyển đổi RTF sang PDF</li>
								<li>Chuyển ODT sang PDF</li>
								<li>Chuyển đổi TXT sang PDF</li>
								<li>Chuyển đổi Mobi sang PDF</li>
								<li>và những người khác</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>Chuyển đổi PDF sang Word</h2>
						<ul>
								<li><a href="/words/vi/python-net/convert-pdf-to-other-document-formats/">Chuyển đổi PDF sang các định dạng tài liệu khác</a></li>
        <li>Chuyển đổi PDF sang DOC</li>
								<li>và những người khác</li>
						</ul>
				<h2>Chuyển đổi PDF thành hình ảnh</h2>
						<ul>
								<li><a href="/words/vi/python-net/convert-a-document-to-an-image/">Chuyển đổi tài liệu thành hình ảnh</a></li>
        <li>Chuyển đổi PDF sang SVG</li>
								<li>và những người khác</li>
						</ul>
				<h2>Chuyển đổi PDF sang định dạng web</h2>
						<ul>
        <li>Chuyển đổi PDF sang Markdown</li>
								<li>Chuyển đổi PDF sang HTML</li>
								<li>Chuyển đổi PDF sang EPUB</li>
								<li>và những người khác</li>
						</ul>
				<h2>Chuyển đổi PDF sang các định dạng khác</h2>
						<ul>
								<li>Chuyển đổi PDF sang RTF</li>
								<li>Chuyển đổi PDF sang XPS</li>
								<li>và những người khác</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>Chuyển đổi tài liệu thành hình ảnh</h2>
						<ul>
								<li><a href="/words/vi/python-net/convert-a-document-to-an-image/">Chuyển đổi tài liệu thành hình ảnh</a></li>
								<li><a href="/words/vi/python-net/convert-a-document-to-an-image/">Chuyển đổi tài liệu thành hình ảnh</a></li>
								<li>và những người khác</li>
						</ul>
				<h2>Chuyển đổi tài liệu sang Markdown</h2>
						<ul>
								<li><a href="/words/vi/python-net/convert-a-document-to-markdown/">Chuyển đổi tài liệu sang Markdown</a></li>
								<li>Chuyển HTML sang Markdown</li>
								<li>và những người khác</li>
						</ul>
				<h2>Chuyển đổi tài liệu sang HTML</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Chuyển Word sang HTML</a></li>
								<li>Chuyển đổi Markdown sang HTML</li>
								<li>Chuyển đổi Mobi sang EPUB</li>
								<li>và những người khác</li>
						</ul>
		</div>
</div>