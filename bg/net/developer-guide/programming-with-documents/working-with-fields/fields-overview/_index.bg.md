---
title: Преглед на полетата C#
second_title: Aspose.Words вместо .NET
articleTitle: Преглед на полетата
linktitle: Преглед на полетата
description: "Полета в подробности, полеви кодове и резултати от полето, обяснени в Aspose.Words вместо .NET."
type: docs
weight: 10
url: /bg/net/fields-overview/
---

Aspose.Words е библиотека клас, предназначена за обработка от страна на сървъра на Microsoft Word документи и поддържа полета по следните начини:

- всички полета в документ се съхраняват по време на отваряне/запазете и конвертиране
- възможно е да актуализирате резултатите от повечето полета

В тази статия ще научим повече за структурата на полето, за полетата, подкрепени в Aspose.Words, и подробности за работата с такива полета.

## Структура на полето

Полето се състои от:

- Първите и разделителните възли на полето се използват за покриване на съдържанието, което съставлява кода на полето (обикновено като обикновен текст).
- Разделител на полето и край на полето обхваща резултата на полето. Това може да бъде съставено от различни видове съдържание, вариращи от пробег на текст до параграфи до таблици.
- Някои полета може да нямат разделител, което означава, че цялото съдържание съставя кода на полето.
- Кодът на полето определя поведението на полето и се състои от идентификатора на полето и често други параметри като име на полето и превключватели.
- Резултатът от полето съдържа най-новата оценка на полето. Тази стойност се съхранява в резултат на полето и е това, което се показва на потребителя. Някои полета може да нямат резултат от полета, така че няма да покажат нищо в документа. По същия начин някои области може да не бъдат актуализирани, но поради това няма да има резултат от това.

![fields-aspose-words](/words/net/fields-overview/fields-overview-1.png)

