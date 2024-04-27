---
title: Spécifier les options de rendu lors de la conversion en PDF
second_title: Aspose.Words pour Java
articleTitle: Spécifier les options de rendu lors de la conversion en PDF
linktitle: Spécifier les options de rendu lors de la conversion en PDF
description: "Convertir un document en PDF avec des options avancées. Utilisez PdfSaveOptions pour modifier le résultat de l'enregistrement d'un document au format PDF en utilisant Java."
type: docs
weight: 20
url: /fr/java/specify-rendering-options-when-converting-to-pdf/
---

Le format PDF est un format de page fixe qui est très populaire parmi les utilisateurs et largement pris en charge par diverses applications parce qu'un document PDF semble le même sur n'importe quel appareil. Pour cette raison, la conversion en PDF est une caractéristique importante de Aspose.Words.

PDF est un format complexe. Plusieurs étapes de calcul sont nécessaires pour convertir un document en PDF, y compris le calcul de la mise en page. Comme ces étapes comprennent des calculs complexes, elles prennent du temps. De plus, le format PDF est assez complexe en soi. Il possède une structure de fichier spécifique, un modèle graphique et une police d'intégration. De plus, il dispose de certaines fonctionnalités de sortie complexes, telles que les étiquettes de structure de document, le chiffrement, les signatures numériques et les formulaires modifiables.

Aspose.Words le moteur de mise en page imite la façon dont le Microsoft WordLe moteur de mise en page fonctionne. Par conséquent, Aspose.Words rend les documents de sortie PDF aussi proches que possible de ce que vous pouvez voir dans Microsoft Word. Parfois, il est nécessaire de spécifier des options supplémentaires, qui peuvent affecter le résultat de l'enregistrement d'un document au format PDF. Ces options peuvent être spécifiées par l'utilisation de [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) classe, contenant les propriétés qui déterminent comment la sortie PDF sera affichée.

Quelques exemples d'utilisation **PdfSaveOptions** sont fournis ci-dessous.

{{% alert color="primary" %}}

Actuellement, vous pouvez enregistrer en format PDF 1.7, PDF 2.0, PDF/A-1a, PDF/A-1b, PDF/A-2a, PDF/A-2u et PDF/UA-1. Utiliser [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) énumération pour établir le niveau de conformité des normes PDF. Notez qu'avec le format PDF/A, une taille de fichier de sortie est plus grande qu'une taille de fichier PDF ordinaire.

