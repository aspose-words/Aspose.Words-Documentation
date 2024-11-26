---
title: Rimuovere i campi C++
second_title: Aspose.Words per C++
articleTitle: Rimuovi campi
linktitle: Rimuovi campi
description: "Scopri come rimuovere i campi in C++. Rimuovere i campi a livello di codice utilizzando l'API C++."
type: docs
weight: 35
url: /it/cpp/remove-fields/
timestamp: 2024-01-27-14-07-04
---

A volte è necessario rimuovere un campo da un documento. Ciò può verificarsi quando è necessario sostituirlo con un tipo di campo diverso o quando il campo non è più necessario nel documento. Ad esempio il campo `TOC` quando si salva in HTML.

Per rimuovere un campo inserito in un documento utilizzando [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/class/aspose.words/documentbuilder/insertfield/), utilizzare l'oggetto [Field](https://reference.aspose.com/words/cpp/class/aspose.words.fields/field/) restituito, che fornisce un metodo [Remove](https://reference.aspose.com/words/cpp/aspose.words.fields/field/remove/) conveniente per rimuovere facilmente il campo dal documento.

L'esempio di codice seguente mostra come rimuovere un campo dal documento:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RemoveField-RemoveField.cpp" >}}
