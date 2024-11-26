---
title: Comment trouver les Propriétés des Champs
second_title: Aspose.Words pour C++
articleTitle: Rechercher des Propriétés de Champ
linktitle: Rechercher des Propriétés de Champ
description: "Comment trouver des propriétés de champ comme le code de champ et le résultat de champ en C++."
type: docs
weight: 25
url: /fr/cpp/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Un champ inséré à l'aide de [DocumentBuilder](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertfield/) renvoie un objet [Field](https://reference.aspose.com/words/cpp/aspose.words.fields/field/). Il s'agit d'une classe de façade qui fournit des méthodes utiles pour trouver rapidement certaines propriétés d'un champ.

L'exemple de code suivant montre comment trouver le code de champ et le résultat du champ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-FieldsCode.cpp" >}}

Remarque si vous recherchez uniquement les noms des champs de fusion dans un document, vous pouvez utiliser à la place la méthode intégrée [GetFieldNames](https://reference.aspose.com/words/cpp/aspose.words.mailmerging/mailmerge/getfieldnames/).

L'exemple de code suivant montre comment obtenir les noms de tous les champs de fusion dans un document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Fields-GetFieldNames-GetFieldNames.cpp" >}}
