---
title: Применение пользовательского форматирования к полям в C++
second_title: Aspose.Words для C++
articleTitle: Применение пользовательского форматирования к полям
linktitle: Применение пользовательского форматирования к полям
description: "Форматируйте и оценивайте результат работы полей с помощью C++."
type: docs
weight: 40
url: /ru/cpp/applying-custom-formatting-to-fields/
---

Иногда пользователям требуется применить пользовательское форматирование к полям. В этой статье мы рассмотрим несколько примеров того, как это можно сделать.

Чтобы узнать больше о параметрах, ознакомьтесь с полным списком свойств для каждого типа поля в соответствующем классе в разделе [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Как применить пользовательское форматирование к результату поля

Aspose.Words предоставляет API для пользовательского форматирования результатов работы с полем. Вы можете реализовать интерфейс [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) для управления форматированием результатов работы с полем. Вы можете переключить числовой формат, т.е. \# "#.##", формат даты/времени, т.е. \@ "дд.ММ.гггг", и цифровой формат, т.е. \* порядковый номер.

В следующем примере кода показано, как применить пользовательское форматирование к результату поля:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## Как оценить состояние `IF`

Если вы хотите вычислить условие `IF` после mail merge, вы можете использовать метод [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/), который немедленно возвращает результат вычисления выражения.

В следующем примере кода показано, как использовать этот метод:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Как применить пользовательское форматирование к полю времени

По умолчанию Aspose.Words обновляет поле `TIME` в соответствии с текущим региональным форматом. Если вы хотите отформатировать поле `TIME` в соответствии с вашими требованиями, вы можете добиться этого, внедрив интерфейс [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

В следующих примерах кода показано, как применить пользовательское форматирование к полю `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}