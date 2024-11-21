---
title: Supprimer les champs C++
second_title: Aspose.Words pour C++
articleTitle: Supprimer des Champs
linktitle: Supprimer des Champs
description: "Apprenez à supprimer des champs en C++. Supprimez les champs par programmation à l'aide de l'API C++."
type: docs
weight: 35
url: /fr/cpp/remove-fields/
timestamp: 2024-01-27-14-07-04
---

Parfois, il est nécessaire de supprimer un champ d'un document. Cela peut se produire lorsqu'il doit être remplacé par un type de champ différent ou lorsque le champ n'est plus nécessaire dans le document. Par exemple le champ `TOC` lors de l'enregistrement au format HTML.

Pour supprimer un champ inséré dans un document à l'aide de [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/class/aspose.words/documentbuilder/insertfield/), utilisez l'objet [Field](https://reference.aspose.com/words/cpp/class/aspose.words.fields/field/) renvoyé, qui fournit une méthode [Remove](https://reference.aspose.com/words/cpp/aspose.words.fields/field/remove/) pratique pour supprimer facilement le champ du document.

L'exemple de code suivant montre comment supprimer un champ du document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-RemoveField-RemoveField.cpp" >}}
