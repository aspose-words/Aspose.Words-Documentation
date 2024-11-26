---
title: Розділіть документ у Python
second_title: Aspose.Words для Python via .NET
articleTitle: Спліт документів
linktitle: Спліт документів
description: "Розділіть документ на декілька файлів Pythonй Використовуйте функцію розщеплення, щоб ефективно розбити документ заголовками або розділами, а також за допомогою сторінок або за допомогою діапазонів сторінок."
type: docs
weight: 90
url: /uk/python-net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* або * Спліт документа * є процес розбиття великого документа в більшій кількості менших файлів. Є різні причини розбити файл. Наприклад, вам потрібно лише деякі сторінки з певного документа і не весь. Або з причин конфіденційності, ви хочете поділитися лише деякими частинами документа з іншими. З функцією розщеплення можна отримати тільки необхідні частини документа і зробити необхідні дії з ними, наприклад, розмітити, зберегти або відправити.

Aspose.Words надає вам ефективний спосіб розбити один документ на декілька документів заголовками або розділами. Ви також можете розбити документ на сторінках або за допомогою рядів сторінок. У статті описано обидва варіанти розщеплення.

Щоб розбити документ на менші файли за допомогою Aspose.Words, Вам необхідно дотримуватися наступних кроків:

1,1 км Завантаження документа в будь-якому форматі підтримки.
1,1 км Розділіть документ.
1,1 км Збережіть вихідні документи.

Після того, як ви розбити документ, ви зможете відкрити всі вихідні документи, які будуть починатися з необхідних сторінок, тексту тощо.

{{% alert color="primary" %}}

**Почати онлайн**

Ми можемо самі зателефонувати одержувачу. [Безкоштовно онлайн документ розгалужувач](https://products.aspose.app/words/splitter)й

{{% /alert %}}

## Розділіть документ, використовуючи різні критерії {#split-a-document-using-different-criteria}

Aspose.Words дозволяє розбити ЕПУБ або HTML документи на розділи за різними критеріями. У процесі зберігають стиль і макет вихідних документів для вихідних документів.

Ви можете вказати критерії за допомогою [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) заохочення. Так ви можете розділити документ на розділи, використовуючи один з наступних критеріїв або об'єднати більше одного критеріїв разом:

- заголовок абзацу,
- перерву секція,
- перерву стовпців,
- перерву сторінки.

При збереженні виходу в HTML, Aspose.Words зберегти кожен окремий розділ HTML як окремий файл. В результаті документ буде розбити на декілька файлів HTML. При збереженні виходу в EPUB, Aspose.Words зберегти результат в одному файлі EPUB незалежно від [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) значення, яку ви використовували. Так, використовуючи [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) для документів EPUB тільки впливає на зовнішній вигляд їх вмісту в додатках для читання: зміст буде розділений на розділи і документ більше не буде виглядати безперервно.

{{% alert color="primary" %}}

Ви не можете розбити документ за допомогою [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) при збереженні формату MHTML.

{{% /alert %}}

У цьому розділі ми розглянемо тільки деякі можливі роздільні критерії.

### Розділіть документ заголовками {#split-a-document-by-headings}

Щоб розбити документ на глави, використовуйте [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) значення значення [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) майно.

Якщо необхідно розбити документ за певним рівнем заголовків абзаців, таких як заголовки 1, 2 і 3, використовувати також [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/) майно. Вихід буде розділений на абзаци, відформатовані за вказаним рівнем заголовка.

Приклад наступного коду показує, як розбити документ на менші частини, заголовок:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

Будь ласка, зверніть увагу, що для цього критеріїв, Aspose.Words тільки підтримує збереження HTML формату при розщепленні.

При зберіганні в EPUB документ не розщеплюється на кілька файлів, і буде тільки один вихідний файл.

### Розділи {#split-a-document-by-sections}

Aspose.Words також дозволяє використовувати перерву розділів, щоб розбити документи і зберегти їх на HTML. Для цього використовуйте [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break) як [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

Існує ще один спосіб розділити початковий документ на декілька вихідних документів, і ви можете вибрати будь-який формат виведення, який підтримується Aspose.Wordsй

Приклад наступного коду показує, як розбити документ на менші частини за допомогою перерв (без використання [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) нерухомість:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## Розділення сторінок {#splitting-by-pages}

Ви також можете розділити сторінку документа по сторінці, по рядкам сторінок, або починаючи з зазначених номерів сторінок. У такому випадку [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) метод може зробити роботу.

Цей розділ описує кілька випадків подання документів за допомогою сторінки [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) клас і клас [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) метод.

{{% alert color="primary" %}}

Ви можете використовувати будь-який [Підтримувані формати документів](/words/uk/python-net/supported-document-formats/)й

{{% /alert %}}

{{% alert color="primary" %}}

У зв'язку з багатьма нюансами, що з'являються при зменшенні кількості сторінок, повного узгодження з Microsoft Word верстка досить складне завдання. Таким чином, в залежності від складності документа, можуть бути незначні відмінності в отриманому документі з початкового документа.

{{% /alert %}}

### Розділити сторінку документа {#split-a-document-page-by-page}

Aspose.Words дозволяє розбити багатосторінковий документ на сторінку.

Приклад коду показує, як розділити документ і зберегти кожну сторінку як окремий документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### Розділити документацію за посиланням {#split-a-document-by-page-ranges}

Aspose.Words дозволяє розбити багатосторінковий документ за посиланнями на сторінку. Ви можете розділити один файл на декілька файлів з різними діапазонами сторінок або просто вибрати один діапазон і зберегти тільки цю частину документа джерело. Зверніть увагу, що ви можете вибрати діапазон сторінок відповідно до максимального та мінімального номера сторінки документа.

Наприклад, наступний код показує, як розбити документ на менші частини за допомогою діапазону сторінок з певним початковим індексом та кінцевими індексами:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## Зробіть Split документ з іншим файлом {#merge-the-split-document-with-another-file}

Aspose.Words дозволяє об'єднати вихідний спліт-документ з іншим документом, щоб сформувати новий документ. Це може бути викликаний документообігу.

Приклад коду показує, як об'єднати спліт-документ з іншим документом:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
