---
title: Преглед на полетата в C++
second_title: Aspose.Words за C++
articleTitle: Преглед На Полетата
linktitle: Преглед На Полетата
description: "Полетата се представят подробно, кодовете на полетата и резултатите от полетата, обяснени в Aspose.Words за C++."
type: docs
weight: 10
url: /bg/cpp/fields-overview/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words е класова библиотека, предназначена за обработка от страна на сървъра на документи Microsoft Word и поддържа полета по следните начини::

- всички полета в документа се запазват по време на отваряне/записване и реализации
- възможно е да се актуализират резултатите от повечето полета

В тази статия ще научим повече за структурата на полето, поддържаните полета в Aspose.Words и подробности за работата с такива полета.

## Структура На Полетата

Полето се състои от:

- Възлите начало на поле и разделител се използват, за да обхванат Съдържанието, което съставлява кода на полето (обикновено като обикновен текст).
- Разделителят на полето и краят на полето обхващат резултата от полето. Това може да се състои от различни видове съдържание, вариращи от редове от текст до параграфи до таблици.
- Някои полета може да нямат разделител, което означава, че цялото съдържание съставлява кода на полето.
- Кодът на полето определя поведението на полето и се състои от идентификатора на полето и често други параметри като имена на полета и превключватели.
- Резултатът от полето съдържа най-новата оценка на полето. Тази стойност се съхранява в резултата от полето и е това, което се показва на потребителя. Някои полета може да нямат резултати от полета, така че няма да се показва нищо в документа. По същия начин някои полета може да не са актуализирани все още, поради което също няма да имат резултат от полета.

![fields-overview-aspose-words-cpp-1](fields-overview-1.png)

