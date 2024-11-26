---
title: Преобразовать документ в Java
second_title: Aspose.Words для Java
articleTitle: Преобразование документа
linktitle: Преобразование документа
type: docs
weight: 30
url: /ru/java/convert-a-document/
description: "Легко конвертируйте документы из одного формата в другой. Вы можете работать со всеми наиболее популярными форматами, такими как Microsoft Word, такие как DOCX или DOC, форматы OpenDocument, такие как ODT или OTT, веб-форматы, такие как HTML или XHTML, текстовые форматы, такие как MarkDown или TXT, а другие используют Java."
timestamp: 2024-09-25-11-08-55
---

Возможность простого и надежного преобразования документов из одного формата в другой является одной из основных функциональных возможностей Aspose.Words. Такое преобразование представляет собой не что иное, как комбинацию операций загрузки и сохранения.

## Что такое Преобразование документов {#what-is-document-conversion}

Практически любая задача, которую вы хотите выполнить с помощью Aspose.Words, включает в себя загрузку или сохранение документа в том или ином формате. Как упоминалось в предыдущих разделах, перечисление [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) определяет все форматы *load* или *import*, поддерживаемые Aspose.Words, а перечисление [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) определяет все форматы *save* или *export*, поддерживаемые Aspose.Words. Таким образом, Aspose.Words может преобразовать документ из любого поддерживаемого формата загрузки в любой поддерживаемый формат сохранения. Как правило, такое преобразование требует нескольких этапов расчета. Однако, с точки зрения пользователя, преобразование из формата документа в другой формат само по себе очень простое и может быть выполнено всего за два шага:

1. Загрузите ваш документ в объект [Document](https://reference.aspose.com/words/java/com.aspose.words/document/), используя один из его конструкторов.
1. Вызовите один из методов [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) для объекта **Document** и укажите желаемый формат вывода.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете опробовать эту функцию с нашим [Бесплатный онлайн конвертер](https://products.aspose.app/words/conversion).

{{% /alert %}}

## Популярные конверсии {#popular-conversions}

В текущем разделе описаны популярные преобразования, а также идеи по работе с некоторыми комбинациями форматов при загрузке и сохранении. Используя примеры этого раздела, вы можете понять, что сам процесс конвертации достаточно универсален, и нет смысла описывать все возможные варианты, поскольку их несколько сотен из-за большого количества форматов [, поддерживаемых Aspose.Words для Java](/words/java/supported-document-formats/).

{{% alert color="primary" %}}

Пожалуйста, обратите внимание, что ниже приведены наиболее популярные комбинации конверсий, и не каждая комбинация привязана к определенной странице. Это связано с тем, что в наших статьях нет примеров для каждой пары конверсий – почти все конверсии довольно похожи. Убедитесь в этом, изучив статьи в текущем разделе.

{{% /alert %}}

<div class="row">
	<div class="col-md-6">
		<h2>Преобразовать слово в PDF</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Преобразовать DOC в PDF</a></li>
				<li><a href="/words/java/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Преобразовать DOCX в PDF</a></li>
				<li>и другие</li>
			</ul>
		<h2>Преобразовать изображение в PDF</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-pdf/#convert-an-image-to-pdf">Преобразовать JPG в PDF</a></li>
				<li><a href="/words/java/convert-a-document-to-pdf/#convert-an-image-to-pdf">Преобразовать TIFF в PDF</a></li>
				<li>и другие</li>
			</ul>
		<h2>Конвертировать веб-форматы в PDF</h2>
			<ul>
				<li>Преобразовать Markdown в PDF</li>
				<li>Преобразовать HTML в PDF</li>
				<li>Преобразовать MHT (MHTML) в PDF</li>
				<li>и другие</li>
			</ul>
		<h2>Конвертировать другие форматы в PDF</h2>
			<ul>
				<li>Преобразовать RTF в PDF</li>
				<li>Преобразовать ODT в PDF</li>
				<li>Преобразовать TXT в PDF</li>
				<li>Преобразовать Mobi в PDF</li>
				<li>и другие</li>
			</ul>
	</div>
	<div class="col-md-6">
		<h2>Преобразование документа в изображение</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-an-image/">Преобразовать DOCX в JPG</a></li>
				<li>Преобразовать DOC в PNG</li>
				<li>и другие</li>
			</ul>
		<h2>Преобразовать документ в Markdown</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-markdown/">Преобразовать документ в Markdown</a></li>
				<li>Преобразовать HTML в Markdown</li>
				<li>и другие</li>
			</ul>
		<h2>Преобразовать документ в HTML</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Преобразовать слово в HTML</a></li>
				<li>Преобразовать Markdown в HTML</li>
				<li>Преобразовать Mobi в EPUB</li>
				<li>и другие</li>
			</ul>
		<h2>Работа с документом в базе данных</h2>
			<ul>
				<li><a href="/words/java/serialize-and-work-with-a-document-in-a-database/">Сериализовать документ в базе данных и работать с ним</a></li>
			</ul>
		<h2>Другие примеры</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-mhtml-and-send-it-by-email/">Преобразуйте документ в MHTML и отправьте его по электронной почте</a></li>
				<li>Преобразовать DOCX в DOC</li>
				<li>Преобразовать HTML в Word</li>
				<li>и другие</li>
			</ul>
	</div>
</div>
