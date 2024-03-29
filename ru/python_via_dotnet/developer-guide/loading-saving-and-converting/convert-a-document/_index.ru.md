---
title: Конвертировать документ в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Преобразование документа
linktitle: Преобразование документа
type: docs
url: /ru/python-net/convert-a-document/
weight: 30
description: "Легко конвертируйте документы из одного формата в другой с помощью Python. Вы можете работать со всеми наиболее популярными форматами, такими как форматы Microsoft Word, такие как DOCX или DOC, форматами OpenDocument, такими как ODT или OTT, веб-форматами, такими как HTML или XHTML, текстовыми форматами, такими как MarkDown. или TXT и другие."
keywords: "convert a document python, convert documents from one format to another python, convert to markdown python, convert pdf to docx python, convert docx to pdf python, convert doc to pdf python, convert a document Aspose for Python"
---

Возможность легко и надежно конвертировать документы из одного формата в другой — одна из основных особенностей Aspose.Words. Такое преобразование представляет собой не что иное, как комбинацию операций загрузки и сохранения.

Практически любая задача, которую вы хотите выполнить с помощью Aspose.Words, включает загрузку или сохранение документа в каком-либо формате. Как упоминалось в предыдущих разделах, перечисление [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) указывает все форматы *load* или *import*, поддерживаемые Aspose.Words, а перечисление [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) определяет все форматы *save* или *export*, поддерживаемые Aspose.Words. Таким образом, Aspose.Words может преобразовать документ из любого поддерживаемого формата загрузки в любой поддерживаемый формат сохранения.. Как правило, такое преобразование требует нескольких этапов расчета. Однако с точки зрения пользователя преобразование из одного формата документа в другой само по себе очень просто и может быть выполнено всего за два шага:

1. Загрузите документ в объект [Document](https://reference.aspose.com/words/python-net/aspose.words/document/), используя один из его конструкторов.
1. Вызовите один из методов [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) объекта [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) и укажите желаемый формат вывода.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать функцию преобразования, используя наш инструмент [Бесплатный онлайн-конвертер](https://products.aspose.app/words/conversion).

{{% /alert %}}

В текущем разделе описаны популярные конвертации, а также идеи по работе с некоторыми комбинациями форматов при загрузке и сохранении. На примерах этого раздела можно понять, что сам процесс конвертации достаточно универсален, и нет смысла описывать все возможные варианты, так как их несколько сотен из-за большого количества [Поддерживаемые форматы документов](/words/ru/python-net/supported-document-formats/).

{{% alert color="primary" %}}

Обратите внимание, что ниже приведены наиболее популярные комбинации конверсий, и не каждая комбинация связана с определенной страницей. Это так, потому что в наших статьях нет примеров для каждой пары конверсий — почти все конверсии очень похожи. Убедитесь в этом, изучив статьи текущего раздела.

{{% /alert %}}

<div class="row">
<div class="col-md-4">
	<h2>Конвертировать Word в PDF</h2>
		<ul>
			<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Конвертировать DOC в PDF</a></li>
			<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Конвертировать DOCX в PDF</a></li>
			<li>и другие</li>
		</ul>
	<h2>Конвертировать изображение в PDF</h2>
		<ul>
			<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">Конвертировать JPG в PDF</a></li>
			<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">Конвертировать TIFF в PDF</a></li>
			<li>и другие</li>
		</ul>
	<h2>Преобразование веб-форматов в PDF</h2>
		<ul>
			<li>Конвертировать Markdown в PDF</li>
			<li>Конвертировать HTML в PDF</li>
			<li>Конвертировать MHT (MHTML) в PDF</li>
			<li>и другие</li>
		</ul>
	<h2>Конвертировать другие форматы в PDF</h2>
		<ul>
			<li>Конвертировать RTF в PDF</li>
			<li>Конвертировать ODT в PDF</li>
			<li>Конвертировать TXT в PDF</li>
			<li>Конвертировать Моби в PDF</li>
			<li>и другие</li>
		</ul>
</div>
<div class="col-md-4">
	<h2>Конвертировать PDF в Word</h2>
		<ul>
			<li><a href="/words/ru/python-net/convert-pdf-to-other-document-formats/">Конвертируйте PDF в другие форматы документов</a></li>
       <li>Конвертировать PDF в DOC</li>
			<li>и другие</li>
		</ul>
	<h2>Конвертировать PDF в изображение</h2>
		<ul>
			<li><a href="/words/ru/python-net/convert-a-document-to-an-image/">Преобразование документа в изображение</a></li>
       <li>Конвертировать PDF в SVG</li>
			<li>и другие</li>
		</ul>
	<h2>Конвертируйте PDF в веб-форматы</h2>
		<ul>
       <li>Конвертировать PDF в Markdown</li>
			<li>Конвертировать PDF в HTML</li>
			<li>Конвертировать PDF в EPUB</li>
			<li>и другие</li>
		</ul>
	<h2>Конвертировать PDF в другие форматы</h2>
		<ul>
			<li>Конвертировать PDF в RTF</li>
			<li>Конвертировать PDF в XPS</li>
			<li>и другие</li>
		</ul>
</div>
<div class="col-md-4">
	<h2>Преобразование документа в изображение</h2>
		<ul>
			<li><a href="/words/ru/python-net/convert-a-document-to-an-image/">Преобразование документа в изображение</a></li>
			<li><a href="/words/ru/python-net/convert-a-document-to-an-image/">Преобразование документа в изображение</a></li>
			<li>и другие</li>
		</ul>
	<h2>Преобразовать документ в Markdown</h2>
		<ul>
			<li><a href="/words/ru/python-net/convert-a-document-to-markdown/">Преобразовать документ в Markdown</a></li>
			<li>Преобразовать HTML в Markdown</li>
			<li>и другие</li>
		</ul>
	<h2>Преобразование документа в HTML</h2>
		<ul>
			<li><a href="/words/python-net/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Конвертировать Word в HTML</a></li>
			<li>Преобразовать Markdown в HTML</li>
			<li>Конвертировать Mobi в EPUB</li>
			<li>и другие</li>
		</ul>
</div>
</div>