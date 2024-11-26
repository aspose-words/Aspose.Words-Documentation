---
title: Spécifier les options de mise en page dans C#
second_title: Aspose.Words pour .NET
articleTitle: Spécifier les options de mise en page
linktitle: Spécifier les options de mise en page
description: "Spécifiez les options de mise en page pour diverses mises en page de documents à l'aide de C#."
type: docs
weight: 10
url: /fr/net/specify-layout-options/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words vous permet de créer des documents de sortie avec différentes mises en page, en fonction des paramètres spécifiés dans les propriétés de la classe [LayoutOptions](https://reference.aspose.com/words/fr/net/aspose.words.layout/layoutoptions/). Certaines de ces propriétés ressemblent à certaines options de menu de l'interface utilisateur Microsoft Word – elles seront décrites dans cet article.

Pour une liste complète des paramètres tels que [ContinuousSectionPageNumberingRestart](https://reference.aspose.com/words/fr/net/aspose.words.layout/layoutoptions/continuoussectionpagenumberingrestart/) pour calculer les numéros de page dans une section continue qui redémarre la numérotation des pages, ou [IgnorePrinterMetrics](https://reference.aspose.com/words/fr/net/aspose.words.layout/layoutoptions/ignoreprintermetrics/) pour ignorer l'option de compatibilité "Utiliser les métriques de l'imprimante pour mettre en page le document", consultez la page de classe [LayoutOptions](https://reference.aspose.com/words/fr/net/aspose.words.layout/layoutoptions/).

## Marques de formatage

Aspose.Words permet de gérer les marques de formatage à l'aide des propriétés suivantes:

- [ShowHiddenText](https://reference.aspose.com/words/fr/net/aspose.words.layout/layoutoptions/showhiddentext/) – une valeur `Boolean`, qui spécifie si le texte masqué est rendu.
- [ShowParagraphMarks](https://reference.aspose.com/words/fr/net/aspose.words.layout/layoutoptions/showparagraphmarks/) – une valeur `Boolean` qui spécifie si les caractères de marque de paragraphe sont rendus.

La page représentée dans l'exemple ci-dessous contient trois paragraphes. Le second est caché. Un utilisateur peut modifier l'option **ShowHiddenText** pour afficher ce texte masqué sur la page. De plus, chaque paragraphe comporte une marque de paragraphe à la fin. La marque de paragraphe n'est généralement pas visible à moins que la propriété **ShowParagraphMarks** ne soit définie pour la restituer.

![specify-layout-options_1](/words/net/specify-layout-options/specify-layout-options-1.png)

Dans Microsoft Word, ces paramètres sont définis à l'aide de la boîte de dialogue "Fichier → Options → Affichage" comme suit:

![specify-layout-options_2](/words/net/specify-layout-options/specify-layout-options-2.jpg)

## Commentaires et révisions

Avec Aspose.Words, vous pouvez afficher des commentaires de document qui auront le même aspect que dans Microsoft Word. Pour spécifier si les commentaires sont affichés, utilisez la propriété [CommentDisplayMode](https://reference.aspose.com/words/fr/net/aspose.words.layout/layoutoptions/commentdisplaymode/).

Dans Microsoft Word, ce paramètre est défini à l'aide de la boîte de dialogue "Options de suivi des modifications", comme indiqué ci-dessous:

![specify-layout-options_3](/words/net/specify-layout-options/specify-layout-options-3.jpg)

De plus, Aspose.Words vous permet d'afficher les révisions dans un document. Utilisez la propriété [RevisionOptions](https://reference.aspose.com/words/fr/net/aspose.words.layout/layoutoptions/revisionoptions/) de la classe **LayoutOptions** pour définir si les révisions du document sont affichées. Pour contrôler leur apparence (couleur de surbrillance des révisions, couleur de la barre de révision, etc.), utilisez la classe [RevisonOptions](https://reference.aspose.com/words/fr/net/aspose.words.layout/revisionoptions/).

Vous pouvez également afficher les révisions sous forme de commentaires sur le contenu. À cette fin, utilisez la propriété [CommentDisplayMode](https://reference.aspose.com/words/fr/net/aspose.words.layout/layoutoptions/commentdisplaymode/) et la valeur [ShowInBalloons](https://reference.aspose.com/words/fr/net/aspose.words.layout/commentdisplaymode/).

L'exemple de code suivant montre comment personnaliser l'affichage des révisions:

{{< gist "aspose-words-gists" "eacc4fc7407a98d683f3084bb86d58f7" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Revisions-ShowRevisionsInBalloons.cs" >}}

L'image ci-dessous montre comment Aspose.Words restitue les commentaires et les révisions de suppression:

<img src="/words/net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>

## Text Shaper pour un rendu typographique avancé

La propriété [TextShaperFactory](https://reference.aspose.com/words/fr/net/aspose.words.layout/layoutoptions/textshaperfactory/) vous permet de définir la fonctionnalité de mise en forme du texte, ainsi que la prise en charge des fonctionnalités `OpenType`.

Utilisez la mise en forme de texte pour le traitement de documents dans les cas principaux suivants:

- Un document utilise le crénage, la mise en forme numérique, les formes numériques ou les ligatures.
- Un document utilise des scripts complexes, tels que l'arabe, le khmer, le thaï, etc.

{{% alert color="primary" %}}

La mise en forme du texte sera activée uniquement lors de l'exportation d'un document au format PDF ou XPS.

{{% /alert %}}
