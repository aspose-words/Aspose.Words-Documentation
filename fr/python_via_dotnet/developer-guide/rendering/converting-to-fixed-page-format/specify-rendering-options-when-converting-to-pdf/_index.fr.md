---
title: Options lors de la conversion en PDF
second_title: Aspose.Words pour Python via .NET
articleTitle: Spécifier les options de rendu lors de la conversion au format PDF
linktitle: Spécifier les options de rendu lors de la conversion au format PDF
description: "Convertissez un document en PDF avec des options avancées à l'aide de Python. Utilisez PdfSaveOptions pour modifier le résultat de l'enregistrement d'un document au format PDF."
type: docs
weight: 20
url: /fr/python-net/specify-rendering-options-when-converting-to-pdf/
timestamp: 2024-10-21-11-17-44
---

Le format PDF est un format de page fixe très populaire parmi les utilisateurs et largement pris en charge par diverses applications, car un document PDF se présente de la même manière sur n'importe quel appareil. Pour cette raison, la conversion au format PDF est une fonctionnalité importante de Aspose.Words.

Le PDF est un format complexe. Plusieurs étapes de calculs sont nécessaires dans le processus de conversion d'un document en PDF, y compris le calcul de la mise en page. Ces étapes impliquant des calculs complexes, elles prennent du temps. De plus, le format PDF est plutôt complexe en soi. Il a une structure de fichiers, un modèle graphique et une intégration de polices spécifiques. De plus, il propose des fonctionnalités de sortie complexes, telles que les balises de structure de document, le cryptage, les signatures numériques et les formulaires modifiables.

Le moteur de mise en page Aspose.Words imite le fonctionnement du moteur de mise en page de Microsoft Word. Par conséquent, Aspose.Words rend les documents de sortie PDF aussi proches que possible de ce que vous pouvez voir dans Microsoft Word. Parfois, il est nécessaire de spécifier des options supplémentaires, ce qui peut affecter le résultat de l'enregistrement d'un document au format PDF. Ces options peuvent être spécifiées à l'aide de la classe [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/), contenant les propriétés qui déterminent la manière dont la sortie PDF sera affichée.

Quelques exemples d'utilisation de [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) sont fournis ci-dessous.

{{% alert color="primary" %}}

Actuellement, vous pouvez également enregistrer aux formats PDF/A-1 et PDF/A-2. Notez qu'avec le format PDF/A, la taille d'un fichier de sortie est plus grande que la taille d'un fichier PDF standard.

[PdfCompliance.PDF_A1A](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1a) et [PdfCompliance.PDF_A1B](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a1b) sont marqués comme obsolètes.

Pour plus d'informations sur PDF/A, consultez l'article suivant, "Découvrir les fonctionnalités de conversion au format PDF/A".

{{% /alert %}}

## Création d'un document PDF avec des formulaires à remplir

Il est également possible d'exporter des formulaires à remplir à partir d'un document Microsoft Word vers un PDF de sortie, qui contient des formulaires à remplir au lieu d'un texte brut. Utilisez la propriété [preserve_form_fields](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/preserve_form_fields/) pour enregistrer un document au format PDF avec des formulaires à remplir.

Notez que contrairement au Microsoft Word, le format PDF propose un nombre limité d'options pour les formulaires modifiables, telles que la zone de texte, la zone de liste déroulante et la case à cocher. Microsoft Word propose davantage de types de formulaires, par exemple un sélecteur de date de calendrier. En règle générale, il n'est pas possible d'imiter entièrement le comportement de Microsoft Word dans un PDF. Par conséquent, dans certains cas complexes, la sortie PDF peut différer de ce que vous voyez dans Microsoft Word.

L'exemple de code ci-dessous montre comment enregistrer un document au format PDF avec des formulaires à remplir avec une compression et une qualité Jpeg spécifiées:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-PdfImageComppression.py" >}}

## Exportation de la structure du document et des propriétés personnalisées

La propriété [export_document_structure](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/export_document_structure/) vous permet d'exporter la structure du document vers une sortie PDF.

Les fonctionnalités de structure logique PDF fournissent un mécanisme permettant d'incorporer des informations concernant la structure du contenu du document dans un fichier PDF. Aspose.Words conserve les informations sur la structure d'un document Microsoft Word, telles que les paragraphes, les listes, les tableaux, les notes de bas de page/notes de fin, etc.

L'exemple suivant montre comment enregistrer un document au format PDF, en préservant la structure du document:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportDocumentStructure.py" >}}

Aspose.Words vous permet également d'exporter les propriétés personnalisées du document au format PDF, comme le montre l'exemple suivant:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-CustomPropertiesExport.py" >}}

## Exportation de plans à partir de signets et de titres dans le PDF de sortie

