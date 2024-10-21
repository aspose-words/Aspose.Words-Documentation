---
title: Eliminar campos de C++
second_title: Aspose.Words para C++
articleTitle: Eliminar Campos
linktitle: Eliminar Campos
description: "Aprenda a eliminar campos en C++. Elimine campos mediante programación mediante la API de C++."
type: docs
weight: 35
url: /es/cpp/remove-fields/
---

A veces es necesario eliminar un campo de un documento. Esto puede ocurrir cuando es necesario reemplazarlo con un tipo de campo diferente o cuando el campo ya no es necesario en el documento. Por ejemplo, el campo `TOC` al guardar en HTML.

Para eliminar un campo insertado en un documento usando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/class/aspose.words/documentbuilder/insertfield/), use el objeto [Field](https://reference.aspose.com/words/cpp/class/aspose.words.fields/field/) devuelto, que proporciona un método [Remove](https://reference.aspose.com/words/cpp/aspose.words.fields/field/remove/) conveniente para eliminar fácilmente el campo del documento.

El siguiente ejemplo de código muestra cómo eliminar un campo del documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RemoveField-RemoveField.cpp" >}}
