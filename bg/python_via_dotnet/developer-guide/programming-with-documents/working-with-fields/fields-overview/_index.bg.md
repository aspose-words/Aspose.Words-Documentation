---
title: Преглед на полетата Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Преглед на полетата
linktitle: Преглед на полетата
description: "Можете да получите достъп до полето за промяна с помощта на Python. Полета на документа се зареждат в Aspose.Words Document Object Model (DOM)."
type: docs
weight: 10
url: /bg/python-net/fields-overview/
timestamp: 2024-10-21-11-17-44
---


Обикновено поле, когато се вмъква в Microsoft Word, вече съдържа актуална стойност. Например, ако полето е формула или номер на страница, то ще съдържа правилна изчислена стойност за дадената версия на документа. Но ако имате приложение, което генерира или променя документ с полета (например съчетава два документа или населява с данни), тогава за да бъде документът полезен, всички полета в идеалния случай трябва да бъдат актуализирани.

Полето се състои от:

![fields-aspose-words](/words/python-net/fields-overview/fields-overview-1.png)

- Първите и разделителните възли на полето се използват за покриване на съдържанието, което съставя кода на полето (обикновено като обикновен текст)
- Разделител на полето и край на полето обхваща резултата на полето. Това може да бъде съставено от различни видове съдържание, вариращи от пробег на текст до параграфи до таблици.
- Някои полета може да нямат разделител, което означава, че цялото съдържание съставя кода на полето.
- Кодът на полето определя поведението на полето и се състои от идентификатора на полето и често други параметри като име на полето и превключватели.
- Резултатът от полето съдържа най-новата оценка на полето. Тази стойност се съхранява в резултат на полето и е това, което се показва на потребителя. Някои полета може да нямат резултат от полета, така че няма да покажат нищо в документа. По същия начин някои области може да не бъдат актуализирани, но поради това няма да има резултат от това.

Ето как се съхранява полето Aspose.Words Чрез използване на например, който може да бъде намерен на [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/master/Examples/DocsExamples/DocumentExplorer).

![document-explorer-aspose-words](/words/python-net/fields-overview/fields-overview-2.png)

Aspose.Words е библиотека клас, предназначена за обработка от страна на сървъра на Microsoft Word документи и поддържа полета по следните начини:

- Всички полета в документ са запазени по време на отворени/запази и преобразувания.
- Възможно е да се актуализират резултатите от някои от най-популярните полета.

## Полета в Microsoft Word

Полета в Microsoft Word Документите са сложни. Има над 50 типа полета (всеки се нуждае от собствена процедура за изчисляване на резултата), формули и изрази, отметки и препратки, функции и различни превключватели. Полетата също могат да бъдат гнездени. Обикновено при отваряне на документ резултатът от полето (стойността на полето) се показва за всички полета в документа. Можете да включите дисплея на резултата от полето или кода на полето в Microsoft Word за всички полета чрез натискане **ALT+F9**.

| Код на полето | Резултат от полето |
|  :-  |  :-  |
| ![field-code-result-aspose-words](/words/python-net/fields-overview/fields-overview-3.png) | ![todo:image_alt_text](/words/python-net/fields-overview/fields-overview-4.png) |

### Вмъкване на полета в Microsoft Word

Вмъкване на поле в Microsoft Word:

1. Кликнете върху **Insert** меню.
1. Кликнете върху **Quick Parts** падащо меню
1. Избор **Field**
1. Представя ви се екран, който ви позволява да въведете детайлите на полето. От лявата страна ви е даден списък на възможните полета и от дясната страна е екран за визуално редактиране на свойствата на полето.<br/>
![field-edit-aspose-words](/words/python-net/fields-overview/fields-overview-5.png)
1. Освен това можете да натиснете **Field Codes** бутон, който ви позволява директно да напишете кода на полето.<br/>
![field-properties-aspose-words](/words/python-net/fields-overview/fields-overview-6.png)
1. Превключвателите също могат да се вкарват с помощта на **Options** бутон<br/>
![field-options-aspose-words](/words/python-net/fields-overview/fields-overview-7.png)
1. Използване на който и да е метод, попълнете желаните полета с подходяща информация, след което натиснете **Ok**.
1. Полето се вмъква в документа на текущата позиция на курсора.<br/>
![insert-field-aspose-words](/words/python-net/fields-overview/fields-overview-8.png)

### Обновяване полета в Microsoft Word

Обновяване на едно поле в Microsoft Word:

1. Преместете уреда в полето, което искате да актуализирате.
1. Преса **F9** да обновим полето.

Обновяване на всички полета в Microsoft Word:

1. Преса **Ctrl+A** да изберете цялото съдържание в документа.
1. Преса **F9** да актуализира всички полета, намерени в рамките на селекцията.

### Превключване между дисплея на кода на полето и резултата от полето

Превключване на кода на полето на едно поле в Microsoft Word:

1. Преместете уреда в желаното поле.
1. Преса **SHIFT+F9** да превключи кода само за това поле.

Превключване на кода на полето на всички полета в Microsoft Word:

1. Преса **ALT+F9**

