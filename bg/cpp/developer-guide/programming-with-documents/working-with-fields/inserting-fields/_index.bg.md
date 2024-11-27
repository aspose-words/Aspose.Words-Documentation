---
title: Въведете полетата в C++
second_title: Aspose.Words за C++
articleTitle: Вмъкване На Полета
linktitle: Вмъкване На Полета
description: "Различни начини за вмъкване на полета във вашия документ с C++."
type: docs
weight: 20
url: /bg/cpp/inserting-fields/
timestamp: 2024-01-27-14-07-04
---

Има няколко различни начина за вмъкване на полета в документ:

- употреба [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/)
- употреба [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/)
- използване [Aspose.Words Документ Обектен Модел (DOM)](/words/cpp/aspose-words-document-object-model/)

В тази статия ще разгледаме всеки начин по-подробно и ще анализираме как да вмъкнете определени полета, като използвате тези опции.

## Вмъкване на полета в документ с DocumentBuilder

В Aspose.Words методът [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) се използва за вмъкване на нови полета в документ. Първият параметър приема пълния код на полето, което трябва да бъде въведено. Вторият параметър е незадължителен и позволява резултатът от полето да бъде зададен ръчно. Ако това не е предоставено, полето се актуализира автоматично. Можете да подадете нулева или празна стойност към този параметър, за да вмъкнете поле със стойност на празно поле. Ако не сте сигурни за конкретния синтаксис на кода на полето, първо създайте полето в Microsoft Word и превключете, за да видите неговия код на полето.

{{% alert color="primary" %}}

Ако вашият код на поле има параметър, съдържащ интервал, той трябва да бъде ограден с речеви знаци. В противен случай полето в Microsoft Word и Aspose.Words може да не работи както се очаква, тъй като параметърът се третира и от двете като отрязани

{{% /alert %}}

Следващият пример за код показва как да вмъквате поле за обединяване в документ, като използвате **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertField.h" >}}

Същата техника се използва за вмъкване на полета, вложени в други полета.

Следващият пример за код показва как да вмъкнете полета, вложени в друго поле, като използвате **DocumentBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertNestedFields-InsertNestedFields.cpp" >}}

### Задаване на локала на ниво поле

