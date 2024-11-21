---
title: Aplicar Formato personalizado a los Campos en C++
second_title: Aspose.Words para C++
articleTitle: Aplicar Formato Personalizado a los Campos
linktitle: Aplicar Formato Personalizado a los Campos
description: "Formatee y evalúe el resultado de los campos usando C++."
type: docs
weight: 40
url: /es/cpp/applying-custom-formatting-to-fields/
timestamp: 2024-01-27-14-07-04
---

A veces, los usuarios necesitan aplicar formato personalizado a los campos. En este artículo, veremos un par de ejemplos de cómo se puede hacer esto.

Para obtener más opciones, consulte la lista completa de propiedades para cada tipo de campo en la clase correspondiente en [Fields namespace](https://reference.aspose.com/words/cpp/namespace/aspose.words.fields).

## Cómo Aplicar Formato Personalizado al Resultado del Campo

Aspose.Words proporciona API para el formato personalizado del resultado del campo. Puede implementar la interfaz [IFieldResultFormatter](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldresultformatter/) para controlar cómo se formatea el resultado del campo. Puede aplicar un cambio de formato numérico, es decir, \#"#.##", cambio de formato de fecha/hora, es decir, \@ "dd.MM.aaaa", y cambio de formato de número, es decir, \* Ordinal.

El siguiente ejemplo de código muestra cómo aplicar un formato personalizado para el resultado del campo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FormatFieldResult-FormatFieldResult.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldResultFormatter-FieldResultFormatter.cpp" >}}

## Cómo evaluar la condición `IF`

Si desea evaluar la condición `IF` después de mail merge, puede usar el método [EvaluateCondition](https://reference.aspose.com/words/cpp/aspose.words.fields/fieldif/evaluatecondition/) que devuelve inmediatamente el resultado de la evaluación de la expresión.

El siguiente ejemplo de código muestra cómo usar este método:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-EvaluateIFCondition-EvaluateIFCondition.cpp" >}}

## Cómo Aplicar Formato Personalizado al Campo de Tiempo

De forma predeterminada, Aspose.Words actualiza el campo `TIME` con el formato de tiempo corto de la cultura actual. Si desea formatear el campo `TIME` de acuerdo con sus requisitos, puede lograrlo implementando la interfaz [IFieldUpdateCultureProvider](https://reference.aspose.com/words/cpp/aspose.words.fields/ifieldupdatecultureprovider).

Los siguientes ejemplos de código muestran cómo aplicar formato personalizado al campo `TIME`:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProvider.cpp" >}}

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldUpdateCulture-FieldUpdateCultureProviderGetCulture.cpp" >}}
