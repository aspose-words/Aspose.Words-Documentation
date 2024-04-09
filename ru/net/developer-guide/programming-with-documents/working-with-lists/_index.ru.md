---
title: Работа со списками в C#
second_title: Aspose.Words для .NET
articleTitle: Работа со списками
linktitle: Работа со списками
description: "Введение в функцию форматирования нумерации в Aspose.Words для .NET."
type: docs
weight: 200
url: /ru/net/working-with-lists/
---

Список в a Microsoft Word Документ представляет собой набор свойств форматирования абзаца. Списки могут использоваться в документах для структурирования, организации и выделения текста. Списки - отличный способ организовать данные в документах таким образом, чтобы читателям было легко усвоить и понять ключевые моменты.

Каждый список может иметь до 9 уровней, и свойства форматирования, такие как стиль числа, начальное значение, отступ, положение вкладки и другие, определяются отдельно для каждого уровня.

В Aspose.Words, Работа со списками представлена [Lists](https://reference.aspose.com/words/net/aspose.words.lists/) пространство имен. Однако, [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) Объект всегда принадлежит [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/).

В этой статье описывается программная работа со списками с использованием Aspose.Words.

## Создание списков путем применения форматирования списков

Aspose.Words Это позволяет легко создавать списки, применяя форматирование списков. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) обеспечивает [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) Имущество, которое возвращает **ListFormat** объект. Этот объект имеет несколько способов начать и закончить список и увеличить / уменьшить отступ. Существует два основных типа списков в Microsoft Word: пронумеровано и пронумеровано:

- Чтобы начать список, звоните. [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- Чтобы начать пронумерованный список, позвоните [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

Пуля или номер и форматирование добавляются к текущему абзацу и всем последующим абзацам, созданным с использованием **DocumentBuilder** до [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) Он призван остановить форматирование списка.

В документах Word списки могут состоять до девяти уровней. Форматирование списка для каждого уровня определяет, какая пуля или номер используется, левый отступ, пространство между пулей и текстом и т.д. Следующие методы изменяют уровень списка и применяют свойства форматирования нового уровня:

- Чтобы повысить уровень списка текущего пункта на один уровень, звоните [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- Чтобы понизить уровень списка текущего абзаца на один уровень, звоните [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

Вы также можете использовать [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) собственности, чтобы получить или установить уровень списка для пункта.

{{% alert color="primary" %}}

Уровни списка нумеруются от 0 до 8.

{{% /alert %}}

Следующий пример кода показывает, как построить многоуровневый список:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Укажите форматирование для уровня списка

Объекты уровня списка создаются автоматически при создании списка. Используйте свойства и методы [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) класс для управления форматированием отдельных уровней списка.

## Перезагрузить список для каждого раздела

Вы можете перезапустить список для каждого раздела, используя [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/) собственность. Обратите внимание, что эта опция поддерживается только в форматах документов RTF, DOC и DOCX. Этот вариант будет записан на DOCX только в том случае, если OoxmlCompliance выше, чем Ecma376.

Следующий пример кода показывает, как создать список и перезапустить его для каждого раздела:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
