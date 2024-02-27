---
title: Rechercher des propriétés de champ dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Rechercher les propriétés du champ
linktitle: Rechercher les propriétés du champ
description: "Comment trouver certaines propriétés de champ telles que le code de champ et le résultat du champ dans Python."
type: docs
weight: 25
url: /fr/python-net/find-field-properties/
---

Un champ inséré à l'aide de [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/).[insert_field](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_field/) renvoie un objet [Field](https://reference.aspose.com/words/python-net/aspose.words.fields/field/). Il s'agit d'une classe de façade qui fournit des méthodes utiles pour trouver rapidement certaines propriétés d'un champ.

L'exemple de code suivant montre comment trouver le code de champ et le résultat du champ:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldCode.py" >}}

Notez que si vous recherchez uniquement les noms des champs de fusion dans un document, vous pouvez utiliser la méthode [get_field_names](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names/) intégrée.

L'exemple de code suivant montre comment obtenir les noms de tous les champs de fusion dans un document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-GetFieldNames.py" >}}