---
title: Aplicar Formato Personalizado a los Campos
second_title: Aspose.Words por Java
articleTitle: Aplicar Formato Personalizado a los Campos
linktitle: Aplicar Formato Personalizado a los Campos
description: "Formatee y evalúe el resultado de los campos usando Java."
type: docs
weight: 40
url: /es/java/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

A veces, los usuarios necesitan aplicar formato personalizado a los campos. En este artículo, veremos un par de ejemplos de cómo se puede hacer esto.

Para obtener más opciones, consulte la lista completa de propiedades para cada tipo de campo en la clase correspondiente.

## Cómo Aplicar Formato Personalizado al Resultado del Campo

Aspose.Words proporciona API para el formato personalizado del resultado del campo. Puede implementar la interfaz [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) para controlar cómo se formatea el resultado del campo. Puede aplicar un cambio de formato numérico, es decir, \# "#.##", un cambio de formato de fecha/hora, es decir, \@ "dd.MM.yyyy", y un cambio de formato numérico, es decir, \* Ordinal.

El siguiente ejemplo de código muestra cómo aplicar un formato personalizado para el resultado del campo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Cómo evaluar la condición `IF`

Si desea evaluar la condición `IF` después de mail merge, puede usar el método [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) que devuelve inmediatamente el resultado de la evaluación de la expresión.

El siguiente ejemplo de código muestra cómo usar este método:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Cómo Aplicar Formato Personalizado al Campo de Tiempo

De forma predeterminada, Aspose.Words actualiza el campo `TIME` con el formato de tiempo corto de la cultura actual. Si desea formatear el campo `TIME` de acuerdo con sus requisitos, puede lograrlo implementando la interfaz [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/).

Los siguientes ejemplos de código muestran cómo aplicar formato personalizado al campo `TIME`:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
