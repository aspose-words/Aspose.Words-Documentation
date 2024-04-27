---
title: Обновяване на полетата в Java
second_title: Aspose.Words вместо Java
articleTitle: Обновяване на полетата
linktitle: Обновяване на полетата
description: "Научете как да актуализирате полетата в Java. Обновяване на полета programmatically или използване на автоматична актуализация на полето, като се използва Java API"
type: docs
weight: 30
url: /bg/java/update-field/
---

Обикновено полето се вмъква в Microsoft Word вече съдържа актуална стойност. Например, ако полето е формула или номер на страница, то ще съдържа правилната изчислена стойност за дадената версия на документа. Но ако имате приложение, което генерира или променя документ с полета като сливане на два документа или населяване с данни, тогава в идеалния случай всички полета трябва да бъдат актуализирани, за да бъде полезен документът.

## Как да актуализираме полетата

Когато документът е зареден, Aspose.Words имитира поведението на Microsoft Word с опцията за автоматично обновяване на полетата е изключена. Поведението може да бъде обобщено по следния начин:

- когато отворите/ запишете документ, полетата остават непокътнати
- можете изрично да актуализирате всички полета в документ, например, да възстановите `TOC` когато е необходимо
- когато отпечатвате/ предавате на PDF или XPS полетата, свързани с номерирането на страници в заглавни части/крачки, се актуализират
- когато изпълниш mail merge всички полета се актуализират автоматично

### Обновяване на полетата

За изрично актуализиране на полетата в целия документ, просто наричате [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) метод. За да актуализирате полетата, съдържащи се в част от документа, получавате [Range](https://reference.aspose.com/words/java/com.aspose.words/range/) Възразявам. [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/range/#updateFields) метод. В Aspose.Words, може да получите **Range** за всеки възел в дървото документ, като [Section](https://reference.aspose.com/words/java/com.aspose.words/section/), [HeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/headerfooter/), [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), и т. н. [GetRange](https://reference.aspose.com/words/java/com.aspose.words/node/#getRange) собственост. Можете да актуализирате резултата от едно поле като се обадите на [Update](https://reference.aspose.com/words/java/com.aspose.words/field/#update) метод.

### Автоматично обновяване на полета, свързани с страница по време на предаването

Когато извършвате преобразуване на документ във формат с фиксирана страница, например в PDF или XPS, Тогава... Aspose.Words автоматично обновяване на полета, свързани с оформлението на страницата `PAGE`, `PAGEREF` намерен в заглавните части на документа. Това поведение имитира поведението на Microsoft Word при отпечатване на документ.

Ако искате да актуализирате всички други полета в документа, тогава трябва да се обадите [UpdateFields](https://reference.aspose.com/words/java/com.aspose.words/document/#updateFields) преди да представи документа.

Следният пример показва как да актуализирате всички полета преди да представите документ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateFields-UpdateFields.java" >}}

### Автоматично обновяване на полето по време на Mail Merge

Когато изпълните <span notrans="<span notrans=" mail merge"=""></span>,"> всички полета в документа ще бъдат автоматично актуализирани. Това е защото mail merge е случай на актуализация на полето. Програмата среща mail merge поле и трябва да актуализира резултата си, което включва вземане на стойността от източника на данни и въвеждане му в полето. Логиката, разбира се, е по-сложна, например, когато краят на документа/mail merge регионът е достигнат, но все още има допълнителни данни, които трябва да се слеят, след това регионът трябва да бъде дублиран и новият набор от полета да бъде актуализиран.

## Обновяване на полета с мръсно Atribute

W: Мръсен е атрибут на ниво поле, което ще освежи само полето, което посочвате, когато документът е отворен. Тя казва на MS Word само да освежи това поле следващия път, когато документът е отворен. Можете да използвате LoadOptions.setUpdateDirtyFields() имот, за да уточните дали да актуализирате полетата с мръсен атрибут. Когато е зададена стойността на LoadOptions.setUpdateDirtyFields() <span notrans="<span notrans=" *true*"=""></span>,"> всички полета с *true* стойност за `Field.IsDirty` или `FieldChar.IsDirty` Имотът се актуализира при натоварване на документи

Следният пример за код показва как да актуализирате полета с мръсен атрибут:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-LoadOptionsUpdateDirtyFields-LoadOptionsUpdateDirtyFields.java" >}}

## Update LastSavedTime Property before saving

Можеш да използваш [UpdateLastSavedTimeProperty](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getUpdateLastSavedTimeProperty) собственост дали да се актуализира съответната вградена собственост на документ [LastSavedTime](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties/#getLastSavedTime) при запазване на документа.

Следният пример за код показва как да актуализирате това свойство:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UpdateLastSavedTimeProperty-UpdateLastSavedTimeProperty.java" >}}
