---
title: Въведение в полетата в Java
second_title: Aspose.Words вместо Java
articleTitle: Въведение в полетата
linktitle: Въведение в полетата
description: "Полета функция в подробности, кодове на полета и резултатите от полето, обяснени в Aspose.Words вместо Java."
type: docs
weight: 10
url: /bg/java/introduction-to-fields/
timestamp: 2024-09-25-11-08-55
---

Aspose.Words е библиотека клас, предназначена за обработка от страна на сървъра на Microsoft Word документи и поддържа полета по следните начини:

- всички полета в документ са запазени по време на отворени/запази и преобразувания
- възможно е да актуализирате резултатите от повечето полета

В тази статия ще научим повече за полевите структури, подкрепяни в Aspose.Words, и подробности за работата с такива полета.

## Структура на полето

Полето се състои от:

- Първите и разделителните възли на полето се използват за покриване на съдържанието, което съставя кода на полето (обикновено като обикновен текст).
- Разделител на полето и край на полето обхваща резултата на полето. Това може да бъде съставено от различни видове съдържание, вариращи от редовете на текста до таблиците.
- Някои полета може да нямат разделител, което означава, че цялото съдържание съставя кода на полето.
- Кодът на полето определя поведението на полето и се състои от идентификатора на полето и често други параметри като име на полето и превключватели.
- Резултатът от полето съдържа най-новата оценка на полето. Тази стойност се съхранява в резултата от полето и е това, което се показва на потребителя. Някои полета може да нямат резултат от полетата по този начин няма да покажат нищо в документа. По същия начин някои области все още не могат да бъдат актуализирани, поради което няма да има резултат от това.

![fields-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-1.png)

Съдържанието на кода на полето се съхранява като [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) Възел между [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) както и [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/). Резултатът от полето се съхранява между **FieldSeparator** както и [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/) възли и могат да бъдат съставени от различни видове съдържание. Обикновено резултатът от полето съдържа просто текст, съставен от Run възли, обаче е възможно FieldEnd възелът да бъде разположен в напълно различен параграф и по този начин да се направи резултат на полето, състоящ се от [Логически нива на възлите в документ](/words/bg/java/logical-levels-of-nodes-in-a-document/) като **Table** както и **Paragraph** Възлите също.

Ето как се съхранява полето Aspose.Words Чрез използване на ...****** пример, който може да се намери на [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/java/com/aspose/words/examples/viewers_visualizers/document_explorer).

![document-explorer-aspose-words-java](/words/java/introduction-to-fields/introduction-to-fields-2.png)

## Полета в Aspose.Words Document Object Model (DOM)

