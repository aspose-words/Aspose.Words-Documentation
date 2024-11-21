---
title: Обновяване на полетата C#
second_title: Aspose.Words вместо .NET
articleTitle: Обновяване на полетата
linktitle: Обновяване на полетата
description: "Научете как да актуализирате полетата в C#. Обновяване на полета programmatically или използване на автоматична актуализация на полето, като се използва .NET API."
type: docs
weight: 30
url: /bg/net/update-fields/
timestamp: 2024-01-27-14-07-04
---

Обикновено, полето се вмъква в Microsoft Word вече съдържа актуална стойност. Например, ако полето е формула или номер на страница, то ще съдържа правилната изчислена стойност за дадената версия на документа. Но ако имате приложение, което генерира или променя документ с полета като сливане на два документа или популиране с данни, тогава в идеалния случай всички полета трябва да бъдат актуализирани, за да бъде полезен документът.

## Как да актуализираме полетата

Когато документът е зареден, Aspose.Words имитира поведението на Microsoft Word с опцията за автоматично обновяване на полетата е изключена. Поведението може да бъде обобщено по следния начин:

- когато отворите/ запишете документ, полетата остават непокътнати
- можете изрично да актуализирате всички полета в документ, например, възстановяване `TOC`, когато трябва
- когато отпечатвате/ отпечатвате на PDF или XPS полетата, свързани с номерирането на страници в заглавни части/крачки, се актуализират
- когато изпълняваш mail merge всички полета се актуализират автоматично

### Обновяване на полетата

За изрично актуализиране на полетата в целия документ, просто наричате [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) метод. За да актуализирате полетата, съдържащи се в част от документ, получавате [Range](https://reference.aspose.com/words/net/aspose.words/range/) обект и се обадете на [UpdateFields](https://reference.aspose.com/words/net/aspose.words/range/updatefields/) метод. В Aspose.Words, може да получите **Range** за всеки възел в дървото на документа, като [Section](https://reference.aspose.com/words/net/aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/net/aspose.words/headerfooter/) , [Paragraph](https://reference.aspose.com/words/net/aspose.words/paragraph/), и т. н. [Node.Range](https://reference.aspose.com/words/net/aspose.words/node/range/) собственост. Можете да актуализирате резултата от едно поле като се обадите на [Update](https://reference.aspose.com/words/net/aspose.words.fields/field/update/) метод.

### Автоматично обновяване на свързаните с страницата полета по време на предаването

Когато извършвате преобразуване на документ във формат с фиксирана страница, например на PDF или XPS, Тогава... Aspose.Words автоматично обновяване на полета, свързани с оформлението на страницата `PAGE`, `PAGEREF` намерен в заглавните части на документа. Това поведение имитира поведението на Microsoft Word при отпечатване на документ.

Ако искате да актуализирате всички други полета в документа, тогава трябва да се обадите [UpdateFields](https://reference.aspose.com/words/net/aspose.words/document/updatefields/) преди да представи документа.

Следният пример за код показва как да актуализирате всички полета преди да представите документ:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-UpdateDocFields-UpdateDocFields.cs" >}}

{{% alert color="primary" %}}

Можете да изтеглите примерния файл от [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

### Автоматично обновяване на полето по време на Mail Merge

Когато изпълните <span notrans="<span notrans=" mail merge"=""></span>,"> всички полета в документа ще бъдат автоматично актуализирани. Това е защото mail merge е случай на актуализация на полето. Програмата среща mail merge поле и трябва да актуализира своя резултат, което включва вземане на стойността от източника на данни и въвеждане му в полето. Логиката, разбира се, е по-сложна, например, когато краят на документа/mail merge регионът е достигнат, но все още има други данни, които трябва да се слеят, след това регионът трябва да бъде дублиран и новият набор от полета да бъде актуализиран.

## Обновяване на полетата с мръсен принос

W: Мръсен е атрибут на ниво поле, което ще освежи само полето, което посочвате, когато документът е отворен. Тя казва на MS Word само да освежи това поле следващия път, когато документът е отворен. Можете да използвате [UpdateDirtyFields](https://reference.aspose.com/words/net/aspose.words.loading/loadoptions/updatedirtyfields/) собственост, за да се уточни дали да се актуализират полетата с мръсен атрибут. Когато стойността на **UpdateDirtyFields** е зададено <span notrans="<span notrans=" *true*"=""></span>,"> всички полета с *true* стойност за [Field.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/field/isdirty/) или [FieldChar.IsDirty](https://reference.aspose.com/words/net/aspose.words.fields/fieldchar/isdirty/) Имотът се актуализира при натоварване на документи.

Следният пример за код показва как да актуализирате полета с мръсен атрибут:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Loading-and-Saving-Load_Options-LoadOptionsUpdateDirtyFields.cs" >}}

## Update LastSavedTime Имоти преди запазване

Можеш да използваш [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/net/aspose.words.saving/saveoptions/updatelastsavedtimeproperty/) собственост дали да се актуализира съответната вградена собственост на документ [LastSavedTime](https://reference.aspose.com/words/net/aspose.words.properties/builtindocumentproperties/lastsavedtime/) при запазване на документа.

Следният пример за код показва как да актуализирате това свойство:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Document-WorkingWithSaveOptions-UpdateLastSavedTimeProperty.cs" >}}
