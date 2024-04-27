---
title: Spécifier les options de mise en page Java
second_title: Aspose.Words pour Java
articleTitle: Spécifier les options de mise en page
linktitle: Spécifier les options de mise en page
description: "Créer des documents de sortie avec différentes mises en page, en fonction des paramètres spécifiés dans le document en utilisant Java."
type: docs
weight: 10
url: /fr/java/specify-layout-options/
---

Aspose.Words vous permet de créer des documents de sortie avec différentes mises en page, en fonction des paramètres spécifiés dans le [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) propriété des **Document**. Cette propriété ressemble à certains des Microsoft Word options de menu d'interface utilisateur décrites dans cet article.

Pour une liste complète des paramètres tels que [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getContinuousSectionPageNumberingRestart) pour calculer les numéros de page dans une section continue qui redémarre la numérotation de page, ou [IgnorePrinterMetrics](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getIgnorePrinterMetrics) pour ignorer l'option de compatibilité "Utiliser les paramètres de l'imprimante pour établir le document", voir [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) page de cours.

## Marques de présentation

Aspose.Words permet de gérer les marques de formatage en utilisant les propriétés suivantes:

- Oui. [ShowHiddenText](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowHiddenText) – une `Boolean` valeur, qui spécifie si le texte caché est rendu.
- Oui. [ShowParagraphMarks](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getShowParagraphMarks) – une `Boolean` valeur, qui spécifie si les caractères de marque de paragraphe sont rendus.

La page illustrée dans l'exemple ci-dessous contient trois paragraphes. La seconde est cachée. Un utilisateur peut changer la **ShowHiddenText** option pour afficher ce texte caché sur la page. De plus, chaque paragraphe a une marque de paragraphe à la fin. La marque du paragraphe n'est généralement pas visible à moins que la **ShowParagraphMarks** propriété est prêt à le rendre.

![formatting_marks_example_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-1.png)

En Microsoft Word, ces paramètres sont définis en utilisant la boîte de dialogue "Fichier → Options → Afficher" comme suit:

![formatting_marks_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-3.png)

## Commentaires et révisions

Avec Aspose.Words, vous pouvez faire des commentaires de document qui ressembleront à Microsoft Word. Pour préciser si les commentaires sont rendus, utilisez le [ShowComments](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) propriété.

En Microsoft Word, ce paramètre est défini à l'aide de la boîte de dialogue "Track Change Options", comme indiqué ci-dessous:

![comments_and_revisions_ms_word_aspose_words_java](/words/java/specify-layout-options/specify-layout-options-4.png)

Aussi, Aspose.Words vous permet d'afficher des révisions dans un document. Utiliser [RevisionOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getRevisionOptions) propriété des **LayoutOptions** classe pour définir si les révisions du document sont affichées. Pour contrôler leur apparence (révision en surbrillance couleur, couleur de la barre de révision, etc.), utilisez le [RevisonOptions](https://reference.aspose.com/words/java/com.aspose.words/revisionoptions/) En cours.

Vous pouvez également afficher des révisions en tant que commentaires au contenu. À cette fin, utiliser [CommentDisplayMode](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/#getCommentDisplayMode) biens et [ShowInBalloons](https://reference.aspose.com/words/java/com.aspose.words/commentdisplaymode/) valeur.

L'exemple de code suivant montre comment personnaliser l'affichage des révisions:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-TrackChanges-SetShowInBalloons.java" >}}

L'image ci-dessous montre comment Aspose.Words rend des commentaires et les révisions Supprimer:

<img src="/words/java/specify-layout-options/specify-layout-options-2.png" alt="comments_and_revisions_example_aspose_words_java" style="width:800px"/>

## Formeur de texte pour le rendu typographique avancé

Les [TextShaperFactory](https://reference.aspose.com/words/java/com.aspose.words/itextshaperfactory/) propriété vous permet de définir la fonctionnalité de façonnage de texte, ainsi que la `OpenType` caractéristiques support.

Utiliser la forme de texte pour le traitement des documents dans les cas principaux suivants:

- Un document utilise le kerning, la façonnage numérique, les formes numériques ou les ligatures.
- Un document utilise des scripts complexes, tels que l'arabe, le khmer, le thaï, etc.

{{% alert color="primary" %}}

La forme du texte ne sera activée que lors de l'exportation d'un document en PDF ou XPS.

{{% /alert %}}
