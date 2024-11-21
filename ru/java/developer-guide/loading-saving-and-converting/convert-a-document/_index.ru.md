---
title: Преобразовать документ в Java
second_title: Aspose.Words для Java
articleTitle: Преобразовать документ
linktitle: Преобразовать документ
type: docs
weight: 30
url: /ru/java/convert-a-document/
description: "Легко конвертировать документы из одного формата в другой. Вы можете работать со всеми популярными форматами, такими как: Microsoft Word форматы, такие как DOCX или DOC, форматы OpenDocument, такие как ODT или OTT, веб-форматы, такие как HTML или XHTML, текстовые форматы, такие как MarkDown или TXT и другие, использующие Java."
timestamp: 2024-09-25-11-08-55
---

Возможность легко и надежно конвертировать документы из одного формата в другой является одной из основных особенностей Aspose.Words. Такое преобразование является не чем иным, как комбинацией загрузочных и сберегательных операций.

## Что такое конвертация документов {#what-is-document-conversion}

Почти любая задача, которую вы хотите выполнить Aspose.Words Загрузка или сохранение документа в определенном формате. Как уже упоминалось в предыдущих разделах, [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) Перечисление определяет все *load* или *import* форматы, поддерживаемые Aspose.Wordsи это [SaveFormat](https://reference.aspose.com/words/java/com.aspose.words/saveformat/) Перечисление определяет все *save* или *export* форматы, поддерживаемые Aspose.Words. Таким образом, Aspose.Words Может конвертировать документ из любого поддерживаемого формата загрузки в любой поддерживаемый формат сохранения. Как правило, такое преобразование требует нескольких этапов расчета. Однако с точки зрения пользователя преобразование из формата документа в другой формат само по себе очень просто и может быть выполнено всего двумя шагами:

1. Загрузите свой документ в [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Объект, использующий одного из своих конструкторов.
1. Призовите одного из [Save](https://reference.aspose.com/words/java/com.aspose.words/document/#save-java.lang.String-int) Методы в отношении **Document** объект и указать желаемый выходной формат.

{{% alert color="primary" %}}

**Попробуйте онлайн**

Вы можете попробовать эту функцию с нашей [Бесплатный онлайн конвертер](https://products.aspose.app/words/conversion).

{{% /alert %}}

## Популярные преобразования {#popular-conversions}

В текущем разделе описаны популярные конверсии, а также идеи работы с некоторыми комбинациями форматов при загрузке и экономии. Используя примеры этого раздела, можно понять, что сам процесс конверсии достаточно универсален, и нет смысла описывать все возможные варианты, поскольку их несколько сотен из-за большого количества [Поддерживаемые форматы документов](/words/ru/java/supported-document-formats/).

{{% alert color="primary" %}}

Обратите внимание, что ниже приведены наиболее популярные комбинации конверсий, и не каждая комбинация связана с определенной страницей. Это так, потому что в наших статьях нет примеров для каждой пары конверсий - почти все конверсии довольно похожи. Убедитесь в этом, изучив статьи в текущем разделе.

{{% /alert %}}

<div class="row">
	<div class="col-md-6">
		<h2>Преобразование Word в PDF</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Преобразование DOC в PDF</a></li>
				<li><a href="/words/java/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Преобразование DOCX в PDF</a></li>
				<li>и другие</li>
			</ul>
		<h2>Преобразование изображения в PDF</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-pdf/#convert-an-image-to-pdf">Преобразование JPG в PDF</a></li>
				<li><a href="/words/java/convert-a-document-to-pdf/#convert-an-image-to-pdf">Преобразование TIFF в PDF</a></li>
				<li>и другие</li>
			</ul>
		<h2>Преобразование веб-форматов в PDF</h2>
			<ul>
				<li>преобразовать Markdown В PDF</li>
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
	<div class="col-md-6">
		<h2>Преобразовать документ в изображение</h2>
			<ul>
				<li><a href="/words/ru/java/convert-a-document-to-an-image/">Преобразовать документ в изображение</a></li>
				<li>Преобразование DOC в PNG</li>
				<li>и другие</li>
			</ul>
		<h2>Преобразовать документ в Markdown</h2>
			<ul>
				<li><a href="/words/ru/java/convert-a-document-to-markdown/">Преобразовать документ в Markdown</a></li>
				<li>Преобразовать HTML в Markdown</li>
				<li>и другие</li>
			</ul>
		<h2>Преобразовать документ в HTML</h2>
			<ul>
				<li><a href="/words/java/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Преобразование Word в HTML</a></li>
				<li>преобразовать Markdown в HTML</li>
				<li>Преобразование Mobi в EPUB</li>
				<li>и другие</li>
			</ul>
		<h2>Работа с документом в базе данных</h2>
			<ul>
				<li><a href="/words/ru/java/serialize-and-work-with-a-document-in-a-database/">Сериализация и работа с документом в базе данных</a></li>
			</ul>
		<h2>Другие примеры</h2>
			<ul>
				<li><a href="/words/ru/java/convert-a-document-to-mhtml-and-send-it-by-email/">Преобразовать документ в MHTML и отправить По электронной почте</a></li>
				<li>Преобразование DOCX в DOC</li>
				<li>Преобразование HTML в Word</li>
				<li>и другие</li>
			</ul>
	</div>
</div>
