---
title: Cómo Encontrar Propiedades de Campo
second_title: Aspose.Words para C++
articleTitle: Buscar Propiedades de Campo
linktitle: Buscar Propiedades de Campo
description: "Cómo encontrar algunas propiedades de campo como el código de campo y el resultado de campo en C++."
type: docs
weight: 25
url: /es/cpp/find-field-properties/
---

Un campo que se inserta usando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) devuelve un objeto [Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/). Esta es una clase de fachada que proporciona métodos útiles para encontrar rápidamente algunas propiedades de un campo.

El siguiente ejemplo de código muestra cómo encontrar el código de campo y el resultado del campo:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

Nota: si solo está buscando los nombres de los campos de combinación en un documento, puede utilizar el método [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/) incorporado.

El siguiente ejemplo de código muestra cómo obtener los nombres de todos los campos de combinación en un documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}