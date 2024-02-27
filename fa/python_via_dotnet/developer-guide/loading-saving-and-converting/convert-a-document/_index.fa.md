---
title: تبدیل یک سند در Python
second_title: Aspose.Words برای Python via .NET
articleTitle: تبدیل یک سند
linktitle: تبدیل یک سند
type: docs
url: /fa/python-net/convert-a-document/
weight: 30
description: "با استفاده از Python به راحتی اسناد را از یک فرمت به فرمت دیگر تبدیل کنید. شما می توانید با همه فرمت های محبوب مانند فرمت های Microsoft Word مانند DOCX یا DOC، فرمت های OpenDocument مانند ODT یا OTT، فرمت های وب مانند HTML یا XHTML، فرمت های متنی مانند MarkDown یا TXT و غیره کار کنید."
keywords: "convert a document python, convert documents from one format to another python, convert to markdown python, convert pdf to docx python, convert docx to pdf python, convert doc to pdf python, convert a document Aspose for Python"
---

توانایی تبدیل آسان و مطمئن اسناد از یک فرمت به فرمت دیگر یکی از ویژگی های اصلی Aspose.Words است. چنین تبدیلی چیزی جز ترکیبی از عملیات بارگذاری و ذخیره نیست.

تقریباً هر کاری که می‌خواهید با Aspose.Words انجام دهید شامل بارگیری یا ذخیره یک سند در قالبی است. همانطور که در بخش های قبلی ذکر شد، شمارش [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) تمام فرمت های *load* یا *import* را مشخص می کند که توسط Aspose.Words پشتیبانی می شوند، و شمارش [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) تمام فرمت های *save* یا *export* پشتیبانی شده توسط Aspose.Words را مشخص می کند. بنابراین، Aspose.Words می تواند یک سند را از هر فرمت بارگیری پشتیبانی شده به هر فرمت ذخیره پشتیبانی شده تبدیل کند. به عنوان یک قاعده، چنین تبدیلی به چندین مرحله محاسبه نیاز دارد. با این حال، از دیدگاه کاربر، تبدیل از یک فرمت سند به دیگری بسیار ساده است و تنها با دو مرحله قابل انجام است:

1. سند خود را با استفاده از یکی از سازنده های آن در یک شیء [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) بارگذاری کنید.
1. یکی از متدهای [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) را روی شی [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) فراخوانی کنید و فرمت خروجی مورد نظر را مشخص کنید.

{{% alert color="primary" %}}

**آنلاین امتحان کنید**

می توانید با استفاده از ابزار [مبدل آنلاین رایگان](https://products.aspose.app/words/conversion) ما، عملکرد تبدیل را امتحان کنید.

{{% /alert %}}

بخش فعلی تبدیل‌های محبوب و همچنین ایده‌هایی برای کار با ترکیبی از فرمت‌ها هنگام بارگیری و ذخیره را توضیح می‌دهد. با استفاده از مثال های این بخش، می توانید درک کنید که فرآیند تبدیل به خودی خود کاملاً جهانی است و هیچ فایده ای برای توصیف همه گزینه های ممکن وجود ندارد، زیرا به دلیل تعداد زیاد [فرمت های سند پشتیبانی شده](/words/fa/python-net/supported-document-formats/) چندین صد مورد وجود دارد.

{{% alert color="primary" %}}

لطفاً توجه داشته باشید که در زیر محبوب‌ترین ترکیب‌های تبدیل آورده شده است و هر ترکیبی به صفحه معین پیوند داده نمی‌شود. این مورد به این دلیل است که مقالات ما برای هر جفت تبدیل نمونه‌هایی ندارند - تقریباً همه تبدیل‌ها تقریباً مشابه هستند. با مطالعه مقالات بخش فعلی از این موضوع مطمئن شوید.

{{% /alert %}}

<div class="row">
		<div class="col-md-4">
				<h2>تبدیل Word به PDF</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">تبدیل DOC به PDF</a></li>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">تبدیل DOCX به PDF</a></li>
								<li>و دیگران</li>
						</ul>
				<h2>تبدیل تصویر به PDF</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">تبدیل JPG به PDF</a></li>
								<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">تبدیل TIFF به PDF</a></li>
								<li>و دیگران</li>
						</ul>
				<h2>تبدیل فرمت های وب به PDF</h2>
						<ul>
								<li>تبدیل Markdown به PDF</li>
								<li>HTML را به PDF تبدیل کنید</li>
								<li>MHT (MHTML) را به PDF تبدیل کنید</li>
								<li>و دیگران</li>
						</ul>
				<h2>فرمت های دیگر را به PDF تبدیل کنید</h2>
						<ul>
								<li>RTF را به PDF تبدیل کنید</li>
								<li>ODT را به PDF تبدیل کنید</li>
								<li>TXT را به PDF تبدیل کنید</li>
								<li>Mobi را به PDF تبدیل کنید</li>
								<li>و دیگران</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>تبدیل PDF به Word</h2>
						<ul>
								<li><a href="/words/fa/python-net/convert-pdf-to-other-document-formats/">تبدیل PDF به سایر فرمت های سند</a></li>
        <li>تبدیل PDF به DOC</li>
								<li>و دیگران</li>
						</ul>
				<h2>تبدیل PDF به تصویر</h2>
						<ul>
								<li><a href="/words/fa/python-net/convert-a-document-to-an-image/">تبدیل یک سند به تصویر</a></li>
        <li>تبدیل PDF به SVG</li>
								<li>و دیگران</li>
						</ul>
				<h2>تبدیل PDF به فرمت های وب</h2>
						<ul>
        <li>تبدیل PDF به Markdown</li>
								<li>تبدیل PDF به HTML</li>
								<li>تبدیل PDF به EPUB</li>
								<li>و دیگران</li>
						</ul>
				<h2>تبدیل PDF به فرمت های دیگر</h2>
						<ul>
								<li>تبدیل PDF به RTF</li>
								<li>تبدیل PDF به XPS</li>
								<li>و دیگران</li>
						</ul>
		</div>
		<div class="col-md-4">
				<h2>تبدیل یک سند به تصویر</h2>
						<ul>
								<li><a href="/words/fa/python-net/convert-a-document-to-an-image/">تبدیل یک سند به تصویر</a></li>
								<li><a href="/words/fa/python-net/convert-a-document-to-an-image/">تبدیل یک سند به تصویر</a></li>
								<li>و دیگران</li>
						</ul>
				<h2>یک سند را به Markdown تبدیل کنید</h2>
						<ul>
								<li><a href="/words/fa/python-net/convert-a-document-to-markdown/">یک سند را به Markdown تبدیل کنید</a></li>
								<li>HTML را به Markdown تبدیل کنید</li>
								<li>و دیگران</li>
						</ul>
				<h2>یک سند را به HTML تبدیل کنید</h2>
						<ul>
								<li><a href="/words/python-net/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">تبدیل Word به HTML</a></li>
								<li>Markdown را به HTML تبدیل کنید</li>
								<li>Mobi را به EPUB تبدیل کنید</li>
								<li>و دیگران</li>
						</ul>
		</div>
</div>