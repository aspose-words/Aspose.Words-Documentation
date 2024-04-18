---
title: Работа със списъци в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа със списъци
linktitle: Работа със списъци
description: "Въведение в функцията за номериране форматиране в Aspose.Words вместо .NET."
type: docs
weight: 200
url: /bg/net/working-with-lists/
---

Списък в Microsoft Word документът е набор от свойства, форматиращи параграфа. Списъците могат да се използват в документи за структуриране, подреждане и подчертаване на текст. Списъците са чудесен начин да се организират данни в документи по начин, който прави лесно за читателите да абсорбират и разбират ключови точки.

Всеки списък може да има до 9 нива и форматиращи свойства като стил брой, начална стойност, вдлъбнатина, позиция подпрозорец и други се определят отделно за всяко ниво.

В Aspose.Words, работата със списъци е представена от [Lists](https://reference.aspose.com/words/net/aspose.words.lists/) Имепространство. Все пак, [List](https://reference.aspose.com/words/net/aspose.words.lists/list/) Обектът винаги принадлежи на [ListCollection](https://reference.aspose.com/words/net/aspose.words.lists/listcollection/).

Тази статия описва programmically работа със списъци, използвайки Aspose.Words.

## Създаване на списъци чрез форматиране на списъка

Aspose.Words позволява лесното създаване на списъци чрез прилагане на форматиране на списъка. [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) осигурява [ListFormat](https://reference.aspose.com/words/net/aspose.words/documentbuilder/listformat/) имот, който връща a **ListFormat** Възразявам. Този обект има няколко метода за стартиране и приключване на списък и за увеличаване / намаляване на тирето. Има два общи вида списъци в Microsoft Word: куршуми и номерирани:

- За да направиш списък с куршуми, се обади. [ApplyBulletDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applybulletdefault/)
- За да започнете номериран списък, обадете се [ApplyNumberDefault](https://reference.aspose.com/words/net/aspose.words.lists/listformat/applynumberdefault/)

Куршумът или броят и форматирането се добавят към настоящия параграф и всички допълнителни параграфи, създадени с помощта на **DocumentBuilder** до [RemoveNumbers](https://reference.aspose.com/words/net/aspose.words.lists/listformat/removenumbers/) е призован да спре форматирането на списъка с куршуми.

В документите на Word списъците могат да се състоят от до девет нива. Форматиране на списък за всяко ниво определя какъв куршум или номер се използва, ляво тире, пространство между куршума и текста и т.н. Следните методи променят нивото на списъка и прилагат новото ниво на форматиране свойства:

- За да увеличите нивото на списъка на настоящия параграф с едно ниво, се обадете [ListIndent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listindent/)
- За да намалите нивото на списъка на настоящия параграф с едно ниво, се обадете [ListOutdent](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listoutdent/)

Можете също така да използвате [ListLevelNumber](https://reference.aspose.com/words/net/aspose.words.lists/listformat/listlevelnumber/) собственост, която да получи или определи нивото на списъка за параграфа.

{{% alert color="primary" %}}

Нивата на списъка са номерирани от 0 до 8.

{{% /alert %}}

Следният пример за код показва как да се изгради многостепенен списък:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-DocumentBuilderSetFormatting-DocumentBuilderSetMultilevelListFormatting.cs" >}}

## Задаване на форматиране за ниво на списъка

Обектите на ниво списък се създават автоматично при създаването на списък. Използване на свойствата и методите на [ListLevel](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/) клас за контрол на форматирането на отделните нива на списъка.

## Рестартиране на списъка за всеки раздел

Можете да рестартирате списък за всеки раздел с помощта на [IsRestartAtEachSection](https://reference.aspose.com/words/net/aspose.words.lists/list/isrestartateachsection/) собственост. Имайте предвид, че тази опция се поддържа само във формати на RTF, DOC и DOX документ. Тази опция ще бъде написана на DOCX само ако OoxmlCompliance е по-висока от Ecma376.

Следният пример за код показва как да се създаде списък и да се рестартира за всеки раздел:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-List-WorkingWithList-SetRestartAtEachSection.cs" >}}