Съдържанието, което съставлява кода на полето, се съхранява като [Run](https://reference.aspose.com/words/cpp/class/aspose.words.run) възли между [FieldStart](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_start/) и [FieldSeparator](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_separator/). Резултатът от полето се съхранява между възлите **FieldSeparator** и [FieldEnd](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_end/) и може да бъде съставен от различни видове съдържание. Обикновено резултатът от полето съдържа само текст, съставен от **Run** възли, но е възможно възелът **FieldEnd** да бъде разположен в съвсем различен абзац и по този начин резултатът от полето да се състои от [възли на блоково ниво](/words/cpp/logical-levels-of-nodes-in-a-document/) също като **Table** и **Paragraph** възли.

Ето изглед на това как едно поле се съхранява в Aspose.Words, като се използва примерът " *DocumentExplorer"*.

![fields-overview-aspose-words-cpp-2](fields-overview-2.png)

## Полетата в обектния модел на документа Aspose.Words (DOM)

Когато даден документ се зарежда в Aspose.Words, полетата на документа се зареждат в [Aspose.Words Документ Обектен Модел](/words/cpp/aspose-words-document-object-model/) като набор от отделни компоненти (възли). Едно поле се зарежда като колекция от възли **FieldStart**, **FieldSeparator** и **FieldEnd** заедно със съдържанието между тези възли. Ако едно поле няма резултат от поле, тогава няма да има **FieldSeparator** възел. Всички тези възли винаги се намират вградени (като деца на [Paragraph](https://reference.aspose.com/words/cpp/class/aspose.words.paragraph) или [SmartTag](https://reference.aspose.com/words/cpp/class/aspose.words.markup.smart_tag/)).

Във Aspose.Words всеки от **FieldXXX** възлите произлиза от [FieldChar](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_char/). Този клас предоставя свойство за проверка на типа на полето, представлявано от посочения възел чрез свойството [FieldType](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldchar/get_fieldtype/). Например **FieldType.FieldMergeField** представлява поле за обединяване в документа.

{{% alert color="primary" %}}

Има някои специфични полета, които съществуват в документ Word, които не са импортирани в Aspose.Words като колекция от **FieldXXX** възли. Например полето `LINK` и полето `INCLUDEPICTURE` се импортират в Aspose.Words като `Shape` обект. Този обект предоставя свойства за работа с данните от изображението, които обикновено се съхраняват в тези полета. За да импортирате `INCLUDEPICTURE` поле като **FieldXXX** възли, опцията [PreserveIncludePictureField](https://reference.aspose.com/words/cpp/aspose.words.loading/loadoptions/get_preserveincludepicturefield/) трябва да бъде посочена като **true**.

Полетата на формуляр също се импортират в Aspose.Words като свой собствен специален клас. Класът [FormField](https://reference.aspose.com/words/cpp/class/aspose.words.fields.form_field/) представлява поле на формуляр в документ Word и предоставя допълнителни методи, които са специфични за поле на формуляр.

{{% /alert %}}

## Поддържани Полета

Изчисляването на следните полета се поддържа в текущата версия на Aspose.Words:

- = (формула)
- `ADDRESSBLOCK`
- `ASK`
- `AUTHOR`
- `AUTONUM`
- `AUTONUMLGL`
- `AUTONUMOUT`
- `AUTOTEXT`
- `BARCODE`
- `COMMENTS`
- `COMPARE`
- `CREATEDATE`
- `DATABASE`
- `DATE`
- `DISPLAYBARCODE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `EDITTIME`
- `EQ`
- `FILENAME`
- `FILESIZE`
- `FILLIN`
- `FORMCHECKBOX`
- `FORMDROPDOWN`
- `FORMTEXT`
- `GLOSSARY`
- `GOTOBUTTON`
- `GREETINGLINE`
- `HYPERLINK`
- `IF`
- `IMPORT`
- `INCLUDE`
- `INCLUDEPICTURE`
- `INCLUDETEXT`
- `INDEX`
- `INFO`
- `KEYWORDS`
- `LASTSAVEDBY`
- `LISTNUM`
- `MACROBUTTON`
- `MERGEBARCODE`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NOTEREF`
- `NUMCHARS`
- `NUMPAGES`
- `NUMWORDS`
- `PAGE`
- `PAGEREF`
- `PRINTDATE`
- `QUOTE`
- `REF`
- `REVNUM`
- `SAVEDATE`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `SHAPE`
- `SKIPIF`
- `STYLEREF`
- `SUBJECT`
- `SYMBOL`
- `TEMPLATE`
- `TIME`
- `TITLE`
- `TOA`
- `TOC`
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Софистициран Полеви Анализ

Aspose.Words следва пътя Microsoft Word обработва полетата и в резултат на това правилно обработва:

- вложени полета:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- поле аргумент може да бъде резултат от вложено поле
- полетата могат да бъдат вложени в код на поле, както и в резултата от полето
- интервали/без интервали,кавички / без кавички, знаци за бягство в полета и т.н.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- полета, които обхващат няколко параграфа

### Формула Полета

Aspose.Words осигурява много сериозно изпълнение на двигателя формула и поддържа следното:

- аритметични и логически оператори:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- функции:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- препратки към отметки:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- превключватели за форматиране на числа:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Следните функции в изрази се поддържат: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` and `COMPARE` Fields

Само някои от `IF` изрази, които Aspose.Words лесно могат да се изчислят, трябва да Ви дадат представа колко мощна е тази функция.:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` and `TIME` Fields

Aspose.Words поддържа всички превключватели за форматиране на дата и час, Налични в Microsoft Word, някои примери са:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge полета

Aspose.Words не налага ограничение за сложността на полетата Mail Merge във вашите документи и поддържа вложени полета `IF` и формула и дори може да изчисли името на полето за обединяване с помощта на Формула.

Някои примери за Mail Merge полета, които Aspose.Words поддържа:

- Mail merge превключватели на полета:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- вложени полета за обединяване във Формула:
  `IF { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } True False`
- изчисляване на името на полето за обединяване по време на изпълнение:
  `MERGEFIELD { `IF` { `MERGEFIELD` Value1 } >= { `MERGEFIELD` Value2 } FirstName"LastName" }`
- условно преминаване към следващия запис в източника на данни:
  `NEXTIF { `MERGEFIELD` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFIELD` Value2 }, 2, -.45) }`

### Формат Превключватели

Поле в документ може да има превключватели за форматиране, които указват как трябва да се форматира получената стойност. Aspose.Words поддържа следните формати превключватели:

- @ – форматиране на дата и час
- \\\# - форматиране на номера
- \\\\\\\\* Caps
- \\\\\\\\* FirstCap
- \\\\\\\\* Lower
- \\\\\\\\* Upper
- \\\\\\\\* CHARFORMAT - форматиране на резултата според първия знак на кода на полето
- \\\\\\\\* MERGEFORMAT - форматиране на резултата според форматирането на стария резултат

### Форматиране на дата и номер в полета

Когато Aspose.Words изчислява резултат от поле, той често трябва да анализира низ в стойност на число или дата, а също и да го форматира обратно в string.By по подразбиране Aspose.Words използва текущата култура на нишката, за да извърши анализ и форматиране при изчисляване на стойностите на полетата по време на актуализацията на полето и mail merge. Има и опции, предоставени под формата на клас [FieldOptions](https://reference.aspose.com/words/cpp/class/aspose.words.fields.field_options/), който позволява по-нататъшен контрол върху това коя култура се използва по време на актуализацията на полето.

- по подразбиране свойството [FieldUpdateCultureSource](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldoptions/get_fieldupdateculturesource/) е зададено на [CurrentThread](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/), който форматира полета, използвайки текущата култура на нишката
- това свойство може да бъде настроено на [FieldCode](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldupdateculturesource/), така че езикът, зададен от кода на полето, да се използва вместо форматиране

### Форматиране с помощта на културата на текущата нишка

За да контролирате културата, използвана по време на изчислението на полето, просто Задайте свойството **CurrentCulture** на култура по ваш избор, преди да извикате изчисление на полето.

Следващият пример за код показва как да промените културата, използвана в полетата за форматиране по време на актуализацията:

EXAMPLE

Използването на текущата култура за форматиране на полета позволява на системата лесно и последователно да контролира как всички полета в документа се форматират по време на актуализацията на полета.

### Форматиране с помощта на културата в документа

От друга страна Microsoft Word форматира всяко отделно поле въз основа на езика на текста, който се намира в полето (по-специално, изпълнява се от кода на полето). Понякога по време на актуализацията на полета това може да е желаното поведение, например ако имате глобализирани документи, съдържащи съдържание, съставено от много различни езици и бихте искали всяко поле да отговаря на езиковата променлива, използвана от текста. Aspose.Words също поддържа тази функционалност.

Клас [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) предоставя свойство [FieldOptions](https://reference.aspose.com/words/cpp/aspose.words/document/get_fieldoptions/), което съдържа членове, които могат да се използват за контролиране на актуализирането на полетата в документа.

Следващият пример за код показва как да укажете къде се избира културата, използвана за форматиране на дата по време на актуализацията на полето и Mail Merge:

EXAMPLE
