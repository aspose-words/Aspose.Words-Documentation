---
title: Работа със списъци в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа със списъци
linktitle: Работа със списъци
description: "Въведение в функцията за номериране форматиране в Aspose.Words вместо Java."
type: docs
weight: 200
url: /bg/java/working-with-lists/
---

Списък в Microsoft Word документът е набор от свойства за форматиране на списъка. Списъците могат да се използват във Вашите документи за форматиране, подреждане и подчертаване на текст. Списъците са чудесен начин да се организират данни в документи и те правят по-лесно за читателите да разберат ключови точки.

Всеки списък може да има до 9 нива и форматиращи свойства, като стил номер, начална стойност, тире, позиция подпрозорец, и други се определят отделно за всяко ниво.

Тази статия описва programmically работа със списъци, използвайки Aspose.Words.

## Създаване на списъци чрез прилагане на списък форматиране

Aspose.Words позволява лесното създаване на списъци чрез прилагане на форматиране на списъка. [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/) осигурява [ListFormat](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#getListFormat) собственост, която връща a **ListFormat** Възразявам. Този обект има няколко метода за стартиране и приключване на списък и за увеличаване / намаляване на тирето. Има два общи вида списъци в Microsoft Word: куршуми и номерирани:

- За да направиш списък с куршуми, се обади. [ListFormat.ApplyBulletDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyBulletDefault)
- За да започнете номериран списък, обадете се [ListFormat.ApplyNumberDefault](https://reference.aspose.com/words/java/com.aspose.words/listformat/#applyNumberDefault)

Куршумът или броят и форматирането се добавят към настоящия параграф и всички допълнителни параграфи, създадени с помощта на **DocumentBuilder** до [RemoveNumbers](https://reference.aspose.com/words/java/com.aspose.words/listformat/#removeNumbers) е призован да спре форматирането на списъка с куршуми.

В документите на Word списъците могат да се състоят от до девет нива. Форматиране на списък за всяко ниво определя какъв куршум или номер се използва, ляво тире, пространство между куршума и текста и т.н. Следните методи променят нивото на списъка и прилагат новото ниво на форматиране свойства:

- За да се увеличи нивото на списъка на настоящия параграф с едно ниво, се обадете [ListFormat.ListIndent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listIndent)
- За да намалите нивото на списъка на настоящия параграф с едно ниво, се обадете [ListFormat.ListOutdent](https://reference.aspose.com/words/java/com.aspose.words/listformat/#listOutdent)

Методите променят нивото на списъка и прилагат форматиращите свойства на новото ниво.

{{% alert color="primary" %}}

Можете също така да използвате [ListLevelNumber](https://reference.aspose.com/words/java/com.aspose.words/listformat/#getListLevelNumber) собственост, която да получи или определи нивото на списъка за параграфа. Нивата на списъка са номерирани от 0 до 8.

{{% /alert %}}

Следният пример за код показва как да се изгради многостепенен списък:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentBuilderSetMultilevelListFormatting-DocumentBuilderSetMultilevelListFormatting.java" >}}

## Задаване на форматиране за ниво на списъка

Обектите на ниво списък се създават автоматично при създаването на списък. Използване на свойствата и методите на [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) клас за контрол на форматирането на отделните нива на списъка.

## Рестартиране на списъка за всеки раздел

Можете да рестартирате списък за всеки раздел с помощта на [IsRestartAtEachSection](https://reference.aspose.com/words/java/com.aspose.words/list/#isRestartAtEachSection) собственост. Имайте предвид, че тази опция се поддържа само във форматите RTF, DOC и DOCX документ. Тази опция ще бъде написана на DOCX само ако OoxmlCompliance е по-висока след това Ecma376.

Следният пример за код показва как да се създаде списък и да се рестартира за всеки раздел:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-Lists-WorkingWithList-SetRestartAtEachSection.java" >}}

