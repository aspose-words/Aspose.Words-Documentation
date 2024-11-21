---
title: Преобразовать документ в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразовать документ
linktitle: Преобразовать документ
type: docs
url: /ru/python-net/convert-a-document/
weight: 30
description: "Легко конвертировать документы из одного формата в другой Python. Вы можете работать со всеми популярными форматами, такими как: Microsoft Word форматы, такие как DOCX или DOC, форматы OpenDocument, такие как ODT или OTT, веб-форматы, такие как HTML или XHTML, текстовые форматы, такие как MarkDown или TXT и другие."
keywords: "convert a document python, convert documents from one format to another python, convert to markdown python, convert pdf to docx python, convert docx to pdf python, convert doc to pdf python, convert a document Aspose for Python"
timestamp: 2024-01-27-14-07-04
---

Возможность легко и надежно конвертировать документы из одного формата в другой является одной из основных особенностей Aspose.Words. Такое преобразование - не что иное, как сочетание погрузочно-сберегающих операций.

Почти любая задача, которую вы хотите выполнить Aspose.Words Загрузка или сохранение документа в определенном формате. Как уже упоминалось в предыдущих разделах, [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) Перечисление определяет все *load* или *import* форматы, поддерживаемые Aspose.Wordsи это [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) Перечисление определяет все *save* или *export* форматы, поддерживаемые Aspose.Words. Таким образом, Aspose.Words Может конвертировать документ из любого поддерживаемого формата загрузки в любой поддерживаемый формат сохранения. Как правило, такое преобразование требует нескольких этапов расчета. Однако с точки зрения пользователя преобразование из формата документа в другой формат само по себе очень просто и может быть достигнуто всего двумя шагами:

1. Загрузите свой документ в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Объект, использующий одного из своих конструкторов.
1. Призовите одного из [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) методы на [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) объект и указать желаемый выходной формат.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать функциональность преобразования, используя наш [Бесплатный онлайн конвертер](https://products.aspose.app/words/conversion) инструмент.

{{% /alert %}}

В текущем разделе описаны популярные конверсии, а также идеи работы с некоторыми комбинациями форматов при загрузке и сохранении. Используя примеры этого раздела, можно понять, что сам процесс конверсии достаточно универсален, и нет смысла описывать все возможные варианты, поскольку их несколько сотен из-за большого количества [Поддерживаемые форматы документов](/words/ru/python-net/supported-document-formats/).

{{% alert color="primary" %}}

Обратите внимание, что ниже приведены наиболее популярные комбинации конверсий, и не каждая комбинация связана с определенной страницей. Это так, потому что в наших статьях нет примеров для каждой пары конверсий - почти все конверсии довольно похожи. Убедитесь в этом, изучив статьи в текущем разделе.

{{% /alert %}}

<div class="row">
	<div class="col-md-4">
		<h2>Преобразование Word в PDF</h2>
			<ul>
				<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Преобразование DOC в PDF</a></li>
				<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Преобразование DOCX в PDF</a></li>
				<li>и другие</li>
			</ul>
		<h2>Преобразование изображения в PDF</h2>
			<ul>
				<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">Преобразование JPG в PDF</a></li>
				<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">Преобразование TIFF в PDF</a></li>
				<li>и другие</li>
			</ul>
		<h2>Преобразование веб-форматов в PDF</h2>
			<ul>
				<li>преобразовывать Markdown в PDF</li>
				<li>Преобразование HTML в PDF</li>
				<li>Преобразование MHT (MHTML) в PDF</li>
				<li>и другие</li>
			</ul>
		<h2>Преобразование других форматов в PDF</h2>
			<ul>
				<li>Преобразование RTF в PDF</li>
				<li>Преобразование ODT в PDF</li>
				<li>Преобразование TXT в PDF</li>
				<li>Преобразование Mobi в PDF</li>
				<li>и другие</li>
			</ul>
	</div>
	<div class="col-md-4">
		<h2>Преобразование PDF в Word</h2>
			<ul>
				<li><a href="/words/ru/python-net/convert-pdf-to-other-document-formats/">Преобразование PDF в другие форматы документов</a></li>
        <li>Преобразование PDF в DOC</li>
				<li>и другие</li>
			</ul>
		<h2>Преобразовать PDF в изображение</h2>
			<ul>
				<li><a href="/words/ru/python-net/convert-a-document-to-an-image/">Преобразовать документ в изображение</a></li>
        <li>Преобразование PDF в SVG</li>
				<li>и другие</li>
			</ul>
		<h2>Преобразование PDF в веб-форматы</h2>
			<ul>
        <li>Преобразовать PDF в Markdown</li>
				<li>Преобразование PDF в HTML</li>
				<li>Преобразование PDF в EPUB</li>
				<li>и другие</li>
			</ul>
		<h2>Преобразование PDF в другие форматы</h2>
			<ul>
				<li>Преобразование PDF в RTF</li>
				<li>Преобразовать PDF в XPS</li>
				<li>и другие</li>
			</ul>
	</div>
	<div class="col-md-4">
		<h2>Преобразовать документ в изображение</h2>
			<ul>
				<li><a href="/words/ru/python-net/convert-a-document-to-an-image/">Преобразовать документ в изображение</a></li>
				<li><a href="/words/ru/python-net/convert-a-document-to-an-image/">Преобразовать документ в изображение</a></li>
				<li>и другие</li>
			</ul>
		<h2>Преобразовать документ в Markdown</h2>
			<ul>
				<li><a href="/words/ru/python-net/convert-a-document-to-markdown/">Преобразовать документ в Markdown</a></li>
				<li>Преобразовать HTML в Markdown</li>
				<li>и другие</li>
			</ul>
		<h2>Преобразовать документ в HTML</h2>
			<ul>
				<li><a href="/words/python-net/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Преобразование Word в HTML</a></li>
				<li>преобразовывать Markdown в HTML</li>
				<li>Преобразование Mobi в EPUB</li>
				<li>и другие</li>
			</ul>
	</div>
</div>
