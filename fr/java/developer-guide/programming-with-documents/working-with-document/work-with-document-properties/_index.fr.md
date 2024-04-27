---
title: Travailler avec les propriétés du document dans Java
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les propriétés du document
linktitle: Travailler avec les propriétés du document
description: "Aspose.Words pour Java permet de stocker des informations utiles sur votre document, comme API et numéro de version ou autorisé Date, dans des propriétés de document intégrées ou personnalisées."
type: docs
weight: 10
url: /fr/java/work-with-document-properties/
---

Les propriétés du document permettent de stocker des informations utiles sur votre document. Ces propriétés peuvent être divisées en deux groupes:

* Système ou intégré qui contient des valeurs telles que le titre du document, le nom de l'auteur, les statistiques de document, et d'autres.
* Utilisateur défini ou personnalisé, fourni comme paires de valeurs de nom où l'utilisateur peut définir à la fois le nom et la valeur.

Il est utile de connaître cette information sur API et le numéro de version est directement écrit dans les documents de sortie. Par exemple, en convertissant un document en PDF, Aspose.Words remplit le champ "Application" avec "Aspose.Words", et le champ "Producteur PDF" avec "Aspose.Words pour Java YY.M.N", où *YY.M.N* est la version de Aspose.Words utilisé pour la conversion. Pour plus de détails, voir [Nom du producteur ou du producteur inclus dans les documents de sortie](/words/fr/java/generator-or-producer-name-included-in-output-documents/).

{{% alert color="primary" %}}

Notez que vous **ne peut pas diriger** Aspose.Words modifier ou supprimer ces informations des documents de sortie.

{{% /alert %}}

## Accès aux propriétés des documents

Pour accéder aux propriétés du document dans Aspose.Words Utilisation:

* [BuiltInDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getBuiltInDocumentProperties) pour obtenir des propriétés intégrées.

* [CustomDocumentProperties](https://reference.aspose.com/words/java/com.aspose.words/document/#getCustomDocumentProperties) pour obtenir des propriétés personnalisées.

**BuiltInDocumentProperties** et **CustomDocumentProperties** sont des collections de [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) objets. Ces objets peuvent être obtenus via la propriété indexer par nom ou par index.

**BuiltInDocumentProperties** fournit en outre l'accès aux propriétés de document par un ensemble de propriétés entrées qui retournent les valeurs du type approprié. **CustomDocumentProperties** vous permet d'ajouter ou de supprimer des propriétés d'un document.

Les [DocumentProperty](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/) classe vous permet d'obtenir le nom, la valeur et le type d'une propriété document. [Value]https://reference.aspose.com/words/java/com.aspose.words/documentproperty#Value) retourne un objet, mais il existe un ensemble de méthodes permettant de convertir la valeur de propriété en un type spécifique. Après avoir appris à savoir quel type la propriété est, vous pouvez utiliser l'un des {0} méthode, dit que {1}[Pour établir](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toString) et **DocumentProperty.**[ToInt](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#toInt), pour obtenir la valeur du type approprié.

L'exemple de code suivant montre comment énumérer toutes les propriétés intégrées et personnalisées dans un document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-EnumerateProperties.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

En Microsoft Word, vous pouvez accéder aux propriétés du document en utilisant le menu -Fichier → Propriétés.

<img src="/words/java/work-with-document-properties/work-with-document-properties-1.png" alt="work-with-document-properties-aspose-words-java.png" style="width:400px"/>

## Ajouter ou supprimer des propriétés du document

Vous ne pouvez pas ajouter ou supprimer des propriétés de document intégrées en utilisant Aspose.Words. Vous ne pouvez que modifier ou mettre à jour leurs valeurs.

Pour ajouter des propriétés de document personnalisées avec Aspose.Words, utiliser les [Add](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#add-java.lang.String-boolean) méthode, en passant le nouveau nom de propriété et la valeur du type approprié. La méthode retourne la nouvelle création **DocumentProperty** objet.

Pour supprimer les propriétés personnalisées, utilisez le [Remove](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#remove-java.lang.String) méthode, en lui passant le nom de propriété à supprimer, ou [RemoveAt](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#removeAt-int) méthode pour supprimer la propriété par index. Vous pouvez également supprimer toutes les propriétés en utilisant le [Clear](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#clear) méthode.

L'exemple de code suivant vérifie si une propriété personnalisée portant un nom donné existe dans un document et ajoute quelques propriétés de document personnalisées:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomAdd.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

L'exemple de code suivant montre comment supprimer une propriété de document personnalisé:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-CustomRemove.java" >}}

## Mettre à jour les propriétés des documents intégrés

Aspose.Words ne met pas automatiquement à jour les propriétés du document, comme Microsoft Word fait avec certaines propriétés, mais fournit une méthode pour mettre à jour certaines propriétés de document intégrées statistiques. Appelez le [UpdateWordCount](https://reference.aspose.com/words/java/com.aspose.words/document/#updateWordCount) méthode pour recalculer et mettre à jour les propriétés suivantes:

* [Characters](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Characters)
* [CharactersWithSpaces](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#CharactersWithSpaces)
* [Words](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Words)
* [Paragraphs](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Paragraphs)
* [Lines](https://reference.aspose.com/words/java/com.aspose.words/builtindocumentproperties#Lines)

## Créer une nouvelle propriété personnalisée liée au contenu

Aspose.Words fournit les [AddLinkToContent](https://reference.aspose.com/words/java/com.aspose.words/customdocumentproperties/#addLinkToContent-java.lang.String-java.lang.String) méthode pour créer une nouvelle propriété de document personnalisé liée au contenu. Cette propriété retourne l'objet de propriété nouvellement créé ou null si le [LinkSource](https://reference.aspose.com/words/java/com.aspose.words/documentproperty/#isLinkToContent) est invalide.

L'exemple de code suivant montre comment configurer un lien vers une propriété personnalisée:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocProperties-ConfiguringLinkToContent.java" >}}

## Obtenez les variables de document

Vous pouvez obtenir une collection de variables de document en utilisant le [Variables](https://reference.aspose.com/words/java/com.aspose.words/document/#getVariables) propriété. Les noms et valeurs variables sont des chaînes.

L'exemple de code suivant montre comment énumérer les variables de document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-GetDocumentVariables-GetDocumentVariables.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Properties.docx).

{{% /alert %}}

## Supprimer les renseignements personnels du document

Si vous souhaitez partager un document Word avec d'autres personnes, vous pouvez supprimer des renseignements personnels tels que le nom de l'auteur et l'entreprise. Pour ce faire, utilisez la [RemovePersonalInformation](https://reference.aspose.com/words/java/com.aspose.words/document/#getRemovePersonalInformation) propriété pour définir le drapeau indiquant que Microsoft Word supprimera toutes les informations utilisateur des commentaires, des révisions et des propriétés du document lors de la sauvegarde du document.

{{% alert color="primary" %}}

Définir cette option ne supprime pas réellement les renseignements personnels pendant le traitement d'un document dans Aspose.Words et n'affecte que Microsoft Word comportement.

{{% /alert %}}
