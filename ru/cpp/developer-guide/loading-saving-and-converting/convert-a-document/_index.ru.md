---
title: Преобразование документа на C++
second_title: Aspose.Words для C++
articleTitle: Преобразование документа
linktitle: Преобразование документа
type: docs
description: "Легко конвертируйте документы из одного формата в другой с помощью C++. Вы можете работать со всеми наиболее популярными форматами, такими как форматы Microsoft Word, такие как DOCX или DOC, форматы OpenDocument, такие как ODT или OTT, веб-форматы, такие как HTML или XHTML, текстовые форматы, такие как MarkDown или TXT, и другие."
keywords: "convert a document c++, convert documents from one format to another c++, convert to markdown c++, convert pdf to docx C++, convert docx to pdf C++, convert doc to pdf C++, convert a document Aspose for C++"
weight: 30
url: /ru/cpp/convert-a-document/
---

Возможность простого и надежного преобразования документов из одного формата в другой является одной из основных функциональных возможностей Aspose.Words. Такое преобразование представляет собой не что иное, как комбинацию операций загрузки и сохранения.

## Что такое Преобразование документов {#what-is-document-conversion}

Практически любая задача, которую вы хотите выполнить с помощью Aspose.Words, включает в себя загрузку или сохранение документа в том или ином формате. Как упоминалось в предыдущих разделах, перечисление [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) определяет все форматы *load* или *import*, поддерживаемые Aspose.Words, а перечисление [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) определяет все форматы *save* или *export*, поддерживаемые Aspose.Words. Таким образом, Aspose.Words может преобразовать документ из любого поддерживаемого формата загрузки в любой поддерживаемый формат сохранения. Как правило, такое преобразование требует нескольких этапов расчета. Однако, с точки зрения пользователя, преобразование из формата документа в другой формат само по себе очень простое и может быть выполнено всего за два шага:

1. Загрузите ваш документ в объект [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document), используя один из его конструкторов.
1. Вызовите один из методов [Save](https://reference.aspose.com/words/cpp/class/aspose.words.saving.save_output_parameters) для объекта **Document** и укажите желаемый формат вывода.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете воспользоваться функциями конвертации, воспользовавшись нашим [Бесплатным онлайн-конвертером](https://products.aspose.app/words/conversion) инструмент.

{{% /alert %}}

## Популярные конверсии {#popular-conversions}

В текущем разделе описаны популярные преобразования, а также идеи по работе с некоторыми комбинациями форматов при загрузке и сохранении. Используя примеры этого раздела, вы можете понять, что сам процесс преобразования достаточно универсален, и нет смысла описывать все возможные варианты, поскольку их несколько сотен из-за большого количества форматов [, поддерживаемых Aspose.Words для C++](/words/cpp/supported-document-formats/).

{{% alert color="primary" %}}

Пожалуйста, обратите внимание, что ниже приведены наиболее популярные комбинации конверсий, и не каждая комбинация привязана к определенной странице. Это связано с тем, что в наших статьях нет примеров для каждой пары конверсий – почти все конверсии довольно похожи. Убедитесь в этом, изучив статьи в текущем разделе.

{{% /alert %}}

<div class="row">
	<div class="col-md-6">
		<h2>Преобразование Word в PDF</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Преобразование DOC в PDF</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Преобразование DOCX в PDF</a></li>
				<li>и другие</li>
			</ul>
		<h2>Преобразование изображения в PDF</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">Конвертировать JPG в PDF</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">Преобразование TIFF в PDF</a></li>
				<li>и другие</li>
			</ul>
		<h2>Конвертируйте веб-форматы в PDF</h2>
			<ul>
				<li>Конвертировать Markdown в PDF</li>
				<li>Преобразование HTML в PDF</li>
				<li>Конвертировать MHT (MHTML) в PDF</li>
				<li>и другие</li>
			</ul>
		<h2>Конвертируйте другие форматы в PDF</h2>
			<ul>
				<li>Преобразование RTF в PDF</li>
				<li>Преобразование ODT в PDF</li>
				<li>Преобразование TXT в PDF</li>
				<li>Конвертировать файлы Mobi в PDF</li>
				<li>и другие</li>
			</ul>
	</div>
	<div class="col-md-6">
		<h2>Преобразование документа в изображение</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-an-image/">Преобразование DOCX в JPG</a></li>
				<li>Конвертировать DOC в PNG</li>
				<li>и другие</li>
			</ul>
		<h2>Преобразовать документ в Markdown</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-markdown/">Преобразовать документ в Markdown</a></li>
				<li>Преобразовать HTML в Markdown</li>
				<li>и другие</li>
			</ul>
		<h2>Преобразование документа в HTML</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Преобразование Word в HTML</a></li>
				<li>Преобразовать Markdown в HTML</li>
				<li>Конвертировать Mobi в EPUB</li>
				<li>и другие</li>
			</ul>
		<h2>Другие примеры</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-mhtml-and-send-it-by-email/">Преобразуйте документ в формат MHTML и отправьте его по электронной почте</a></li>
				<li>Преобразование DOCX в DOC</li>
				<li>Преобразование HTML в Word</li>
				<li>и другие</li>
			</ul>
	</div>
</div>
