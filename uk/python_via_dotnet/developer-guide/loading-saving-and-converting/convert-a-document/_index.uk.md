---
title: Перетворення документа в Python
second_title: Aspose.Words для Python via .NET
articleTitle: Конвертувати документ
linktitle: Конвертувати документ
type: docs
url: /uk/python-net/convert-a-document/
weight: 30
description: "Легко конвертуйте документи з одного формату в інший спосіб Pythonй Ви можете працювати з усіма найбільш популярними форматами, такими як Microsoft Word Формати, такі як DOCX або DOC, формати OpenDocument, такі як ODT або OTT, веб-формати, такі як HTML або XHTML, текстові формати, такі як MarkDown або TXT, та інші."
keywords: "convert a document python, convert documents from one format to another python, convert to markdown python, convert pdf to docx python, convert docx to pdf python, convert doc to pdf python, convert a document Aspose for Python"
timestamp: 2024-01-27-14-07-04
---

Уміння легко і надійно конвертувати документи з одного формату в інший є одним з основних напрямків функцій Aspose.Wordsй Таке перетворення нічого не більше, ніж поєднання вантажно-збережених операцій.

Практично будь-яке завдання, яке ви хочете виконати з Aspose.Words передбачає завантаження або збереження документа в певному форматі. Як зазначено в попередніх розділах, [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) enumeration specifies всі *load* або *import* Формати Aspose.Wordsй [SaveFormat](https://reference.aspose.com/words/python-net/aspose.words/saveformat/) enumeration specifies всі *save* або *export* Формати Aspose.Wordsй Так, Aspose.Words може перетворювати документ з будь-якого підтримуваного формату завантаження в будь-який формат збереження. Як правило, таке перетворення вимагає декількох етапів розрахунку. Однак з точки зору користувача перетворення з документа в інший - це дуже простий, і може бути виконано лише двома кроками:

1,1 км Завантаження документа в [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) об'єкт, використовуючи один з його конструкторів.
1,1 км Покликати одну з [save](https://reference.aspose.com/words/python-net/aspose.words/document/save/) методи на [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) об'єкт і вказати бажаний формат виведення.

{{% alert color="primary" %}}

**Почати онлайн**

Ви можете спробувати функцію перетворення, використовуючи наші [Безкоштовний онлайн конвертер](https://products.aspose.app/words/conversion) інструмент.

{{% /alert %}}

Поточний розділ описує популярні перетворення, а також ідеї для роботи з деякими поєднаннями форматів при завантаженні та збереженні. Використання прикладів цього розділу можна зрозуміти, що процес перетворення досить універсальний, і немає точки описувати всі можливі варіанти, так як є кілька сотень з них через велику кількість [Підтримувані формати документів](/words/uk/python-net/supported-document-formats/)й

{{% alert color="primary" %}}

Будь ласка, зауважте, що нижче є найпопулярнішими комбінаціями перетворення, і не кожна комбінація пов'язана з певною сторінкою. Це випадок, тому що наші статті не мають прикладів для кожної пари перетворення – майже всі перетворення досить схожі. Переконайтеся в цьому, навчаючи статті в поточному розділі.

{{% /alert %}}

<div class="row">
	<div class="col-md-4">
		<h2>Перетворення Word в PDF</h2>
			<ul>
				<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Перетворення DOC в PDF</a></li>
				<li><a href="/words/python-net/convert-a-document-to-pdf/#converting-doc-or-docx-to-pdf">Перетворення DOCX в PDF</a></li>
				<li>та інші</li>
			</ul>
		<h2>Перетворення зображень в PDF</h2>
			<ul>
				<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">Перетворення JPG в PDF</a></li>
				<li><a href="/words/python-net/convert-a-document-to-pdf/#convert-an-image-to-pdf">Перетворення TIFF в PDF</a></li>
				<li>та інші</li>
			</ul>
		<h2>Конвертувати веб-формати в PDF</h2>
			<ul>
				<li>Конвертер Markdown до PDF</li>
				<li>Перетворення HTML в PDF</li>
				<li>Перетворення MHT (MHTML) в PDF</li>
				<li>та інші</li>
			</ul>
		<h2>Перетворення інших форматів в PDF</h2>
			<ul>
				<li>Перетворення RTF в PDF</li>
				<li>Перетворення ODT в PDF</li>
				<li>Перетворення TXT в PDF</li>
				<li>Перетворення Mobi в PDF</li>
				<li>та інші</li>
			</ul>
	</div>
	<div class="col-md-4">
		<h2>Перетворення PDF в Word</h2>
			<ul>
				<li><a href="/words/uk/python-net/convert-pdf-to-other-document-formats/">Перетворення PDF в інші формати документів</a></li>
        <li>Перетворення PDF в DOC</li>
				<li>та інші</li>
			</ul>
		<h2>Перетворення PDF в зображення</h2>
			<ul>
				<li><a href="/words/uk/python-net/convert-a-document-to-an-image/">Перетворення документа в зображення</a></li>
        <li>Перетворення PDF в SVG</li>
				<li>та інші</li>
			</ul>
		<h2>Перетворення PDF в веб-формати</h2>
			<ul>
        <li>Перетворення PDF в Markdown</li>
				<li>Перетворення PDF в HTML</li>
				<li>Перетворення PDF в EPUB</li>
				<li>та інші</li>
			</ul>
		<h2>Перетворення PDF в інші формати</h2>
			<ul>
				<li>Перетворення PDF в RTF</li>
				<li>Перетворення PDF в XPS</li>
				<li>та інші</li>
			</ul>
	</div>
	<div class="col-md-4">
		<h2>Перетворення документа в зображення</h2>
			<ul>
				<li><a href="/words/uk/python-net/convert-a-document-to-an-image/">Перетворення документа в зображення</a></li>
				<li><a href="/words/uk/python-net/convert-a-document-to-an-image/">Перетворення документа в зображення</a></li>
				<li>та інші</li>
			</ul>
		<h2>Перетворення документа в Markdown</h2>
			<ul>
				<li><a href="/words/uk/python-net/convert-a-document-to-markdown/">Перетворення документа в Markdown</a></li>
				<li>Перетворення HTML в Markdown</li>
				<li>та інші</li>
			</ul>
		<h2>Перетворення документа в HTML</h2>
			<ul>
				<li><a href="/words/python-net/convert-a-document-to-html-mhtml-or-epub/#convert-a-document">Перетворення Word в HTML</a></li>
				<li>Конвертер Markdown до HTML</li>
				<li>Перетворення Mobi в EPUB</li>
				<li>та інші</li>
			</ul>
	</div>
</div>