Езиков идентификатор е стандартно международно числово съкращение за езика в дадена страна или географски регион. С Aspose.Words можете да зададете езиковата променлива на ниво поле, като използвате свойството [LocaleId](https://reference.aspose.com/words/cpp/aspose.words.fields/field/get_localeid/), което получава или задава езиковата стойност на полето ID.

Следващият пример за код показва как да използвате тази опция:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.cpp" >}}

### Вмъкване На Непечатано / Празно Поле

Ако искате да вмъкнете непечатани / празни полета ({}) точно като Microsoft Word позволява, можете да използвате метода [InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield) с параметъра [FieldType.FieldNone](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtype/). За да вмъкнете поле в документ Word, можете да натиснете клавишната комбинация " Цтрл + F9".

Следващият пример за код показва как да вмъкнете празно поле в документа:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldNone-InsertFieldNone.cpp" >}}

## Вмъкване на полета в документ с FieldBuilder

Алтернативният начин за вмъкване на полета в Aspose.Words е клас [FieldBuilder](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldbuilder/). Той осигурява плавен интерфейс за задаване на превключватели на полета и стойности на аргументите като текст, възли или дори вложени полета.

Следващият пример за код показва как да вмъкнете поле в документ, като използвате **FieldBuilder**:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertFieldUsingFieldBuilder-InsertFieldUsingFieldBuilder.cpp" >}}

## Вмъкване на полета с DOM

Можете също да вмъквате различни типове полета, като използвате [Aspose.Words Документ Обектен Модел (DOM)](/words/cpp/aspose-words-document-object-model/). В този раздел ще разгледаме няколко примера.

### Вмъкване на поле за обединяване в документ с DOM

Полето `MERGEFIELD` в документа Word може да бъде представено от класа [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/). Можете да използвате клас **FieldMergeField**, За да изпълните следните операции::

- задайте името на полето за обединяване
- задаване на форматирането на полето за обединяване
- задайте текста, който е между разделителя на полета и края на полето за обединяване
- задайте текста, който да бъде вмъкнат след полето за обединяване, ако полето не е празно
- задайте текста, който да бъде вмъкнат преди полето за обединяване, ако полето не е празно

{{% alert color="primary" %}}

За повече информация вижте клас [FieldMergeField](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldmergefield/) API.

{{% /alert %}}

Следващият пример за код показва как да добавите полето `MERGE`, като използвате DOM към абзац в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вмъкване на поле Mail Merge адресен блок в документ с DOM

Полето `ADDRESSBLOCK` се използва за вмъкване на адресен блок Mail Merge в документ Word. `ADDRESSBLOCK` полето в документа Word може да бъде представено от класа [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/). Можете да използвате клас **FieldAddressBlock**, За да изпълните следните операции::

- задайте дали да включите името на страната/региона в полето
- посочете дали да форматирате адреса според държавата/региона на получателя, както е определен от POST*CODE (всемирен Пощенски Съюз 2006 г.)
- посочете името на изключената страна/регион
- посочете формата на името и адреса
- посочете езика ID, използван за форматиране на адреса

{{% alert color="primary" %}}

За повече информация вижте клас [FieldAddressBlock](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldaddressblock/) API.

{{% /alert %}}

Следващият пример за код показва как да добавите полето Mail Merge `ADDRESSBLOCK`, като използвате DOM към абзац в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вмъкване на предварително поле в документ без използване на DocumentBuilder

Полето `ADVANCE` се използва за изместване на следващ текст в рамките на ред отляво, отдясно, нагоре или надолу. Полето `ADVANCE` в документа Word може да бъде представено от класа [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/). Можете да използвате клас FieldAdvance, За да изпълните следните операции:

- посочете броя на точките, с които текстът, който следва полето, трябва да бъде преместен вертикално от горния край на страницата
- задайте броя на точките, с които текстът, който следва полето, трябва да бъде преместен хоризонтално от левия край на колоната, рамката или текстовото поле
- посочете броя на точките, с които текстът, който следва полето, трябва да бъде преместен наляво, надясно, нагоре или надолу

{{% alert color="primary" %}}

За повече информация вижте клас [FieldAdvance](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldadvance/) API.

{{% /alert %}}

Следващият пример за код показва как да добавите полето `ADVANCE`, като използвате DOM към абзац в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAdvanceFieldWithoutDocumentBuilder-InsertAdvanceFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вмъкване на поле `ASK` в документ без използване на DocumentBuilder

Полето `ASK` се използва, за да подканва потребителя за текст, който да присвои на отметка в документ Word. `ASK` полето в документа Word може да бъде представено от класа [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask/). Можете да използвате клас **FieldAsk**, За да изпълните следните операции::

- посочете името на отметката
- задаване на потребителски отговор по подразбиране (начална стойност, съдържаща се в прозореца на подкана)
- посочете дали отговорът на потребителя трябва да бъде получен веднъж за операция Mail Merge
- посочете текста на подканата (заглавието на прозореца на подканата)

{{% alert color="primary" %}}

За повече информация вижте клас [FieldAsk](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldask) API.

{{% /alert %}}

Следващият пример за код показва как да добавите полето `ASK`, като използвате DOM към абзац в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertASKFieldWithoutDocumentBuilder-InsertASKFieldWithoutDocumentBuilder.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вмъкване на поле `AUTHOR` в документ без използване на DocumentBuilder

Полето `AUTHOR` се използва за обозначаване на името на автора на документа от свойствата `Document`. Полето `AUTHOR` в документа Word може да бъде представено от класа [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/). Можете да използвате клас **FieldAuthor**, За да изпълните следните операции::

- посочете името на автора на документа

{{% alert color="primary" %}}

За повече информация вижте клас [FieldAuthor](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldauthor/) API.

{{% /alert %}}

Следващият пример за код показва как да добавите полето `AUTHOR`, като използвате DOM към абзац в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertAuthorField-InsertAuthorField.cpp" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл на този пример от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

### Вмъкване на поле `INCLUDETEXT` в документ без използване на DocumentBuilder

Полето `INCLUDETEXT` вмъква текста и графиките, съдържащи се в документа, посочен в кода на полето. Можете да вмъкнете целия документ или част от документа, посочен с отметка. Това поле в документа Word е представено от INCLUDETEXT. Можете да използвате клас [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/), за да изпълните следните операции::

- посочете името на отметката на включения документ
- посочете местоположението на документа

{{% alert color="primary" %}}

За повече информация вижте клас [FieldIncludeText](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldincludetext/) API.

{{% /alert %}}

Следващият пример за код показва как да добавите полето `INCLUDETEXT`, като използвате DOM към абзац в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-Programming with Documents-Working with Fields-InsertFieldIncludeTextWithoutDocumentBuilder.h" >}}

### Вмъкване на поле `TOA` в документ без използване на DocumentBuilder

Полето `TOA` (*Table of Authorities*) изгражда и вмъква таблица на властите. В полето `TOA` се събират записи, отбелязани с `TA` (*Table of Authorities Entry*) полета. Microsoft офис Word вмъква полето `TOA`, когато щракнете върху *Insert Table of Authorities* в групата **Table of Authorities** в раздела **References**. Когато видите полето `TOA` във вашия документ, синтаксисът изглежда така:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

За повече информация вижте клас [FieldToa](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldtoa/) API.

{{% /alert %}}

Следващият пример за код показва как да добавите полето `TOA`, като използвате DOM към абзац в документ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-InsertTOAFieldWithoutDocumentBuilder-InsertTOAFieldWithoutDocumentBuilder.cpp" >}}/
