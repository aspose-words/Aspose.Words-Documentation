---
title: Вмъкване на полета в Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Вмъкване на полета
linktitle: Вмъкване на полета
description: "Вмъкване на полета в документ Python по различни начини: използване `DocumentBuilder` или DOM (Document Object Model)."
type: docs
weight: 20
url: /bg/python-net/inserting-fields/
---

Има няколко различни начина за въвеждане на полета в документ:

- използване [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/)
- използване [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/)
- използване [Aspose.Words Document Object Model (DOM)](/words/bg/python-net/aspose-words-document-object-model/)

В тази статия ще разгледаме по-подробно всеки начин и ще анализираме как да вмъкнем определени полета, използвайки тези опции.

## Вмъкване на полета в документ с помощта на Documentbuilder

В Aspose.Words на [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) метод се използва за въвеждане на нови полета в документ. Първият параметър приема да бъде поставен пълният код на полето. Вторият параметър е незадължителен и позволява ръчно да се зададе резултатът от полето. Ако това не е доставено, полето се актуализира автоматично. Можете да преминете null или празно към този параметър, за да въведете поле с празна стойност на полето. Ако не сте сигурни за специфичното поле код синтаксис, създайте полето в Microsoft Word Първо превключи, за да видиш кода на полето.

{{% alert color="primary" %}}

Ако вашият полеви код има параметър, съдържащ пространство, тогава той трябва да бъде затворен в говорните знаци. В противен случай полето в двете Microsoft Word както и Aspose.Words може да не работи така, както се очаква, тъй като параметърът се третира и от двете като прекъснат.

{{% /alert %}}

Следният пример за код показва как да се вмъкне сливащо се поле в документ, като се използва **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertField.py" >}}

Следният пример с код показва как да се вмъкне поле за сливане с немски локал в документ, използвайки **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-DocumentBuilderInsertField.py" >}}

Същата техника се използва и за вмъкване на полета в други полета.

Следният пример за код показва как да се вмъкнат полетата в друго поле, използвайки **DocumentBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertNestedFields.py" >}}

### Посочете местоположението на нивото на полето

