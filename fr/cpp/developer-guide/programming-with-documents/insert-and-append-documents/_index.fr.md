---
title: Insérer et ajouter des documents en C++
second_title: Aspose.Words pour C++
articleTitle: Insérer et ajouter des documents
linktitle: Insérer et ajouter des documents
description: "Combinez des documents en un seul: insérez ou ajoutez un document dans un document nouveau ou existant en utilisant rechercher et remplacer, fusionner un champ, un signet ou simplement à la fin du document."
type: docs
weight: 80
url: /fr/cpp/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Parfois, il est nécessaire de combiner plusieurs documents en un seul. Vous pouvez le faire manuellement ou vous pouvez utiliser la fonction d'insertion ou d'ajout Aspose.Words.

L'opération d'insertion vous permet d'insérer le contenu de documents créés précédemment dans un document nouveau ou existant.

À son tour, la fonction d'ajout vous permet d'ajouter un document uniquement à la fin d'un autre document.

Cet article explique comment insérer ou ajouter un document à un autre de différentes manières et décrit les propriétés courantes que vous pouvez appliquer lors de l'insertion ou de l'ajout de documents.

## Insérer un document

Comme mentionné ci-dessus, dans Aspose.Words, un document est représenté comme un arbre de nœuds, et l'opération d'insertion d'un document dans un autre consiste à copier des nœuds du premier arbre de documents vers le second.

Vous pouvez insérer des documents à divers endroits de différentes manières. Par exemple, vous pouvez insérer un document via une opération de remplacement, un champ de fusion lors d'une opération de fusion ou via un signet.

Vous pouvez également utiliser la méthode [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/), qui est similaire à l'insertion d'un document dans Microsoft Word, pour insérer un document entier à la position actuelle du curseur sans importation préalable.

L'exemple de code suivant montre comment insérer un document à l'aide de la méthode `InsertDocument`:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-with-builder.h" >}}

Les sous-sections suivantes décrivent les options au cours desquelles vous pouvez insérer un document dans un autre.

### Insérer un Document Lors de l'Opération de Recherche et de remplacement {#insert-a-document-during-find-and-replace-operation}

Vous pouvez insérer des documents tout en effectuant des opérations de recherche et de remplacement. Par exemple, un document peut contenir des paragraphes avec le texte [INTRODUCTION] et [CONCLUSION]. Mais dans le document final, vous devez remplacer ces paragraphes par le contenu obtenu à partir d'un autre document externe. Pour y parvenir, vous devrez créer un gestionnaire pour l'événement replace.

L'exemple de code suivant montre comment créer un gestionnaire pour l'événement de remplacement afin de l'utiliser ultérieurement dans le processus d'insertion:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace-handler.h" >}}

L'exemple de code suivant montre comment insérer le contenu d'un document dans un autre lors d'une opération de recherche et de remplacement:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-replace.h" >}}

### Insérer un Document Pendant l'opération Mail Merge {#insert-a-document-during-mail-merge-operation}

Vous pouvez insérer un document dans un champ de fusion lors d'une opération mail merge. Par exemple, un modèle Mail Merge peut contenir un champ de fusion tel que [Résumé]. Mais dans le document final, vous devez insérer le contenu obtenu à partir d'un autre document externe dans ce champ de fusion. Pour y parvenir, vous devrez créer un gestionnaire pour l'événement de fusion.

L'exemple de code suivant montre comment créer un gestionnaire pour l'événement de fusion afin de l'utiliser ultérieurement dans le processus d'insertion:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge-handler.h" >}}

L'exemple de code suivant montre comment insérer un document dans le champ de fusion à l'aide du gestionnaire créé:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-mail-merge.h" >}}

### Insérer un document dans un signet

Vous pouvez importer un fichier texte dans un document et l'insérer juste après un signet que vous avez défini dans le document. Pour ce faire, créez un paragraphe marqué d'un signet à l'endroit où vous souhaitez insérer le document.

L'exemple de codage suivant montre comment insérer le contenu d'un document dans un signet d'un autre document:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-at-bookmark.h" >}}

{{% alert color="primary" %}}

Notez que le signet ne doit pas contenir plusieurs paragraphes ou textes que vous souhaitez qu'ils apparaissent dans votre document final résultant.

{{% /alert %}}

## Ajouter un document

Vous pouvez avoir un cas d'utilisation où vous devez inclure des pages supplémentaires d'un document à la fin d'un document existant. Pour ce faire, il vous suffit d'appeler la méthode [AppendDocument](https://reference.aspose.com/words/cpp/aspose.words/document/appenddocument/) pour ajouter un document à la fin d'un autre.

{{% alert color="primary" %}}

Notez que [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) est une méthode au niveau du nœud dans un document. Par exemple, vous pouvez créer un paragraphe, définir des propriétés de mise en forme, puis l'ajouter en tant qu'enfant au corps à l'aide de la méthode **AppendChild**.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter un document à la fin d'un autre document:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "keep-source-formatting.h" >}}

