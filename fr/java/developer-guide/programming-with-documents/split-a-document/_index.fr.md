---
title: Diviser un document en Java
second_title: Aspose.Words pour Java
articleTitle: Séparer un document
linktitle: Séparer un document
description: "Aspose.Words pour Java vous offre une façon efficace de diviser un document en plusieurs documents par en-têtes ou sections, ainsi que des pages ou des gammes de pages."
type: docs
weight: 90
url: /fr/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* ou *diffuser un document* est le processus de fractionnement d'un grand document en un plus grand nombre de petits fichiers. Il y a différentes raisons de diviser un fichier. Par exemple, vous n'avez besoin que de quelques pages d'un document spécifique et non de l'ensemble. Ou pour des raisons de confidentialité, vous voulez partager seulement certaines parties d'un document avec d'autres. Avec la fonction de fractionnement, vous pouvez obtenir seulement les parties requises du document et faire les actions nécessaires avec eux, par exemple, pour marquer, enregistrer ou envoyer.

Aspose.Words vous offre une façon efficace de diviser un document en plusieurs documents par rubriques ou sections. Vous pouvez également diviser un document par pages ou par gammes de pages. Les deux options de fractionnement seront décrites dans cet article.

Pour diviser un document en petits fichiers en utilisant Aspose.Words, vous devez suivre ces étapes:

1. Chargez le document dans n'importe quel format supporté.
1. Séparez le document.
1. Enregistrer les documents de sortie.

Après avoir divisé un document, vous pourrez ouvrir tous les documents de sortie qui commenceront par les pages, le texte, etc.

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Séparateur de documents en ligne gratuit](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Séparer un document en utilisant différents critères {#split-a-document-using-different-criteria}

Aspose.Words vous permet de diviser les documents EPUB ou HTML en chapitres selon différents critères. Dans le processus, le style et la disposition du document source sont conservés pour les documents de sortie.

Vous pouvez spécifier des critères en utilisant le [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) Énumération. Vous pouvez donc diviser un document en chapitres en utilisant l'un des critères suivants ou en combinant plusieurs critères:

- paragraphe du titre,
- pause,
- rupture de colonne,
- pause page.

Lors de l'enregistrement de la sortie en HTML, Aspose.Words enregistrer chaque chapitre comme un fichier HTML séparé. Par conséquent, le document sera divisé en plusieurs fichiers HTML. Lors de l'enregistrement de la sortie vers EPUB, Aspose.Words enregistrer le résultat dans un seul fichier EPUB quel que soit le `DocumentSplitCriteria` La valeur que vous avez utilisée. Ainsi, l'utilisation de DocumentSplitCriteria pour les documents EPUB n'affecte que l'apparence de leur contenu dans les applications de lecture: le contenu sera divisé en chapitres et le document n'apparaîtra plus en continu.

{{% alert color="primary" %}}

Vous ne pouvez pas diviser un document en utilisant [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) propriété lors de l'économie au format MHTML.

{{% /alert %}}

Dans cette section, nous ne examinons que quelques-uns des critères de répartition possibles.

### Séparer un document par rubrique {#split-a-document-by-headings}

Pour diviser un document en chapitres par rubriques, utilisez le **HeadingParagraph** valeur des **DocumentSplitCriteria** propriété.

Si vous avez besoin de diviser un document par un niveau spécifique de paragraphes de rubrique, tels que les titres 1, 2 et 3, utilisez également le [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel) propriété. La sortie sera divisée par des paragraphes formatés avec le niveau de cap spécifié.

L'exemple de code suivant montre comment diviser un document en petites parties par rubrique:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Veuillez noter que pour ces critères, Aspose.Words ne prend en charge l'enregistrement au format HTML que lors du fractionnement.

Lors de l'enregistrement sur EPUB, le document n'est pas divisé en plusieurs fichiers, et il n'y aura qu'un seul fichier de sortie.

### Séparer un document par sections {#split-a-document-by-sections}

Aspose.Words Vous pouvez également utiliser les pauses de section pour diviser les documents et les enregistrer en HTML. À cette fin, utiliser **SectionBreak** en tant que **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Il y a une autre façon de diviser le document source en plusieurs documents de sortie, et vous pouvez choisir n'importe quel format de sortie supporté par Aspose.Words.

L'exemple de code suivant montre comment diviser un document en petites parties par section (sans utiliser le `DocumentSplitCriteria` biens):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Séparé par les pages {#splitting-by-pages}

Vous pouvez également diviser une page de document par page, par gamme de pages, ou en commençant par les numéros de page spécifiés. Dans ce cas, [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) méthode peut faire le travail.

Cette section décrit plusieurs cas d'utilisation de documents de division par page [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) et de la classe **ExtractPages** méthode.

{{% alert color="primary" %}}

Vous pouvez utiliser [Formats de documents pris en charge](/words/fr/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

En raison des nombreuses nuances apparaissant tout en réduisant le nombre de pages, une correspondance complète avec le Microsoft Word La mise en page est une tâche assez compliquée. Par conséquent, selon la complexité du document, il peut y avoir de légères différences entre la présentation du document et celle du document original.

{{% /alert %}}

### Séparer une page de document par page {#split-a-document-page-by-page}

Aspose.Words vous permet de diviser une page de document par page.

L'exemple de code suivant montre comment diviser un document et enregistrer chaque page comme document séparé:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Séparer un document par gamme de pages {#split-a-document-by-page-ranges}

Aspose.Words permet de diviser un document de plusieurs pages par gammes de pages. Vous pouvez diviser un fichier en plusieurs fichiers avec différentes plages de pages ou simplement sélectionner une plage et enregistrer seulement cette partie du document source. Notez que vous pouvez choisir la plage de pages en fonction du numéro de page maximum et minimum d'un document.

L'exemple de code suivant montre comment diviser un document en petites parties par page avec des index de début et de fin spécifiques:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Option de rappel pour enregistrer un document {#callback-option-for-saving-a-document}

Vous pouvez utiliser le [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) propriété à contrôler comment Aspose.Words enregistre des pièces de document lorsque ce document est exporté en format HTML. Cette propriété vous permet de renommer les fichiers de sortie ou même de les rediriger vers des flux personnalisés.

Veuillez noter que ce callback n'est pas utile lors de l'enregistrement sur EPUB car toutes les pièces de sortie doivent être enregistrées dans un seul conteneur – le fichier .epub. Ainsi, la redirection du flux n'est pas prise en charge, et l'effet du renommage n'est pas visible puisque les fichiers sont renommés à l'intérieur du conteneur.

## Fusionner le document fractionné avec un autre document {#merge-the-split-document-with-another-file}

Aspose.Words vous permet de fusionner le document fractionné de sortie avec un autre document pour former un nouveau document. Cela peut être appelé document fusion.

L'exemple de code suivant montre comment fusionner un document divisé avec un autre document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
