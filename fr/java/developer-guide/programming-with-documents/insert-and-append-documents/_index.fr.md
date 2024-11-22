---
title: Insérer et annexer des documents Java
second_title: Aspose.Words pour Java
articleTitle: Insérer et annexer des documents
linktitle: Insérer et annexer des documents
description: "Combiner les documents en un seul: insérer ou ajouter un document dans un document nouveau ou existant en utilisant le champ de recherche et de remplacement, de fusion, de signet ou simplement à la fin du document Java."
type: docs
weight: 80
url: /fr/java/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Il est parfois nécessaire de combiner plusieurs documents en un seul. Vous pouvez le faire manuellement ou vous pouvez utiliser Aspose.Words insérer ou ajouter une fonction.

L'opération d'insertion vous permet d'insérer le contenu des documents créés antérieurement dans un document nouveau ou existant.

À son tour, la fonctionnalité de l'annexe vous permet d'ajouter un document seulement à la fin d'un autre document.

Cet article explique comment insérer ou ajouter un document à un autre de différentes manières et décrit les propriétés communes que vous pouvez appliquer lors de l'insertion ou de l'ajout de documents.

## Insérer un document

Comme indiqué ci-dessus, Aspose.Words un document est représenté comme un arbre de nœuds, et l'opération d'insérer un document dans un autre est de copier des nœuds du premier arbre de documents au deuxième.

Vous pouvez insérer des documents dans divers endroits de différentes façons. Par exemple, vous pouvez insérer un document via une opération de remplacement, un champ de fusion pendant une opération de fusion, ou via un signet.

Vous pouvez également utiliser le [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) ou les [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) méthode similaire à l'insertion d'un document Microsoft Word, pour insérer un document entier à la position actuelle du curseur sans importation préalable.

L'exemple de code suivant montre comment insérer un document **InsertDocument** méthode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-with-builder.java" >}}

L'exemple de code suivant montre comment insérer un document **InsertDocumentInline** méthode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-inline-with-builder.java" >}}

Les sous-sections suivantes décrivent les options pendant lesquelles vous pouvez insérer un document dans un autre.

### Insérer un document pendant l'opération de recherche et de remplacement {#insert-a-document-during-find-and-replace-operation}

Vous pouvez insérer des documents en effectuant des opérations de recherche et de remplacement. Par exemple, un document peut contenir des paragraphes avec le texte [INTRODUCTION] et [CONCLUSION]. Mais dans le document final, vous devez remplacer ces paragraphes par le contenu obtenu d'un autre document externe. Pour y parvenir, vous devrez créer un gestionnaire pour l'événement de remplacement.

L'exemple de code suivant montre comment créer un gestionnaire pour que l'événement remplaçant l'utilise plus tard dans le processus d'insertion:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace-handler.java" >}}

L'exemple de code suivant montre comment insérer le contenu d'un document dans un autre pendant une opération de recherche et de remplacement:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-replace.java" >}}

### Insérer un document pendant Mail Merge Fonctionnement {#insert-a-document-during-mail-merge-operation}

Vous pouvez insérer un document dans un champ de fusion pendant un Mail Merge opération. Par exemple, Mail Merge modèle peut contenir un champ de fusion comme [Résumé]. Mais dans le document final, vous devez insérer le contenu obtenu d'un autre document externe dans ce champ de fusion. Pour y parvenir, vous devrez créer un gestionnaire pour l'événement de fusion.

L'exemple de code suivant montre comment créer un gestionnaire pour l'événement de fusion pour l'utiliser plus tard dans le processus d'insertion:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge-handler.java" >}}

L'exemple de code suivant montre comment insérer un document dans le champ fusion en utilisant le gestionnaire créé:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-mail-merge.java" >}}

### Insérer un document au signet

Vous pouvez importer un fichier texte dans un document et l'insérer juste après un signet que vous avez défini dans le document. Pour ce faire, créez un paragraphe bookmarked où vous voulez que le document soit inséré.

L'exemple de codage suivant montre comment insérer le contenu d'un document dans un signet dans un autre document:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-at-bookmark.java" >}}

{{% alert color="primary" %}}

Notez que le signet ne doit pas contenir plusieurs paragraphes ou textes que vous souhaitez qu'ils apparaissent dans votre document final.

{{% /alert %}}

## Annexer un document

Vous pouvez avoir un cas d'utilisation où vous devez inclure des pages supplémentaires d'un document à la fin d'un document existant. Pour ce faire, il suffit d'appeler le [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) méthode pour ajouter un document à la fin d'un autre.

{{% alert color="primary" %}}

Notez que [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) est une méthode de niveau de nœud dans un document. Par exemple, vous pouvez créer un paragraphe, définir des propriétés de formatage, puis l'ajouter en tant qu'enfant au corps en utilisant le **AppendChild** méthode.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter un document à la fin d'un autre document:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "keep-source-formatting.java" >}}

