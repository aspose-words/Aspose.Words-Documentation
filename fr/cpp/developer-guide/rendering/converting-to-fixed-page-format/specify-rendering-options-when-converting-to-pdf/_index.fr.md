---
title: Spécifiez les options de rendu Lors de la conversion en PDF
second_title: Aspose.Words pour C++
articleTitle: Spécifiez les options de rendu Lors de la conversion en PDF
linktitle: Spécifiez les options de rendu Lors de la conversion en PDF
description: "Convertissez un document en PDF avec des options avancées en utilisant C++. Utilisez PdfSaveOptions pour modifier le résultat de l'enregistrement d'un document au format PDF."
type: docs
weight: 30
url: /fr/cpp/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Le format PDF est un format de page fixe qui est très populaire parmi les utilisateurs et largement pris en charge par diverses applications car un document PDF a la même apparence sur n'importe quel appareil. Pour cette raison, la conversion en PDF est une caractéristique importante de Aspose.Words.

PDF est un format complexe. Plusieurs étapes de calculs sont nécessaires dans le processus de conversion d'un document en PDF, y compris le calcul de la mise en page. Étant donné que ces étapes comprennent des calculs complexes, elles prennent du temps. De plus, le format PDF est assez complexe en soi. Il a une structure de fichier, un modèle graphique et une incorporation de polices spécifiques. De plus, il comporte des fonctionnalités de sortie complexes, telles que les balises de structure de document, le cryptage, les signatures numériques et les formulaires modifiables.

Aspose.Words le moteur de mise en page imite le fonctionnement du moteur de mise en page de Microsoft Word. Par conséquent, Aspose.Words rend PDF les documents de sortie aussi proches que possible de ce que vous pouvez voir dans Microsoft Word. Parfois, il est nécessaire de spécifier des options supplémentaires, ce qui peut affecter le résultat de l'enregistrement d'un document au format PDF. Ces options peuvent être spécifiées en utilisant la classe [PdfSaveOptions](https://reference.aspose.com/words/cpp/class/aspose.words.saving.pdf_save_options-members), contenant les propriétés qui déterminent comment la sortie PDF sera affichée.

Quelques exemples d'utilisation de **PdfSaveOptions** sont fournis ci-dessous.

{{% alert color="primary" %}}

Actuellement, vous pouvez enregistrer dans PDF 1.7, PDF 2.0, PDF/A-1formats a, PDF/A-1b, PDF/A-2a, PDF/A-2u et PDF/UA-1. Utilisez l'énumération [PdfCompliance](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) pour définir le niveau de conformité aux normes PDF. Notez qu'avec le format PDF/A, une taille de fichier de sortie est supérieure à une taille de fichier PDF normale.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) et [PdfCompliance.PdfA1b](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfcompliance/) sont marqués comme obsolètes.

Pour plus d'informations sur PDF/A, consultez l'article suivant, "Découvrez les fonctionnalités de conversion en PDF/A".

{{% /alert %}}

## Création d'un document PDF avec des formulaires remplissables

Il est également possible d'exporter des formulaires remplissables à partir d'un document Microsoft Word vers la sortie PDF, qui contient des formulaires remplissables au lieu de texte brut. Utilisez la propriété [PreserveFormFields](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_preserveformfields/) pour enregistrer un document sous PDF avec des formulaires remplissables.

Notez que contrairement à Microsoft Word, le format PDF a un nombre limité d'options pour les formulaires modifiables, tels que zone de texte, zone de liste déroulante et case à cocher. Microsoft Word propose plusieurs types de formulaires, par exemple le sélecteur de date du calendrier. Généralement, il n'est pas possible d'imiter complètement le comportement de Microsoft Word dans PDF. Par conséquent, dans certains cas complexes, la sortie PDF peut différer de ce que vous voyez dans Microsoft Word.

L'exemple de code ci-dessous montre comment enregistrer un document sous PDF avec des formulaires remplissables avec une compression et une qualité Jpeg spécifiées:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "Examples-DocsExamples-source-File Formats and Conversions-Save Options-Working with PdfSaveOptions-PdfImageComppression.h" >}}

## Exportation de la Structure du Document et des Propriétés Personnalisées

La propriété [ExportDocumentStructure](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_exportdocumentstructure/) vous permet d'exporter la structure du document vers la sortie PDF.

Les structures logiques PDF fournissent un mécanisme pour incorporer des informations, concernant la structure du contenu du document, dans un fichier PDF. Aspose.Words préserve les informations sur la structure d'un document Microsoft Word, telles que les paragraphes, les listes,les tableaux, les notes de bas de page/notes de fin, etc.

L'exemple suivant montre comment enregistrer un document au format PDF, en préservant la structure du document:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.cpp" >}}

Aspose.Words vous permet également d'exporter les propriétés personnalisées du document vers PDF, ce qui est démontré par l'exemple suivant:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.cpp" >}}

