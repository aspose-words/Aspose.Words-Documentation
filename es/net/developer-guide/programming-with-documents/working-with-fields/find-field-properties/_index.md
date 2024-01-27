---
title: Cómo encontrar propiedades de campo en C#
second_title: Aspose.Words para .NET
articleTitle: Buscar propiedades de campo
linktitle: Buscar propiedades de campo
description: "Cómo encontrar algunas propiedades de campo como código de campo y resultado de campo en C#."
type: docs
weight: 25
url: /es/net/find-field-properties/
---

Un campo que se inserta utilizando [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertfield/) devuelve un objeto [Field](https://reference.aspose.com/words/net/aspose.words.fields/field/). Esta es una clase de fachada que proporciona métodos útiles para encontrar rápidamente algunas propiedades de un campo.

El siguiente ejemplo de código muestra cómo encontrar el código de campo y el resultado del campo:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldCode.cs" >}}

Tenga en cuenta que si solo busca los nombres de los campos de combinación en un documento, puede utilizar el método [GetFieldNames](https://reference.aspose.com/words/net/aspose.words.mailmerging/mailmerge/getfieldnames/) integrado.

El siguiente ejemplo de código muestra cómo obtener los nombres de todos los campos de combinación en un documento:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cs" >}}