---
title: Aplicar formato personalizado a campos
second_title: Aspose.Words para Java
articleTitle: Aplicar formato personalizado a campos
linktitle: Aplicar formato personalizado a campos
description: "Formato y evaluación de resultados de campos utilizando Java."
type: docs
weight: 40
url: /es/java/applying-custom-formatting-to-fields/
---

A veces los usuarios necesitan aplicar formato personalizado a los campos. En este artículo, veremos un par de ejemplos de cómo se puede hacer esto.

Para obtener más opciones, consulte la lista completa de propiedades para cada tipo de campo en la clase correspondiente.

## Cómo aplicar el formato personalizado al resultado del campo

Aspose.Words Prestaciones API para el formato personalizado del resultado del campo. Usted puede implementar [IFieldResultFormatter](https://reference.aspose.com/words/java/com.aspose.words/ifieldresultformatter/) interfaz para controlar cómo se formatea el resultado del campo. Puede aplicar el interruptor de formato numérico, es decir, \# "#.#", el conmutador de formato de fecha/hora, es decir \@ "dd.MM.yyyyy", y el interruptor de formato de número, es decir \* Ordinal.

El siguiente ejemplo de código muestra cómo aplicar formato personalizado para el resultado de campo.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FormatFieldResult-FormatFieldResult.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldResultFormatter-FieldResultFormatter.java" >}}

## Cómo evaluar `IF` condición

Si quieres evaluar `IF` condición después mail merge, puedes usar el [EvaluateCondition](https://reference.aspose.com/words/java/com.aspose.words/fieldif/#evaluateCondition) método que devuelve inmediatamente el resultado de la evaluación de la expresión.

El siguiente ejemplo de código muestra cómo utilizar este método:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-EvaluateIFCondition-EvaluateIFCondition.java" >}}

## Cómo aplicar el formato personalizado al campo de tiempo

Por defecto Aspose.Words actualizaciones `TIME` campo con la cultura actual formato corto tiempo. Si desea formatear el `TIME` campo según su requisito, puede lograrlo implementando [IFieldUpdateCultureProvider](https://reference.aspose.com/words/java/com.aspose.words/ifieldupdatecultureprovider/) Interfaz.

Los siguientes ejemplos de código muestran cómo aplicar formato personalizado al `TIME` campo:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCulture-FieldUpdateCulture.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldUpdateCultureProvider-FieldUpdateCultureProvider.java" >}}
