---
title: Работа с свойства на документа
second_title: Aspose.Words вместо Python via .NET
articleTitle: Работа с свойства на документа
linktitle: Работа с свойства на документа
description: "Aspose.Words вместо Python позволява съхраняване на полезна информация за вашия документ, като API и версия номер или разрешение Date, в вградени или потребителски свойства на документите."
type: docs
weight: 10
url: /bg/python-net/work-with-document-properties/
---

Свойствата на документите позволяват съхраняване на полезна информация за вашия документ. Тези свойства могат да бъдат разделени на две групи:

* Система или вградена, която съдържа ценности като заглавие на документ, име на автор, статистика на документ и др.
* Потребителски или потребителски, предоставени като двойка стойност име, където потребителят може да определи както името, така и стойността.

Полезно е да се знае тази информация за API и Version Number е директно написан на изходни документи. Например при преобразуване на документ в PDF, Aspose.Words попълва полето "Прилагане" с "Aspose.Words" и полето "PDF Продуцент" с "Aspose.Words вместо .NET YY.M.N," където *YY.M.N* е версия на Aspose.Words използвани за преобразуване. За повече подробности вижте [Генератор или име на производител, включени в изходни документи](/words/bg/python-net/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Имайте предвид, че **не може да се насочва** Aspose.Words да се промени или премахне тази информация от изходните документи.

{{% /alert %}}

## Настройки на документа за достъп

Достъп до свойствата на документа в Aspose.Words употреба:

* [built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) да се получат вградени имоти.

* [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) за получаване на потребителски свойства.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) както и [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) са колекции на [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) Обекти. Тези обекти могат да бъдат получени чрез indexer собственост по име или по индекс.

[built_in_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/built_in_document_properties/) допълнително осигурява достъп до свойствата на документите чрез набор от въведени свойства, които връщат стойности от съответния тип. [custom_document_properties](https://reference.aspose.com/words/python-net/aspose.words/document/custom_document_properties/) ви позволяват да добавите или премахнете свойствата на документа от документа.

На [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) Класът ви позволява да получите името, стойността и вида на документното свойство. [value](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/value/) връща обект, но има набор от методи, които ви позволяват да получите стойността на имота конвертирана в определен тип. След като разберете какъв тип имот е, можете да използвате един от **Документ Property.to_XXX** методи като **Документ Property.\\_str\_\_** както и [DocumentProperty.to_int](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/to_int/), да се получи стойността на съответния тип.

Следният пример за код показва как да се изброят всички вградени и потребителски свойства в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-EnumerateProperties.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

В Microsoft Word, Можете да получите достъп до свойствата на документите чрез менюто "Архив → Имоти."

<img src="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" alt="/words/python-net/work-with-document-properties/work-with-document-properties-1.png" style="width:400px"/>

## Добавяне или премахване на свойства на документа

Не можете да добавите или премахнете вградените свойства на документа, като използвате Aspose.Words. Можете само да промените или актуализирате стойностите им.

Добавяне на потребителски свойства на документа с Aspose.Words, да използвате [add](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add/) метод, преминаване на новото име на собствеността и стойността на съответния тип. Методът връща новосъздаденото [DocumentProperty](https://reference.aspose.com/words/python-net/aspose.words.properties/documentproperty/) Възразявам.

За да премахнете потребителските свойства, използвайте [remove](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove/) метод, предаване на името на собствеността, за да премахнете, или [remove_at](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/remove_at/) метод за премахване на имота по индекс. Можете също така да премахнете всички свойства с помощта на [clear](https://reference.aspose.com/words/python-net/aspose.words.properties/documentpropertycollection/clear/) метод.

Следният пример за код проверява дали в документ има потребителски имот с определено име и добавя още няколко свойства на потребителски документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-AddCustomDocumentProperties.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

Следният пример за код показва как да се премахне собственост на потребителски документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-CustomRemove.py" >}}

## Обновяване на вградените документи

Aspose.Words не актуализира автоматично свойствата на документа, тъй като Microsoft Word прави с някои свойства, но осигурява метод за актуализиране на някои статистически вградени документи свойства. Обади се на [update_word_count](https://reference.aspose.com/words/python-net/aspose.words/document/update_word_count/) метод за преизчисление и актуализиране на следните свойства:

* [characters](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters/)
* [characters_with_spaces](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/characters_with_spaces/)
* [words](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/words/)
* [paragraphs](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/paragraphs/)
* [lines](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/lines/)

## Създаване на нова персонализирана собственост, свързана с съдържанието

Aspose.Words осигурява [add_link_to_content](https://reference.aspose.com/words/python-net/aspose.words.properties/customdocumentproperties/add_link_to_content/) метод за създаване на нов персонализиран документ, свързан със съдържанието. Този имот връща новосъздадения обект или null, ако **link_ source** е невалидна.

Следният пример за код показва как да конфигурирате връзка към потребителски имот:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-ConfiguringLinkToContent.py" >}}

## Получаване на променливи на документа

Можете да получите колекция от документи променливи, използвайки [variables](https://reference.aspose.com/words/python-net/aspose.words/document/variables/) собственост. Променливите имена и стойности са низове.

Следният пример за код показва как да се добавят и достъп до променливите на документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-GetVariables.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Премахване на лична информация от документа

Ако искате да споделите документ Word с други хора, може да искате да премахнете лична информация като име на автор и компания. За да направите това, използвайте [remove_personal_information](https://reference.aspose.com/words/python-net/aspose.words/document/remove_personal_information/) свойство за поставяне на знамето, което указва, че Microsoft Word ще премахне цялата информация за потребителя от коментари, ревизии и свойства на документите при запазване на документа.

Следният пример за код показва как да се премахне лична информация:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_properties-RemovePersonalInformation.py" >}}

{{% alert color="primary" %}}

Настройката на тази опция всъщност не премахва личната информация, докато обработва документ в Aspose.Words и засяга само Microsoft Word поведение.

{{% /alert %}}