---
title: Работа со списками в Java
second_title: Aspose.Words для Java
articleTitle: Работа со списками
linktitle: Работа со списками
description: "Введение в функцию форматирования нумерации в Aspose.Words для Java."
type: docs
weight: 200
url: /ru/java/working-with-lists/
timestamp: 2024-01-27-14-07-04
---

Список в документе Microsoft Word - это набор свойств форматирования списков. Списки можно использовать в ваших документах для форматирования, упорядочивания и выделения текста. Списки - это отличный способ организации данных в документах, и они облегчают читателям понимание ключевых моментов.

Каждый список может иметь до 9 уровней, и свойства форматирования, такие как стиль цифр, начальное значение, отступ, позиция табуляции и другие, определяются отдельно для каждого уровня.

В этой статье описывается программная работа со списками с использованием Aspose.Words.

## Создание списков с помощью форматирования списков

Aspose.Words позволяет легко создавать списки, применяя форматирование списка. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) предоставляет свойство [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat), которое возвращает объект **ListFormat**. У этого объекта есть несколько методов для начала и завершения списка, а также для увеличения/уменьшения отступа. В Microsoft Word есть два основных типа списков: маркированные и нумерованные:

- Чтобы запустить маркированный список, вызовите [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- Чтобы запустить нумерованный список, наберите [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

Маркер или число и форматирование добавляются к текущему абзацу и всем последующим абзацам, созданным с использованием **DocumentBuilder**, пока не будет вызван [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) для остановки форматирования маркированного списка.

В документах Word списки могут состоять максимум из девяти уровней. Форматирование списка для каждого уровня определяет, какой маркер или число используется, отступ слева, расстояние между маркером и текстом и т.д. Следующие методы изменяют уровень списка и применяют свойства форматирования нового уровня:

- Чтобы увеличить уровень списка текущего абзаца на один уровень, вызовите [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- Чтобы уменьшить уровень списка текущего абзаца на один уровень, вызовите [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Методы изменяют уровень списка и применяют свойства форматирования нового уровня.

{{% alert color="primary" %}}

Вы также можете использовать свойство [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber), чтобы получить или задать уровень списка для абзаца. Уровни списка пронумерованы от 0 до 8.

{{% /alert %}}

В следующем примере кода показано, как создать многоуровневый список:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Укажите форматирование для уровня списка

Объекты уровня списка создаются автоматически при создании списка. Используйте свойства и методы класса [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) для управления форматированием отдельных уровней списка.

## Список перезапусков для каждого раздела

Вы можете перезапустить список для каждого раздела, используя свойство [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection). Обратите внимание, что этот параметр поддерживается только в форматах документов RTF, DOC и DOCX. Этот параметр будет записан в DOCX только в том случае, если OoxmlCompliance выше, чем Ecma376.

В следующем примере кода показано, как создать список и перезапустить его для каждого раздела:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

