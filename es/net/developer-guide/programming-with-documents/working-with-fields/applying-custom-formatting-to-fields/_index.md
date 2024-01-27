---
title: Aplicar formato personalizado a campos en C#
second_title: Aspose.Words para .NET
articleTitle: Aplicar formato personalizado a los campos
linktitle: Aplicar formato personalizado a los campos
description: "Formatee y evalúe el resultado de los campos usando C#."
type: docs
weight: 40
url: /es/net/applying-custom-formatting-to-fields/
---

A veces los usuarios necesitan aplicar formato personalizado a los campos. En este artículo, veremos un par de ejemplos de cómo se puede hacer esto.

Para conocer más opciones, consulte la lista completa de propiedades para cada tipo de campo en la clase correspondiente en [Espacio de nombres de campos](https://reference.aspose.com/words/net/aspose.words.fields/).

## Cómo aplicar formato personalizado al resultado del campo

Aspose.Words proporciona API para dar formato personalizado al resultado del campo. Puede implementar una interfaz [IFieldResultFormatter](https://reference.aspose.com/words/net/aspose.words.fields/ifieldresultformatter/) para controlar cómo se formatea el resultado del campo. Puede aplicar el cambio de formato numérico, es decir, \# "#.##", el cambio de formato de fecha/hora, es decir, \@ "dd.MM.yyyy", y el cambio de formato numérico, es decir, \* Ordinal.

El siguiente ejemplo de código muestra cómo aplicar formato personalizado para el resultado del campo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FormatFieldResult-FieldResultFormatter.cs" >}}

## Cómo evaluar la condición `IF`

Si desea evaluar la condición `IF` después de mail merge, puede utilizar el método [EvaluateCondition](https://reference.aspose.com/words/net/aspose.words.fields/fieldif/evaluatecondition/) que devuelve inmediatamente el resultado de la evaluación de la expresión.

El siguiente ejemplo de código muestra cómo utilizar este método:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cs" >}}

## Cómo aplicar formato personalizado al campo de hora

De forma predeterminada, Aspose.Words actualiza el campo `TIME` con el formato de tiempo breve de la cultura actual. Descubrimos que existe una diferencia entre el formato Microsoft Word y el formato .NET/Windows, y también entre diferentes versiones de .NET Framework. Si desea formatear el campo `TIME` según sus requisitos, puede lograrlo implementando la interfaz [IFieldUpdateCultureProvider](https://reference.aspose.com/words/net/aspose.words.fields/ifieldupdatecultureprovider/).

Los siguientes ejemplos de código muestran cómo aplicar formato personalizado al campo `TIME`:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cs" >}}

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldUpdateCultureProvider-FieldUpdateCultureProviderGetCulture.cs" >}}
