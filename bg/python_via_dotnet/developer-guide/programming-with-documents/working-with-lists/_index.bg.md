---
title: Работа със списъци в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа със списъци
linktitle: Работа със списъци
description: "Създаване, определяне форматиране и рестартиране на списъци в документ, като се използва Python."
type: docs
weight: 200
url: /bg/python-net/working-with-lists/
---

Списък в Microsoft Word документът е набор от свойства за форматиране на списъка. Списъците могат да се използват във вашите документи за форматиране, подреждане и подчертаване на текст. Списъците са чудесен начин да се организират данни в документи, и те правят по-лесно за читателите да разберат ключови точки

Всеки списък може да има до 9 нива и форматиращи свойства, като стил номер, начална стойност, тире, позиция подпрозорец и т.н. се определят отделно за всяко ниво.

В Aspose.Words, работата със списъци е представена от [Lists](https://reference.aspose.com/words/python-net/aspose.words.lists/) модул. Все пак, [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/) Обектът винаги принадлежи на [ListCollection](https://reference.aspose.com/words/python-net/aspose.words.lists/listcollection/) Колекция.

Тази тема описва как да се работи programmatically със списъци използване Aspose.Words

## Създаване на списъци чрез прилагане на списък форматиране

Aspose.Words позволява лесното създаване на списъци чрез прилагане на форматиране на списъка. [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) осигурява [DocumentBuilder.list_format](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/list_format/) имот, който връща a [ListFormat](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/) Възразявам. Този обект има няколко метода за стартиране и приключване на списък и за увеличаване / намаляване на тирето. Има два общи вида списъци в Microsoft WordКуршум и номериран.

- За да направиш списък с куршуми, се обади. [ListFormat.apply_bullet_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_bullet_default/).
- За да започнете номериран списък, обадете се [ListFormat.apply_number_default](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/apply_number_default/).

Куршумът или броят и форматирането се добавят към настоящия параграф и всички допълнителни параграфи, създадени с помощта на [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) до [ListFormat.remove_numbers](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/remove_numbers/) е призован да спре форматирането на списъка с куршуми.

В документите на Word списъците могат да се състоят от до девет нива. Форматиране на списък за всяко ниво определя какъв куршум или номер се използва, ляво тире, пространство между куршума и текста и т.н. Следните методи променят нивото на списъка и прилагат новото ниво на форматиране свойства:

- За да увеличите нивото на списъка на настоящия параграф с едно ниво, се обадете [ListFormat.list_indent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_indent/)
- За да намалите нивото на списъка на настоящия параграф с едно ниво, се обадете [ListFormat.list_outdent](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_outdent/)

Методите променят нивото на списъка и прилагат форматиращите свойства на новото ниво.

{{% alert color="primary" %}}

Можете също така да използвате [ListFormat.list_level_number](https://reference.aspose.com/words/python-net/aspose.words.lists/listformat/list_level_number/) собственост, която да получи или определи нивото на списъка за параграфа. Нивата на списъка са номерирани от 0 до 8.

{{% /alert %}}

По-долу пример показва как да се изгради многостепенен списък.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-document_formatting-MultilevelListFormatting.py" >}}

## Задаване на форматиране за ниво на списъка

Обектите на ниво списък се създават автоматично при създаването на списък. Използване на свойствата и методите на [ListLevel](https://reference.aspose.com/words/python-net/aspose.words.lists/listlevel/) клас за контрол на форматирането на отделните нива на списъка.

## Рестартиране на списъка за всеки раздел

Можете да рестартирате списък за всеки раздел с помощта на [е_restart_at_each_section имот](https://reference.aspose.com/words/python-net/aspose.words.lists/list/is_restart_at_each_section/) собственост. Имайте предвид, че тази опция се поддържа само във формати на RTF, DOC и DOX документ. Тази опция ще бъде написана на DOCX само ако OoxmlCompliance е по-висока от Ecma376.

Следният пример за код показва как да се създаде списък и да се рестартира за всеки раздел:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_list-RestartListAtEachSection.py" >}}
