﻿---
title: Розділити документ на C++
second_title: Aspose.Words для C++
articleTitle: Розділення документа
linktitle: Розділення документа
description: "Розділіть документ на кілька файлів за допомогою C++. Використовуйте функцію розділення, щоб ефективно розділити документ за заголовками або розділами, а також за сторінками або діапазонами сторінок."
type: docs
weight: 90
url: /uk/cpp/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* або *split a document* - це процес розбиття великого документа на більшу кількість менших файлів. Для розбиття файлу існують різні причини. Наприклад, вам потрібні лише деякі сторінки з певного документа, а не весь документ. Або з міркувань конфіденційності ви хочете поділитися з іншими користувачами лише деякими частинами документа. За допомогою функції поділу ви можете отримати тільки потрібні частини документа і виконати з ними необхідні дії, наприклад, позначити, зберегти або відправити.

Aspose.Words надає вам ефективний спосіб розділити один документ на кілька документів за заголовками або розділами. Ви також можете розділити документ за сторінками або за діапазонами сторінок. Обидва варіанти поділу будуть описані в цій статті.

Щоб розбити документ на менші файли за допомогою Aspose.Words, вам потрібно виконати такі дії:

1. Завантажте документ у будь-якому підтримуваному форматі.
1. Розділіть документ.
1. Збережіть вихідні документи.

Після поділу документа Ви зможете відкрити всі вихідні документи, які будуть починатися з потрібних сторінок, тексту і т. д.

{{% alert color="primary" %}}

**Спробуйте онлайн**

Ви можете випробувати цю функцію з нашим [Безкоштовний онлайн документ спліттер](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Розділити документ за різними критеріями {#split-a-document-using-different-criteria}

Aspose.Words дозволяє розділити EPUB або HTML документи на глави відповідно до різних критеріїв. При цьому стиль і оформлення вихідного документа зберігаються для вихідних документів.

Ви можете вказати критерії, використовуючи перерахування [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/). Таким чином, ви можете розділити документ на глави, використовуючи один з наступних критеріїв, або об'єднати кілька критеріїв разом:

- заголовок абзацу,
- розрив розділу,
- розрив стовпця,
- розрив сторінки.

Зберігаючи вихідні дані в HTML, Aspose.Words збережіть кожну окрему главу як окремий файл HTML. В результаті документ буде розділений на кілька HTML файлів. Зберігаючи вихідні дані в EPUB, Aspose.Words збережіть результат в одному файлі EPUB незалежно від значення `DocumentSplitCriteria`, яке ви використовуєте. Таким чином, використання DocumentSplitCriteria для EPUB документів впливає лише на зовнішній вигляд їх вмісту в програмах для читання: вміст буде розділений на глави, і документ більше не буде виглядати безперервним.

{{% alert color="primary" %}}

Ви не можете розділити документ, використовуючи властивість [DocumentSplitCriteria](https://reference.aspose.com/words/cpp/aspose.words.saving/documentsplitcriteria/), зберігаючи у форматі MHTML.

{{% /alert %}}

У цьому розділі ми розглянемо лише деякі з можливих критеріїв поділу.

### Розбити документ на розділи {#split-a-document-by-sections}

Aspose.Words також дозволяє використовувати розриви розділів для розділення документів та збереження їх у HTML. Для цієї мети використовуйте **SectionBreak** Як **DocumentSplitCriteria**:

Наступний приклад коду показує, як розділити документ на менші частини за допомогою розривів розділів (без використання властивості `DocumentSplitCriteria`).:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-SplitDocumentBySections.cpp" >}}

## Розбито на сторінки {#splitting-by-pages}

Ви також можете розділити документ посторінково, за діапазонами сторінок або починаючи з вказаних номерів сторінок. У цьому випадку метод [ExtractPages](https://reference.aspose.com/words/cpp/aspose.words/document/extractpages/) може виконати це завдання.

У цьому розділі описано кілька випадків використання пагінації документів за допомогою класу [Document](https://reference.aspose.com/words/cpp/aspose.words/document/) та методу **ExtractPages**.

{{% alert color="primary" %}}

Ви можете використовувати будь-який [вихідний формат, підтримуваний Aspose.Words](/words/cpp/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

Через безліч нюансів, що виникають при скороченні кількості сторінок, повна відповідність макету Microsoft Word є досить складним завданням. Тому, в залежності від складності документа, в результуючому макеті документа можуть бути незначні відмінності від вихідного документа.

{{% /alert %}}

### Розбиття документа посторінково {#split-a-document-page-by-page}

Aspose.Words дозволяє розбивати багатосторінковий документ посторінково.

Наступний приклад коду показує, як розділити документ і зберегти кожну сторінку як окремий документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentPageByPage.h" >}}

### Розбити документ за діапазонами сторінок {#split-a-document-by-page-ranges}

Aspose.Words дозволяє розділити багатосторінковий документ за діапазонами сторінок. Ви можете розділити один файл на кілька файлів з різними діапазонами сторінок або просто вибрати один діапазон і зберегти лише цю частину оригінального документа. Зверніть увагу, що ви можете вибрати діапазон сторінок відповідно до максимальних та мінімальних номерів сторінок документа.

Наступний приклад коду показує, як розділити документ на менші частини за діапазоном сторінок із визначеними початковими та кінцевими індексами:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Split Documents-Split document-SplitDocumentByPageRange.h" >}}

## Об'єднайте розділений документ з іншим документом {#merge-the-split-document-with-another-file}

Aspose.Words дозволяє об'єднати вихідний розділений документ з іншим документом для формування нового документа. Це можна назвати об'єднанням документів.

Наступний приклад коду показує, як об'єднати розділений документ з іншим документом:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-SplitDocument-MergeSplitDocuments.cpp" >}}
