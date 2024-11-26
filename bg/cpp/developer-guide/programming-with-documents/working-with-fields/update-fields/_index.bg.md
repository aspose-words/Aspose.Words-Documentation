---
title: Обновяване на полетата в C++
second_title: Aspose.Words за C++
articleTitle: Актуализиране На Полетата
linktitle: Актуализиране На Полетата
description: "Научете как да актуализирате полетата в C++. Актуализирайте полетата програмно или използвайте автоматична актуализация на полетата, като използвате C++ API."
type: docs
weight: 30
url: /bg/cpp/update-fields/
timestamp: 2024-01-27-14-07-04
---

Обикновено поле, вмъкнато в Microsoft Word, вече съдържа актуална стойност. Например ако полето е формула или номер на страница, то ще съдържа правилната изчислена стойност за дадената версия на документа. Но ако имате приложение, което генерира или променя документ с полета като обединяване на два документа или попълването му с данни, тогава в идеалния случай всички полета трябва да се актуализират, за да може документът да бъде полезен.

## Как да актуализирате полетата

Когато даден документ е зареден, Aspose.Words имитира поведението на Microsoft Word С опцията за автоматично актуализиране на полетата е изключена. Поведението може да бъде обобщено, както следва::

- когато отворите/запишете документ, полетата остават непокътнати
- можете изрично да актуализирате всички полета в документ, например възстановяване `TOC`, когато трябва да
- когато рендирате до PDF или XPS, полетата, свързани с номерирането на страници в горни / долни колонтитули, се актуализират
- когато изпълните Mail Merge Всички полета се актуализират автоматично

### Актуализиране На Полетата Програмно

За да актуализирате изрично полетата в целия документ, просто извикайте метода [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/). За да актуализирате полетата, съдържащи се в част от документ, получете обект [Range](https://reference.aspose.com/words/cpp/aspose.words/range/) и извикайте метода [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/range/updatefields/). В Aspose.Words можете да получите **Range** за всеки възел в дървото с документи, като например [Section](https://reference.aspose.com/words/cpp/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/cpp/aspose.words/paragraph/), и т.н. използване на имота [Node.Range](https://reference.aspose.com/words/cpp/aspose.words/node/get_range/).Можете да актуализирате резултата от едно поле, като извикате метода [Update](https://reference.aspose.com/words/cpp/aspose.words.fields/field/update/).

### Автоматично актуализиране на полетата, свързани със страницата, по време на рендиране

Когато извършвате преобразуване на документ във формат на фиксирана страница, например PDF или XPS, тогава Aspose.Words автоматично ще актуализира полетата, свързани с оформлението на страницата `PAGE`, `PAGEREF`, намиращи се в горни/долни колонтитули на документа. Това поведение имитира поведението на Microsoft Word при отпечатване на документ.

Ако искате да актуализирате всички други полета в документа, трябва да се обадите [UpdateFields](https://reference.aspose.com/words/cpp/aspose.words/document/updatefields/), преди да рендирате документа.

Следният пример за код показва как да актуализирате всички полета, преди да рендирате документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cpp" >}}

### Автоматично Обновяване На Полето По Време На Mail Merge

Когато изпълните mail merge, Всички полета в документа ще се актуализират автоматично. Това е така, защото Mail Merge е случай на актуализация на поле. Програмата се сблъсква с поле Mail Merge и трябва да актуализира резултата си, което включва улавяне на стойността от източника на данни и вмъкването й в полето. Логиката, разбира се, е по-сложна, например, когато е достигнат краят на документа/mail merge региона, но има още данни за обединяване, след което регионът трябва да се дублира и новият набор от полета да се актуализира.

## Обновяване На Имот LastSavedTime Преди Запазване

Можете да използвате свойство [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_updatelastsavedtimeproperty/) дали да актуализирате съответното свойство на вградения документ [LastSavedTime](https://reference.aspose.com/words/cpp/aspose.words.properties/builtindocumentproperties/get_lastsavedtime/), когато записвате документа.

Следният пример за код показва как да актуализирате това свойство:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cpp" >}}


