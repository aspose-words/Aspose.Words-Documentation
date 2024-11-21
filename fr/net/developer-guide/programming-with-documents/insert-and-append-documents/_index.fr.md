---
title: Insérer et ajouter des documents dans C#
second_title: Aspose.Words pour .NET
articleTitle: Insérer et joindre des documents
linktitle: Insérer et joindre des documents
description: "Combinez des documents en un seul: insérez ou ajoutez un document dans un document nouveau ou existant en utilisant la recherche et le remplacement, le champ de fusion, le signet ou simplement à la fin du document dans C#."
type: docs
weight: 80
url: /fr/net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Parfois, il est nécessaire de combiner plusieurs documents en un seul. Vous pouvez le faire manuellement ou utiliser la fonction d'insertion ou d'ajout de Aspose.Words.

L'opération d'insertion vous permet d'insérer le contenu de documents précédemment créés dans un document nouveau ou existant.

À son tour, la fonction d'ajout vous permet d'ajouter un document uniquement à la fin d'un autre document.

Cet article explique comment insérer ou ajouter un document à un autre de différentes manières et décrit les propriétés communes que vous pouvez appliquer lors de l'insertion ou de l'ajout de documents.

## Insérer un document {#insert-a-document}

Comme mentionné ci-dessus, dans Aspose.Words, un document est représenté comme une arborescence de nœuds, et l'opération d'insertion d'un document dans un autre consiste à copier les nœuds de la première arborescence de documents vers la seconde.

Vous pouvez insérer des documents à différents endroits et de différentes manières. Par exemple, vous pouvez insérer un document via une opération de remplacement, un champ de fusion lors d'une opération de fusion ou via un signet.

Vous pouvez également utiliser la méthode [InsertDocument](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertdocument/#insertdocument/) ou [InsertDocumentInline](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertdocumentinline/), similaire à l'insertion d'un document en Microsoft Word, pour insérer un document entier à la position actuelle du curseur sans aucune importation préalable.

L'exemple de code suivant montre comment insérer un document à l'aide de la méthode **InsertDocument**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-with-builder.cs" >}}

L'exemple de code suivant montre comment insérer un document à l'aide de la méthode **InsertDocumentInline**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-inline-with-builder.cs" >}}

Les sous-sections suivantes décrivent les options pendant lesquelles vous pouvez insérer un document dans un autre.

### Insérer un document pendant l'opération de recherche et de remplacement {#insert-a-document-during-find-and-replace-operation}

Vous pouvez insérer des documents tout en effectuant des opérations de recherche et de remplacement. Par exemple, un document peut contenir des paragraphes avec le texte [INTRODUCTION] et [CONCLUSION]. Mais dans le document final, vous devez remplacer ces paragraphes par le contenu obtenu à partir d'un autre document externe. Pour y parvenir, vous devrez créer un gestionnaire pour l'événement de remplacement.

L'exemple de code suivant montre comment créer un gestionnaire pour l'événement de remplacement afin de l'utiliser ultérieurement dans le processus d'insertion:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace-handler.cs" >}}

L'exemple de code suivant montre comment insérer le contenu d'un document dans un autre lors d'une opération de recherche et de remplacement:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-replace.cs" >}}

### Insérer un document pendant l'opération Mail Merge {#insert-a-document-during-mail-merge-operation}

Vous pouvez insérer un document dans un champ de fusion lors d'une opération mail merge. Par exemple, un modèle mail merge peut contenir un champ de fusion tel que [Résumé]. Mais dans le document final, vous devez insérer dans ce champ de fusion le contenu obtenu à partir d'un autre document externe. Pour y parvenir, vous devrez créer un gestionnaire pour l'événement de fusion.

L'exemple de code suivant montre comment créer un gestionnaire pour l'événement de fusion afin de l'utiliser ultérieurement dans le processus d'insertion:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge-handler.cs" >}}

L'exemple de code suivant montre comment insérer un document dans le champ de fusion à l'aide du gestionnaire créé:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-mail-merge.cs" >}}

### Insérer un document dans le signet {#insert-a-document-at-bookmark}

Vous pouvez importer un fichier texte dans un document et l'insérer juste après un signet que vous avez défini dans le document. Pour ce faire, créez un paragraphe marqué de favoris dans lequel vous souhaitez que le document soit inséré.

L'exemple de codage suivant montre comment insérer le contenu d'un document dans un signet dans un autre document:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-at-bookmark.cs" >}}

{{% alert color="primary" %}}

Notez que le signet ne doit pas contenir plusieurs paragraphes ou textes que vous souhaitez voir apparaître dans votre document final.

{{% /alert %}}

## Ajouter un document {#append-a-document}

Vous pouvez avoir un cas d'utilisation dans lequel vous devez inclure des pages supplémentaires d'un document à la fin d'un document existant. Pour cela, il suffit d'appeler la méthode [AppendDocument](https://reference.aspose.com/words/fr/net/aspose.words/document/appenddocument/) pour ajouter un document à la fin d'un autre.

{{% alert color="primary" %}}

Notez que [AppendChild](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/appendchild/) est une méthode au niveau du nœud dans un document. Par exemple, vous pouvez créer un paragraphe, définir les propriétés de mise en forme, puis l'ajouter en tant qu'enfant au corps à l'aide de la méthode **AppendChild**.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter un document à la fin d'un autre document:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "keep-source-formatting.cs" >}}

