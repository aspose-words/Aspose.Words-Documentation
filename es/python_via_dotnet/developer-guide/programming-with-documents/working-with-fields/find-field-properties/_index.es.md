---
title: Buscar propiedades de campo en Python
second_title: Aspose.Words para Python via .NET
articleTitle: Buscar propiedades de campo
linktitle: Buscar propiedades de campo
description: "Cómo encontrar algunas propiedades de campo como código de campo y resultado de campo en Python."
type: docs
weight: 25
url: /es/python-net/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Un campo que se inserta utilizando [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) devuelve un objeto [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Esta es una clase de fachada que proporciona métodos útiles para encontrar rápidamente algunas propiedades de un campo.

El siguiente ejemplo de código muestra cómo encontrar el código de campo y el resultado del campo:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

Tenga en cuenta que si solo busca los nombres de los campos de combinación en un documento, puede utilizar el método [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) integrado.

El siguiente ejemplo de código muestra cómo obtener los nombres de todos los campos de combinación en un documento:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}
