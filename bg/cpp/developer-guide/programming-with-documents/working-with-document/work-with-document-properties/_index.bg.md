---
title: Работа със свойства на документа в C++
second_title: Aspose.Words за C++
articleTitle: Работа със свойства на документа
linktitle: Работа със свойства на документа
description: "Aspose.Words за C++ позволява съхраняването на полезна информация за вашия документ, като например API и номер на версията или оторизирана дата, във вградените или персонализирани свойства на документа."
type: docs
weight: 10
url: /bg/cpp/work-with-document-properties/
timestamp: 2024-01-31-14-23-37
---

Свойствата на документа позволяват съхраняване на полезна информация за вашия документ. Тези свойства могат да бъдат разделени на две групи.:

* Система или вградени, които съдържат стойности, като например заглавие на документа, име на автора, статистика на документа и други.
* Дефинирани от потребителя или по избор, предоставени като двойки име-стойност, където потребителят може да определи както името, така и стойността.

Полезно е да знаете, че информацията за API и номера на версията се записва директно в изходните документи. Например при конвертиране на документ в PDF Aspose.Words попълва полето "заявление" с "Aspose.Words", а полето "PDF производител" с "Aspose.Words за C++ YY.М. н", където *YY.M.N* е версията на Aspose.Words, използвана за преобразуване. За повече подробности вижте [Генератор или име на производителя, включени в изходните документи](/words/cpp/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Обърнете внимание, че вие **cannot direct** Aspose.Words да промените или премахнете тази информация от изходните документи.

{{% /alert %}}

## Свойства На Документа За Достъп

За достъп до свойствата на документа в Aspose.Words използвайте:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/) за получаване на вградени имоти.

* [CustomDocumentProperties](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/) за да получите потребителски свойства.

**BuiltInDocumentProperties**

**BuiltInDocumentProperties**

Клас [DocumentProperty](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/) ви позволява да получите името, стойността и типа на свойството документ. [Value](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_value/) връща обект, но има набор от методи, които ви позволяват да конвертирате стойността на свойството в определен тип. След като разберете какъв тип е свойството, можете да използвате един от методите **DocumentProperty.ToXXX**, като **DocumentProperty.**[ToString](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/tostring/) и **DocumentProperty.**[ToInt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/toint/), за да получите стойността на съответния тип.

Следващият пример за код показва как да се изброят всички вградени и потребителски свойства в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-EnumerateProperties.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

В Microsoft Word можете да получите достъп до свойствата на документите, като използвате менюто "Свойства на файла".

<img src="work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-cpp_1.png" style="width:400px"/>

## Добавяне или премахване на свойства на документа

Не можете да добавяте или премахвате вградени свойства на документа, като използвате Aspose.Words. Можете само да променяте или актуализирате техните стойности.

За да добавите потребителски свойства на документа с Aspose.Words, Използвайте метода [Add](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/add/), като подадете новото име на свойството и стойността на съответния тип. Методът връща новосъздадения обект **DocumentProperty**.

За да премахнете свойства по избор, Използвайте метода [Remove](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/remove/), като му предадете името на свойството за премахване или метода [RemoveAt](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/removeat/) за премахване на свойството по Индекс. Можете също така да премахнете всички свойства, като използвате метода [Clear](https://reference.aspose.com/words/cpp/aspose.words.properties/documentpropertycollection/clear/).

Следващият пример за код проверява дали персонализирано свойство с дадено име съществува в документ и добавя още няколко свойства на персонализиран документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomAdd.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Следният пример за код показва как да премахнете свойството персонализиран документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-CustomRemove.cpp" >}}

## Актуализиране На Свойствата На Вградения Документ

Aspose.Words не актуализира автоматично свойствата на документа, както Microsoft Word прави с някои свойства, но предоставя метод за актуализиране на някои вградени статистически свойства на документа. Извикайте метода [UpdateWordCount](https://reference.aspose.com/words/cpp/aspose.words/document/updatewordcount/), за да преизчислите и актуализирате следните свойства:

* [Characters](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characters/)
* [CharactersWithSpaces](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_characterswithspaces/)
* [Words](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_words/)
* [Paragraphs](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_paragraphs/)
* [Lines](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lines/)

## Създаване на ново свойство по избор, свързано със съдържание

Aspose.Words предоставя [AddLinkToContent](https://reference.aspose.com/words/cpp/aspose.words.properties/customdocumentproperties/addlinktocontent/) метод за създаване на ново свойство на персонализиран документ, свързано със съдържание. Това свойство връща новосъздадения обект на свойство или нула, ако [LinkSource](https://reference.aspose.com/words/cpp/aspose.words.properties/documentproperty/get_linksource/) е невалиден.

Следващият пример за код показва как да конфигурирате връзка към свойство по избор:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-ConfiguringLinkToContent.cpp" >}}

## Получаване На Променливи На Документа

Можете да получите колекция от променливи на документа, като използвате свойството [Variables](https://reference.aspose.com/words/cpp/aspose.words/document/get_variables/). Имената и стойностите на променливите са низове.

Следващият пример за код показва как да се изброят променливите на документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-GetVariables-GetVariables.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите шаблонния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Премахване на лична информация от документ

Ако искате да споделите документ Word с други хора, може да искате да премахнете лична информация като име на автора и фирма. За да направите това, използвайте свойството [RemovePersonalInformation](https://reference.aspose.com/words/cpp/aspose.words/document/get_removepersonalinformation/), за да зададете флага, показващ, че Microsoft Word ще премахне цялата информация за потребителя от коментари, ревизии и свойства на документа при записване на документа.

Следният пример за код показва как да премахнете лична информация:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-DocProperties-RemovePersonalInformation.cpp" >}}

{{% alert color="primary" %}}

Настройката на тази опция всъщност не премахва лична информация по време на обработката на документ в Aspose.Words и засяга само поведението Microsoft Word.

{{% /alert %}}
