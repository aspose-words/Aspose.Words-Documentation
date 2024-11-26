---
title: Применение пользовательского форматирования к полям
second_title: Aspose.Words для Java
articleTitle: Применение пользовательского форматирования к полям
linktitle: Применение пользовательского форматирования к полям
description: "Отформатируйте и оцените результат работы полей, используя Java."
type: docs
weight: 40
url: /ru/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

Иногда пользователям требуется применить пользовательское форматирование к полям. В этой статье мы рассмотрим несколько примеров того, как это можно сделать.

Чтобы узнать больше о параметрах, ознакомьтесь с полным списком свойств для каждого типа поля в соответствующем классе.

## Как применить пользовательское форматирование к результату поля

Aspose.Words предоставляет API возможность пользовательского форматирования результатов работы с полем. Вы можете реализовать интерфейс [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) для управления форматированием результатов работы с полем. Вы можете применить переключатель числового формата, т.е. \# "#.##", переключатель формата даты/времени, т.е. \@ "dd.MM.yyyy", и переключатель числового формата, т.е. \* Ordinal.

В следующем примере кода показано, как применить пользовательское форматирование к результату поля.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Как оценить состояние `IF`

Если вы хотите вычислить условие `IF` после mail merge, вы можете использовать метод [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition), который немедленно возвращает результат вычисления выражения.

В следующем примере кода показано, как использовать этот метод:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Как применить пользовательское форматирование к полю времени

По умолчанию Aspose.Words обновляет поле `TIME` в соответствии с текущим региональным форматом. Если вы хотите отформатировать поле `TIME` в соответствии с вашими требованиями, вы можете добиться этого, внедрив интерфейс [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/).

В следующих примерах кода показано, как применить пользовательское форматирование к полю `TIME`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