[PdfCompliance.PdfA1a](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) et [PdfCompliance.PdfA1b](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/#PDF-17) sont marqués comme obsolètes.

Pour en savoir plus sur le PDF/A, consultez l'article suivant, "Apprendre les caractéristiques de la conversion en PDF/A".

{{% /alert %}}

## Création d'un PDF Document avec formulaires à remplir

Il est également possible d'exporter des formulaires à remplir Microsoft Word document dans la sortie PDF, qui a des formulaires à remplir au lieu d'un texte simple. Utiliser [PreserveFormFields](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPreserveFormFields) propriété pour enregistrer un document en format PDF avec des formulaires à remplir.

À noter que, contrairement à <span notrans="<span notrans=" Microsoft Word"=""></span>""> le format PDF a un nombre limité d'options pour les formulaires modifiables, comme la boîte à texte, la boîte à combo et la case à cocher. Microsoft Word a plus de types de formulaires, par exemple, sélection de date de calendrier. En général, il n'est pas possible d'imiter complètement Microsoft Word comportement en PDF. Par conséquent, dans certains cas complexes, la sortie PDF peut différer de ce que vous voyez dans Microsoft Word.

L'exemple de code ci-dessous montre comment sauvegarder un document en format PDF avec des formulaires remplissables avec compression Jpeg spécifiée et qualité:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-PdfImageCompression.java" >}}

## Exporter la structure du document et les propriétés personnalisées

Les [ExportDocumentStructure](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getExportDocumentStructure) propriété vous permet d'exporter la structure du document vers la sortie PDF.

Les installations de structure logique PDF fournissent un mécanisme pour intégrer l'information, concernant la structure du contenu du document, dans un fichier PDF. Aspose.Words conserve des informations sur la structure à partir d'un Microsoft Word document, tels que paragraphes, listes, tableaux, notes de bas de page, etc.

L'exemple suivant montre comment sauvegarder un document au format PDF, en préservant la structure du document:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportDocumentStructure.java" >}}

Aspose.Words vous permet également d'exporter des propriétés personnalisées de document vers PDF, ce qui est démontré par l'exemple suivant:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-CustomPropertiesExport.java" >}}

## Exporter les grandes lignes des signets et des rubriques dans la sortie PDF

Si vous voulez exporter des signets comme esquisses dans la sortie PDF, vous pouvez utiliser le [DefaultBookmarksOutlineLevel](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getDefaultBookmarksOutlineLevel) propriété. Cette propriété spécifie le niveau par défaut dans le plan du document, à laquelle Microsoft Word Les signets sont affichés. Si le document contient des signets dans l'en-tête/le pied du document, vous pouvez [HeaderFooterBookmarksExportMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getHeaderFooterBookmarksExportMode) propriété [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) ou [All](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#ALL) afin de préciser comment ils sont exportés en sortie PDF. Les signets dans les en-têtes/pieds ne sont pas exportés lorsque la valeur de **HeaderFooterBookmarksExportMode** est [None](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#NONE).

L'exemple de code ci-dessous montre comment exporter des signets depuis le premier en-tête/pied d'une section:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-ExportHeaderFooterBookmarks.java" >}}

La sortie PDF de cet exemple est montrée ci-dessous:

![rendering-options-when-converting-to-pdf-aspose-words-java-1](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-1.png)

Quand **HeaderFooterBookmarksExportMode** est réglé à [First](https://reference.aspose.com/words/java/com.aspose.words/headerfooterbookmarksexportmode/#FIRST) et le document a des en-têtes/pieds impairs ou un en-tête/pied de première page différent, signets sont exportés pour les premiers en-têtes/pieds uniques dans une section.

Vous pouvez également exporter des en-têtes dans le PDF de sortie, en utilisant [HeadingsOutlineLevels](https://reference.aspose.com/words/java/com.aspose.words/outlineoptions/#getHeadingsOutlineLevels) propriété. Cette propriété précise combien de niveaux de rubriques sont inclus dans le plan du document.

L'exemple de code ci-dessous montre comment exporter des rubriques à trois niveaux:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-SaveToPdfWithOutline.java" >}}

La sortie PDF de cet exemple est illustrée ci-dessous:

![rendering-options-when-converting-to-pdf-aspose-words-java-2](/words/java/specify-rendering-options-when-converting-to-pdf/specify-rendering-options-when-converting-to-pdf-2.png)

{{% alert color="primary" %}}

Un signet ou un cap de navigation peut avoir des apparences différentes dans différents téléspectateurs PDF. De plus, dans certaines applications, les signets et la navigation en cap ne sont pas disponibles en UI.

{{% /alert %}}

## Images pour réduire la taille du document

Aspose.Words offre une possibilité de réduire l'échantillon d'images afin de réduire la taille de sortie PDF, en utilisant la [DownsampleOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getDownsampleOptions) propriété. L'échantillonnage est activé par défaut dans le [DownsampleImages](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getDownsampleImages) propriété.

A noter qu'il est également possible de définir une résolution spécifique [Resolution](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolution) la propriété, ou un seuil de résolution [ResolutionThreshold](https://reference.aspose.com/words/java/com.aspose.words/downsampleoptions/#getResolutionThreshold) propriété. Dans le second cas, si la résolution de l'image est inférieure à la valeur seuil, l'échantillonnage en aval ne s'appliquera pas.

L'exemple de code ci-dessous montre comment modifier la résolution des images dans un document PDF de sortie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-WorkingWithPdfSaveOptions-DownsamplingImages.java" >}}

La résolution est calculée en fonction de la taille réelle de l'image sur la page.

## Intégration des polices au format Adobe PDF

Aspose.Words vous permet également de contrôler comment les polices sont intégrées dans les documents PDF résultants. Les polices doivent être intégrées dans n'importe quel document Adobe PDF pour s'assurer que le document peut être correctement rendu sur n'importe quelle machine (voir plus de détails sur le rendu des polices dans la section [Utilisation de Vrai Saisissez les polices](/words/fr/java/using-truetype-fonts/)). Par défaut, Aspose.Words intègre un sous-ensemble de polices utilisées dans le document dans le PDF généré. Dans ce cas, seuls les glyphs (caractères) utilisés dans le document sont enregistrés en PDF.

### Quand utiliser les polices complètes et quand subset

Il y a un moyen de spécifier une option pour Aspose.Words pour intégrer des polices complètes. Le tableau ci-dessous donne d'autres détails, ainsi que certains avantages et inconvénients de chaque réglage.

| Mode d'intégration des polices |  Avantages | Désavantages |
|  :-  |  :-  |  :-  |
|  `Full`  | Utile lorsque vous souhaitez modifier le PDF résultant plus tard en ajoutant ou en modifiant le texte. Toutes les polices sont incluses, donc toutes glyphs sont présents. | Comme certaines polices sont grandes (plusieurs mégaoctets), les intégrer sans sous-réglage peut donner lieu à de gros fichiers de sortie. |
|  `Subset`  | Subsetting est utile si vous voulez garder la taille du fichier de sortie plus petite. | <p>L'utilisateur ne peut pas ajouter ou modifier le texte en utilisant la police sous-ensemble dans le document PDF de sortie. C'est parce que pas tout glyphs de la police sont présents.</p>

<p>Si plusieurs PDF sont enregistrés avec des polices sous-ensembles et assemblés, le document PDF combiné peut avoir une police contenant de nombreux sous-ensembles inutiles.</p>
 |

### Intégrer des polices complètes en PDF

Les [EmbedFullFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getEmbedFullFonts) propriété vous permet de spécifier comment Aspose.Words intègre les polices dans un document PDF de sortie.

- Oui. Pour intégrer des polices complètes dans le document PDF de sortie, définissez **EmbedFullFonts** à true
- Oui. Pour sous-ensembler les polices lors de l'enregistrement en PDF, définissez **EmbedFullFonts** à false

L'exemple suivant montre comment intégrer des polices complètes dans le document PDF de sortie:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddAllFonts.java" >}}

L'exemple suivant montre comment définir Aspose.Words sous-ensemble des polices dans la sortie PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-EmbeddSubsetFonts.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle pour ces exemples à partir de [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

## Comment contrôler l'intégration des polices de base et Windows Polices standard

Polices de base et Windows Les polices standard sont les ensembles de polices standard, qui sont généralement présents sur la machine cible ou fournis par le lecteur de document, donc ils n'ont pas besoin d'être intégrés dans la sortie PDF. En n'intégrant pas ces polices, vous pouvez diminuer la taille des documents PDF rendus et maintenir la portabilité.

Aspose.Words fournit des options pour choisir comment les polices sont exportées vers PDF. Vous pouvez choisir d'intégrer les polices de base et standard dans le PDF de sortie ou de sauter les intégrer et utiliser les polices de base standard PDF ou les polices système sur la machine cible. L'utilisation de l'une ou l'autre de ces options entraîne normalement une réduction significative de la taille des fichiers pour les documents PDF générés par Aspose.Words.

- Puisque ces options sont mutuellement exclusives, vous devriez choisir seulement une à la fois.
- Lors de l'enregistrement avec la conformité PDF/A-1, toutes les polices utilisées doivent être intégrées au document PDF. Lorsque vous économisez avec cette conformité, [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) la propriété doit être définie à false et les [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) la propriété doit être définie à [EmbedAll](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode#EMBED_ALL)[.](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usecorefonts/)

### Intégrer les polices de base

L'option d'intégrer les polices Core peut être activée ou désactivée en utilisant la [UseCoreFonts](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getUseCoreFonts) propriété. Quand il est réglé à true, Les polices de type -True (Base 14 fonts) suivantes ne sont pas intégrées dans le document PDF de sortie:

- `Arial`
- `Times New Roman`
- `Courier New`
- `Symbol`

Ces polices sont remplacées par les polices correspondantes de type 1, qui sont fournies par un lecteur lorsque le PDF est ouvert.

L'exemple ci-dessous montre comment définir Aspose.Words pour éviter d'intégrer les polices de base et laisser le lecteur les remplacer par du PDF Polices de type 1:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-AvoidEmbeddingCoreFonts.java" >}}

{{% alert color="primary" %}}

Vous pouvez télécharger le fichier modèle pour cet exemple depuis [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Examples/Data/Rendering.docx).

{{% /alert %}}

Puisque les téléspectateurs PDF fournissent des polices de base sur n'importe quelle plate-forme prise en charge, cette option est également utile lorsqu'une plus grande portabilité des documents est requise. Cependant, les polices de base peuvent sembler différentes des polices système.

{{% alert color="primary" %}}

Ce réglage ne fonctionne que pour ANSI (Windows-1252) encodant le texte. L'écriture d'un texte non-ANSI au format PDF exigera toujours que les polices correspondantes soient intégrées.

{{% /alert %}}

### Intégrer les polices du système

Cette option peut être activée ou désactivée en utilisant [FontEmbeddingMode](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getFontEmbeddingMode) propriété. Lorsque cette propriété est définie à [EmbedNonstandard](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONSTANDARD), les temps nouveaux romains true les polices de type ne sont pas intégrées dans un document PDF. Dans ce cas, le visionneur client s'appuie sur les polices installées sur le système d'exploitation client. Lorsque **FontEmbeddingMode** propriété est définie à [EmbedNone](https://reference.aspose.com/words/java/com.aspose.words/pdffontembeddingmode/#EMBED-NONE), Aspose.Words ne pas intégrer de polices.

L'exemple ci-dessous montre comment définir Aspose.Words pour sauter l'intégration de polices Arial and Times New Roman dans un document PDF:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-EmbeddedFontsInPDF-SetFontEmbeddingMode.java" >}}

Ce mode est particulièrement utile lorsque vous souhaitez afficher vos documents sur la même plateforme, en préservant l'apparence exacte des polices dans le PDF de sortie.

{{% alert color="primary" %}}

Ce réglage ne fonctionne que pour ANSI (Windows-1252) encodant le texte. L'écriture d'un texte non-ANSI au format PDF nécessite l'intégration de la police correspondante.

{{% /alert %}}
