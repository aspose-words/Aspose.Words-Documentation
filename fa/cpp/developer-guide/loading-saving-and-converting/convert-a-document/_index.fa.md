---
title: تبدیل یک سند در C++
second_title: Aspose.Words برای C++
articleTitle: تبدیل یک سند
linktitle: تبدیل یک سند
type: docs
description: "به راحتی اسناد را از یک فرمت به فرمت دیگر با استفاده از C++ تبدیل کنید. شما می توانید با تمام فرمت های محبوب مانند Microsoft Word فرمت هایی مانند DOCX یا DOC، OpenDocument فرمت هایی مانند ODT یا OTT، فرمت های وب مانند HTML یا XHTML، فرمت های متنی مانند MarkDown یا TXT و دیگران کار کنید."
keywords: "convert a document c++, convert documents from one format to another c++, convert to markdown c++, convert pdf to docx C++, convert docx to pdf C++, convert doc to pdf C++, convert a document Aspose for C++"
weight: 30
url: /fa/cpp/convert-a-document/
timestamp: 2024-09-25-11-08-55
---

توانایی تبدیل آسان و قابل اعتماد اسناد از یک فرمت به فرمت دیگر یکی از زمینه های اصلی ویژگی Aspose.Words است. چنین تبدیل چیزی بیش از ترکیبی از عملیات بارگیری و صرفه جویی نیست.

## تبدیل سند چیست {#what-is-document-conversion}

تقریبا هر کاری که می خواهید با Aspose.Words انجام دهید شامل بارگذاری یا ذخیره یک سند در برخی از فرمت ها است. همانطور که در بخش های قبلی ذکر شد، [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) enumeration تمام فرمت های *load* یا *import* پشتیبانی شده توسط Aspose.Words را مشخص می کند و [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) enumeration تمام فرمت های *save* یا *export* پشتیبانی شده توسط Aspose.Words را مشخص می کند. بنابراین ،Aspose.Words می تواند یک سند را از هر فرمت بارگذاری پشتیبانی شده به هر فرمت ذخیره پشتیبانی شده تبدیل کند. به عنوان یک قاعده، چنین تبدیل نیاز به چندین مرحله محاسبه دارد. با این حال از دیدگاه کاربر تبدیل از یک فرمت سند به دیگری خود بسیار ساده است و می تواند با تنها دو مرحله انجام شود:

1. سند خود را با استفاده از یکی از سازندگان آن به یک شی [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) بارگذاری کنید.
1. یکی از روش های [Save](https://reference.aspose.com/words/cpp/class/aspose.words.saving.save_output_parameters) را در شیء **Document** فراخوانی کنید و فرمت خروجی مورد نظر را مشخص کنید.

{{% alert color="primary" %}}

**سعی کنید آنلاین**

شما می توانید قابلیت تبدیل را با استفاده از ما امتحان کنید [مبدل آنلاین رایگان](https://products.aspose.app/words/conversion) ابزار.

{{% /alert %}}

## تبدیل های محبوب {#popular-conversions}

بخش فعلی تبدیل های محبوب و همچنین ایده هایی برای کار با برخی از ترکیب فرمت ها هنگام بارگذاری و ذخیره را توصیف می کند. با استفاده از نمونه های این بخش می توانید درک کنید که خود فرآیند تبدیل کاملا جهانی است و توصیف همه گزینه های ممکن فایده ای ندارد، زیرا چند صد مورد از آنها به دلیل تعداد زیاد [فرمت های پشتیبانی شده توسط Aspose.Words برای C++](/words/cpp/supported-document-formats/).

{{% alert color="primary" %}}

لطفا توجه داشته باشید که در زیر محبوب ترین ترکیب های تبدیل شده است و هر ترکیب به صفحه مشخص پیوند داده نشده است. این مورد به این دلیل است که مقالات ما برای هر جفت تبدیل نمونه ای ندارند-تقریبا همه تبدیل ها بسیار مشابه هستند. با مطالعه مقالات موجود در بخش فعلی از این موضوع اطمینان حاصل کنید.

{{% /alert %}}

<div class="row">
	<div class="col-md-6">
		<h2>تبدیل کلمه به PDF</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">تبدیل DOC به PDF</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">تبدیل DOCX به PDF</a></li>
				<li>و دیگران</li>
			</ul>
		<h2>تبدیل تصویر به PDF</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">تبدیل JPG به PDF</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">تبدیل TIFF به PDF</a></li>
				<li>و دیگران</li>
			</ul>
		<h2>تبدیل فرمت های وب به PDF</h2>
			<ul>
				<li>تبدیل Markdown به PDF</li>
				<li>تبدیل HTML به PDF</li>
				<li>تبدیل MHT (MHTML) به PDF</li>
				<li>و دیگران</li>
			</ul>
		<h2>تبدیل فرمت های دیگر به PDF</h2>
			<ul>
				<li>تبدیل RTF به PDF</li>
				<li>تبدیل ODT به PDF</li>
				<li>تبدیل TXT به PDF</li>
				<li>تبدیل Mobi به PDF</li>
				<li>و دیگران</li>
			</ul>
	</div>
	<div class="col-md-6">
		<h2>تبدیل یک سند به یک تصویر</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-an-image/">تبدیل DOCX به JPG</a></li>
				<li>تبدیل DOC به PNG</li>
				<li>و دیگران</li>
			</ul>
		<h2>تبدیل یک سند به Markdown</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-markdown/">تبدیل یک سند به Markdown</a></li>
				<li>تبدیل HTML به Markdown</li>
				<li>و دیگران</li>
			</ul>
		<h2>تبدیل یک سند به HTML</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">تبدیل کلمه به HTML</a></li>
				<li>تبدیل Markdown به HTML</li>
				<li>تبدیل Mobi به EPUB</li>
				<li>و دیگران</li>
			</ul>
		<h2>نمونه های دیگر</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-mhtml-and-send-it-by-email/">تبدیل یک سند به MHTML و ارسال آن از طریق ایمیل</a></li>
				<li>تبدیل DOCX به DOC</li>
				<li>تبدیل HTML به Word</li>
				<li>و دیگران</li>
			</ul>
	</div>
</div>
