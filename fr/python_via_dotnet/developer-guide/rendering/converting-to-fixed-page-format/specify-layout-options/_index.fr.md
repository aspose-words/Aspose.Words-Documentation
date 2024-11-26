---
title: Spécifier les options de mise en page dans Python
second_title: Aspose.Words pour Python via .NET
articleTitle: Spécifier les options de mise en page
linktitle: Spécifier les options de mise en page
description: "Spécifiez les options de mise en page pour diverses mises en page de documents à l'aide de Python."
type: docs
weight: 10
url: /fr/python-net/specify-layout-options/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words vous permet de créer des documents de sortie avec différentes mises en page, en fonction des paramètres spécifiés dans les propriétés de la classe [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/). Certaines de ces propriétés ressemblent à certaines options de menu de l'interface utilisateur Microsoft Word – elles seront décrites dans cet article.

Pour une liste complète des paramètres tels que [continuous_section_page_numbering_restart](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/continuous_section_page_numbering_restart/) pour calculer les numéros de page dans une section continue qui redémarre la numérotation des pages, ou [ignore_printer_metrics](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/ignore_printer_metrics/) pour ignorer l'option de compatibilité "Utiliser les métriques de l'imprimante pour mettre en page le document", consultez la page de classe [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/).

## Marques de formatage

Aspose.Words permet de gérer les marques de formatage à l'aide des propriétés suivantes:

- [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) – une valeur `Boolean`, qui spécifie si le texte masqué est rendu.
- [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) – une valeur `Boolean`, qui spécifie si les caractères de marque de paragraphe sont rendus.

La page représentée dans l'exemple ci-dessous contient trois paragraphes. Le second est caché. Un utilisateur peut modifier l'option [show_hidden_text](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_hidden_text/) pour afficher ce texte masqué sur la page. De plus, chaque paragraphe comporte une marque de paragraphe à la fin. La marque de paragraphe n'est généralement pas visible à moins que la propriété [show_paragraph_marks](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/show_paragraph_marks/) ne soit définie pour la restituer.

![specify-layout-options_1](/words/python-net/specify-layout-options/specify-layout-options-1.png)

Dans Microsoft Word, ces paramètres sont définis à l'aide de la boîte de dialogue "Fichier → Options → Affichage" comme suit:

![specify-layout-options_2](/words/python-net/specify-layout-options/specify-layout-options-2.jpg)

## Commentaires et révisions

Avec Aspose.Words, vous pouvez afficher des commentaires de document qui auront le même aspect que dans Microsoft Word. Pour spécifier si les commentaires sont affichés, utilisez la propriété [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/).

Dans Microsoft Word, ce paramètre est défini à l'aide de la boîte de dialogue "Options de suivi des modifications", comme indiqué ci-dessous:

![specify-layout-options_3](/words/python-net/specify-layout-options/specify-layout-options-3.jpg)

De plus, Aspose.Words vous permet d'afficher les révisions dans un document. Utilisez la propriété [revision_options](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/revision_options/) de la classe [LayoutOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/) pour définir si les révisions du document sont affichées. Pour contrôler leur apparence (couleur de surbrillance des révisions, couleur de la barre de révision, etc.), utilisez la classe [RevisionOptions](https://reference.aspose.com/words/python-net/aspose.words.layout/revisionoptions/).

Vous pouvez également afficher les révisions sous forme de commentaires sur le contenu. À cette fin, utilisez la propriété [comment_display_mode](https://reference.aspose.com/words/python-net/aspose.words.layout/layoutoptions/comment_display_mode/) et la valeur [SHOW_IN_BALLOONS](https://reference.aspose.com/words/python-net/aspose.words.layout/commentdisplaymode/#show_in_balloons).

L'exemple de code suivant montre comment personnaliser l'affichage des révisions:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-working_with_revisions-ShowRevisionsInBalloons.py" >}}

L'image ci-dessous montre comment Aspose.Words restitue les commentaires et les révisions de suppression:

<img src="/words/python-net/specify-layout-options/specify-layout-options-4.png" alt="comments_and_revisions_example_aspose_words_net" style="width:800px"/>