Когато е зареден документ <span notrans="<span notrans=" Aspose.Words"=""></span>,"> полетата на документа са заредени в Aspose.Words Document Object Model като набор от отделни компоненти (води). Като колекция от **FieldStart**, **FieldSeparator** както и **FieldEnd** Възлите заедно със съдържанието между тези възли. Ако дадено поле няма резултат от поле, тогава ще има не **FieldSeparator** Възел. Всички тези възли винаги се намират в линия (като деца на [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/) или [SmartTag](https://reference.aspose.com/words/java/com.aspose.words/smarttag/).

В Aspose.Words всяка от **FieldXXX** възлите произлизат от [FieldChar](https://reference.aspose.com/words/java/com.aspose.words/fieldchar/). Този клас осигурява свойство за проверка на вида на полето, представлявано от посочения възел през [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) собственост. Например `FieldType.FieldMergeField` представлява поле за сливане в документа.

{{% alert color="primary" %}}

Има някои конкретни полета, които съществуват в Word документ, който не се внасят в Aspose.Words като колекция от **FieldXXX** Възли. Например, `LINK` поле и `INCLUDEPICTURE` полето се внася в Aspose.Words като [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) Възразявам. Този обект предоставя свойства за работа с данните от изображенията, които обикновено се съхраняват в тези полета. За внос `INCLUDEPICTURE` поле като **FieldXXX** Възел [PreserveIncludePictureField](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getPreserveIncludePictureField) опцията трябва да бъде посочена като **true**.

В полетата на формулярите също се внасят Aspose.Words като свой собствен специален клас. На [FormField](https://reference.aspose.com/words/java/com.aspose.words/formfield/) класът представлява полето на формата в Word документ и осигурява допълнителни методи, които са специфични за полето на формата.

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
- `TOC` (включително TOT и TOF)
- `USERADDRESS`
- `USERINITIALS`
- `USERNAME`

## Изтънчено поле

Aspose.Words следва пътя Microsoft Word обработва полета и в резултат на това работи правилно:

- гнездени полета:
  `IF { =OR({ `COMPARE` { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- полева аргумент може да бъде резултат от гнездо поле
- полетата могат да бъдат гнездени в полевия код, както и в резултат
- пространства/не пространства, кавички/не кавички, герои за бягство в полета и т.н.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- полета, които обхващат няколко параграфа

### Формулационни полета

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

Aspose.Words не налага ограничение на сложността на mail merge полета във вашите документи и поддържа гнездене `IF` и формули полета и дори може да се изчисли име сливане поле с помощта на формула.

Някои примери за mail merge полета, които Aspose.Words поддържа:

- Mail merge превключватели на полета:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- смесени полета във формула:
  `IF { `MERGEFID` Value1 } >= { `MERGEFID` Value2 } True False`
- да изчисли името на сливащото поле по време на изпълнение:
  `MERGEFIELD { `Ако` { `MERGEFID` Value1 } >= { `MERGEFID` Value2 } FirstName"LastName" }`
- условно преминаване към следващия запис в източника на данни:
  `NEXTIF { `MERGEFID` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFID` Value2 }, 2, -.45) }`

### Превключване на формат

Поле в документ може да има форматиращи превключватели, които посочват как следва да бъде форматирана получената стойност. Aspose.Words поддържа следните превключватели във формат:

- Дата и час форматиране
- \\\# год
-\\\\\\\\\* Шапки
-\\\\\\\\* FirstCap
-\\\\\\\\\* По-ниско
-\\\\\\\\\* Горен
- \\\\\\\* CHARMFAT по формат според първия символ на кода на полето
- \\\\\\* MERGEFORMAT голмайсторски резултат според начина, по който старият резултат е оформен

### Date и форматиране на номера в полета

Кога Aspose.Words изчислява резултат на полето, тя често трябва да се съпоставя низ в число или стойност дата, а също и да го форматира обратно към низ. По подразбиране Aspose.Words използва текущата нишка култура за извършване на парсинг и форматиране при изчисляване на стойностите на полето по време на актуализация на полето и mail merge. Има и опции под формата на [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/) клас, който позволява по-нататъшен контрол върху коя култура се използва по време на актуализацията на полето%

* по подразбиране [FieldUpdateCultureSource](https://reference.aspose.com/words/java/com.aspose.words/fieldoptions/#getFieldUpdateCultureSource) имотът е зададен [CurrentThread](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#CURRENT-THREAD) които форматират полета, използвайки текущата нишка култура
* този имот може да бъде настроен [FieldCode](https://reference.aspose.com/words/java/com.aspose.words/fieldupdateculturesource/#FIELD-CODE) Така че езикът, определен от кода на полето се използва за форматиране вместо

### Форматиране с помощта на текущата култура

За да контролирате културата, използвана по време на изчисляване на полето, просто задайте **CurrentCulture** собственост на култура по ваш избор, преди да се позовава поле изчисление.

Следният пример за код показва как да се промени културата, използвана във форматиращи полета по време на актуализация:

ПРИМЕР (използвайте обществената опаковка ThreadSetts.getLocale() и setLocale() вместо частния `Thread.CurrentThread`.CurrentCulture)

Използването на текущата култура за форматиране на полета позволява на системата лесно и последователно да контролира как се форматират всички полета в документа по време на актуализация на полето.

### Форматиране на използването на културата в документа

От друга страна, Microsoft Word форматира всяко отделно поле, базирано на езика на текста, който се намира в полето (специфично, работи от кода на полето). Понякога по време на обновяване на полето това може да бъде желаното поведение, например ако имате глобализирани документи, съдържащи съдържание, съставено от много различни езици и биха искали всяка област да почита локала, използван от текста. Aspose.Words Също така поддържа тази функционалност.

На [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) Класът осигурява [FieldOptions](https://reference.aspose.com/words/java/com.aspose.words/document/#getFieldOptions) собственост, която съдържа членове, които могат да бъдат използвани за контрол как полетата се актуализират в рамките на документа.

Следният пример за код показва как да се определи къде културата, използвана за форматиране на датата по време на актуализацията на полето и mail merge е избран от:

ПРИМЕР
