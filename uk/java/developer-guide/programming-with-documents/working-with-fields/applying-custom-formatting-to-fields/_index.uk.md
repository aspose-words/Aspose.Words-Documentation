---
title: Застосувати спеціальні форматування на поля
second_title: Aspose.Words для Java
articleTitle: Застосувати спеціальні форматування на поля
linktitle: Застосувати спеціальні форматування на поля
description: "Формат і оцінка результатів полів Javaй"
type: docs
weight: 40
url: /uk/java/applying-custom-formatting-to-fields/
---

Іноді користувачі повинні застосувати користувацькі форматування на поля. У цій статті ми розглянемо кілька прикладів того, як це можна зробити.

Щоб дізнатися більше варіантів, див. повний перелік властивостей для кожного типу поля в відповідному класі.

## Як застосувати індивідуальне форматування до поля Результат

Aspose.Words Послуги API для індивідуального форматування результату поля. Ви можете реалізувати [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) інтерфейс для керування як форматовано поле. Ви можете застосувати перемикач нумерного формату, тобто \# "#.#", перемикач формату дати / часу, тобто \@ "dd.MM.yyyyy", і перемикач форматів номеру, тобто \* Ординал.

Приклад коду показує, як застосувати користувацький форматування для результату поля.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Як оцінити `IF` стан

Якщо ви хочете оцінити `IF` стан після mail merge, Ви можете використовувати [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) метод, який відразу повертає результат визначення виразу.

Приклад коду показує, як використовувати цей метод:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Як застосувати індивідуальне форматування в поле часу

За замовчуванням Aspose.Words Новини `TIME` поле з форматом поточної культури. Якщо ви хочете форматувати `TIME` поле відповідно до вимог, ви можете досягти цього шляхом реалізації [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) інтерфейс.

Приклади коду показує, як застосувати користувацький форматування до `TIME` поле:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