## Importer et insérer des nœuds manuellement {#import-and-insert-nodes-manually}

Aspose.Words vous permet d'insérer et d'ajouter des documents automatiquement sans aucune exigence d'importation préalable. Cependant, si vous devez insérer ou ajouter un nœud spécifique de votre document, tel qu'une section ou un paragraphe, vous devez d'abord importer ce nœud manuellement.

Lorsque vous devez insérer ou ajouter une section ou un paragraphe à un autre, vous devez essentiellement importer les nœuds de la première arborescence de nœuds de document dans la seconde à l'aide de la méthode [ImportNode](https://reference.aspose.com/words/cpp/aspose.words/nodeimporter/importnode/). Après avoir importé vos nœuds, vous devez utiliser la méthode [InsertAfter](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertafter/) / [InsertBefore](https://reference.aspose.com/words/cpp/aspose.words/compositenode/insertbefore/) pour insérer un nouveau nœud après/avant le nœud de référence. Cela vous permet de personnaliser le processus d'insertion en important des nœuds à partir d'un document et en les insérant à des positions données.

Vous pouvez également utiliser la méthode [AppendChild](https://reference.aspose.com/words/cpp/aspose.words/compositenode/appendchild/) pour ajouter un nouveau nœud spécifié à la fin de la liste des nœuds enfants, par exemple, si vous souhaitez ajouter du contenu au niveau du paragraphe plutôt qu'au niveau de la section.

L'exemple de code suivant montre comment importer manuellement des nœuds et les insérer après un nœud spécifique à l'aide de la méthode **InsertAfter**:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "insert-document-as-nodes.h" >}}

{{% alert color="primary" %}}

L'importation crée un nouveau nœud qui est une copie du nœud d'origine et qui peut être inséré dans le document de destination.

{{% /alert %}}

Le contenu est importé dans le document de destination section par section, ce qui signifie que les paramètres, tels que la mise en page et les en-têtes ou pieds de page, sont conservés lors de l'importation. Il est également utile de noter que vous pouvez définir des paramètres de mise en forme lorsque vous insérez ou ajoutez un document pour spécifier comment deux documents sont joints.

## Propriétés communes pour Insérer et ajouter des documents {#common-properties-for-insert-and-append-documents}

À la fois [InsertDocument](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocument/) et [AppendDocument](https://apireference.codeporting.com/native/cs2cpp/namespace/system#a6b77ccd8c49df28c153be0462cdfdf49) les méthodes acceptent [ImportFormatMode](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) et [ImportFormatOptions](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/) comme paramètres d'entrée. Le **ImportFormatMode** vous permet de contrôler la façon dont le formatage du document est fusionné lorsque vous importez du contenu d'un document dans un autre en sélectionnant différents modes de formatage tels que [UseDestinationStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/), [KeepSourceFormatting](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/) et [KeepDifferentStyles](https://reference.aspose.com/words/cpp/aspose.words/importformatmode/). Le **ImportFormatOptions** vous permet de sélectionner différentes options d'importation telles que [IgnoreHeaderFooter](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoreheaderfooter/), [IgnoreTextBoxes](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_ignoretextboxes/), [KeepSourceNumbering](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_keepsourcenumbering/), [MergePastedLists](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_mergepastedlists/), et [SmartStyleBehavior](https://reference.aspose.com/words/cpp/aspose.words/importformatoptions/get_smartstylebehavior/).

Aspose.Words vous permet d'ajuster la visualisation d'un document résultant lorsque deux documents sont ajoutés ensemble dans une opération d'insertion ou d'ajout à l'aide des propriétés [Section](https://reference.aspose.com/words/cpp/aspose.words/section/) et [PageSetup](https://reference.aspose.com/words/cpp/aspose.words/pagesetup). La propriété **PageSetup** contient tous les attributs d'une section tels que [SectionStart](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_sectionstart/), [RestartPageNumbering](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_restartpagenumbering/), [PageStartingNumber](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_pagestartingnumber/), [Orientation](https://reference.aspose.com/words/cpp/aspose.words/pagesetup/get_orientation/), et d'autres. Le cas d'utilisation le plus courant consiste à définir la propriété **SectionStart** pour définir si le contenu ajouté apparaîtra sur la même page ou se divisera en une nouvelle.

{{% alert color="primary" %}}

Notez que les propriétés **Section** et **PageSetup** ne contrôlent pas la façon dont deux documents sont insérés/ajoutés ensemble. Ils vous permettent uniquement de modifier l'apparence de votre document de résultat.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter un document à un autre tout en empêchant le contenu de se diviser sur deux pages:

{{< gist "aspose-words-gists" "34934bfeabca5cf3dd3ca3c277e85771" "different-page-setup.h" >}}