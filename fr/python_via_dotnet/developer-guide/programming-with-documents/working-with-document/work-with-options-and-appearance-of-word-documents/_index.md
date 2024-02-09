---
title: Options et apparence du document Word
second_title: Aspose.Words pour Python
articleTitle: Travailler avec les options et l'apparence des documents Word
linktitle: Travailler avec les options et l'apparence des documents Word
description: "Contrôlez l'apparence des documents Word en tenant compte de la différence entre les différentes versions de Microsoft Word à l'aide de Python."
type: docs
weight: 40
url: /fr/python-net/work-with-word-document-options-and-appearance/
---

Parfois, vous devrez peut-être modifier l'apparence d'un document, par exemple définir des préférences de langue ou le nombre de lignes par page. Aspose.Words offre la possibilité de contrôler la façon dont le document sera affiché, ainsi que certaines options supplémentaires. Cet article décrit de telles possibilités.

## Définir les options d'affichage du document

Vous pouvez contrôler la façon dont un document sera affiché dans Microsoft Word à l'aide de la classe [ViewOptions](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/). Par exemple, vous pouvez définir une valeur de zoom de document à l'aide de la propriété [zoom_percent](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/zoom_percent/) ou le mode d'affichage à l'aide de la propriété [view_type](https://reference.aspose.com/words/python-net/aspose.words.settings/viewoptions/view_type/).

L'exemple de code suivant montre comment garantir qu'un document s'affiche à 50 % lorsqu'il est ouvert dans Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetViewOption.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle pour cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 n'écrit aucun facteur de zoom dans un document et ne définit plus le zoom par défaut à partir de la valeur écrite dans le document. Il semble plutôt utiliser le facteur de zoom du dernier document ouvert.

{{% /alert %}}

## Définir les options d'affichage de la page

Si vous souhaitez définir le nombre de caractères par ligne, utilisez la propriété [characters_per_line](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/characters_per_line/). Vous pouvez également définir le nombre de lignes par page pour un document Word – utilisez la propriété [lines_per_page](https://reference.aspose.com/words/python-net/aspose.words/pagesetup/lines_per_page/) pour obtenir ou définir le nombre de lignes par page dans la grille du document.

{{% alert color="primary" %}}

Dans Microsoft Word, vous pouvez définir les mêmes paramètres à l'aide de l'onglet "Grille de document" dans la boîte de dialogue "Mise en page" uniquement lorsque la prise en charge des langues asiatiques est installée.

{{% /alert %}}

L'exemple de code suivant montre comment définir le nombre de caractères par ligne et le nombre de lignes par page pour un document Microsoft Word:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-DocumentPageSetup.py" >}}

## Définir les préférences linguistiques

L'affichage d'un document dans Microsoft Word dépend des langues définies par défaut pour ce document. Si aucune langue n'est définie par défaut, Microsoft Word extrait les informations de la boîte de dialogue "Définir les préférences de langue d'Office", qui se trouve, par exemple, sous "Fichier → Options → Langue" dans Microsoft Word 2019.

Avec Aspose.Words, vous pouvez également définir des préférences linguistiques à l'aide de la classe [LanguagePreferences](https://reference.aspose.com/words/python-net/aspose.words.loading/languagepreferences/). Notez également que pour l'affichage correct de votre document, il est nécessaire de définir la version Microsoft Word à laquelle le processus de chargement du document doit correspondre – cela peut être fait en utilisant la propriété [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/).

{{% alert color="primary" %}}

Si votre document généré Aspose.Words ne ressemble pas à ce que vous attendez, vérifiez les valeurs [language_preferences](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/language_preferences/) et [msw_version](https://reference.aspose.com/words/python-net/aspose.words.loading/loadoptions/msw_version/) et ajustez-les si nécessaire pour qu'elles correspondent aux paramètres de votre version Microsoft Word.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter le japonais aux langues d'édition:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-AddJapaneseAsEditinglanguages.py" >}}

L'exemple de code suivant montre comment définir le russe comme langue d'édition par défaut:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-SetRussianAsDefaultEditingLanguage.py" >}}

## Optimiser un document pour une version Word particulière

La méthode [optimize_for](https://reference.aspose.com/words/python-net/aspose.words.settings/compatibilityoptions/optimize_for/) permet d'optimiser le contenu du document, ainsi que le comportement Aspose.Words par défaut pour une version particulière de Microsoft Word. Vous pouvez utiliser cette méthode pour empêcher Microsoft Word d'afficher le ruban "Mode de compatibilité" lors du chargement du document. Notez que vous devrez peut-être également définir la propriété [compliance](https://reference.aspose.com/words/python-net/aspose.words/document/compliance/) sur [ISO29500_2008_TRANSITIONAL](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlcompliance/#iso29500_2008_transitional) ou une version ultérieure.

L'exemple de code suivant montre comment optimiser le contenu d'un document pour Microsoft Word 2016:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-Programming with Documents-Working with Document-working_with_document_options_and_settings-OptimizeForMsWord.py" >}}
