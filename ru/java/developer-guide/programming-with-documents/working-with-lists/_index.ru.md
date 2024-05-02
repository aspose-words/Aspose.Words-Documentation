---
title: Работа со списками в Java
second_title: Aspose.Words для Java
articleTitle: Работа со списками
linktitle: Работа со списками
description: "Введение в функцию форматирования нумерации в Aspose.Words для Java."
type: docs
weight: 200
url: /ru/java/working-with-lists/
---

Список в a Microsoft Word Документ представляет собой набор свойств форматирования списка. Списки могут использоваться в ваших документах для форматирования, аранжировки и выделения текста. Списки - отличный способ упорядочить данные в документах, и они облегчают читателям понимание ключевых моментов.

Каждый список может иметь до 9 уровней, а свойства форматирования, такие как стиль номера, начальное значение, отступ, положение вкладки и другие, определяются отдельно для каждого уровня.

В этой статье описывается программная работа со списками с использованием Aspose.Words.

## Создание списков путем применения форматирования списков

Aspose.Words Это позволяет легко создавать списки, применяя форматирование списков. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) обеспечивает [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) Имущество, которое возвращает **ListFormat** объект. Этот объект имеет несколько методов, чтобы начать и закончить список и увеличить / уменьшить отступ. Существует два основных типа списков в Microsoft Word: пулен и пронумерован:

- Чтобы начать список, звоните. [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Чтобы начать пронумерованный список, позвоните [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

Пуля или номер и форматирование добавляются к текущему абзацу и всем последующим абзацам, созданным с использованием **DocumentBuilder** до [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) Он призван остановить форматирование списка.

В документах Word списки могут состоять до девяти уровней. Форматирование списка для каждого уровня определяет, какая пуля или номер используется, левый отступ, пространство между пулей и текстом и т.д. Следующие методы изменяют уровень списка и применяют свойства форматирования нового уровня:

- Чтобы повысить уровень списка текущего пункта на один уровень, звоните [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Чтобы снизить уровень списка текущего абзаца на один уровень, звоните [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Методы изменяют уровень списка и применяют свойства форматирования нового уровня.

{{% alert color="primary" %}}

Вы также можете использовать [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) собственности, чтобы получить или установить уровень списка для пункта. Уровни списка нумеруются от 0 до 8.

{{% /alert %}}

Следующий пример кода показывает, как построить многоуровневый список:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Укажите форматирование для уровня списка

Объекты уровня списка создаются автоматически при создании списка. Используйте свойства и методы [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) класс для управления форматированием отдельных уровней списка.

## Перезагрузить список для каждого раздела

Вы можете перезапустить список для каждого раздела, используя [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) собственность. Обратите внимание, что эта опция поддерживается только в форматах документов RTF, DOC и DOCX. Этот вариант будет записан на DOCX только в том случае, если OoxmlCompliance выше, чем Ecma376.

Следующий пример кода показывает, как создать список и перезапустить его для каждого раздела:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

