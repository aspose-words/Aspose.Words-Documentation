---
title: Работа с документи в C#
second_title: Aspose.Words вместо .NET
articleTitle: Работа с свойства на документа
linktitle: Работа с свойства на документа
description: "Aspose.Words вместо .NET позволява съхраняване на полезна информация за вашия документ, като API и версия номер или разрешение Date, в вградени или потребителски свойства на документите, като се използват C#."
type: docs
weight: 10
url: /bg/net/work-with-document-properties/
---

Свойствата на документите позволяват съхраняване на полезна информация за вашия документ. Тези свойства могат да бъдат разделени на две групи:

* Система или вградена, която съдържа ценности като заглавие на документ, име на автор, статистика на документ и др.
* Потребителски или потребителски, предоставени като двойка стойност име, където потребителят може да определи както името, така и стойността.

Полезно е да се знае тази информация за API и Version Number е директно написан на изходни документи. Например при преобразуване на документ в PDF, Aspose.Words попълва полето "Прилагане" с "Aspose.Words" и полето "PDF Продуцент" с "Aspose.Words вместо .NET YY.M.N," където *YY.M.N* е версия на Aspose.Words използвани за преобразуване. За повече подробности вижте [Генератор или име на производител, включени в изходни документи](/words/bg/net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Имайте предвид, че **не може да се насочва** Aspose.Words да се промени или премахне тази информация от изходните документи.

{{% /alert %}}

## Настройки на документа за достъп

Достъп до свойствата на документа в Aspose.Words употреба:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/builtindocumentproperties/) да се получат вградени имоти.

* [CustomDocumentProperties](https://reference.aspose.com/words/net/aspose.words/document/customdocumentproperties/) за получаване на потребителски свойства.

**BuiltInDocumentProperties** както и **CustomDocumentProperties** са колекции на [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) Обекти. Тези обекти могат да бъдат получени чрез indexer собственост по име или по индекс.

**BuiltInDocumentProperties** допълнително осигурява достъп до свойствата на документите чрез набор от въведени свойства, които връщат стойности от съответния тип. **CustomDocumentProperties** ви позволяват да добавите или премахнете свойствата на документа от документа.

На [DocumentProperty](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/) Класът ви позволява да получите името, стойността и вида на документното свойство. [Value](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/value/) връща обект, но има набор от методи, които ви позволяват да получите стойността на имота конвертирана в определен тип. След като разберете какъв тип имот е, можете да използвате един от **DocumentProperty.ToXXX** методи като **DocumentProperty.**[ToString](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/tostring/) както и **DocumentProperty.**[ToInt](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/toint/), да се получи стойността на съответния тип.

Следният пример за код показва как да се изброят всички вградени и потребителски свойства в документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-EnumerateProperties.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В Microsoft Word, Можете да получите достъп до документи имоти с помощта на менюто.

<img src="/words/net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## Добавяне или премахване на свойства на документа

Не можете да добавите или премахнете вградените свойства на документа, като използвате Aspose.Words. Можете само да промените или актуализирате стойностите им.

Добавяне на потребителски свойства на документа с Aspose.Words, да използвате [Add](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/add/#add/) метод, преминаване на новото име на собствеността и стойността на съответния тип. Методът връща новосъздаденото **DocumentProperty** Възразявам.

За да премахнете потребителските свойства, използвайте [Remove](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/) метод, предаване на името на собствеността, за да премахнете, или [RemoveAt](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/remove/at) метод за премахване на имота по индекс. Можете също така да премахнете всички свойства с помощта на [Clear](https://reference.aspose.com/words/net/aspose.words.properties/documentpropertycollection/clear/) метод.

Следният пример за код проверява дали в документ има потребителски имот с определено име и добавя още няколко свойства на потребителски документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomAdd.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Следният пример за код показва как да се премахне собственост на потребителски документ:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-CustomRemove.cs" >}}

## Обновяване на вградените документи

Aspose.Words не актуализира автоматично свойствата на документа, тъй като Microsoft Word прави с някои свойства, но осигурява метод за актуализиране на някои статистически вградени документи свойства. Обади се на [UpdateWordCount](https://reference.aspose.com/words/net/aspose.words/document/updatewordcount/#updatewordcount/) метод за преизчисление и актуализиране на следните свойства:

* [Characters](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/characterswithspaces/)
* [Words](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/words/)
* [Paragraphs](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [Lines](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lines/)

## Създаване на нова персонализирана собственост, свързана с съдържанието

Aspose.Words осигурява [AddLinkToContent](https://reference.aspose.com/words/net/aspose.words.properties/customdocumentproperties/addlinktocontent/) метод за създаване на нов персонализиран документ, свързан със съдържанието. Този имот връща новосъздадения обект или null, ако [LinkSource](https://reference.aspose.com/words/net/aspose.words.properties/documentproperty/linksource/) е невалидна.

Следният пример за код показва как да конфигурирате връзка към потребителски имот:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cs" >}}

## Получаване на променливи на документа

Можете да получите колекция от документи променливи, използвайки [Variables](https://reference.aspose.com/words/net/aspose.words/document/variables/) собственост. Променливите имена и стойности са низове.

Следният пример за код показва как да се изброят променливите на документа:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-GetVariables-GetVariables.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Премахване на лична информация от документа

Ако искате да споделите документ Word с други хора, може да искате да премахнете лична информация като име на автор и компания. За да направите това, използвайте [RemovePersonalInformation](https://reference.aspose.com/words/net/aspose.words/document/removepersonalinformation/) свойство за поставяне на знамето, което указва, че Microsoft Word ще премахне цялата информация за потребителя от коментари, ревизии и свойства на документите при запазване на документа.

Следният пример за код показва как да се премахне лична информация:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cs" >}}

{{% alert color="primary" %}}

Настройката на тази опция всъщност не премахва личната информация, докато обработва документ в Aspose.Words и засяга само Microsoft Word поведение.

{{% /alert %}}
