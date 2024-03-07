---
title: Remplacer les champs Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Remplacer les champs par du texte statique
linktitle: Remplacer les champs par du texte statique
description: "Découvrez comment remplacer les champs par du texte dans Python. Remplacez les champs par des données statiques à l'aide du API Python via .NET."
type: docs
weight: 37
url: /fr/python-net/replace-fields/
---

Le remplacement des champs est souvent nécessaire lorsque vous souhaitez enregistrer votre document sous forme de copie statique. Par exemple, lors de l'envoi en pièce jointe dans un e-mail. La conversion de champs tels que `DATE` ou `TIME` en texte statique permettra au document d'afficher la même date que lors de son envoi. De plus, dans certaines situations, vous devrez peut-être supprimer les champs `IF` conditionnels de votre document et les remplacer par le résultat texte le plus récent. Par exemple, convertir le résultat du champ `IF` en texte statique afin qu'il ne change plus dynamiquement sa valeur lorsque les champs du document sont mis à jour.

Le schéma ci-dessous montre comment le champ `IF` est stocké dans un document:

* le texte est entouré des nœuds de champs spéciaux – [FieldStart](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldstart/) et [FieldEnd](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldend/)
* le nœud [FieldSeparator](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldseparator/) sépare le texte du champ en code de champ et résultat du champ
* le code du champ définit le comportement général du champ, tandis que le résultat du champ conserve le résultat le plus récent lorsque ce champ est mis à jour via Microsoft Word ou Aspose.Words
* le résultat du champ est ce qui est stocké dans le champ et affiché dans le document lors de sa visualisation

![update-remove-a-field-aspose-words](/words/python-net/replace-fields/updating-and-removing-a-field-1.png)

La structure peut également être vue ci-dessous sous forme hiérarchique en utilisant le [projet de démonstration *"DocumentExplorer"*](https://github.com/aspose-words/Aspose.Words-for-.NET)*.*

![update-remove-a-field-aspose-words-2](/words/python-net/replace-fields/updating-and-removing-a-field-2.png)

## Champs ne pouvant pas être remplacés par du texte

Le remplacement d'un champ par du texte statique ne fonctionne pas correctement pour certains champs d'un en-tête ou d'un pied de page.

Par exemple, si vous essayez de convertir le champ `PAGE` d'un en-tête ou d'un pied de page en texte statique, la même valeur sera affichée sur toutes les pages. En effet, les en-têtes et les pieds de page sont répétés sur plusieurs pages et lorsqu'ils restent sous forme de champs, ils sont traités spécialement pour afficher le résultat correct pour chaque page.

Cependant, dans l'en-tête, le champ `PAGE` se traduit bien en texte statique. Cette séquence de texte sera évaluée comme s'il s'agissait de la dernière page de la section, ce qui entraînera l'affichage de la dernière page sur toutes les pages par tout champ `PAGE` de l'en-tête.

L'exemple de code suivant montre comment remplacer le champ par son résultat le plus récent:

EXEMPLE

## Convertir certains types de champs dans des parties de document spécifiques

Puisque la méthode **ConvertFieldsToStaticText** accepte deux paramètres: les propriétés [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/) et l'énumération [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/), il est possible de passer n'importe quel nœud composite à cette méthode. Cela permet de convertir les champs en texte statique uniquement dans des parties spécifiques du document.

Par exemple, vous pouvez transmettre un objet [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) et convertir les champs du type spécifié de l'ensemble du document en texte statique, ou vous pouvez transmettre un objet [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) d'une section et convertir uniquement les champs trouvés dans ce corps.

{{% alert color="primary" %}}

Lorsque vous transmettez un nœud au niveau du bloc tel qu'un [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/), sachez que dans certains cas, les champs peuvent s'étendre sur plusieurs paragraphes. Si cela se produit, il est recommandé de transmettre le parent du composite pour éviter cela.

{{% /alert %}}

L'énumération [FieldType](https://reference.aspose.com/words/python-net/aspose.words.fields/fieldtype/) passée à la méthode **ConvertFieldsToStaticText** spécifie quel type de champs doit être converti en texte statique. Tout autre type de champ trouvé dans le document restera inchangé.

L'exemple de code suivant montre comment sélectionner des champs d'un type spécifique – *targetFieldType* dans un nœud spécifique – *compositeNode*, puis les convertir en texte statique:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-CSharp-Programming-Documents-Fields-FieldsHelper-FieldsHelper.cs" >}}

L'exemple de code suivant montre comment convertir tous les champs `IF` d'un document en texte statique:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInDocument.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier exemple de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Linked%20fields.docx).

{{% /alert %}}

L'exemple de code suivant montre comment convertir tous les champs `PAGE` du corps d'un document en texte statique:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInBody.py" >}}

L'exemple de code suivant montre comment convertir tous les champs `IF` du dernier paragraphe en texte statique:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_fields-ConvertFieldsInParagraph.py" >}}