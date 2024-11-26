---
title: Diviser un document en Java
second_title: Aspose.Words pour Java
articleTitle: Fractionner un document
linktitle: Fractionner un document
description: "Aspose.Words pour Java vous offre un moyen efficace de diviser un document en plusieurs documents par en-têtes ou sections, ainsi que par pages ou plages de pages."
type: docs
weight: 90
url: /fr/java/split-a-document/
timestamp: 2024-01-27-14-07-04
---

*Splitting* ou *split a document* est le processus consistant à diviser un document volumineux en un plus grand nombre de fichiers plus petits. Il y a plusieurs raisons de diviser un fichier. Par exemple, vous n'avez besoin que de quelques pages d'un document spécifique et non de l'intégralité. Ou pour des raisons de confidentialité, vous souhaitez partager uniquement certaines parties d'un document avec d'autres. Avec la fonction de fractionnement, vous pouvez obtenir uniquement les parties requises du document et effectuer les actions nécessaires avec elles, par exemple, pour annoter, enregistrer ou envoyer.

Aspose.Words vous offre un moyen efficace de diviser un document en plusieurs documents par titres ou sections. Vous pouvez également diviser un document par pages ou par plages de pages. Les deux options de fractionnement seront décrites dans cet article.

Pour diviser un document en fichiers plus petits à l'aide de Aspose.Words, vous devez suivre ces étapes:

1. Chargez le document dans n'importe quel format pris en charge.
1. Diviser le document.
1. Enregistrez les documents de sortie.

Après avoir divisé un document, vous pourrez ouvrir tous les documents de sortie qui commenceront par les pages, le texte, etc. requis.

{{% alert color="primary" %}}

**Essayez en ligne**

