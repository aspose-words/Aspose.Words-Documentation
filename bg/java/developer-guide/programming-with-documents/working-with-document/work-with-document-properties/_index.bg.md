---
title: Работа с свойства на документа в Java
second_title: Aspose.Words вместо Java
articleTitle: Работа с свойства на документа
linktitle: Работа с свойства на документа
description: "Aspose.Words вместо Java позволява съхраняване на полезна информация за вашия документ, като API и версия номер или разрешение Date, в вградени или потребителски свойства на документите."
type: docs
weight: 10
url: /bg/java/work-with-document-properties/
---

Свойствата на документите позволяват съхраняване на полезна информация за вашия документ. Тези свойства могат да бъдат разделени на две групи:

* Система или вградена, която съдържа ценности като заглавие на документ, име на автор, статистика на документ и др.
* Потребителски или потребителски, предоставени като двойка стойност, където потребителят може да определи както името, така и стойността.

Полезно е да знаеш тази информация за API и Version Number е директно написан на изходни документи. Например при преобразуване на документ в PDF, Aspose.Words попълва полето "Прилагане" с "Aspose.Words" и полето "PDF Producer" с "Aspose.Words вместо Java YY.M.N." *YY.M.N* е версията на Aspose.Words използвани за преобразуване. За повече подробности, вижте [Генератор или име на производител, включени в изходни документи](/words/bg/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Имайте предвид, че **не може да бъде директно** Aspose.Words да променя или премахва тази информация от изходните документи.

{{% /alert %}}

## Настройки на документа за достъп

Достъп до свойствата на документа в Aspose.Words употреба:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) за получаване на вградени имоти.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) за получаване на потребителски свойства.

**BuiltInDocumentProperties** както и **CustomDocumentProperties** са колекции на [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) Обекти. Тези обекти могат да бъдат получени чрез indexer свойство по име или индекс.

**BuiltInDocumentProperties** допълнително осигурява достъп до свойствата на документите чрез набор от въведени свойства, които връщат стойности от съответния тип. **CustomDocumentProperties** ви позволяват да добавите или премахнете свойствата на документа от документа.

На [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) Класът ви позволява да получите името, стойността и вида на документното свойство. [Stoynost]https:// reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) vercha obekt, no ima nabor ot metodi, whoito vi posvolyvat da poluchite sitoynostata of imota konvertirana v opredelen tip. Слаб като разбери какво става с теб е,може да се сетя от това {0} Методи {1}[ToString](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) както и **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), да се получи стойността на съответния тип.

Следният пример за код показва как да се изброят всички вградени и потребителски свойства в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В Microsoft Word, Можете да получите достъп до документни свойства с помощта на менюто.

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Добавяне или премахване на свойства на документа

Не можете да добавите или премахнете вградени свойства на документа, използвайки Aspose.Words. Можете само да промените или актуализирате стойностите им.

Добавяне на потребителски свойства на документа с Aspose.Words, да използвате [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) метод, преминаване на новото име на имота и стойността на съответния тип. Методът връща новосъздаденото **DocumentProperty** Възразявам.

За да премахнете потребителските свойства, използвайте [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) метод, предаване на името на имота, за да премахнете, или [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) метод за премахване на имота по индекс. Можете също така да премахнете всички свойства с помощта на [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) метод.

Следният пример за код проверява дали в документ има потребителски имот с определено име и добавя още няколко свойства на потребителския документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Следният пример за код показва как да се премахне собственост на потребителски документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Обновяване на вградените документи

Aspose.Words не актуализира автоматично свойствата на документа, тъй като Microsoft Word прави с някои свойства, но осигурява метод за актуализиране на някои статистически вградени документи свойства. Обади се на [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) метод за преизчисление и актуализиране на следните свойства:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Създаване на нова персонализирана собственост, свързана с съдържанието

Aspose.Words осигурява [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) метод за създаване на нов персонализиран документ, свързан със съдържанието. Този имот връща новосъздадения обект или null, ако [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) е невалидна.

Следният пример за код показва как да конфигурирате връзка към потребителски имот:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Получаване на променливи на документа

Можете да получите колекция от променливи на документите с помощта на [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) собственост. Променливите имена и стойности са низове.

Следният пример с код показва как да се изброят променливите на документите:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Премахване на лична информация от документа

Ако искате да споделите документ Word с други хора, може да искате да премахнете лична информация като име на автор и компания. За да направите това, използвайте [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) свойство за поставяне на знамето, което указва, че Microsoft Word ще премахне цялата информация за потребителя от коментари, ревизии и свойства на документите при запазване на документа.

{{% alert color="primary" %}}

Настройката на тази опция всъщност не премахва личната информация, докато обработва документ в Aspose.Words и засяга само Microsoft Word поведение.

{{% /alert %}}
