---
title: Comment trouver les propriétés du champ
second_title: Aspose.Words pour Java
articleTitle: Rechercher les propriétés du champ
linktitle: Rechercher les propriétés du champ
description: "Comment trouver certaines propriétés de champ comme le code de champ et le résultat de champ dans Java"
type: docs
weight: 25
url: /fr/java/find-field-properties/
---

Un champ inséré en utilisant [DocumentBuilder](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/).[InsertField](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertField-int-boolean) renvoie a [Field](https://reference.aspose.com/words/java/com.aspose.words/field/) objet. C'est une classe de façade qui fournit des méthodes utiles pour trouver rapidement de telles propriétés d'un champ.

L'exemple de code suivant montre comment trouver le code de champ et le résultat du champ:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldCode.java" >}}

Notez que si vous cherchez seulement les noms des champs de fusion dans le document, vous pouvez utiliser la méthode intégrée [GetFieldNames](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNames).

L'exemple de code suivant montre comment obtenir les noms de tous les champs de fusion dans un document.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-GetFieldNames-GetFieldNames.java" >}}
