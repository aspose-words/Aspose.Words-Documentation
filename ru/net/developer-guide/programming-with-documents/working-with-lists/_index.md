---
title: Работа со списками в C#
second_title: Aspose.Words для .NET
articleTitle: Работа со списками
linktitle: Работа со списками
description: "Знакомство с функцией форматирования нумерации в Aspose.Words для .NET."
type: docs
weight: 200
url: /ru/net/working-with-lists/
---

Список в документе Microsoft Word представляет собой набор свойств форматирования абзаца. Списки можно использовать в документах для структурирования, упорядочения и выделения текста. Списки — отличный способ организовать данные в документах таким образом, чтобы читателям было легче усваивать и понимать ключевые моменты.

Каждый список может иметь до 9 уровней, а свойства форматирования, такие как стиль номера, начальное значение, отступ, положение табуляции и другие, определяются отдельно для каждого уровня.

В Aspose.Words работа со списками представлена пространством имен [Lists](https://reference.aspose.com/words/net/aspose.words.lists/). Однако объект [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) всегда принадлежит объекту [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/).

В этой статье описывается программная работа со списками с использованием Aspose.Words.

## Создание списков с применением форматирования списка

Aspose.Words позволяет легко создавать списки, применяя форматирование списков. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) предоставляет свойство [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/), которое возвращает объект **ListFormat**. Этот объект имеет несколько методов для начала и завершения списка, а также для увеличения/уменьшения отступа. В Microsoft Word есть два основных типа списков: маркированные и нумерованные:

- Чтобы начать маркированный список, позвоните по номеру [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- Чтобы начать нумерованный список, позвоните по номеру [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

Маркер или номер и форматирование добавляются к текущему абзацу, а все последующие абзацы, созданные с использованием **DocumentBuilder**, до тех пор, пока не будет вызван [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/), чтобы остановить форматирование маркированного списка.

В документах Word списки могут состоять из девяти уровней. Форматирование списка для каждого уровня определяет, какой маркер или номер используется, отступ слева, расстояние между маркером и текстом и т.д. Следующие методы изменяют уровень списка и применяют свойства форматирования нового уровня:

- Чтобы повысить уровень списка текущего параграфа на один уровень, позвоните по номеру [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- Для уменьшения уровня списка текущего абзаца на один уровень позвоните по номеру [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

Вы также можете использовать свойство [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/), чтобы получить или установить уровень списка для абзаца.

{{% alert color="primary" %}}

Уровни списка пронумерованы от 0 до 8.

{{% /alert %}}

В следующем примере кода показано, как создать многоуровневый список:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Укажите форматирование для уровня списка

Объекты уровня списка создаются автоматически при создании списка. Используйте свойства и методы класса [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) для управления форматированием отдельных уровней списка.

## Список перезапуска для каждого раздела

Вы можете перезапустить список для каждого раздела, используя свойство [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/). Обратите внимание, что этот параметр поддерживается только в форматах документов RTF, DOC и DOCX. Эта опция будет записана в DOCX только в том случае, если значение OoxmlCompliance выше, чем Ecma376.

В следующем примере кода показано, как создать список и перезапустить его для каждого раздела:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
