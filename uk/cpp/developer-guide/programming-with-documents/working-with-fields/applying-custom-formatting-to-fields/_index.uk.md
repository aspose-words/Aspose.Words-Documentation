---
title: Застосувати спеціальне форматування до полів у C++
second_title: Aspose.Words для C++
articleTitle: Застосування користувацького форматування до полів
linktitle: Застосування користувацького форматування до полів
description: "Відформатуйте та оцініть результат роботи полів, використовуючи C++."
type: docs
weight: 40
url: /uk/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Іноді користувачам потрібно застосувати спеціальне форматування до полів. У цій статті ми розглянемо кілька прикладів того, як це можна зробити.

Щоб дізнатися більше про параметри, перегляньте повний список властивостей для кожного типу поля у відповідному класі в розділі [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Як застосувати спеціальне форматування до результату поля

Aspose.Words надає API можливість користувацького форматування результатів роботи з полем. Ви можете реалізувати інтерфейс [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) для управління форматуванням результатів роботи з полем. Ви можете застосувати перемикач числового формату, тобто \# "#.##", перемикач формату дати/часу, тобто \@ "dd.MM.yyyy", і перемикач числового формату, тобто \* Ordinal.

Наступний приклад коду показує, як застосувати спеціальне форматування до результату поля:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## Як оцінити стан `IF`

Якщо ви хочете обчислити умову `IF` після mail merge, ви можете скористатися методом [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/), який негайно повертає результат обчислення виразу.

Наступний приклад коду показує, як використовувати цей метод:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Як застосувати спеціальне форматування до поля часу

За замовчуванням Aspose.Words оновлює поле `TIME` відповідно до поточного регіонального формату. Якщо ви хочете відформатувати поле `TIME` відповідно до ваших вимог, ви можете досягти цього, впровадивши інтерфейс [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

Наступні приклади коду показують, як застосувати спеціальне форматування до поля `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