### Преобразуване на полета към статичен текст в Microsoft Word

За да конвертирате динамично поле към статично текст в Microsoft Word:

1. Преместете уреда в полето, което искате да конвертирате.
1. Преса **Ctrl+Shift+F9** за преобразуване на полетата в статичен текст.

### Премахване на поле в Microsoft Word

Премахване на поле в Microsoft Word:

1. Изберете цялото съдържание, което съставя полето. Ако се показват кодове на полета, тогава трябва да се изберат и отворите и крайните скоби.
1. Преса **Delete** за премахване на цялото поле.

## Полета в Aspose.Words

Когато е зареден документ Aspose.Words полетата на документа са заредени в Aspose.Words Document Object Model като набор от отделни компоненти (води). Едно поле се зарежда като колекция от [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/), [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) както и [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) Възлите заедно със съдържанието между тези възли. Ако дадено поле няма резултат, тогава ще има не [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) Възел. Всички тези възли винаги се намират в линия (като деца на [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) или [SmartTag](https://reference.aspose.com/words/python-net/aspose.words.markup/smarttag/).

Съдържанието на кода на полето се съхранява като [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) Възел между [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) както и [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/). Резултатът от полето се съхранява между [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) както и [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) възли и може да бъде съставена от различни видове съдържание. Обикновено резултатът от полето съдържа текст, съставен от [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) възли, обаче е възможно за [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/) възелът се намира в напълно различен параграф и по този начин резултатът от полето се състои от възли на ниво блок, като [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/) както и [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/) Възлите също.

В Aspose.Words всяка от **FieldXXX** възлите произлизат от [FieldChar](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/). Този клас осигурява свойство за проверка на вида на полето, представлявано от посочения възел през [FieldChar.field_type](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/field_type/) собственост. Например [FieldType.FIELD_MERGE_FIELD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/#field_merge_field) представлява поле за сливане в документа.

{{% alert color="primary" %}}

Има определени полета, които съществуват в документ на Word, които не се внасят в Aspose.Words като колекция от **FieldXXX** Възли. Например, `LINK` поле и `INCLUDEPICTURE` полето се внася в Aspose.Words като [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) Възразявам. Този обект осигурява свойства за работа с данните от изображенията, които обикновено се съхраняват в тези полета.

В полетата на формулярите също се внасят Aspose.Words като свой собствен специален клас. На [FormField](https://reference.aspose.com/words/python-net/aspose.words.fields/formfield/) класът представлява полето на формата в Word документ и осигурява допълнителни методи, които са специфични за полето на формата.

{{% /alert %}}

### Полета, поддържани по време на обновяване

Изчисляването на следните полета се поддържа в текущата версия на Aspose.Words:

- = (формула поле)
- `ADDRESSBLOCK`
- `AUTHOR`
- `COMPARE`
- `CREATEDATE`
- `DATE`
- `DOCPROPERTY`
- `DOCVARIABLE`
- `GREETINGLINE`
- `IF`
- `INCLUDETEXT`
- `MERGEFIELD`
- `MERGEREC`
- `MERGESEQ`
- `NEXT`
- `NEXTIF`
- `NUMPAGES`
- `PAGE`
- `PAGEREF`
- `REF`
- `SECTION`
- `SECTIONPAGES`
- `SEQ`
- `SET`
- `STYLEREF`
- `TIME`
- `TITLE`
- `TOA`
- `TOC` (включително TOT и TOF)
- TC

### Изтънчен парсинг

Aspose.Words следва пътя Microsoft Word обработва полета и в резултат на това работи правилно:

- Гнездо поле
  `: IF { =OR({ COMPARE { =2.5 +PRODUCT(3,5 ,8.4) } > 4}, { =2/2 }) } = 1 "Credit not acceptable" "Credit acceptable"`
- Спорът може да е резултат от гнездо.
- Полета могат да бъдат гнездящи в полевия код, както и в резултат на полето.
- Пространства/не пространства, кавички/не кавички, герои за бягство в полета и т.н.:
  `MERGEFIELD \f"Text after""Field \n\ame with \" and \\\ and \\\*"\bTextBefor\e`
- Полета, които обхващат няколко параграфа.

#### Формула полета

Aspose.Words осигурява много сериозно прилагане на формулата двигател и поддържа следното:

- Аритметични и логически оператори:
  `=(54+4*(6-77)-(5))+(-6-5)/4/5`
- Функции:
  `=ABS(-01.4)+2.645/(5.6^3.5)+776457 \\\# "#,##0"`
- Референции към отметки:
  `=IF(C>4, 5,ABS(A)*.76) +3.85`
- Брой на форматиращите превключватели:
  `=00000000 \\\# "$#,##0.00;($#,##0.00)"`

Поддържат се следните функции в изразите: `ABS`, `AND`, `AVERAGE`, `COUNT`, `DEFINED`, `FALSE`, `IF`, `INT`, `MAX`, `MIN`, `MOD`, `NOT`, `OR`, `PRODUCT`, `ROUND`, `SIGN`, `SUM`, TRUE.

#### `IF` както и `COMPARE` Полета

Само някои от `IF` изрази, че Aspose.Words лесно може да се изчисли трябва да ви даде представа за това колко мощна е тази функция:

- `IF 3 > 5.7^4+MAX(4,3) True False`
- `IF "abcd" > "abc" True False`
- `IF "?ab*" = "1abdsg" True False`
- `IF 4 = "2*2" True False`
- `COMPARE 3+5/34 < 4.6/3/2`

#### `DATE` както и `TIME` Полета

Aspose.Words поддържа всички дата и час форматиращи превключватели на разположение в Microsoft Word, някои примери са:

- `DATE @ "d-MMM-yy"`
- `DATE @ "d/MM/yyyy h:mm am/pm`

#### Mail Merge Полета

Aspose.Words не налага ограничение на сложността на Mail Merge полета във вашите документи и поддържа гнездене `IF` и формули полета и дори може да се изчисли име сливане на полето с помощта на формула.

Някои примери за Mail Merge полета, които Aspose.Words поддържа:

- Mail merge превключватели на полета:
  `MERGEFIELD FirstName \\\\\\\\* FirstCap \b "Mr. "`
- Сливащи се полета във формула:
  `IF { `MERGEFID` Value1 } >= { `MERGEFID` Value2 } True False`
- Изчислете името на сливане поле по време на изпълнение:
  `MERGEFIELD { `Ако` { `MERGEFID` Value1 } >= { `MERGEFID` Value2 } FirstName"LastName" }`
- Условен ход към следващия запис в източника на данни:
  `NEXTIF { `MERGEFID` Value1 } <= { =IF(-2.45 >= 6*{ `MERGEFID` Value2 }, 2, -.45) }`

#### Превключване на формат

Поле в документ може да има форматиращи превключватели, които определят как следва да бъде форматирана получената стойност. Aspose.Words поддържа следните превключватели във формат:

- @ - дата и час форматиране
- \\# - форматиране на номера
-\\\\\\\\\* Шапки
-\\\\\\\\* FirstCap
-\\\\\\\\\* По-ниско
-\\\\\\\\\* Горен
- \\\\\\\* CHARMFAT по формат според първия символ на кода на полето.
-\\\\\\\* MERGEFORMAT годежен резултат според начина, по който старият резултат е форматиран.

#### Date и форматиране на номера в полета

Кога Aspose.Words изчислява резултат от поле, тя често трябва да се съпостави низ в число или стойност дата, а също и да го форматира обратно към низ. По подразбиране Aspose.Words използва текущата култура на резбата за извършване на парсинг и форматиране при изчисляване на стойностите на полето по време на актуализацията на полето и mail merge. Има и опции под формата на [FieldOptions](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/) клас, който позволява по-нататъшен контрол върху коя култура се използва по време на актуализацията на полето.

- По подразбиране [FieldOptions.field_update_culture_source](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldoptions/field_update_culture_source/) Имотът е зададен [FieldUpdateCultureSource.CURRENT_THREAD](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#current_thread) които форматират полетата, използвайки текущата нишка култура.
- Този имот може да бъде настроен на [FieldUpdateCultureSource.FIELD_CODE](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldupdateculturesource/#field_code) Така че езикът, определен от кода на полето, се използва за форматиране вместо.

#### Форматиране с помощта на текущата култура

За да се контролира културата, използвана при изчисляване на полето, просто използвайте **locale.setloale** метод за определяне на културата по ваш избор, преди да се призове поле изчисление.
По-долу пример показва как да се промени културата, използвана във форматиращите полета по време на актуализацията.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeLocale.py" >}}

Използването на текущата култура за форматиране на полета позволява на системата лесно и последователно да контролира как се форматират всички полета в документа по време на актуализацията на полето.

#### Форматиране на използването на културата в документа

От друга страна, Microsoft Word форматира всяко отделно поле, базирано на езика на текста, който се намира в полето (специфично, работи от кода на полето). Понякога по време на обновяване на полето това може да бъде желаното поведение, например ако имате глобализирани документи, съдържащи съдържание, съставено от много различни езици и биха искали всяка област да почита локала, използван от текста. Aspose.Words Също така поддържа тази функционалност.

На [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) Класът осигурява [field_options](https://reference.aspose.com/words/python-net/aspose.words/document/field_options/) собственост, която съдържа членове, които могат да бъдат използвани за контрол как полетата се актуализират в документа. По-долу пример показва как да се посочи къде културата, използвана за форматиране на дата по време на актуализация на полето и Mail Merge е избран от.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ChangeFieldUpdateCultureSource.py" >}}

## Намиране на кода и резултата от полетата

Поле, което се вмъква, като се използва [DocumentBuilder.insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) a [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/) Възразявам. Това е фасаден клас, който осигурява полезни методи за бързо намиране на такива свойства на полето. Забележка, ако търсите само имената на сливащи се полета в документа, тогава можете да използвате вградения метод [MailMerge.get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/). По-долу пример показва как да получите имената на всички сливащи се полета в документ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}

## Как да преименуваме сливащи се полета

По-долу примерът показва как да се преименуват полетата за сливане в Word документ.

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-RenameMergeFields.py" >}}
