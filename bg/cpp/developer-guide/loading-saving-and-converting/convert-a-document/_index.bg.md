---
title: Конвертиране на документ в C++
second_title: Aspose.Words за C++
articleTitle: Конвертиране на документ
linktitle: Конвертиране на документ
type: docs
description: "Лесно конвертиране на документи от един формат в друг чрез C++. Можете да работите с всички най-популярни формати като Microsoft Word формати като DOCX или DOC, OpenDocument формати като ODT или OTT, уеб формати като HTML или XHTML, текстови формати като MarkDown или TXT и др."
keywords: "convert a document c++, convert documents from one format to another c++, convert to markdown c++, convert pdf to docx C++, convert docx to pdf C++, convert doc to pdf C++, convert a document Aspose for C++"
weight: 30
url: /bg/cpp/convert-a-document/
timestamp: 2024-09-25-11-08-55
---

Възможността за лесно и надеждно конвертиране на документи от един формат в друг е една от основните характеристики на Aspose.Words. Такова преобразуване не е нищо повече от комбинация от операции за товарене и спестяване.

## Какво Е Конвертиране На Документи {#what-is-document-conversion}

Почти всяка задача, която искате да изпълните с Aspose.Words, включва зареждане или записване на документ в някакъв формат. Както бе споменато в предишните раздели, изброяването [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) указва всички *load* или *import* формати, поддържани от Aspose.Words, а изброяването [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) указва всички *save* или *export* формати, поддържани от Aspose.Words. По този начин Aspose.Words може да конвертирате документ от всеки поддържан формат за зареждане във всеки поддържан формат за записване. По правило такова преобразуване изисква няколко етапа на изчисление. Въпреки това от гледна точка на потребителя конвертирането от формат на документ в друг е само по себе си много просто и може да се осъществи само с две стъпки.:

1. Заредете документа си в обект [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document), като използвате един от конструкторите му.
1. Извикайте един от методите [Save](https://reference.aspose.com/words/cpp/class/aspose.words.saving.save_output_parameters) на обекта **Document** и задайте желания изходен формат.

{{% alert color="primary" %}}

**Опитайте онлайн**

Можете да опитате функцията за преобразуване, като използвате нашите [Безплатен онлайн конвертор](https://products.aspose.app/words/conversion) инструмент.

{{% /alert %}}

## Популярни Конверсии {#popular-conversions}

Настоящият раздел описва популярни реализации, както и идеи за работа с някои комбинации от формати при зареждане и записване. Използвайки примерите на този раздел, можете да разберете, че самият процес на преобразуване е доста универсален и няма смисъл да описвате всички възможни опции, тъй като има няколко стотин от тях поради големия брой [формати, поддържани от Aspose.Words за C++](/words/cpp/supported-document-formats/).

{{% alert color="primary" %}}

Моля, обърнете внимание, че по-долу са най-популярните комбинации за преобразуване, а не всяка комбинация е свързана с определена страница. Това е така, защото нашите статии нямат примери за всяка двойка реализации – почти всички реализации са доста сходни. Уверете се в това, като прочетете статиите в настоящия раздел.

{{% /alert %}}

<div class="row">
	<div class="col-md-6">
		<h2>Конвертиране на Word в PDF</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Конвертиране на DOC в PDF</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Конвертиране на DOCX в PDF</a></li>
				<li>и други</li>
			</ul>
		<h2>Конвертиране на изображение в PDF</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">Конвертиране на JPG в PDF</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">Конвертиране на TIFF в PDF</a></li>
				<li>и други</li>
			</ul>
		<h2>Конвертиране на уеб формати в PDF</h2>
			<ul>
				<li>Конвертиране на Markdown в PDF</li>
				<li>Конвертиране на HTML в PDF</li>
				<li>Конвертиране на MHT (MHTML) в PDF</li>
				<li>и други</li>
			</ul>
		<h2>Конвертиране на други формати в PDF</h2>
			<ul>
				<li>Конвертиране на RTF в PDF</li>
				<li>Конвертиране на ODT в PDF</li>
				<li>Конвертиране на TXT в PDF</li>
				<li>Конвертиране на Моби в PDF</li>
				<li>и други</li>
			</ul>
	</div>
	<div class="col-md-6">
		<h2>Конвертиране на документ в изображение</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-an-image/">Конвертиране на DOCX в JPG</a></li>
				<li>Конвертиране на DOC в PNG</li>
				<li>и други</li>
			</ul>
		<h2>Конвертиране на документ в Markdown</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-markdown/">Конвертиране на документ в Markdown</a></li>
				<li>Превръщане HTML в Markdown</li>
				<li>и други</li>
			</ul>
		<h2>Конвертиране на документ в HTML</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Конвертиране на Word в HTML</a></li>
				<li>Конвертиране на Markdown в HTML</li>
				<li>Конвертиране на Моби в EPUB</li>
				<li>и други</li>
			</ul>
		<h2>Други Примери</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-mhtml-and-send-it-by-email/">Конвертиране на документ в MHTML и изпращането му по имейл</a></li>
				<li>Конвертиране на DOCX в DOC</li>
				<li>Конвертиране на HTML в Word</li>
				<li>и други</li>
			</ul>
	</div>
</div>
