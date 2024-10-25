---
title: Remover Campos C++
second_title: Aspose.Words para C++
articleTitle: Remover Campos
linktitle: Remover Campos
description: "Saiba como remover campos Em C++. Remova campos programaticamente usando C++ API."
type: docs
weight: 35
url: /pt/cpp/remove-fields/
---

Às vezes, é necessário remover um campo de um documento. Isso pode ocorrer quando ele precisa ser substituído por um tipo de campo diferente ou quando o campo não é mais necessário no documento. Por exemplo, o campo `TOC` ao salvar em HTML.

Para remover um campo inserido num documento utilizando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/class/aspose.words/documentbuilder/insertfield/), use o objeto [Field](https://reference.aspose.com/words/cpp/class/aspose.words.fields/field/) retornado, que fornece um método [Remove](https://reference.aspose.com/words/cpp/aspose.words.fields/field/remove/) conveniente para remover facilmente o campo do documento.

O exemplo de código a seguir mostra como remover um campo do documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RemoveField-RemoveField.cpp" >}}