## Exportation des contours à partir des signets et des en-têtes dans la sortie PDF

Si vous souhaitez exporter des signets en tant que contours dans la sortie PDF, vous pouvez utiliser la propriété [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_defaultbookmarksoutlinelevel/). Cette propriété spécifie le niveau par défaut dans le plan du document, auquel les signets Microsoft Word sont affichés. Si le document contient des signets dans l'en-tête/pied de page du document, vous pouvez définir la propriété [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_headerfooterbookmarksexportmode/) sur [First](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) ou [All](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/) afin de spécifier comment ils sont exportés dans la sortie PDF. Les signets dans les en-têtes/pieds de page ne sont pas exportés lorsque la valeur de **HeaderFooterBookmarksExportMode** est [None](https://reference.aspose.com/words/cpp/aspose.words.saving/headerfooterbookmarksexportmode/).

L'exemple de code ci-dessous montre comment exporter des signets à partir du premier en-tête/pied de page d'une section:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.cpp" >}}

La sortie PDF de cet exemple est illustrée ci-dessous:

![specify-rendering-options-aspose-words-cpp-1](specify-rendering-options-when-converting-to-pdf-1.png)

Lorsque **HeaderFooterBookmarksExportMode** est défini sur Premier et que le document a des en-têtes/pieds de page pairs et impairs ou un en-tête/pied de page de première page différent, les signets sont exportés pour les premiers en-têtes/pieds de page uniques d'une section.

