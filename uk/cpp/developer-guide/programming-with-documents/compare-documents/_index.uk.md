﻿---
title: Порівняння документів у C++
second_title: Aspose.Words для C++
articleTitle: Порівняння документів
linktitle: Порівняння документів
type: docs
description: "Порівняйте два документи у будь-яких підтримуваних форматах та відобразіть зміни вмісту за допомогою C++. Ви можете застосувати додаткові параметри при порівнянні."
weight: 60
url: /uk/cpp/compare-documents/
timestamp: 2024-01-27-14-07-04
---

Порівняння документів-це процес, який ідентифікує зміни між двома документами та містить зміни у вигляді ревізій. Цей процес порівнює будь-які два документи, включаючи версії одного конкретного документа, після чого зміни між обома документами будуть показані як перегляди в першому документі.

Метод порівняння досягається шляхом порівняння слів на рівні символів або на рівні слова. Якщо в слові змінено хоча б один символ, в результаті різниця відображатиметься як зміна всього слова, а не символу. Цей процес порівняння є звичайним завданням у юридичній та фінансовій галузях.

Замість того, щоб вручну шукати відмінності між документами або їх версіями, ви можете використовувати Aspose.Words для порівняння документів та отримання змін у форматуванні, верхньому та нижньому колонтитулах, таблицях тощо.

У цій статті пояснюється, як порівнювати документи і як задати додаткові властивості для порівняння.

{{% alert color="primary" %}}

**Спробуйте онлайн**

Ви можете порівняти два документи онлайн, скориставшись функцією [Порівняння документів онлайн](https://products.aspose.app/words/comparison) інструмент.

Зверніть увагу, що метод порівняння, описаний нижче, використовується в цьому інструменті для забезпечення отримання однакових результатів. Таким чином, ви отримаєте однакові результати навіть при використанні онлайн-інструменту порівняння або методу порівняння в Aspose.Words.

{{% /alert %}}

## Обмеження та підтримувані формати файлів {#limitations-and-supported-file-formats}

Порівняння документів-дуже складна функція. Існують різні комбінації елементів вмісту, які необхідно проаналізувати, щоб виявити всі відмінності. Причиною такої складності є те, що алгоритм Aspose.Words прагне отримати ті самі результати порівняння, що і алгоритм Microsoft Word.

Загальним обмеженням для двох документів, що порівнюються, є те, що вони не повинні мати змін перед викликом методу порівняння, оскільки це обмеження існує в Microsoft Word.

{{% alert color="primary" %}}

Зверніть увагу, що ви можете порівняти будь-які два документи в рамках [підтримувані формати файлів](/words/cpp/supported-document-formats/) Ви можете порівнювати об'єкти документа і навіть створювати ці об'єкти з нуля, не маючи певного формату.

{{% /alert %}}

## Порівняння двох документів {#compare-two-documents}

Коли ви порівнюєте документи, відмінності останнього документа від першого відображаються у вигляді змін у першому документі. Коли ви змінюєте документ, після виконання методу порівняння кожна редакція матиме власну редакцію.

Aspose.Words дозволяє ідентифікувати відмінності в документах за допомогою методу [Compare](https://reference.aspose.com/words/cpp/aspose.words/document/compare/) – це аналогічно функції порівняння документів Microsoft Word. Дозволяє перевіряти документи або їх версії на наявність відмінностей та змін, включаючи зміни форматування, такі як зміна шрифту, зміна інтервалів, додавання слів та абзаців.

В результаті порівняння документи можуть бути визначені як рівні або нерівнозначні. Термін "рівні" документи означає, що метод порівняння не дозволяє представити зміни у вигляді ревізій. Це означає, що текст документа та форматування тексту однакові. Але між документами можуть бути й інші відмінності. Наприклад, Microsoft Word підтримує лише зміни формату для стилів, і ви не можете представляти вставку/видалення стилів. Таким чином, документи можуть мати інший набір стилів, а метод **Compare** все ще не призводить до змін.

Наступний приклад коду показує, як перевірити, чи рівні два документи чи ні:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareForEqual.cpp" >}}

Наступний приклад коду показує, як просто застосувати метод `Compare` до двох документів:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareWhenDocumentHasRevisions.cpp" >}}

## Вкажіть додаткові параметри порівняння {#specify-advanced-comparing-properties}

Існує багато різних властивостей класу [CompareOptions](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/), які ви можете застосувати, коли захочете порівняти документи.

Наприклад, Aspose.Words дозволяє ігнорувати зміни, внесені під час операції порівняння для певних типів об'єктів у вихідному документі. Ви можете вибрати відповідну властивість для типу об'єкта, наприклад [IgnoreHeadersAndFooters](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreheadersandfooters/), [IgnoreFormatting](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignoreformatting/), [IgnoreComments](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_ignorecomments/), і інші, встановивши для них значення "true".

Крім того, Aspose.Words надає властивість [Granularity](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_granularity/), за допомогою якої Ви можете вказати, чи слід відстежувати зміни за символом чи словом.

Іншою поширеною властивістю є вибір того, в якому документі показувати зміни для порівняння. Наприклад, у діалоговому вікні "порівняти документи" в Microsoft Word є опція "Показувати зміни в" – це також впливає на результати порівняння. Aspose.Words надає властивість [Target](https://reference.aspose.com/words/cpp/aspose.words.comparing/compareoptions/get_target/), яка служить для цієї мети.

У наступному прикладі коду показано, як задати розширені властивості порівняння:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-CompareDocument-CompareDocumentWithCompareOptions.cpp" >}}
