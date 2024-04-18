---
title: Применять таможенное форматирование к полям в C#
second_title: Aspose.Words для .NET
articleTitle: Применять пользовательский формат для полей
linktitle: Применять пользовательский формат для полей
description: "Формат и оценка результатов полей с использованием C#."
type: docs
weight: 40
url: /ru/net/applying-custom-formatting-to-fields/
---

Иногда пользователям приходится применять настраиваемое форматирование полей. В этой статье мы рассмотрим несколько примеров того, как это можно сделать.

Чтобы узнать больше вариантов, см. полный список свойств для каждого типа поля в соответствующем классе. [Пространство имён полей](https://reference.aspose.com/words/net/aspose.words.fields/).

## Как применить индивидуальное форматирование к результату поля

Aspose.Words обеспечивает API для пользовательского форматирования результата поля. Вы можете реализовать [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) интерфейс для управления форматированием результата поля. Вы можете применить численный переключатель формата, т.е. \# "#.##", переключатель формата даты/времени, т.е. \@ "dd.MM.yyyyy", и переключатель формата номера, т.е. \* Ordinal.

Следующий пример кода показывает, как применять пользовательское форматирование для результата поля:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Как оценить `IF` состояние

Если вы хотите оценить `IF` состояние после mail merge, Вы можете использовать [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) метод, который немедленно возвращает результат оценки выражения.

Следующий пример кода показывает, как использовать этот метод:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Как применить индивидуальное форматирование в поле времени

По умолчанию Aspose.Words обновления `TIME` поле с текущей культурой короткого временного формата. Мы поняли, что есть разница между Microsoft Word форматирование и .NET/Windows форматирование, а также между различными .NET Framework версии. Если вы хотите отформатировать `TIME` Поле в соответствии с вашим требованием, вы можете достичь этого, реализовав [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/) интерфейс.

Следующие примеры кода показывают, как применять пользовательское форматирование к `TIME` поле:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