Vous pouvez également exporter des en-têtes dans la sortie PDF, en utilisant la propriété [HeadingsOutlineLevels](https://reference.aspose.com/words/cpp/aspose.words.saving/outlineoptions/get_headingsoutlinelevels/). Cette propriété spécifie le nombre de niveaux d'en-têtes inclus dans le plan du document.

L'exemple de code ci-dessous montre comment exporter des en-têtes à trois niveaux:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.cpp" >}}

La sortie PDF de cet exemple est illustrée ci-dessous:

![specify-rendering-options-aspose-words-cpp-2](specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Un signet ou une navigation d'en-tête peut avoir des apparences différentes dans différents visualiseurs PDF. De plus, dans certaines applications, les signets et la navigation dans les en-têtes ne sont pas disponibles dans l'interface utilisateur.

{{% /alert %}}

## Sous-échantillonnage des Images pour Réduire la Taille du Document

Aspose.Words offre la possibilité de sous-échantillonner des images afin de réduire la taille de sortie PDF, en utilisant la propriété [DownsampleOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_downsampleoptions/). Le sous-échantillonnage est activé par défaut dans la propriété [DownsampleImages](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_downsampleimages/).

Notez qu'il est également possible de définir une résolution spécifique dans la propriété [Resolution](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolution/), ou un seuil de résolution dans la propriété [ResolutionThreshold](https://reference.aspose.com/words/cpp/aspose.words.saving/downsampleoptions/get_resolutionthreshold/). Dans le second cas, si la résolution de l'image est inférieure à la valeur seuil, le sous-échantillonnage ne s'appliquera pas.

L'exemple de code ci-dessous montre comment modifier la résolution des images dans un document de sortie PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-WorkingWithPdfSaveOptions-DownsamplingImages.cpp" >}}

La résolution est calculée en fonction de la taille réelle de l'image sur la page.

## Incorporation de polices au format Adobe PDF

Aspose.Words vous permet également de contrôler la manière dont les polices sont incorporées dans les documents PDF résultants. Les polices doivent être incorporées dans n'importe quel document Adobe PDF pour garantir que le document peut être correctement rendu sur n'importe quelle machine (voir plus de détails sur le rendu des polices dans la section [Utilisation des polices TrueType ](/words/cpp/using-truetype-fonts/)). Par défaut, Aspose.Words incorpore un sous-ensemble de polices utilisées dans le document dans le PDF généré. Dans ce cas, seuls les glyphes (caractères) utilisés dans le document sont enregistrés dans PDF.

### Quand utiliser des Polices complètes et Quand Sous-définir

Il existe un moyen de spécifier une option pour Aspose.Words pour incorporer des polices complètes. De plus amples détails, ainsi que certains avantages et inconvénients de chaque réglage sont décrits dans le tableau ci-dessous.

| Mode d'intégration des Polices | Avantages | Inconvénients |
| :- | :- | :- |
| `Full` | Utile lorsque vous souhaitez modifier le PDF résultant ultérieurement en ajoutant ou en modifiant le texte. Toutes les polices sont incluses, donc tous les glyphes sont présents. | Étant donné que certaines polices sont volumineuses( plusieurs mégaoctets), leur incorporation sans sous-ensemble peut entraîner des fichiers de sortie volumineux. |
| `Subset` | Le sous-ensemble est utile si vous souhaitez réduire la taille du fichier de sortie. | <p>L'utilisateur ne peut pas ajouter ou modifier complètement le texte à l'aide de la police sous-définie dans le document de sortie PDF. C'est parce que tous les glyphes de la police ne sont pas présents.</p><p>Si plusieurs PDFs sont enregistrés avec des polices sous-définies et assemblés ensemble, le document PDF combiné peut avoir une police contenant de nombreux sous-ensembles inutiles.</p> |

### Incorporation de polices complètes dans PDF

La propriété [EmbedFullFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_embedfullfonts/) vous permet de spécifier comment Aspose.Words incorpore les polices dans un document PDF de sortie.

- Pour incorporer des polices complètes dans le document de sortie PDF, définissez **EmbedFullFonts** sur true
- Pour sous-définir les polices lors de l'enregistrement sur PDF, définissez **EmbedFullFonts** sur false

L'exemple suivant montre comment incorporer des polices complètes dans le document PDF de sortie:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddAllFonts.cpp" >}}

L'exemple suivant montre comment définir Aspose.Words pour sous-définir les polices dans la sortie PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle pour ces exemples à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

## Comment contrôler l'incorporation des Polices de Base et des Polices Standard Windows

Les polices de base et les polices standard Windows sont les ensembles de polices "standard", qui sont généralement présents sur la machine cible ou fournis par le lecteur de documents, par conséquent, ils n'ont pas besoin d'être incorporés dans la sortie PDF. En n'incorporant pas ces polices, vous pouvez réduire la taille des documents PDF rendus tout en conservant la portabilité.

Aspose.Words fournit des options pour choisir comment les polices sont exportées vers PDF. Vous pouvez choisir d'incorporer des polices de base et standard dans la sortie PDF ou d'ignorer leur incorporation et d'utiliser à la place des polices de base standard PDF ou des polices système sur la machine cible. L'utilisation de l'une ou l'autre de ces options entraîne normalement une réduction significative de la taille des fichiers pour PDF documents générés par Aspose.Words.

- Étant donné que ces options s'excluent mutuellement, vous ne devez en choisir qu'une à la fois.
- Lors de l'enregistrement avec la conformité PDF/A-1, toutes les polices utilisées doivent être intégrées au document PDF. Lors de l'enregistrement avec cette conformité, la propriété [UseCoreFonts](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_usecorefonts/) doit être définie sur false et la propriété [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/set_fontembeddingmode/) doit être définie sur [EmbedAll](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/) [.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Incorporation des Polices de Base

L'option d'incorporation des polices principales peut être activée ou désactivée à l'aide de la propriété `UseCoreFonts`. Lorsqu'elle est définie sur true, les polices "True Type" les plus populaires suivantes (polices de base 14) ne sont pas incorporées dans le document PDF de sortie:

`Arial`
`Times New Roman`
`Courier New`
`Symbol`

Ces polices sont remplacées par les polices de type de base 1 correspondantes, qui sont fournies par un lecteur lorsque le PDF est ouvert.

L'exemple fourni ci-dessous montre comment définir Aspose.Words pour éviter d'incorporer des polices de base et laisser le lecteur les remplacer par des polices de type PDF 1:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddingWindowsStandardFonts-AvoidEmbeddingCoreFonts.cpp" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle de cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}

Étant donné que les visualiseurs PDF fournissent des polices de base sur n'importe quelle plate-forme prise en charge, cette option est également utile lorsqu'une plus grande portabilité des documents est requise. Cependant, les polices de base peuvent être différentes des polices système.

{{% alert color="primary" %}}

Ce paramètre ne fonctionne que pour le texte d'encodage ANSI (Windows-1252). L'écriture d'un texte non-ANSI sur PDF nécessitera toujours l'incorporation des polices correspondantes.

{{% /alert %}}

### Incorporation des Polices Système

Cette option peut être activée ou désactivée à l'aide de la propriété [FontEmbeddingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/get_fontembeddingmode/). Lorsque cette propriété est définie sur [EmbedNonstandard](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), les polices true type "Arial" et "Times New Roman" ne sont pas incorporées dans un document PDF. Dans ce cas, le visualiseur client s'appuie sur les polices installées sur le système d'exploitation du client. Lorsque la propriété **FontEmbeddingMode** est définie sur [EmbedNone](https://reference.aspose.com/words/cpp/aspose.words.saving/pdffontembeddingmode/), Aspose.Words n'incorpore aucune police.

L'exemple ci-dessous montre comment définir Aspose.Words pour ignorer l'incorporation des polices Arial et Times New Roman dans un document PDF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.cpp" >}}

Ce mode est particulièrement utile lorsque vous souhaitez afficher vos documents sur la même plate-forme, en préservant l'apparence exacte des polices dans la sortie PDF.

{{% alert color="primary" %}}

Ce paramètre ne fonctionne que pour le texte d'encodage ANSI (Windows-1252). L'écriture d'un texte non-ANSI sur PDF nécessite l'incorporation de la police correspondante.

{{% /alert %}}
