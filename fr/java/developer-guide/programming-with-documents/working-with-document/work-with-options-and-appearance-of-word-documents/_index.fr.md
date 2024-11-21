---
title: Options et apparence des documents Word
second_title: Aspose.Words pour Java
articleTitle: Travailler avec les options et l'apparence des documents Word
linktitle: Travailler avec les options et l'apparence des documents Word
description: "Contrôler l'apparence des documents Word en tenant compte de la différence entre les différents Microsoft Word versions utilisant Java."
type: docs
weight: 40
url: /fr/java/work-with-word-document-options-and-appearance/
timestamp: 2024-01-27-14-07-04
---

Parfois, vous pouvez avoir besoin de modifier l'apparence d'un document, par exemple, définir des préférences linguistiques ou le nombre de lignes par page.Aspose.Words fournit la possibilité de contrôler la façon dont le document sera affiché, ainsi que quelques options supplémentaires. Cet article décrit ces possibilités.

## Définir les options d'affichage des documents

Vous pouvez contrôler comment un document sera affiché dans Microsoft Word utilisant les [ViewOptions](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/) En cours. Par exemple, vous pouvez définir une valeur de zoom de document en utilisant [ZoomPercent](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getZoomPercent) propriété, ou le mode de vue en utilisant [ViewType](https://reference.aspose.com/words/java/com.aspose.words/viewoptions/#getViewType) propriété.

L'exemple de code suivant montre comment s'assurer qu'un document est affiché à 50 % lors de l'ouverture Microsoft Word:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-SetViewOptions-SetViewOptions.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle pour cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Examples/src/main/resources/Document/TestFile.doc).

{{% /alert %}}

{{% alert color="primary" %}}

Microsoft Word 2013 n'écrit aucun facteur de zoom sur un document et ne définit plus le zoom par défaut à partir de la valeur écrite sur le document, il semble utiliser le facteur de zoom du dernier document ouvert.

{{% /alert %}}

## Définir les options d'affichage de la page

Si vous voulez définir le nombre de caractères par ligne, utilisez le [CharactersPerLine](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getCharactersPerLine) propriété. Vous pouvez également définir le nombre de lignes par page pour un document Word – utilisez le [LinesPerPage](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getLinesPerPage) propriété pour obtenir ou définir le nombre de lignes par page dans la grille de document.

{{% alert color="primary" %}}

En Microsoft Word, Vous pouvez définir les mêmes paramètres en utilisant l'onglet "Grille de documents" dans la boîte de dialogue "Configuration de la page" uniquement lorsque le support en langue asiatique est installé.

{{% /alert %}}

L'exemple de code suivant montre comment définir le nombre de caractères par ligne et le nombre de lignes par page pour un Microsoft Word document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-programming_documents-document-DocumentPageSetup-DocumentPageSetup.java" >}}

## Définir les préférences linguistiques

Afficher un document dans Microsoft Word dépend des langues définies par défaut pour ce document. Si aucune langue n'est définie par défaut, Microsoft Word prend des informations dans la boîte de dialogue "Set Office Language Préférences", qui, par exemple, se trouve sous "Fichier → Options → Langue" dans Microsoft Word 2019.

Avec Aspose.Words, vous pouvez également configurer les préférences linguistiques en utilisant [LanguagePreferences](https://reference.aspose.com/words/java/com.aspose.words/languagepreferences/) En cours. Notez également que pour l'affichage correct de votre document, il est nécessaire de définir le Microsoft Word version que le processus de chargement de document doit correspondre – cela peut être fait en utilisant le [MswVersion](https://reference.aspose.com/words/java/com.aspose.words/loadoptions/#getMswVersion) propriété.

{{% alert color="primary" %}}

Si votre Aspose.Words document généré ne semble pas comme prévu, vérifier **LanguagePreferences** et **MswVersion** les valeurs et les ajuster si nécessaire pour correspondre aux paramètres de votre Microsoft Word de la version française.

{{% /alert %}}

L'exemple de code suivant montre comment ajouter du japonais aux langues d'édition:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-AddJapaneseAsEditinglanguages.java" >}}

L'exemple de code suivant montre comment définir le russe comme langue d'édition par défaut:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-loading_saving-SetupLanguagePreferences-SetRussianAsDefaultEditingLanguage.java" >}}

## Optimiser un document pour un particulier Version Word

Les [OptimizeFor](https://reference.aspose.com/words/java/com.aspose.words/compatibilityoptions/#optimizeFor-int) méthode permet d'optimiser le contenu du document, ainsi que par défaut Aspose.Words comportement pour une version particulière de Microsoft Word. Vous pouvez utiliser cette méthode pour prévenir Microsoft Word à partir de l'affichage du ruban du mode de compatibilité lors du chargement du document. Notez que vous pouvez également avoir besoin de définir le `Compliance` propriété à Iso29500_2008_Transitionnel ou supérieur.

L'exemple de code suivant montre comment optimiser le contenu du document pour Microsoft Word 2016:

{{< highlight csharp >}}
Document doc = new Document(dataDir + "Document.docx");

// Set Word2016 version for document
doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2016);

// Save the document.
doc.save(dataDir + "output.docx");
{{< /highlight >}}
