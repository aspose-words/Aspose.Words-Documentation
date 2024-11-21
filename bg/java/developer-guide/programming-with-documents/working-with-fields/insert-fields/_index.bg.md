---
title: Вмъкване на полета Java
second_title: Aspose.Words вместо Java
articleTitle: Вмъкване на полета
linktitle: Вмъкване на полета
description: "Различни начини за вмъкване на полета във вашия документ с помощта на Java."
type: docs
weight: 20
url: /bg/java/insert-fields/
timestamp: 2024-01-27-14-07-04
---

Има няколко различни начина за вмъкване на полета в документ:

- използване [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/)
- използване [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/)
- използване [Aspose.Words Document Object Model (DOM)](/words/bg/java/aspose-words-document-object-model/)

В тази статия ще разгледаме по-подробно всеки начин и ще анализираме как да вмъкнем определени полета, използвайки тези опции.

## Вмъкване на полета в документ с помощта на Document Builder

В Aspose.Words на [InsertField](https://reference.aspose.com/words/java/com.aspose.words/DocumentBuilder#insertField(int,boolean)) метод се използва за въвеждане на нови полета в документ. Първият параметър приема да бъде поставен пълният код на полето. Вторият параметър е незадължителен и позволява ръчно да се зададе резултатът от полето. Ако това не е доставено, полето се актуализира автоматично. Можете да преминете нула или празно към този параметър, за да въведете поле с празна стойност на полето. Ако не сте сигурни за конкретния код синтаксис, създайте полето в Microsoft Word Първо превключи, за да видиш кода на полето.

{{% alert color="primary" %}}

Ако вашият полеви код има параметър, съдържащ пространство, тогава той трябва да бъде затворен в говорните знаци. В противен случай полето в двете Microsoft Word както и Aspose.Words може да не работи така, както се очаква, тъй като параметърът се третира и от двете като неработещи.

{{% /alert %}}

Следният пример за код показва как да се вмъкне поле за сливане в документ, като се използва **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-InsertField.java" >}}

Същата техника се използва за вмъкване на полета в други полета.

Следният пример за код показва как да вмъкнете полета в друго поле, като използвате **DocumentBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertNestedFields-InsertNestedFields.java" >}}

### Посочване на местоположението на ниво поле

Езиковият идентификатор е стандартно международно цифрово съкращение за езика в държава или географски регион. С Aspose.Words, Можете да посочите Locale на нивото на полето с помощта на [LocaleId](https://reference.aspose.com/words/java/com.aspose.words/field/#getLocaleId) имот, който получава или определя местоположението на полето.

Следният пример за код показва как да използвате тази опция:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-SpecifylocaleAtFieldlevel-SpecifylocaleAtFieldlevel.java" >}}

### Вмъкване на нетипично/специфично поле

Ако искате да въведете нетипизирани/празни полета ({}) Точно като Microsoft Word позволява, можете да използвате [InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) метод с [FieldType.FieldNone](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) параметър. За да вмъкнете поле в Word документ, можете да натиснете Ctrl + F9.

Следният пример за код показва как да се постави празно поле в документа:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertFieldNone-InsertFieldNone.java" >}}

### Вмъкване `COMPARE` Поле

На `COMPARE` полето сравнява две стойности и връща числовата стойност 1, ако сравнението е true или 0, ако сравнението е false.

Следният пример с код показва как да добавите `COMPARE` полета, използващи DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldCompare.java" >}}

### Вмъкване `IF` Поле

На `IF` полето може да се използва за оценка на аргументите условно.

Следният пример с код показва как да добавите `IF` полета, използващи DocumentBuilder:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIf.java" >}}

## Вмъкване на полета в документ с помощта на fieldbuilder

Алтернативен начин за вмъкване на полета в Aspose.Words е [FieldBuilder](https://reference.aspose.com/words/java/com.aspose.words/fieldbuilder/) Клас. Той осигурява перфектен интерфейс за определяне на полеви превключватели и спорни стойности като текст, възли или дори гнезда полета.

Следният пример за код показва как да се въведе поле в документ, като се използва **FieldBuilder**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-FieldBuilder.java" >}}

## Вмъкване на полета DOM

Можете също така да вмъквате различни видове полета, използвайки [Aspose.Words Document Object Model (DOM)](/words/bg/java/aspose-words-document-object-model/). В този раздел ще разгледаме няколко примера.

### Вмъкване на сливане Поле в документ, използващ DOM

`MERGEFIELD` полето в документа на Word може да бъде представено от [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) Клас. Можеш да използваш **FieldMergeField** клас за извършване на следните операции:

- посочете името на полето за сливане
- посочете форматирането на полето за сливане
- посочете текста, който е между разделителя на полето и края на полето на сливането
- посочете текста, който трябва да се вмъкне след сливането, ако полето не е празно
- посочете текста, който ще бъде поставен преди сливането на полето, ако полето не е празно

{{% alert color="primary" %}}

За повече подробности вижте [FieldMergeField](https://reference.aspose.com/words/java/com.aspose.words/fieldmergefield/) клас API.

{{% /alert %}}

Следният пример с код показва как да добавите `MERGE` поле за използване DOM към параграф в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMergeFieldUsingDOM-InsertMergeFieldUsingDOM.java" >}}

### Вмъкване Mail Merge `ADDRESSBLOCK` поле в документ, използващ DOM

На `ADDRESSBLOCK` поле се използва за вмъкване на mail merge адрес блок в Word документ. `ADDRESSBLOCK` полето в документа на Word може да бъде представено от [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) Клас. Можеш да използваш **FieldAddressBlock** клас за извършване на следните операции:

- посочете дали да включите името на страната/региона в полето
- да се уточни дали да се форматира адресът според държавата/региона на получателя, както е определен от POST*CODE (Универсален пощенски съюз 2006)
- посочете името на страната/региона
- посочете името и формата на адреса
- посочете езика ID, използван за форматиране на адреса

{{% alert color="primary" %}}

За повече подробности вижте [FieldAddressBlock](https://reference.aspose.com/words/java/com.aspose.words/fieldaddressblock/) клас API.

{{% /alert %}}

Следният пример с код показва как да добавите Mail Merge `ADDRESSBLOCK` Използване на поле DOM към параграф в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertMailMergeAddressBlockFieldUsingDOM-InsertMailMergeAddressBlockFieldUsingDOM.java" >}}

### Вмъкване `ADVANCE` поле в документ без използване на DocumentBuilder

На `ADVANCE` полето се използва за компенсиране на последващия текст в линия наляво, надясно, нагоре или надолу. `ADVANCE` полето в документа на Word може да бъде представено от [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) Клас. Можеш да използваш **FieldAdvance** клас за извършване на следните операции:

- посочете броя на точките, с които текстът, който следва полето трябва да се премества вертикално от горния край на страницата
- посочете броя на точките, с които текстът, който следва полето трябва да се премества хоризонтално от левия край на колоната, рамката или текстовата кутия
- посочете броя на точките, с които текстът, който следва полето, трябва да се премести наляво, надясно, нагоре или надолу

{{% alert color="primary" %}}

За повече подробности вижте [FieldAdvance](https://reference.aspose.com/words/java/com.aspose.words/fieldadvance/) клас API.

{{% /alert %}}

Следният пример с код показва как да добавите `ADVANCE` Използване на поле DOM към параграф в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAdvance.java" >}}

### Вмъкване `ASK` поле в документ без използване на DocumentBuilder

На `ASK` полето се използва за подканване на потребителя за текст за присвояване на отметка в Word документ. `ASK` полето в документа на Word може да бъде представено от [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) Клас. Можеш да използваш **FieldAsk** клас за извършване на следните операции:

- посочете името на отметките
- посочете отговора на потребителя по подразбиране (първоначална стойност, съдържаща се в бързия прозорец)
- посочете дали потребителският отговор трябва да се получи веднъж на a mail merge експлоатация
- да се посочи бърз текст (титуляр на бърз прозорец)

{{% alert color="primary" %}}

За повече подробности вижте [FieldAsk](https://reference.aspose.com/words/java/com.aspose.words/fieldask/) клас API.

{{% /alert %}}

Следният пример с код показва как да добавите `ASK` Използване на поле DOM към параграф в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldAsk.java" >}}

### Вмъкване `AUTHOR` поле в документ без използване на DocumentBuilder

На `AUTHOR` поле се използва за определяне на името на автора на документа от `Document` имоти. `AUTHOR` полето в документа на Word може да бъде представено от [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) Клас. Можеш да използваш **FieldAuthor** клас за извършване на следните операции:

- посочете името на автора на документа

{{% alert color="primary" %}}

За повече подробности вижте [FieldAuthor](https://reference.aspose.com/words/java/com.aspose.words/fieldauthor/) клас API.

{{% /alert %}}

Следният пример с код показва как да добавите `AUTHOR` Използване на поле DOM към параграф в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertAuthorField-InsertAuthorField.java" >}}

### Вмъкване `INCLUDETEXT` поле в документ без използване на DocumentBuilder

На `INCLUDETEXT` полето вмъква текста и графиките, съдържащи се в документа, посочен в кода на полето. Можете да поставите целия документ или част от документа, посочен с отметки. Тази област в Word документ е представена от ВКЛЮЧИТЕЛНО ЕТЕКСТ. Можеш да използваш [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) клас за извършване на следните операции:

- посочете името на отметките на включения документ
- посочете местоположението на документа

{{% alert color="primary" %}}

За повече подробности вижте [FieldIncludeText](https://reference.aspose.com/words/java/com.aspose.words/fieldincludetext/) клас API.

{{% /alert %}}

Следният пример с код показва как да добавите `INCLUDETEXT` поле за използване DOM към параграф в документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertField-fieldIncludeText.java" >}}

### Вмъкване `TOA` поле в документ без използване на DocumentBuilder

На `TOA` (*Таблица на органите*) полето изгражда и вмъква таблица от органи. На `TOA` поле събира записи, маркирани с `TA` (*Таблица на органите за влизане*) полета. Microsoft Office Word вмъква `TOA` поле, когато кликнете * **Таблица на органите** група на **References** Сметка. Когато видите `TOA` В този документ синтаксисът изглежда така:

{ `TOA` [Switches ] }

{{% alert color="primary" %}}

За повече подробности вижте [FieldToa](https://reference.aspose.com/words/java/com.aspose.words/fieldtoa/) клас API.

{{% /alert %}}

Следният пример с код показва как да добавите `TOA` поле за използване DOM на параграф в документ.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-InsertTOAField-InsertTOAField.java" >}}
