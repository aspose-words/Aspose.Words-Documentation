---
title: Застосувати спеціальні форматування по полях C#
second_title: Aspose.Words для .NET
articleTitle: Застосувати спеціальні форматування на поля
linktitle: Застосувати спеціальні форматування на поля
description: "Формат і оцінка результатів полів C#й"
type: docs
weight: 40
url: /uk/net/applying-custom-formatting-to-fields/
---

Іноді користувачі повинні застосувати користувацькі форматування на поля. У статті ми розглянемо кілька прикладів, як це можна зробити.

Щоб дізнатися більше варіантів, див. повний перелік властивостей для кожного типу поля в відповідному класі [Статус на сервери](https://reference.aspose.com/words/net/aspose.words.fields/)й

## Як застосувати індивідуальне форматування в поле Результат

Aspose.Words Послуги API для індивідуального форматування результату поля. Ви можете реалізувати [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) інтерфейс для керування як форматовано поле. Ви можете застосувати перемикач нумерного формату, тобто \# "#.#", перемикач формату дати / часу, тобто \@ "dd.MM.yyyyy", і перемикач форматів номеру, тобто \* Ординал.

Приклад коду показує, як застосувати користувацький форматування для результату поля:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Як оцінити `IF` стан

Якщо ви хочете оцінити `IF` стан після mail merge, Ви можете використовувати [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) метод, який відразу повертає результат визначення виразу.

Приклад коду показує, як використовувати цей метод:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Як застосувати індивідуальне форматування в поле часу

За замовчуванням Aspose.Words Новини `TIME` поле з форматом поточної культури. Ми з'ясували, що різниця між Microsoft Word форматування та .NETУкраїнськаWindows форматування, а також між різними .NET Framework версія. Якщо ви хочете форматувати `TIME` поле відповідно до вимог, ви можете досягти цього шляхом реалізації [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/) інтерфейс.

Приклади коду показує, як застосувати користувацький форматування до `TIME` поле:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