Vous pouvez essayer cette fonctionnalité avec notre [Séparateur de documents en ligne gratuit](https://products.aspose.app/words/splitter).

{{% /alert %}}

## Diviser un Document En Utilisant Différents Critères {#split-a-document-using-different-criteria}

Aspose.Words vous permet de diviser EPUB ou HTML documents en chapitres selon divers critères. Dans le processus, le style et la mise en page du document source sont conservés pour les documents de sortie.

Vous pouvez spécifier des critères à l'aide de l'énumération [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/). Ainsi, vous pouvez diviser un document en chapitres en utilisant l'un des critères suivants ou combiner plusieurs critères ensemble:

- paragraphe d'en-tête,
- saut de section,
- rupture de colonne,
- saut de page.

Lorsque vous enregistrez la sortie dans HTML, Aspose.Words enregistre chaque chapitre individuel dans un fichier HTML distinct. En conséquence, le document sera divisé en plusieurs fichiers HTML. Lorsque vous enregistrez la sortie dans EPUB, Aspose.Words enregistre le résultat dans un seul fichier EPUB quelle que soit la valeur `DocumentSplitCriteria` que vous avez utilisée. Ainsi, l'utilisation de DocumentSplitCriteria pour EPUB documents n'affecte que l'apparence de leur contenu dans les applications de lecture: le contenu sera divisé en chapitres et le document n'apparaîtra plus continu.

{{% alert color="primary" %}}

Vous ne pouvez pas fractionner un document à l'aide de la propriété [DocumentSplitCriteria](https://reference.aspose.com/words/java/com.aspose.words/documentsplitcriteria/) lors de l'enregistrement au format MHTML.

{{% /alert %}}

Dans cette section, nous ne considérons que certains des critères de division possibles.

### Diviser un document par En-têtes {#split-a-document-by-headings}

Pour diviser un document en chapitres par en-têtes, utilisez la valeur **HeadingParagraph** de la propriété **DocumentSplitCriteria**.

Si vous devez diviser un document par un niveau spécifique de paragraphes d'en-tête, tels que les en-têtes 1, 2 et 3, utilisez également la propriété [DocumentSplitHeadingLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentSplitHeadingLevel). La sortie sera divisée par des paragraphes formatés avec le niveau de titre spécifié.

L'exemple de code suivant montre comment diviser un document en parties plus petites par titre:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentByHeadingsHTML.java" >}}

Veuillez noter que pour ce critère, Aspose.Words ne prend en charge que l'enregistrement au format HTML lors du fractionnement.

Lors de l'enregistrement dans EPUB, le document n'est pas divisé en plusieurs fichiers et il n'y aura qu'un seul fichier de sortie.

### Diviser un document par sections {#split-a-document-by-sections}

Aspose.Words vous permet également d'utiliser des sauts de section pour diviser des documents et les enregistrer dans HTML. Pour cela, utilisez **SectionBreak** comme **DocumentSplitCriteria**:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-ConvertToHTML-SplitDocumentBySectionsHTML.java" >}}

Il existe un autre moyen de diviser le document source en plusieurs documents de sortie, et vous pouvez choisir n'importe quel format de sortie pris en charge par Aspose.Words.

L'exemple de code suivant montre comment diviser un document en parties plus petites par sauts de section (sans utiliser la propriété `DocumentSplitCriteria`):

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentBySections.java" >}}

## Divisé par Pages {#splitting-by-pages}

Vous pouvez également diviser un document page par page, par plages de pages ou en commençant par les numéros de page spécifiés. Dans ce cas, la méthode [ExtractPages](https://reference.aspose.com/words/java/com.aspose.words/document/#extractPages-int-int) peut faire le travail.

Cette section décrit plusieurs cas d'utilisation de la division de documents par pagination à l'aide de la classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) et de la méthode **ExtractPages**.

{{% alert color="primary" %}}

Vous pouvez utiliser n'importe quel [format de sortie pris en charge par Aspose.Words](/words/java/supported-document-formats/).

{{% /alert %}}

{{% alert color="primary" %}}

En raison des nombreuses nuances apparaissant tout en réduisant le nombre de pages, une correspondance complète avec la mise en page Microsoft Word est une tâche assez compliquée. Par conséquent, en fonction de la complexité du document, il peut y avoir de légères différences dans la mise en page du document résultant par rapport au document d'origine.

{{% /alert %}}

### Diviser un document Page par Page {#split-a-document-page-by-page}

Aspose.Words vous permet de diviser un document de plusieurs pages page par page.

L'exemple de code suivant montre comment diviser un document et enregistrer chaque page en tant que document séparé:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentPageByPage.java" >}}

### Diviser un document par plages de pages {#split-a-document-by-page-ranges}

Aspose.Words permet de diviser un document de plusieurs pages par plages de pages. Vous pouvez diviser un fichier en plusieurs fichiers avec différentes plages de pages ou simplement sélectionner une plage et enregistrer uniquement cette partie du document source. Notez que vous pouvez choisir la plage de pages en fonction du numéro de page maximum et minimum d'un document.

L'exemple de code suivant montre comment diviser un document en parties plus petites par plage de pages avec des index de début et de fin spécifiques:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-SplitDocumentByPageRange.java" >}}

## Option de rappel pour enregistrer un Document {#callback-option-for-saving-a-document}

Vous pouvez utiliser la propriété [DocumentPartSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getDocumentPartSavingCallback) pour contrôler la manière dont Aspose.Words enregistre les parties du document lorsque ce document est exporté au format HTML. Cette propriété vous permet de renommer les fichiers de sortie ou même de les rediriger vers des flux personnalisés.

Veuillez noter que ce rappel n'est pas utile lors de l'enregistrement dans EPUB car toutes les parties de sortie doivent être enregistrées dans un seul conteneur – le .fichier epub. Ainsi, la redirection de flux n'est pas prise en charge et l'effet de renommage n'est pas visible car les fichiers sont renommés à l'intérieur du conteneur.

## Fusionner le Document fractionné avec un autre Document {#merge-the-split-document-with-another-file}

Aspose.Words vous permet de fusionner le document fractionné de sortie avec un autre document pour former un nouveau document. Cela peut être appelé fusion de documents.

L'exemple de code suivant montre comment fusionner un document fractionné avec un autre document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SplitDocument-MergeDocuments.java" >}}