Езиковият идентификатор е стандартно международно цифрово съкращение за езика в държава или географски регион. С Aspose.Words, Можете да посочите Локално ниво. На [locale_id](https://reference.aspose.com/words/python-net/aspose.words.fields/field/locale_id/) имот получава или определя локален ID на полето.

Следният пример за код показва как да се използва тази опция:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-SpecifylocaleAtFieldlevel.py" >}}

### Вмъкване на нетипично/спешно поле

Ако искате да въведете нетипизирани/празни полета ({}) Точно като Microsoft Word позволява, можете да използвате [insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) метод с [FieldType.FIELD_NONE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_none) параметър. За да вмъкнете поле в Word документ, можете да натиснете Ctrl + F9.

Следният пример за код показва как да се постави празно поле в документа:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldNone.py" >}}

## Вмъкване на полета в документ с помощта на fieldbuilder

Алтернативен начин за вмъкване на полета в Aspose.Words ен [FieldBuilder](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldbuilder/) Клас. Той осигурява перфектен интерфейс за определяне на полеви превключватели и спорни стойности като текст, възли или дори гнездо полета.

Следният пример за код показва как да се въведе поле в документ, като се използва **FieldBuilder**:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldUsingFieldBuilder.py" >}}

## Вмъкване на полета DOM

Можете също така да вмъквате различни видове полета, като използвате [Aspose.Words Document Object Model (DOM)](/words/bg/python-net/aspose-words-document-object-model/). В този раздел ще разгледаме няколко примера.

### Вмъкване на сливане Поле в документ, използващ DOM

На `MERGEFIELD` полето в документа на Word може да бъде представено от [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) Клас. Можеш да използваш [FieldMergeField](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldmergefield/) клас за извършване на следните операции:

- посочете името на сливане поле
- посочва форматирането на сливане поле
- посочете текста, който е между разделителя на полето и края на полето за сливане
- посочете текста, който трябва да бъде поставен след сливането на полето, ако полето не е празно
- посочете текста, който трябва да бъде поставен преди сливането на полето, ако полето не е празно

Следният пример с код показва как да добавите a `Merge` Използване на поле DOM на параграф в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMergeFieldUsingDOM.py" >}}

### Вмъкване Mail Merge `ADDRESSBLOCK` поле в документ, използващ DOM

На `ADDRESSBLOCK` поле се използва за вмъкване на mail merge адресен блок в Word документ. `ADDRESSBLOCK` полето в документа на Word може да бъде представено от [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) Клас. Можеш да използваш [FieldAddressBlock](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldaddressblock/) клас за извършване на следните операции:

- посочва дали да се включи наименованието на страната/региона в областта
- да се уточни дали да се форматира адресът в съответствие с държавата/региона на получателя, определен от POST*CODE (Универсален пощенски съюз 2006)
- посочете името на страната/региона, изключен
- посочете името и формата на адреса
- посочете езика ID, използван за форматиране на адреса

Следният пример с код показва как да добавите Mail Merge `ADDRESSBLOCK` Използване на поле DOM на параграф в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertMailMergeAddressBlockFieldUsingDOM.py" >}}

### Вмъкване `ADVANCE` поле в документ без използване на DocumentBuilder

На `ADVANCE` полето се използва за компенсиране на последващия текст в линия наляво, надясно, нагоре или надолу. На `ADVANCE` полето в документа на Word може да бъде представено от [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) Клас. Можеш да използваш [FieldAdvance](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldadvance/) клас за извършване на следните операции:

- посочете броя на точките, с които текстът, който следва полето трябва да се премества вертикално от горния край на страницата
- посочете броя на точките, с които текстът, който следва полето трябва да се премества хоризонтално от левия край на колоната, рамката или текстовата кутия
- посочете броя на точките, с които текстът, който следва полето, трябва да се премести наляво, надясно, нагоре или надолу

Следният пример с код показва как да добавите `ADVANCE` Използване на поле DOM на параграф в документ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAdvanceFieldWithOutDocumentBuilder.py" >}}

### Вмъкване `ASK` поле в документ без използване на DocumentBuilder

На `ASK` полето се използва, за да накарате потребителя да зададе текст за отметки в Word документ. `ASK` полето в документа на Word може да бъде представено от [FieldAsk](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldask/) Клас. Можеш да използваш **FieldAsk** клас за извършване на следните операции:

- посочете името на отметките
- посочете отговора на потребителя по подразбиране (първоначална стойност, съдържаща се в бързия прозорец)
- посочете дали потребителският отговор трябва да се получава веднъж на седмица mail merge операция
- да се посочи бърз текст (титуляр на бърз прозорец)

Следният пример с код показва как да добавите `ASK` Използване на поле DOM на параграф в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertASKFieldWithOutDocumentBuilder.py" >}}

### Вмъкване `AUTHOR` поле в документ без използване на DocumentBuilder

На `AUTHOR` поле се използва за определяне на името на автора на документа от `Document` имоти. На `AUTHOR` полето в документа на Word може да бъде представено от [FieldAuthor](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldauthor/) Клас. Можеш да използваш **FieldAuthor** клас за извършване на следните операции:

- посочете името на автора на документа

Следният пример с код показва как да добавите `AUTHOR` Използване на поле DOM на параграф в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertAuthorField.py" >}}

### Вмъкване `INCLUDETEXT` поле в документ без използване на DocumentBuilder

На `INCLUDETEXT` поле вмъква текста и графиките, съдържащи се в документа, посочен в кода на полето. Можете да поставите целия документ или част от документа, посочен с отметки. Тази област в документ Word е представена от INTEEXT. Можеш да използваш [FieldIncludeText](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldincludetext/) клас за извършване на следните операции:

- посочете името на отметките на включения документ
- посочете местоположението на документа

Следният пример с код показва как да добавите `INCLUDETEXT` поле за използване DOM на параграф в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertFieldIncludeTextWithoutDocumentBuilder.py" >}}

### Вмъкване `TOA` поле в документ без използване на DocumentBuilder

На `TOA` (*Таблица на органите*) полето изгражда и вмъква таблица от органи. На `TOA` поле събира записи, маркирани с `TA` (*Таблица на Вход на властите*) полета. Microsoft Office Word вмъква `TOA` поле, когато кликнете * **Таблица на органите** група на **References** Сметка. Когато видите `TOA` В този документ синтаксисът изглежда така:

{ `TOA` [Switches ] }

Можеш да използваш [FieldToa](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtoa/) клас за извършване на операциите с `TOA` поле.

Следният пример с код показва как да добавите `TOA` поле за използване DOM на параграф в документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-InsertTOAFieldWithoutDocumentBuilder.py" >}}
