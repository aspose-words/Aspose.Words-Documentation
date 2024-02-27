---
title: Применить произвольное форматирование к полям в C#
second_title: Aspose.Words для .NET
articleTitle: Применить произвольное форматирование к полям
linktitle: Применить произвольное форматирование к полям
description: "Отформатируйте и оцените результат полей, используя C#."
type: docs
weight: 40
url: /ru/net/applying-custom-formatting-to-fields/
---

Иногда пользователям необходимо применить к полям собственное форматирование. В этой статье мы рассмотрим пару примеров того, как это можно сделать.

Чтобы узнать больше о параметрах, см. полный список свойств для каждого типа поля в соответствующем классе в [Пространство имен полей](https://reference.aspose.com/words/net/aspose.words.fields/).

## Как применить пользовательское форматирование к результату поля

Aspose.Words предоставляет API для пользовательского форматирования результата поля. Вы можете реализовать интерфейс [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) для управления форматированием результата поля. Вы можете применить переключатель числового формата, т.е. \# "#.##", переключение формата даты/времени, т.е. \@ "дд.ММ.гггг", и переключение числового формата, т.е. \* Порядковый номер.

В следующем примере кода показано, как применить пользовательское форматирование к результату поля:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Как оценить состояние `IF`

Если вы хотите оценить условие `IF` после mail merge, вы можете использовать метод [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/), который немедленно возвращает результат оценки выражения.

В следующем примере кода показано, как использовать этот метод:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Как применить пользовательское форматирование к полю времени

По умолчанию Aspose.Words обновляет поле `TIME` текущим кратким форматом культуры. Мы разобрались, что есть разница между форматированием Microsoft Word и форматированием .NET/Windows, а также между разными версиями .NET Framework. Если вы хотите отформатировать поле `TIME` в соответствии с вашими требованиями, вы можете добиться этого, реализовав интерфейс [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/).

В следующих примерах кода показано, как применить пользовательское форматирование к полю `TIME`:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
