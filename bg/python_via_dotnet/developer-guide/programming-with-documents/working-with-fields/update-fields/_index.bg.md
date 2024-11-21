---
title: Обновяване на полетата Python
second_title: Aspose.Words вместо Python via .NET
articleTitle: Обновяване на полетата
linktitle: Обновяване на полетата
description: "Обновяване на полета в документ по различни начини и използване на различни опции в Python."
type: docs
weight: 30
url: /bg/python-net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Обикновено, полето се вмъква в Microsoft Word вече съдържа актуална стойност. Например, ако полето е формула или номер на страница, то ще съдържа правилната изчислена стойност за дадената версия на документа. Но ако имате приложение, което генерира или променя документ с полета като сливане на два документа или популиране с данни, тогава в идеалния случай всички полета трябва да бъдат актуализирани, за да бъде полезен документът.

## Как да актуализираме полетата

Когато документът е зареден, Aspose.Words имитира поведението на Microsoft Word с опцията за автоматично обновяване на полетата е изключена. Поведението може да бъде обобщено по следния начин:

- когато отворите/ запишете документ, полетата остават непокътнати
- можете изрично да актуализирате всички полета в документ (напр. възстановяване на
- когато отпечатвате/ отпечатвате на PDF или XPS полетата, свързани с номерирането на страници в заглавни части/крачки, се актуализират
- когато изпълняваш mail merge всички полета се актуализират автоматично

### Обновяване на полетата

За изрично актуализиране на полетата в целия документ, просто се обадете [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/). За да актуализирате полетата, съдържащи се в част от документ, получавате [Range](https://reference.aspose.com/words/python-net/aspose.words/range/) обект и се обадете на [update_fields](https://reference.aspose.com/words/python-net/aspose.words/range/update_fields/) метод. В Aspose.Words, може да получите **Range** за всеки възел в дървото на документа, като [Section](https://reference.aspose.com/words/python-net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), и т. н. [Node.range](https://reference.aspose.com/words/python-net/aspose.words/node/range/) собственост. Можете да актуализирате резултата от едно поле като се обадите на [update](https://reference.aspose.com/words/python-net/aspose.words.fields/field/update/) метод.

### Автоматично обновяване на свързаните с страницата полета по време на предаването

Когато извършвате преобразуване на документ във формат с фиксирана страница, например на PDF или XPS, Тогава... Aspose.Words автоматично обновяване на полета, свързани с оформлението на страницата `PAGE`, `PAGEREF` намерен в заглавните части на документа. Това поведение имитира поведението на Microsoft Word при отпечатване на документ.

Ако искате да актуализирате всички други полета в документа, тогава трябва да се обадите [update_fields](https://reference.aspose.com/words/python-net/aspose.words/document/update_fields/) преди да представи документа.

Следният пример за код показва как да актуализирате всички полета преди да представите документ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-UpdateDocFields.py" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Автоматично обновяване на полето по време на Mail Merge

Когато изпълните <span notrans="<span notrans=" mail merge"=""></span>,"> всички полета в документа ще бъдат автоматично актуализирани. Това е защото mail merge е случай на актуализация на полето. Програмата среща mail merge поле и трябва да актуализира своя резултат, което включва вземане на стойността от източника на данни и въвеждане му в полето. Логиката, разбира се, е по-сложна, например, когато краят на документа/mail merge регионът е достигнат, но все още има други данни, които трябва да се слеят, след това регионът трябва да бъде дублиран и новият набор от полета да бъде актуализиран.

## Обновяване на полетата с мръсен принос

W: Мръсен е атрибут на ниво поле, което ще освежи само полето, което посочвате, когато документът е отворен. Тя казва на MS Word само да освежи това поле следващия път, когато документът е отворен. Можеш да използваш [update_dirty_fields](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/update_dirty_fields/) собственост, за да се уточни дали да се актуализират полетата с мръсен атрибут. Когато стойността на **update_dirty_fields** е зададено <span notrans="<span notrans=" `True`"=""></span>,"> всички полета с `True` стойност за [Field.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/field/is_dirty/) или [FieldChar.is_dirty](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldchar/is_dirty/) Имотът се актуализира при натоварване на документи.

Следният пример за код показва как да актуализирате полета с мръсен атрибут:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Load Options-working_with_load_options-UpdateDirtyFields.py" >}}

## Update LastSavedTime Имоти преди запазване

Можеш да използваш [SaveOptions.update_last_saved_time_property](https://reference.aspose.com/words/python-net/aspose.words.saving/saveoptions/update_last_saved_time_property/) собственост дали да се актуализира съответната вградена собственост на документ [last_saved_time](https://reference.aspose.com/words/python-net/aspose.words.properties/builtindocumentproperties/last_saved_time/) при запазване на документа.

Следният пример за код показва как да актуализирате това свойство:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_ooxml_save_options-UpdateLastSavedTimeProperty.py" >}}