Съдържанието на кода на полето се съхранява като [Run](https://reference.aspose.com/words/net/aspose.words/run/) Възел между [FieldStart](https://reference.aspose.com/words/net/aspose.words.fields/fieldstart/) както и [FieldSeparator](https://reference.aspose.com/words/net/aspose.words.fields/fieldseparator/). Резултатът от полето се съхранява между **FieldSeparator** както и [FieldEnd](https://reference.aspose.com/words/net/aspose.words.fields/fieldend/) възли и може да бъде съставена от различни видове съдържание. Обикновено резултатът от полето съдържа текст, съставен от **Run** възли, обаче е възможно за **FieldEnd** Възелът се намира в напълно различен параграф и по този начин резултатът от полето се състои от [Логически нива на възли в документ](/words/bg/net/logical-levels-of-nodes-in-a-document/) като **Table** както и **Paragraph** Възлите също.

Ето как се съхранява полето Aspose.Words Чрез използване на например, който може да бъде намерен на [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/net/fields-overview/fields-overview-2.png)

## Полета в Aspose.Words Document Object Model (DOM)

Когато е зареден документ Aspose.Words, полетата на документа са заредени в [Aspose.Words Document Object Model (DOM)](/words/bg/net/aspose-words-document-object-model/) като набор от отделни компоненти (води). Едно поле се зарежда като колекция от **FieldStart**, **FieldSeparator** както и **FieldEnd** Възлите заедно със съдържанието между тези възли. Ако дадено поле няма резултат, тогава ще има не **FieldSeparator** Възел. Всички тези възли винаги се намират в линия (като деца на [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/) или [SmartTag](https://reference.aspose.com/words/net/aspose.words.markup/smarttag/).

В Aspose.Words всяка от **FieldXXX** възлите произлизат от [FieldChar](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/). Този клас осигурява свойство за проверка на вида на полето, представлявано от посочения възел през [FieldType](https://reference.aspose.com/words/net/aspose.words.fields/fieldtype/) собственост. Например **FieldType.FieldMergeField** представлява поле за сливане в документа.

{{% alert color="primary" %}}

Има определени полета, които съществуват в документ на Word, които не се внасят в Aspose.Words като колекция от **FieldXXX** Възли. Например, `LINK` поле и `INCLUDEPICTURE` полето се внася в Aspose.Words като [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) Възразявам. Този обект осигурява свойства за работа с данните от изображенията, които обикновено се съхраняват в тези полета. За внос `INCLUDEPICTURE` поле като **FieldXXX** Възел [PreserveIncludePictureField](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/preserveincludepicturefield/) опцията трябва да бъде посочена като **true**.

В полетата на формулярите също се внасят Aspose.Words като свой собствен специален клас. На [FormField](https://reference.aspose.com/words/net/aspose.words.fields/formfield/) класът представлява полето на формата в Word документ и осигурява допълнителни методи, които са специфични за полето на формата.

{{% /alert %}}

## Поддържани полета

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

## Изтънчено поле

Aspose.Words следва пътя Microsoft Word обработва полета и в резултат на това работи правилно:

- гнездени полета:
  `IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- полева аргумент може да бъде резултат от гнездо поле
- полетата могат да бъдат гнездени в полеви код, както и в резултат
- пространства/не пространства, кавички/не кавички, знаци за бягство в полета и т.н.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- полета, които обхващат няколко параграфа

### Формула полета

Aspose.Words осигурява много сериозно прилагане на формулата двигател и поддържа следното:

- аритметични и логически оператори:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- функции:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- препратки към отметки:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- номер форматиращи превключватели:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Поддържат се следните функции в изразите: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

### `IF` както и `COMPARE` Полета

Само някои от `IF` изрази, че Aspose.Words лесно може да се изчисли трябва да ви даде представа за това колко мощна е тази функция:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

### `DATE` както и `TIME` Полета

Aspose.Words поддържа всички дата и час форматиращи превключватели на разположение в Microsoft Word, някои примери са:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

### Mail Merge Полета

Aspose.Words не налага ограничение на сложността на mail merge полета във вашите документи и поддържа гнездене `IF` и формули полета и дори може да се изчисли име сливане на полето с помощта на формула.

Някои примери за mail merge полета, които Aspose.Words поддържа:

- Mail merge превключватели на полета:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- гнездени сливащи се полета във формула:
  `IF { `MERGEFID` Value1 } >= { `MERGEFID` Value2 } True False`
- да изчисли името на сливащото поле по време на изпълнение:
  `MERGEFIELD { `Ако` { `MERGEFID` Value1 } >= { `MERGEFID` Value2 } FirstName"LastName" }`
- условно преминаване към следващия запис в източника на данни:
  `NEXTIF { `MERGEFID` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFID` Value2 }, 2, -.45) }`

### Превключване на формат

Поле в документ може да има форматиращи превключватели, които определят как следва да бъде форматирана получената стойност. Aspose.Words поддържа следните превключватели във формат:

- \\\ @ ... дата и час форматиране
- \\# год
-\\\* Капси
-\\\ * Първа карта
- По-ниско!
-\\\* Горен
- \\\* CHARMORAT по формат според първия символ на кода на полето
- \\\* MERGEFORMAT годежен резултат според начина, по който старият резултат е оформен

### Date и форматиране на номера в полета

Кога Aspose.Words изчислява резултат от поле, тя често трябва да се съпостави низ в число или стойност дата, а също и да го форматира обратно към низ. По подразбиране Aspose.Words използва текущата култура на резбата за извършване на парсинг и форматиране при изчисляване на стойностите на полето по време на актуализацията на полето и mail merge. Има и опции под формата на [FieldOptions](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/) клас, който позволява по-нататъшен контрол върху коя култура се използва по време на актуализацията на полето.

- по подразбиране [FieldUpdateCultureSource](https://reference.aspose.com/words/net/aspose.words.fields/fieldoptions/fieldupdateculturesource/) Имотът е зададен [CurrentThread](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) които форматират полета, използвайки текущата култура на резбата
- този имот може да бъде настроен [FieldCode](https://reference.aspose.com/words/net/aspose.words.fields/fieldupdateculturesource/) Така че езикът, определен от кода на полето се използва за форматиране вместо

### Форматиране с помощта на текущата култура

За да се контролира културата, използвана по време на изчисляване на полето, просто задайте **Thread.CurrentThread.CurrentCulture** собственост на култура по ваш избор, преди да се позовава поле изчисление.

Следният пример за код показва как да се промени културата, използвана във форматиращи полета по време на актуализацията:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeLocale-ChangeLocale.cs" >}}

Използването на текущата култура за форматиране на полета позволява на системата лесно и последователно да контролира как се форматират всички полета в документа по време на актуализацията на полето.

### Форматиране на използването на културата в документа

От друга страна, Microsoft Word форматира всяко отделно поле, базирано на езика на текста, който се намира в полето (специфично, работи от кода на полето). Понякога по време на обновяване на полето това може да бъде желаното поведение, например ако имате глобализирани документи, съдържащи съдържание, съставено от много различни езици и биха искали всяка област да почита локала, използван от текста. Aspose.Words Също така поддържа тази функционалност.

На [Document](https://reference.aspose.com/words/net/aspose.words/document/) Класът осигурява [FieldOptions](https://reference.aspose.com/words/net/aspose.words/document/fieldoptions/) собственост, която съдържа членове, които могат да бъдат използвани за контрол как полетата се актуализират в документа.

Следният пример за код показва как да се уточни къде културата, използвана за форматиране на дата по време на актуализацията на полето и mail merge е избран от:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-ChangeFieldUpdateCultureSource-ChangeFieldUpdateCultureSource.cs" >}}