Si vous souhaitez exporter des signets sous forme de plans dans le PDF de sortie, vous pouvez utiliser la propriété [default_bookmarks_outline_level](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/default_bookmarks_outline_level/). Cette propriété spécifie le niveau par défaut dans le plan du document, auquel les signets Microsoft Word sont affichés. Si le document contient des signets dans l'en-tête/pied de page du document, vous pouvez définir la propriété [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) sur [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) ou [HeaderFooterBookmarksExportMode.ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#all) afin de spécifier comment ils sont exportés dans le PDF de sortie. Les signets dans les en-têtes/pieds de page ne sont pas exportés lorsque la valeur de [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) est [HeaderFooterBookmarksExportMode.NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#none).

L'exemple de code ci-dessous montre comment exporter des signets à partir du premier en-tête/pied de page d'une section:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-ExportHeaderFooterBookmarks.py" >}}

Le PDF de sortie de cet exemple est présenté ci-dessous:

![specify-rendering-options-when-converting-to-pdf_1](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Lorsque [header_footer_bookmarks_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/header_footer_bookmarks_export_mode/) est défini sur [HeaderFooterBookmarksExportMode.FIRST](https://reference.aspose.com/words/python-net/aspose.words.saving/headerfooterbookmarksexportmode/#first) et que le document comporte des en-têtes/pieds de page pairs et impairs ou un en-tête/pied de page de première page différent, les signets sont exportés pour les premiers en-têtes/pieds de page uniques d'une section.

Vous pouvez également exporter des titres dans le PDF de sortie, à l'aide de la propriété [headings_outline_levels](https://reference.aspose.com/words/python-net/aspose.words.saving/outlineoptions/headings_outline_levels/). Cette propriété spécifie le nombre de niveaux de titres inclus dans le plan du document.

L'exemple de code ci-dessous montre comment exporter des titres à trois niveaux:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-SetOutlineOptions.py" >}}

Le PDF de sortie de cet exemple est illustré ci-dessous:

![specify-rendering-options-when-converting-to-pdf_2](/words/python-net/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Un signet ou un titre de navigation peut avoir différentes apparences dans différents visualiseurs PDF. De plus, dans certaines applications, les signets et la navigation par titre ne sont pas disponibles dans l'interface utilisateur.

{{% /alert %}}

## Sous-échantillonner les images pour réduire la taille du document

Aspose.Words offre la possibilité de sous-échantillonner les images afin de réduire la taille du PDF de sortie, à l'aide de la propriété [downsample_options](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/downsample_options/). Le sous-échantillonnage est activé par défaut dans la propriété [downsample_images](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/downsample_images/).

A noter qu'il est également possible de définir une résolution spécifique dans la propriété [resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution/), ou un seuil de résolution dans la propriété [resolution_threshold](https://reference.aspose.com/words/python-net/aspose.words.saving/downsampleoptions/resolution_threshold/). Dans le second cas, si la résolution de l’image est inférieure à la valeur seuil, le sous-échantillonnage ne s’appliquera pas.

L'exemple de code ci-dessous montre comment modifier la résolution des images dans un document PDF de sortie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DownsamplingImages.py" >}}

La résolution est calculée en fonction de la taille réelle de l'image sur la page.

## Incorporation de polices au format Adobe PDF

Aspose.Words vous permet également de contrôler la manière dont les polices sont intégrées dans les documents PDF résultants. Les polices doivent être intégrées dans n'importe quel document Adobe PDF pour garantir que le document puisse être correctement rendu sur n'importe quelle machine (voir plus de détails sur le rendu des polices dans la section [Utilisation des polices TrueType](/words/fr/python-net/using-truetype-fonts/)). Par défaut, Aspose.Words intègre un sous-ensemble de polices utilisées dans le document dans le PDF généré. Dans ce cas, seuls les glyph (caractères) utilisés dans le document sont enregistrés au format PDF.

### Quand utiliser des polices complètes et quand sous-ensembler

Il existe un moyen de spécifier une option permettant à Aspose.Words d'intégrer des polices complètes. De plus amples détails, ainsi que certains avantages et inconvénients de chaque paramètre, sont décrits dans le tableau ci-dessous.

| Mode Intégrer les polices |  Avantages | Désavantages |
|  :-  |  :-  |  :-  |
|  `Full`  | Utile lorsque vous souhaitez modifier ultérieurement le PDF résultant en ajoutant ou en modifiant le texte. Toutes les polices sont incluses, donc tous les glyph sont présents. | Étant donné que certaines polices sont volumineuses (plusieurs mégaoctets), leur intégration sans sous-ensemble peut entraîner des fichiers de sortie volumineux. |
|  `Subset`  | Le sous-ensemble est utile si vous souhaitez réduire la taille du fichier de sortie. | <p>L'utilisateur ne peut pas entièrement ajouter ou modifier du texte à l'aide de la police sous-définie dans le document PDF de sortie. En effet, tous les glyph de la police ne sont pas présents.</p>

<p>Si plusieurs PDF sont enregistrés avec des polices sous-ensembles et assemblés ensemble, le document PDF combiné peut alors avoir une police contenant de nombreux sous-ensembles inutiles.</p> |

### Incorporation de polices complètes dans un PDF

La propriété [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) vous permet de spécifier comment Aspose.Words intègre les polices dans un document PDF de sortie.

- Pour intégrer des polices complètes dans le document PDF de sortie, définissez [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) sur *True*
- Pour sous-ensembler les polices lors de l'enregistrement au format PDF, définissez [embed_full_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/embed_full_fonts/) sur *False*

L'exemple suivant montre comment intégrer des polices complètes dans le document PDF de sortie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddAllFonts.py" >}}

L'exemple suivant montre comment configurer Aspose.Words pour créer un sous-ensemble de polices dans le PDF de sortie:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-EmbeddSubsetFonts.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle pour ces exemples à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Comment contrôler l'intégration des polices principales et des polices standard Windows

Les polices principales et les polices Windows Standard sont les ensembles de polices "standard", qui sont généralement présents sur la machine cible ou fournis par le lecteur de documents, ils n'ont donc pas besoin d'être intégrés dans le PDF de sortie. En n'intégrant pas ces polices, vous pouvez réduire la taille des documents PDF rendus tout en conservant la portabilité.

Aspose.Words fournit des options pour choisir la manière dont les polices sont exportées au format PDF. Vous pouvez choisir soit d'incorporer les polices principales et standard dans le PDF de sortie, soit d'ignorer leur intégration et d'utiliser à la place les polices PDF principales standard ou les polices système sur la machine cible. L'utilisation de l'une ou l'autre de ces options entraîne normalement une réduction significative de la taille des fichiers PDF générés par Aspose.Words.

- Puisque ces options s’excluent mutuellement, vous ne devez en choisir qu’une à la fois.
- Lors de l'enregistrement avec la conformité PDF/A-1, toutes les polices utilisées doivent être intégrées au document PDF. Lors d'un enregistrement avec cette conformité, la propriété [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/) doit être définie sur *False* et la propriété [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) doit être définie sur [PdfFontEmbeddingMode.EMBED_ALL](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_all).

### Incorporation des polices principales

L'option d'intégration des polices Core peut être activée ou désactivée à l'aide de la propriété [use_core_fonts](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/use_core_fonts/). Lorsqu'il est défini sur true, les polices "True Type" les plus populaires suivantes (polices Base 14) ne sont pas intégrées dans le document PDF de sortie:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Ces polices sont remplacées par les polices de base de type 1 correspondantes, qui sont fournies par un lecteur lors de l'ouverture du PDF.

L'exemple fourni ci-dessous montre comment configurer Aspose.Words pour éviter d'incorporer les polices principales et permettre au lecteur de les remplacer par des polices PDF Type 1:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-AvoidEmbeddingCoreFonts.py" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle pour cet exemple à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Étant donné que les visionneuses PDF fournissent des polices de base sur n'importe quelle plate-forme prise en charge, cette option est également utile lorsqu'une plus grande portabilité des documents est requise. Cependant, les polices principales peuvent être différentes des polices système.

{{% alert color="primary" %}}

Ce paramètre fonctionne uniquement pour le texte codé ANSI (Windows-1252). L'écriture d'un texte non ANSI au format PDF nécessitera toujours l'intégration des polices correspondantes.

{{% /alert %}}

### Intégration des polices système

Cette option peut être activée ou désactivée à l'aide du [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/). Lorsque cette propriété est définie sur [PdfFontEmbeddingMode.EMBED_NONSTANDARD](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_nonstandard), les polices de type true "Arial" et "Times New Roman" ne sont pas intégrées dans un document PDF. Dans ce cas, le visualiseur client s'appuie sur les polices installées sur le système d'exploitation du client. Lorsque la propriété [font_embedding_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/font_embedding_mode/) est définie sur [PdfFontEmbeddingMode.EMBED_NONE](https://reference.aspose.com/words/python-net/aspose.words.saving/pdffontembeddingmode/#embed_none), Aspose.Words n'intègre aucune police.

L'exemple ci-dessous montre comment configurer Aspose.Words pour ignorer l'intégration des polices Arial et Times New Roman dans un document PDF:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-Save Options-working_with_pdf_save_options-DisableEmbedWindowsFonts.py" >}}

Ce mode est particulièrement utile lorsque vous souhaitez visualiser vos documents sur la même plateforme, en préservant l'apparence exacte des polices dans le PDF de sortie.

{{% alert color="primary" %}}

Ce paramètre fonctionne uniquement pour le texte codé ANSI (Windows-1252). L'écriture d'un texte non ANSI au format PDF nécessite que la police correspondante soit intégrée.

{{% /alert %}}