## Importer et insérer des nœuds manuellement {#import-and-insert-nodes-manually}

Aspose.Words vous permet d'insérer et d'ajouter des documents automatiquement sans aucune exigence d'importation préalable. Cependant, si vous devez insérer ou ajouter un nœud spécifique de votre document, tel qu'une section ou un paragraphe, vous devez d'abord importer ce nœud manuellement.

Lorsque vous devez insérer ou ajouter une section ou un paragraphe à un autre, vous devez essentiellement importer les nœuds de la première arborescence de nœuds de document dans la seconde à l'aide de la méthode [ImportNode](https://reference.aspose.com/words/fr/net/aspose.words/nodeimporter/importnode/). Après avoir importé vos nœuds, vous devez utiliser la méthode [InsertAfter](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/insertafter/)/[InsertBefore](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/insertbefore/) pour insérer un nouveau nœud après/avant le nœud de référence. Cela vous permet de personnaliser le processus d'insertion en important des nœuds à partir d'un document et en les insérant à des positions données.

Vous pouvez également utiliser la méthode [AppendChild](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/appendchild/) pour ajouter un nouveau nœud spécifié à la fin de la liste des nœuds enfants, par exemple si vous souhaitez ajouter du contenu au niveau du paragraphe plutôt qu'au niveau de la section.

L'exemple de code suivant montre comment importer manuellement des nœuds et les insérer après un nœud spécifique à l'aide de la méthode **InsertAfter**:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "insert-document-as-nodes.cs" >}}

{{% alert color="primary" %}}

L'importation crée un nouveau nœud qui est une copie du nœud d'origine et pouvant être inséré dans le document de destination.

{{% /alert %}}

Le contenu est importé dans le document de destination section par section, ce qui signifie que les paramètres, tels que la mise en page et les en-têtes ou pieds de page, sont conservés lors de l'importation. Il est également utile de noter que vous pouvez définir des paramètres de formatage lorsque vous insérez ou ajoutez un document pour spécifier la manière dont deux documents sont joints.

## Propriétés communes pour l'insertion et l'ajout de documents {#common-properties-for-insert-and-append-documents}

Les méthodes [InsertDocument](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertdocument/) et [AppendDocument](https://reference.aspose.com/words/fr/net/aspose.words/document/appenddocument/) acceptent [ImportFormatMode](https://reference.aspose.com/words/fr/net/aspose.words/importformatmode/) et [ImportFormatOptions](https://reference.aspose.com/words/fr/net/aspose.words/importformatoptions/) comme paramètres d'entrée. Le **ImportFormatMode** vous permet de contrôler la façon dont le formatage du document est fusionné lorsque vous importez du contenu d'un document dans un autre en sélectionnant différents modes de format tels que [UseDestinationStyles](https://reference.aspose.com/words/fr/net/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/fr/net/aspose.words/importformatmode/) et [KeepDifferentStyles](https://reference.aspose.com/words/fr/net/aspose.words/importformatmode/). Le **ImportFormatOptions** vous permet de sélectionner différentes options d'importation telles que [IgnoreHeaderFooter](https://reference.aspose.com/words/fr/net/aspose.words/importformatoptions/ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/fr/net/aspose.words/importformatoptions/ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/fr/net/aspose.words/importformatoptions/keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/fr/net/aspose.words/importformatoptions/mergepastedlists/) et [SmartStyleBehavior](https://reference.aspose.com/words/fr/net/aspose.words/importformatoptions/smartstylebehavior/).

Aspose.Words vous permet d'ajuster la visualisation d'un document résultant lorsque deux documents sont ajoutés ensemble lors d'une opération d'insertion ou d'ajout en utilisant les propriétés [Section](https://reference.aspose.com/words/fr/net/aspose.words/section/) et [PageSetup](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/pagesetup/). La propriété **PageSetup** contient tous les attributs d'une section tels que [SectionStart](https://reference.aspose.com/words/fr/net/aspose.words/pagesetup/sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/fr/net/aspose.words/pagesetup/restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/fr/net/aspose.words/pagesetup/pagestartingnumber/), [Orientation](https://reference.aspose.com/words/fr/net/aspose.words/pagesetup/orientation/) et autres. Le cas d'utilisation le plus courant consiste à définir la propriété **SectionStart** pour définir si le contenu ajouté apparaîtra sur la même page ou sera divisé en une nouvelle.

{{% alert color="primary" %}}

Notez que les propriétés **Section** et **PageSetup** ne contrôlent pas la manière dont deux documents sont insérés/ajoutés ensemble. Ils vous permettent uniquement de modifier l'apparence de votre document résultat.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter un document à un autre tout en empêchant le contenu de se diviser sur deux pages:

{{< gist "aspose-words-gists" "db2dfc4150d7c714bcac3782ae241d03" "different-page-setup.cs" >}}
