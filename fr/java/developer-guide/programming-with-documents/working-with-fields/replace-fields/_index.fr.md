---
title: Remplacer les champs par du texte Java
second_title: Aspose.Words pour Java
articleTitle: Remplacer les champs par du Texte statique
linktitle: Remplacer les champs par du Texte statique
description: "Découvrez comment remplacer les champs par du texte dans Java. Remplacez les champs par des données statiques à l'aide du Java API."
type: docs
weight: 37
url: /fr/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Le remplacement des champs est souvent nécessaire lorsque vous souhaitez enregistrer votre document en tant que copie statique. Par exemple, lors de l'envoi en pièce jointe dans un e-mail. La conversion de champs tels que `DATE` ou `TIME` en texte statique permettra au document d'afficher la même date que lors de son envoi. De plus, dans certaines situations, vous devrez peut-être supprimer les champs conditionnels `IF` de votre document et les remplacer par le résultat de texte le plus récent à la place. Par exemple, convertir le résultat du champ `IF` en texte statique afin qu'il ne change plus dynamiquement sa valeur lorsque les champs du document sont mis à jour.

Le diagramme ci-dessous montre comment le champ `IF` est stocké dans un document:

* le texte est entouré des nœuds de champ spéciaux - [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) et [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* le nœud [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) sépare le texte dans le champ en code de champ et résultat de champ
* le code de champ définit le comportement général du champ, tandis que le résultat du champ conserve le résultat le plus récent lorsque ce champ est mis à jour à l'aide de Microsoft Word ou Aspose.Words
* le résultat du champ est ce qui est stocké dans le champ et affiché dans le document lorsqu'il est visualisé

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

La structure peut également être vue ci-dessous sous forme hiérarchique à l'aide du projet de démonstration **"DocumentExplorer"**, fourni avec l'installateur **Aspose.Words**.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Champs qui ne peuvent pas être remplacés par du texte

Le remplacement d'un champ par du texte statique ne fonctionne pas correctement pour certains champs d'un en-tête ou d'un pied de page.

Par exemple, si vous essayez de convertir le champ `PAGE` d'un en-tête ou d'un pied de page en texte statique, la même valeur sera affichée sur toutes les pages. En effet, les en-têtes et les pieds de page sont répétés sur plusieurs pages et, lorsqu'ils restent sous forme de champs, ils sont gérés de manière à afficher le résultat correct pour chaque page.

Cependant, dans l'en-tête, le champ `PAGE` se traduit bien par une exécution statique de texte. Cette série de texte sera évaluée comme s'il s'agissait de la dernière page de la section, ce qui entraînera l'affichage de la dernière page sur toutes les pages de n'importe quel champ `PAGE` de l'en-tête.

L'exemple de code suivant montre comment remplacer le champ par son résultat le plus récent:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Convertir Certains Types de champs en Parties de Document Spécifiques

Puisque la méthode **ConvertFieldsToStaticText** accepte deux paramètres-les propriétés [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) et l'énumération [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/), il est possible de passer n'importe quel nœud composite à cette méthode. Cela permet aux champs d'être convertis en texte statique uniquement dans des parties spécifiques du document.

Par exemple, vous pouvez passer un objet [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) et convertir des champs du type spécifié de l'ensemble du document en texte statique, ou vous pouvez passer un objet [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) d'une section et convertir uniquement les champs trouvés dans ce corps.

{{% alert color="primary" %}}

Lorsque vous transmettez un nœud de niveau bloc tel qu'un [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), sachez que dans certains cas, les champs peuvent s'étendre sur plusieurs paragraphes. Si cela se produit, il est recommandé de passer le parent du composite à la place pour éviter cela.

{{% /alert %}}

L'énumération [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) transmise à la méthode **ConvertFieldsToStaticText** spécifie quel type de champs doit être converti en texte statique. Tout autre type de champ trouvé dans le document restera inchangé.

L'exemple de code suivant montre comment sélectionner des champs d'un type spécifique - *targetFieldType* dans un nœud spécifique - *compositeNode*, puis les convertir en texte statique:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

L'exemple de code suivant montre comment convertir tous les champs `IF` d'un document en texte statique:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

L'exemple de code suivant montre comment convertir tous les champs `PAGE` d'un corps de document en texte statique:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

L'exemple de code suivant montre comment convertir tous les champs `IF` du dernier paragraphe en texte statique:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