## Importer et insérer manuellement des nœuds {#import-and-insert-nodes-manually}

Aspose.Words vous permet d'insérer et d'ajouter des documents automatiquement sans aucune exigence préalable d'importation. Cependant, si vous devez insérer ou annexer un nœud spécifique de votre document, comme une section ou un paragraphe, alors vous devez d'abord importer ce noeud manuellement.

Lorsque vous devez insérer ou annexer une section ou un paragraphe à une autre, vous devez essentiellement importer les nœuds de l'arborescence du premier noeud de document dans la seconde en utilisant le [ImportNode](https://reference.aspose.com/words/java/com.aspose.words/document/#importNode-com.aspose.words.Node-boolean) méthode. Après avoir importé vos nœuds, vous devez utiliser le [InsertAfter](https://reference.aspose.com/words/java/com.aspose.words/document/#insertBefore-com.aspose.words.Node-com.aspose.words.Node) méthode pour insérer un nouveau nœud après/avant le nœud de référence. Cela vous permet de personnaliser le processus d'insertion en important des nœuds à partir d'un document et en l'insérant à des positions données.

Vous pouvez également utiliser le [AppendChild](https://reference.aspose.com/words/java/com.aspose.words/document/#appendChild-com.aspose.words.Node) méthode pour ajouter un nouveau noeud spécifié à la fin de la liste des nœuds enfants, par exemple, si vous voulez ajouter du contenu au niveau du paragraphe plutôt qu'au niveau de la section.

L'exemple de code suivant montre comment importer manuellement des nœuds et les insérer après un nœud spécifique en utilisant le **InsertAfter** méthode:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "insert-document-as-nodes.java" >}}

{{% alert color="primary" %}}

L'importation crée un nouveau noeud qui est une copie du noeud original et qui convient pour l'insertion dans le document de destination.

{{% /alert %}}

Le contenu est importé dans la section document de destination par section, ce qui signifie que les paramètres, tels que la configuration des pages et les en-têtes ou les pied de page, sont conservés pendant l'importation. Il est également utile de noter que vous pouvez définir les paramètres de formatage lorsque vous insérez ou ajoutez un document pour spécifier comment deux documents sont assemblés.

## Propriétés communes pour insérer et ajouter des documents {#common-properties-for-insert-and-append-documents}

Les deux [InsertDocument](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocument-com.aspose.words.Document-int) et [AppendDocument](https://reference.aspose.com/words/java/com.aspose.words/document/#appendDocument-com.aspose.words.Document-int) méthodes acceptées [ImportFormatMode](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/) et [ImportFormatOptions](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/) comme paramètres d'entrée. Les **ImportFormatMode** vous permet de contrôler comment le formatage des documents est fusionné lorsque vous importez du contenu d'un document dans un autre en sélectionnant différents modes de format tels que [UseDestinationStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#USE-DESTINATION-STYLES), [KeepSourceFormatting](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-SOURCE-FORMATTING), et [KeepDifferentStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatmode/#KEEP-DIFFERENT-STYLES). Les **ImportFormatOptions** vous permet de sélectionner différentes options d'importation telles que [IgnoreHeaderFooter](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreHeaderFooter), [IgnoreTextBoxes](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getIgnoreTextBoxes), [KeepSourceNumbering](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getKeepSourceNumbering), [MergePastedLists](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getMergePastedLists), et [SmartStyleBehavior](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getSmartStyleBehavior).

Aspose.Words vous permet d'ajuster la visualisation d'un document résultant lorsque deux documents sont ajoutés ensemble dans une opération d'insertion ou d'annexe en utilisant la [Section](https://reference.aspose.com/words/java/com.aspose.words/section/) et [PageSetup](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/) propriétés. Les **PageSetup** propriété contient tous les attributs d'une section comme [SectionStart](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getSectionStart), [RestartPageNumbering](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getRestartPageNumbering), [PageStartingNumber](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getPageStartingNumber), [Orientation](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getOrientation), et d'autres. Le cas d'utilisation le plus courant est de définir **SectionStart** propriété à définir si le contenu ajouté apparaîtra sur la même page ou scindé en une nouvelle.

{{% alert color="primary" %}}

Noter que **Section** et **PageSetup** les propriétés ne contrôlent pas comment deux documents sont insérés/complétés ensemble. Ils vous permettent seulement de changer l'apparence de votre document de résultat.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter un document à un autre tout en évitant que le contenu ne se divise en deux pages:

{{< gist "aspose-words-gists" "6e5c8fd2462c6d7ba26da4d9f66ff77b" "different-page-setup.java" >}}
