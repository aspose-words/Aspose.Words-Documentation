---
title: Прилагане на форматиране в полета
second_title: Aspose.Words вместо Java
articleTitle: Прилагане на форматиране в полета
linktitle: Прилагане на форматиране в полета
description: "Форматиране и оценка на резултата от полетата Java."
type: docs
weight: 40
url: /bg/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Понякога потребителите трябва да прилагат потребителски форматиране на полета. В тази статия ще разгледаме няколко примера как може да се направи това.

За да научите повече опции, вижте пълния списък на свойствата за всеки тип поле в съответния клас.

## Как да приложите Потребителско форматиране към резултата от полето

Aspose.Words осигурява API за персонализиране на резултата от полето. Можете да приложите [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) интерфейс за контрол как се форматира резултатът от полето. Можете да приложите цифров форматен превключвател, т.е. \# "##," дата/час формат, т.е. \@ "dd.MM.гггг," и превключвател номер формат, т.е. \* Ordinal.

Следният пример за код показва как да се прилага персонализирано форматиране за резултата от полето.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Как да оцените `IF` състояние

Ако искате да оцените `IF` състояние след mail merge, Можете да използвате [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) метод, който незабавно връща резултата от оценката на израза.

Следният пример за код показва как да използвате този метод:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Как да приложите Потребителско форматиране към времето

По подразбиране Aspose.Words актуализации `TIME` поле с текущия формат за кратко време на културата. Ако искате да форматирате `TIME` поле според вашето изискване, можете да постигнете това чрез прилагане [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) интерфейс.

Следните примери за код показват как да се прилага потребителски форматиране към `TIME` поле:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
