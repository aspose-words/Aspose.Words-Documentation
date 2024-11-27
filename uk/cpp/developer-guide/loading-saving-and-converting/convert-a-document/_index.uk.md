---
title: Перетворити документ на C++
second_title: Aspose.Words для C++
articleTitle: Перетворення документа
linktitle: Перетворення документа
type: docs
description: "Легко перетворюйте документи з одного формату в інший за допомогою C++. Ви можете працювати з усіма найпопулярнішими форматами, такими як Microsoft Word, такі як DOCX або DOC, формати OpenDocument, такі як ODT або OTT, веб-формати, такі як HTML або XHTML, текстові формати, такі як MarkDown або TXT та інші."
keywords: "convert a document c++, convert documents from one format to another c++, convert to markdown c++, convert pdf to docx C++, convert docx to pdf C++, convert doc to pdf C++, convert a document Aspose for C++"
weight: 30
url: /uk/cpp/convert-a-document/
timestamp: 2024-09-25-11-08-55
---

Можливість простого і надійного перетворення документів з одного формату в інший є однією з основних функціональних можливостей Aspose.Words. Таке перетворення - це не що інше, як комбінація операцій завантаження та збереження.

## Що таке перетворення документів {#what-is-document-conversion}

Практично будь-яке завдання, яке ви хочете виконати за допомогою Aspose.Words, передбачає завантаження або збереження документа в тому чи іншому форматі. Як згадувалося в попередніх розділах, перерахування [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) визначає всі формати *load* або *import*, Підтримувані Aspose.Words, а перерахування [SaveFormat](https://reference.aspose.com/words/cpp/aspose.words/saveformat/) визначає всі формати *save* або *export*, Підтримувані Aspose.Words. Таким чином, Aspose.Words може перетворити документ з будь-якого підтримуваного формату завантаження в будь-який підтримуваний формат збереження. Як правило, таке перетворення вимагає декількох етапів розрахунку. Однак, з точки зору користувача, перетворення з формату документа в інший формат саме по собі дуже просте і може бути виконано всього за два кроки:

1. Завантажте ваш документ в об'єкт [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document), використовуючи один з його конструкторів.
1. Викличте один із методів [Save](https://reference.aspose.com/words/cpp/class/aspose.words.saving.save_output_parameters) для об'єкта **Document** і вкажіть бажаний формат виводу.

{{% alert color="primary" %}}

**Спробуйте онлайн**

Ви можете скористатися функціями конвертації, скориставшись нашим [Безкоштовним онлайн-конвертером](https://products.aspose.app/words/conversion) інструмент.

{{% /alert %}}

## Популярні конверсії {#popular-conversions}

У поточному розділі описані популярні перетворення, а також ідеї по роботі з деякими комбінаціями форматів при завантаженні і збереженні. Використовуючи приклади цього розділу, ви можете зрозуміти, що сам процес конвертації досить універсальний, і немає сенсу описувати всі можливі варіанти, оскільки їх кілька сотень через велику кількість форматів [, підтримуваних Aspose.Words для C++](/words/cpp/supported-document-formats/).

{{% alert color="primary" %}}

Зверніть увагу, що нижче наведені найпопулярніші комбінації конверсій, і не кожна комбінація прив'язана до певної сторінки. Це тому, що в наших статтях немає прикладів для кожної пари конверсій – майже всі конверсії досить схожі. Переконайтеся в цьому, вивчивши статті в поточному розділі.

{{% /alert %}}

<div class="row">
	<div class="col-md-6">
		<h2>Перетворити Word на PDF</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Перетворити DOC на PDF</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Перетворити DOCX на PDF</a></li>
				<li>та інші</li>
			</ul>
		<h2>Перетворити зображення на PDF</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">Перетворити JPG на PDF</a></li>
				<li><a href="/words/cpp/convert-a-document-to-pdf/#convert-an-image-to-pdf">Перетворити TIFF на PDF</a></li>
				<li>та інші</li>
			</ul>
		<h2>Конвертувати веб-формати в PDF</h2>
			<ul>
				<li>Перетворити Markdown на PDF</li>
				<li>Перетворити HTML на PDF</li>
				<li>Перетворити MHT (MHTML) на PDF</li>
				<li>та інші</li>
			</ul>
		<h2>Конвертувати інші формати в PDF</h2>
			<ul>
				<li>Перетворити RTF на PDF</li>
				<li>Перетворити ODT на PDF</li>
				<li>Перетворити TXT на PDF</li>
				<li>Перетворити Mobi на PDF</li>
				<li>та інші</li>
			</ul>
	</div>
	<div class="col-md-6">
		<h2>Перетворення документа в зображення</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-an-image/">Перетворити DOCX на JPG</a></li>
				<li>Перетворити DOC на PNG</li>
				<li>та інші</li>
			</ul>
		<h2>Перетворити документ на Markdown</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-markdown/">Перетворити документ на Markdown</a></li>
				<li>Перетворити HTML на Markdown</li>
				<li>та інші</li>
			</ul>
		<h2>Перетворити документ на HTML</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Перетворити Word на HTML</a></li>
				<li>Перетворити Markdown на HTML</li>
				<li>Перетворити Mobi на EPUB</li>
				<li>та інші</li>
			</ul>
		<h2>Інші приклади</h2>
			<ul>
				<li><a href="/words/cpp/convert-a-document-to-mhtml-and-send-it-by-email/">Перетворіть документ на MHTML та надішліть його електронною поштою</a></li>
				<li>Перетворити DOCX на DOC</li>
				<li>Перетворити HTML на Word</li>
				<li>та інші</li>
			</ul>
	</div>
</div>
