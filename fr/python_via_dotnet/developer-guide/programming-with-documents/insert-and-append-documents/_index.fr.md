---
title: Insérer et joindre des documents
second_title: Aspose.Words pour Python via .NET
articleTitle: Insérer et joindre des documents
linktitle: Insérer et joindre des documents
description: "Combinez des documents en un seul: insérez ou ajoutez un document dans un document nouveau ou existant en utilisant la recherche et le remplacement, le champ de fusion, le signet ou simplement à la fin du document dans Python."
type: docs
weight: 80
url: /fr/python-net/insert-and-append-documents/
timestamp: 2024-01-27-14-07-04
---

Parfois, il est nécessaire de combiner plusieurs documents en un seul. Vous pouvez le faire manuellement ou utiliser la fonction d'insertion ou d'ajout de Aspose.Words.

L'opération d'insertion vous permet d'insérer le contenu de documents précédemment créés dans un document nouveau ou existant.

À son tour, la fonction d'ajout vous permet d'ajouter un document uniquement à la fin d'un autre document.

Cet article explique comment insérer ou ajouter un document à un autre de différentes manières et décrit les propriétés communes que vous pouvez appliquer lors de l'insertion ou de l'ajout de documents.

## Insérer un document

Comme mentionné ci-dessus, dans Aspose.Words, un document est représenté comme une arborescence de nœuds, et l'opération d'insertion d'un document dans un autre consiste à copier les nœuds de la première arborescence de documents vers la seconde.

Vous pouvez insérer des documents à différents endroits et de différentes manières. Par exemple, vous pouvez insérer un document via une opération de remplacement, un champ de fusion lors d'une opération de fusion ou via un signet.

Vous pouvez également utiliser la méthode [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) ou [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions), similaire à l'insertion d'un document au format Microsoft Word, pour insérer un document entier à la position actuelle du curseur sans aucune importation préalable.

L'exemple de code suivant montre comment insérer un document à l'aide de la méthode **insert_document**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-with-builder.py" >}}

L'exemple de code suivant montre comment insérer un document à l'aide de la méthode **insert_document_inline**:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-inline-with-builder.py" >}}

Les sous-sections suivantes décrivent les options pendant lesquelles vous pouvez insérer un document dans un autre.

### Insérer un document dans un signet

Vous pouvez importer un fichier texte dans un document et l'insérer juste après un signet que vous avez défini dans le document. Pour ce faire, créez un paragraphe marqué de favoris dans lequel vous souhaitez que le document soit inséré.

L'exemple de codage suivant montre comment insérer le contenu d'un document dans un signet dans un autre document:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-at-bookmark.py" >}}

{{% alert color="primary" %}}

Notez que le signet ne doit pas contenir plusieurs paragraphes ou textes que vous souhaitez voir apparaître dans votre document final.

{{% /alert %}}

## Ajouter un document

Vous pouvez avoir un cas d'utilisation dans lequel vous devez inclure des pages supplémentaires d'un document à la fin d'un document existant. Pour cela, il suffit d'appeler la méthode [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) pour ajouter un document à la fin d'un autre.

{{% alert color="primary" %}}

Notez que [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) est une méthode au niveau du nœud dans un document. Par exemple, vous pouvez créer un paragraphe, définir les propriétés de mise en forme, puis l'ajouter en tant qu'enfant au corps à l'aide de la méthode [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/).

{{% /alert %}}

L'exemple de code suivant montre comment ajouter un document à la fin d'un autre document:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "keep-source-formatting.py" >}}

## Importer et insérer des nœuds manuellement

Aspose.Words vous permet d'insérer et d'ajouter des documents automatiquement sans aucune exigence d'importation préalable. Cependant, si vous devez insérer ou ajouter un nœud spécifique de votre document, tel qu'une section ou un paragraphe, vous devez d'abord importer ce nœud manuellement.

