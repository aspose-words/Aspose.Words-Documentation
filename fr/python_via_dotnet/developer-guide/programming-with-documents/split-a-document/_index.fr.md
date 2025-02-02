---
title: Fractionner un document dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Fractionner un document
linktitle: Fractionner un document
description: "Divisez un document en plusieurs fichiers à l'aide de Python. Utilisez la fonction de fractionnement pour diviser efficacement un document par titres ou sections, ainsi que par pages ou par plages de pages."
type: docs
weight: 90
url: /fr/python-net/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* ou *diviser un document* est le processus consistant à diviser un document volumineux en un plus grand nombre de fichiers plus petits. Il existe plusieurs raisons de diviser un fichier. Par exemple, vous n’avez besoin que de quelques pages d’un document spécifique et non de la totalité. Ou, pour des raisons de confidentialité, vous souhaitez partager uniquement certaines parties d'un document avec d'autres. Avec la fonction de fractionnement, vous pouvez obtenir uniquement les parties requises du document et effectuer les actions nécessaires avec elles, par exemple annoter, enregistrer ou envoyer.

Aspose.Words vous offre un moyen efficace de diviser un document en plusieurs documents par titres ou sections. Vous pouvez également diviser un document par pages ou par plages de pages. Les deux options de fractionnement seront décrites dans cet article.

Pour diviser un document en fichiers plus petits à l'aide de Aspose.Words, vous devez suivre ces étapes:

1. Chargez le document dans n'importe quel format pris en charge.
1. Divisez le document.
1. Enregistrez les documents de sortie.

Après avoir divisé un document, vous pourrez ouvrir tous les documents de sortie qui commenceront par les pages, le texte, etc. requis.

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Séparateur de documents en ligne gratuit](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Fractionner un document en utilisant différents critères {#split-a-document-using-different-criteria}

Aspose.Words vous permet de diviser les documents EPUB ou HTML en chapitres selon divers critères. Ce faisant, le style et la mise en page du document source sont conservés pour les documents de sortie.

Vous pouvez spécifier des critères à l'aide de l'énumération [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/). Vous pouvez ainsi diviser un document en chapitres en utilisant l'un des critères suivants ou combiner plusieurs critères ensemble:

- paragraphe de titre,
- saut de section,
- saut de colonne,
- saut de page.

Lors de l'enregistrement de la sortie au format HTML, Aspose.Words enregistre chaque chapitre individuel dans un fichier HTML distinct. En conséquence, le document sera divisé en plusieurs fichiers HTML. Lors de l'enregistrement de la sortie au format EPUB, Aspose.Words enregistre le résultat dans un seul fichier EPUB, quelle que soit la valeur [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) que vous avez utilisée. Ainsi, l'utilisation de [DocumentSplitCriteria](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/) pour les documents EPUB n'affecte que l'apparence de leur contenu dans les applications de lecture: le contenu sera divisé en chapitres et le document n'apparaîtra plus continu.

{{% alert color="primary" %}}

Vous ne pouvez pas diviser un document à l'aide de la propriété [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/) lors de l'enregistrement au format MHTML.

{{% /alert %}}

Dans cette section, nous considérons seulement certains des critères de répartition possibles.

### Diviser un document par titres {#split-a-document-by-headings}

Pour diviser un document en chapitres par titres, utilisez la valeur [HEADING_PARAGRAPH](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#HEADING_PARAGRAPH) de la propriété [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/).

Si vous devez diviser un document par un niveau spécifique de paragraphes de titre, tels que les titres 1, 2 et 3, utilisez également la propriété [document_split_heading_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_heading_level/). La sortie sera divisée en paragraphes formatés avec le niveau de titre spécifié.

L'exemple de code suivant montre comment diviser un document en parties plus petites par titre:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByHeadingsHtml.py" >}}

Veuillez noter que pour ce critère, Aspose.Words ne prend en charge que l'enregistrement au format HTML lors du fractionnement.

Lors de l'enregistrement au format EPUB, le document n'est pas divisé en plusieurs fichiers et il n'y aura qu'un seul fichier de sortie.

### Diviser un document par sections {#split-a-document-by-sections}

Aspose.Words vous permet également d'utiliser des sauts de section pour diviser des documents et les enregistrer au format HTML. Pour cela, utilisez [SECTION_BREAK](https://reference.aspose.com/words/python-net/aspose.words.saving/documentsplitcriteria/#section_break) comme [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySectionsHtml.py" >}}

Il existe une autre façon de diviser le document source en plusieurs documents de sortie, et vous pouvez choisir n'importe quel format de sortie pris en charge par Aspose.Words.

L'exemple de code suivant montre comment diviser un document en parties plus petites par des sauts de section (sans utiliser la propriété [document_split_criteria](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/document_split_criteria/)):

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentBySections.py" >}}

## Fractionnement par pages {#splitting-by-pages}

Vous pouvez également diviser un document page par page, par plages de pages ou en commençant par les numéros de page spécifiés. Dans ce cas, la méthode [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/) peut faire l'affaire.

Cette section décrit plusieurs cas d'utilisation de division de documents par pagination à l'aide de la classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) et de la méthode [extract_pages](https://reference.aspose.com/words/python-net/aspose.words/document/extract_pages/).

{{% alert color="primary" %}}

Vous pouvez utiliser n'importe quel [Formats de documents pris en charge](/words/fr/python-net/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

En raison des nombreuses nuances qui apparaissent lors de la réduction du nombre de pages, une correspondance complète avec la mise en page Microsoft Word est une tâche assez compliquée. Par conséquent, en fonction de la complexité du document, il peut y avoir de légères différences dans la mise en page du document résultant par rapport au document original.

{{% /alert %}}

### Diviser un document page par page {#split-a-document-page-by-page}

Aspose.Words vous permet de diviser un document de plusieurs pages page par page.

L'exemple de code suivant montre comment diviser un document et enregistrer chaque page en tant que document distinct:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentPageByPage.py" >}}

### Diviser un document par plages de pages {#split-a-document-by-page-ranges}

Aspose.Words permet de diviser un document de plusieurs pages par plages de pages. Vous pouvez diviser un fichier en plusieurs fichiers avec différentes plages de pages ou simplement sélectionner une plage et enregistrer uniquement cette partie du document source. Notez que vous pouvez choisir la plage de pages en fonction du numéro de page maximum et minimum d'un document.

L'exemple de code suivant montre comment diviser un document en parties plus petites par plage de pages avec des index de début et de fin spécifiques:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-SplitDocumentByPageRange.py" >}}

## Fusionner le document fractionné avec un autre fichier {#merge-the-split-document-with-another-file}

Aspose.Words vous permet de fusionner le document fractionné en sortie avec un autre document pour former un nouveau document. Cela peut être appelé fusion de documents.

L'exemple de code suivant montre comment fusionner un document fractionné avec un autre document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Split Documents-split_document-MergeSplitDocuments.py" >}}
