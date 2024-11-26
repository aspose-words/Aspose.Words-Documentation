---
title: Comment trouver les Propriétés des Champs
second_title: Aspose.Words pour Java
articleTitle: Rechercher des Propriétés de Champ
linktitle: Rechercher des Propriétés de Champ
description: "Comment trouver certaines propriétés de champ comme le code de champ et le résultat de champ dans Java"
type: docs
weight: 25
url: /fr/java/find-field-properties/
timestamp: 2024-01-27-14-07-04
---

Un champ qui est inséré à l'aide de [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) renvoie un objet [Field](https://reference.aspose.com/words/java/com.aspose.words/field/). Il s'agit d'une classe de façade qui fournit des méthodes utiles pour trouver rapidement de telles propriétés d'un champ.

L'exemple de code suivant montre comment trouver le code de champ et le résultat du champ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

Remarque si vous recherchez uniquement les noms des champs de fusion dans le document, vous pouvez utiliser à la place la méthode intégrée [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames).

L'exemple de code suivant montre comment obtenir les noms de tous les champs de fusion dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}