Lorsque vous devez insérer ou ajouter une section ou un paragraphe à un autre, vous devez essentiellement importer les nœuds de la première arborescence de nœuds de document dans la seconde à l'aide de la méthode [import_node](https://reference.aspose.com/words/python-net/aspose.words/documentbase/import_node/). Après avoir importé vos nœuds, vous devez utiliser la méthode [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/)/[insert_before](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_before/) pour insérer un nouveau nœud après/avant le nœud de référence. Cela vous permet de personnaliser le processus d'insertion en important des nœuds à partir d'un document et en les insérant à des positions données.

Vous pouvez également utiliser la méthode [append_child](https://reference.aspose.com/words/python-net/aspose.words/compositenode/append_child/) pour ajouter un nouveau nœud spécifié à la fin de la liste des nœuds enfants, par exemple si vous souhaitez ajouter du contenu au niveau du paragraphe plutôt qu'au niveau de la section.

L'exemple de code suivant montre comment importer manuellement des nœuds et les insérer après un nœud spécifique à l'aide de la méthode [insert_after](https://reference.aspose.com/words/python-net/aspose.words/compositenode/insert_after/):

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "insert-document-as-nodes.py" >}}

{{% alert color="primary" %}}

L'importation crée un nouveau nœud qui est une copie du nœud d'origine et pouvant être inséré dans le document de destination.

{{% /alert %}}

Le contenu est importé dans le document de destination section par section, ce qui signifie que les paramètres, tels que la mise en page et les en-têtes ou pieds de page, sont conservés lors de l'importation. Il est également utile de noter que vous pouvez définir des paramètres de formatage lorsque vous insérez ou ajoutez un document pour spécifier la manière dont deux documents sont joints.

## Propriétés communes pour l'insertion et l'ajout de documents

Les méthodes [insert_document](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document/) et [append_document](https://reference.aspose.com/words/python-net/aspose.words/document/append_document/) acceptent [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) et [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) comme paramètres d'entrée. Le [ImportFormatMode](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/) vous permet de contrôler la façon dont le formatage du document est fusionné lorsque vous importez du contenu d'un document dans un autre en sélectionnant différents modes de format tels que [USE_DESTINATION_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#use_destination_styles), [KEEP_SOURCE_FORMATTING](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_source_formatting) et [KEEP_DIFFERENT_STYLES](https://reference.aspose.com/words/python-net/aspose.words/importformatmode/#keep_different_styles). Le [ImportFormatOptions](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/) vous permet de sélectionner différentes options d'importation telles que [ignore_header_footer](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_header_footer/), [ignore_text_boxes](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/ignore_text_boxes/), [keep_source_numbering](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/keep_source_numbering/), [merge_pasted_lists](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/merge_pasted_lists/) et [smart_style_behavior](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/smart_style_behavior/).

Aspose.Words vous permet d'ajuster la visualisation d'un document résultant lorsque deux documents sont ajoutés ensemble lors d'une opération d'insertion ou d'ajout en utilisant [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) et [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/). La propriété [page_setup](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/page_setup/) contient tous les attributs d'une section tels que [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/), [restart_page_numbering](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/restart_page_numbering/), [page_starting_number](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/page_starting_number/), [orientation](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/orientation/) et autres. Le cas d'utilisation le plus courant consiste à définir la propriété [section_start](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/section_start/) pour définir si le contenu ajouté apparaîtra sur la même page ou sera divisé en une nouvelle.

{{% alert color="primary" %}}

Notez que [Section](https://reference.aspose.com/words/python-net/aspose.words/section/) et [PageSetup](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/) ne contrôlent pas la manière dont deux documents sont insérés/ajoutés ensemble. Ils vous permettent uniquement de modifier l'apparence de votre document résultat.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter un document à un autre tout en empêchant le contenu de se diviser sur deux pages:

{{< gist "aspose-words-gists" "ffc2b4de06eabf9183a3ed2aa34e939d" "different-page-setup.py" >}}
