---
title: Spécifiez les options de mise en page dans Java
second_title: Aspose.Words pour Java
articleTitle: Spécifier Les Options De Mise En Page
linktitle: Spécifier Les Options De Mise En Page
description: "Créez des documents de sortie avec différentes mises en page, en fonction des paramètres spécifiés dans le document à l'aide de Java."
type: docs
weight: 10
url: /fr/java/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words vous permet de créer des documents de sortie avec différentes mises en page, en fonction des paramètres spécifiés dans la propriété [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) du **Document**. Cette propriété ressemble à certaines des options de menu de l'interface utilisateur Microsoft Word décrites dans cet article.

Pour une liste complète des paramètres tels que [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) pour calculer les numéros de page dans une section continue qui redémarre la numérotation des pages, ou [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) pour ignorer l'option de compatibilité "Utiliser les métriques de l'imprimante pour disposer le document", voir la page de classe [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

## Marques de mise en forme

Aspose.Words permet de gérer les marques de formatage à l'aide des propriétés suivantes:

- [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) - une valeur `Boolean`, qui spécifie si le texte masqué est rendu.
- [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) - une valeur `Boolean`, qui spécifie si les caractères de marque de paragraphe sont rendus.

La page illustrée dans l'exemple ci-dessous contient trois paragraphes. Le second est caché. Un utilisateur peut modifier l'option **ShowHiddenText** pour afficher ce texte masqué sur la page. De plus, chaque paragraphe a une marque de paragraphe à la fin. La marque de paragraphe n'est généralement pas visible à moins que la propriété **ShowParagraphMarks** ne soit définie pour la restituer.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

Dans Microsoft Word, ces paramètres sont définis à l'aide de la boîte de dialogue "Fichier → Options → Affichage" comme suit:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Commentaires et Révisions

Avec Aspose.Words, vous pouvez afficher des commentaires de document qui auront le même aspect que dans Microsoft Word. Pour spécifier si les commentaires sont rendus, utilisez la propriété [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/).

Dans Microsoft Word, ce paramètre est défini à l'aide de la boîte de dialogue "Options de suivi des modifications", comme illustré ci-dessous:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

De plus, Aspose.Words vous permet d'afficher les révisions dans un document. Utilisez la propriété [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) de la classe **LayoutOptions** pour définir si les révisions du document sont affichées. Pour contrôler leur apparence (couleur de surbrillance de révision, couleur de la barre de révision, etc.), utilisez la classe [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/).

Vous pouvez également afficher les révisions sous forme de commentaires sur le contenu. Pour cela, utilisez la propriété [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) et la valeur [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/).

L'exemple de code suivant montre comment personnaliser l'affichage des révisions:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

L'image ci-dessous montre comment Aspose.Words rend les commentaires et les révisions de suppression:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Façonneur de Texte pour un Rendu Typographique Avancé

La propriété [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) vous permet de définir la fonctionnalité de mise en forme du texte, ainsi que la prise en charge des fonctionnalités `OpenType`.

Utilisez la mise en forme du texte pour le traitement des documents dans les principaux cas suivants:

- Un document utilise un crénage, une Mise en forme numérique, des Formes numériques ou des Ligatures.
- Un document utilise des Scripts complexes, tels que l'Arabe, le Khmer, le Thaï, etc.

{{% alert color="primary" %}}

La mise en forme du texte ne sera activée que lors de l'exportation d'un document vers PDF ou XPS.

{{% /alert %}}
