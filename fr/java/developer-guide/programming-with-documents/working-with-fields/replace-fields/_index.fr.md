---
title: Remplacer les champs par le texte Java
second_title: Aspose.Words pour Java
articleTitle: Remplacer les champs par un texte statique
linktitle: Remplacer les champs par un texte statique
description: "Découvrez comment remplacer les champs par du texte dans Java. Remplacer les champs par des données statiques Java API."
type: docs
weight: 37
url: /fr/java/replace-fields/
timestamp: 2024-01-27-14-07-04
---

Le remplacement des champs est souvent nécessaire lorsque vous souhaitez enregistrer votre document comme une copie statique. Par exemple, lors de l'envoi comme pièce jointe dans un courriel. Convertir des champs tels que `DATE` ou `TIME` au texte statique permettra au document d'afficher la même date que lorsqu'il a été envoyé. En outre, dans certaines situations, vous devrez peut-être supprimer le `IF` les champs de votre document et les remplacer par le résultat le plus récent. Par exemple, la conversion du résultat de la `IF` field to static text de sorte qu'il ne changera plus dynamiquement sa valeur lorsque les champs du document seront mis à jour.

Le diagramme ci-dessous montre comment `IF` champ est stocké dans un document:

* le texte est entouré par les nœuds de champ spéciaux – [FieldStart](https://reference.aspose.com/words/java/com.aspose.words/fieldstart/) et [FieldEnd](https://reference.aspose.com/words/java/com.aspose.words/fieldend/)
* les [FieldSeparator](https://reference.aspose.com/words/java/com.aspose.words/fieldseparator/) le noeud sépare le texte dans le champ dans le code du champ et le résultat du champ
* le code de champ définit le comportement général du champ, tandis que le résultat du champ conserve le résultat le plus récent lorsque ce champ est mis à jour en utilisant Microsoft Word ou Aspose.Words
* le résultat du champ est ce qui est stocké dans le champ et affiché dans le document quand consulté

![update-remove-a-field-aspose-words](/words/java/replace-fields/updating-and-removing-a-field-1.png)

La structure peut également être vue ci-dessous sous forme hiérarchique en utilisant le projet de démonstration **“DocumentExplorer”**, qui expédie avec le **Aspose.Words** installateur.

![update-remove-a-field-aspose-words-2](/words/java/replace-fields/updating-and-removing-a-field-2.png)

## Champs qui ne peuvent pas être remplacés par un texte

Remplacer un champ par un texte statique ne fonctionne pas correctement pour certains champs dans un en-tête ou un pied de page.

Par exemple, essayer de convertir le `PAGE` dans un en-tête ou un pied de page vers un texte statique, la même valeur sera affichée sur toutes les pages. C'est parce que les en-têtes et les pied de page sont répétés sur plusieurs pages, et quand ils restent comme des champs, ils sont manipulés surtout afin qu'ils affichent le résultat correct pour chaque page.

Cependant, dans l'en-tête, `PAGE` champ traduit bien à l'exécution statique du texte. Cette série de texte sera évaluée comme si c'était la dernière page de la section, ce qui provoquera `PAGE` champ dans l'en-tête pour afficher la dernière page sur toutes les pages.

L'exemple de code suivant montre comment remplacer le champ par son dernier résultat:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-UnlinkFields-UnlinkFields.java" >}}

## Convertir certains types de champs dans des pièces de documents spécifiques

Depuis le **ConvertFieldsToStaticText** méthode accepte deux paramètres – la [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) propriétés et [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) énumération, il est possible de passer n'importe quel nœud composite à cette méthode. Cela permet de convertir les champs en texte statique uniquement dans des parties spécifiques du document.

Par exemple, vous pouvez passer un [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) objet et convertir les champs du type spécifié du document entier en texte statique, ou vous pouvez passer un [Body](https://reference.aspose.com/words/java/com.aspose.words/body/) objet d'une section et convertir seulement les champs trouvés dans ce corps.

{{% alert color="primary" %}}

Lors du passage d'un noeud de niveau bloc comme un [Paragraph](https://reference.aspose.com/words/java/com.aspose.words/paragraph/), être conscient que dans certains cas, les champs peuvent s'étendre sur plusieurs paragraphes. Si cela se produit, il est recommandé de passer le parent du composite plutôt pour éviter cela.

{{% /alert %}}

Les [FieldType](https://reference.aspose.com/words/java/com.aspose.words/fieldtype/) le dénombrement est passé à **ConvertFieldsToStaticText** méthode précise le type de champs à convertir en texte statique. Tout autre type de champ trouvé dans le document restera inchangé.

L'exemple de code suivant montre comment sélectionner les champs d'un type spécifique – *targetFieldType* dans un noeud spécifique – *compositeNode* puis les convertir en texte statique:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-FieldHelper-FieldsHelper.java" >}}

L'exemple de code suivant montre comment convertir tous `IF` champs dans un document vers un texte statique:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInDocument-ConvertFieldsInDocument.java" >}}

L'exemple de code suivant montre comment convertir tous `PAGE` champs dans un corps d'un document à texte statique:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInBody-ConvertFieldsInBody.java" >}}

L'exemple de code suivant montre comment convertir tous `IF` champs dans le dernier paragraphe au texte statique:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-fields-ConvertFieldsInParagraph-ConvertFieldsInParagraph.java" >}}
