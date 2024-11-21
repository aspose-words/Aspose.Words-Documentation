---
title: Применяйте пользовательское форматирование к полям
second_title: Aspose.Words для Java
articleTitle: Применяйте пользовательское форматирование к полям
linktitle: Применяйте пользовательское форматирование к полям
description: "Формат и оценка результатов полей с использованием Java."
type: docs
weight: 40
url: /ru/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Иногда пользователям приходится применять настраиваемое форматирование полей. В этой статье мы рассмотрим несколько примеров того, как это можно сделать.

Чтобы узнать больше вариантов, посмотрите полный список свойств для каждого типа поля в соответствующем классе.

## Как применить индивидуальное форматирование к результату поля

Aspose.Words обеспечивает API для пользовательского форматирования результата поля. Вы можете реализовать [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) интерфейс для управления форматированием результата поля. Вы можете применить численный переключатель формата, т.е. \# "#.##", переключатель формата даты/времени, т.е. \@ "dd.MM.yyyyy", и переключатель формата номера, т.е. \* Ordinal.

Следующий пример кода показывает, как применять пользовательское форматирование для результата поля.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Как оценить `IF` состояние

Если вы хотите оценить `IF` состояние после mail merge, Вы можете использовать [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) метод, который немедленно возвращает результат оценки выражения.

Следующий пример кода показывает, как использовать этот метод:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Как применить индивидуальное форматирование в поле времени

По умолчанию Aspose.Words обновления `TIME` поле с текущей культурой короткого временного формата. Если вы хотите отформатировать `TIME` Поле в соответствии с вашим требованием, вы можете достичь этого, реализуя [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) интерфейс.

Следующие примеры кода показывают, как применять пользовательское форматирование к `TIME` поле:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
