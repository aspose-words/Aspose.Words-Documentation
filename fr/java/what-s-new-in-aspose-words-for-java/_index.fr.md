---
title: Quoi de neuf?
second_title: Aspose.Words pour Java
articleTitle: Quoi de neuf? Aspose.Words pour Java
linktitle: Quoi de neuf? Aspose.Words pour Java
type: docs
description: "Aspose.Words pour Java élargit et améliore chaque jour. Sur cette page, vous pouvez apprendre sur les caractéristiques énormes et les plus intéressantes du produit."
weight: 2
url: /fr/java/what-s-new-in-aspose-words-for-java/
---

Cette page décrit le nouveau plus intéressant Aspose.Words fonctionnalités introduites dans les récentes versions.

## Aspose.Words pour Java 24.9

Aspose.Words 24.9 introduit l'insertion de formes de groupe et l'insertion de StructuredDocumentTag via DocumentBuilder, améliore le rendu des graphiques radiaux avec des graduations, améliore les signatures numériques avec la prise en charge de XAdES-EPES, ajoute la reconnaissance du soulignement Markdown et donne accès aux séparateurs de notes de bas de page/de fin.

### Rendu et impression

#### Graduations sur les graphiques radiaux

Le rendu des graduations sur les graphiques radiaux a été implémenté.

### Conversion, chargement et enregistrement de documents

#### Formatage du soulignement lors du chargement de fichiers Markdown

L'option de reconnaissance du formatage du soulignement lors du chargement de documents Markdown a été incorporée en ajoutant une nouvelle propriété publique [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting).

### Signatures numériques

#### Signer des documents avec XAdES-EPES

La possibilité de signer des documents avec des signatures XML-DSig de niveau XAdES-EPES a été introduite en ajoutant une nouvelle propriété publique [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel) et une nouvelle énumération publique [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)

### Autre

* Une nouvelle méthode publique [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...) a été ajoutée pour regrouper les formes.
* Une nouvelle méthode publique [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int) a été ajoutée pour insérer des **StructuredDocumentTags** dans un document.
* L'accès public aux séparateurs de notes de bas de page/de fin de document a été fourni en ajoutant quelques classes et propriétés publiques.

{{% alert color="primary" %}}

En savoir plus sur les [Notes de version d'Aspose.Words pour Java 24.9](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words pour Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 étend les options pour les assemblages, améliore les capacités de rendu et étend d'autres options.

Aspose.Words 24.6 améliore les options de rendu, améliore les fonctionnalités de recherche et de comparaison et étend plusieurs autres fonctionnalités.

Aspose.Words 24.7 modifie la façon dont vous travaillez avec ActiveX, étend les capacités de rendu, ainsi que l'exportation aux formats Markdown et XLSX.

Aspose.Words 24.8 améliore la personnalisation des graphiques avec un contrôle précis des libellés des axes, étend la gestion des polices, améliore la gestion de la structure des documents et ajoute de nouvelles fonctionnalités pour l'exportation HTML/XAML, la fonctionnalité PDF, la conversion de documents et les signatures numériques.

### Formats pris en charge

À partir de la version 24.7, l'exportation au format PDF/UA-2 est prise en charge pour garantir l'accessibilité aux utilisateurs handicapés.

### Rendu et impression

#### Modifications dans Charts, Shapes et DrawingML <sup>24.5</sup>

- Le rendu des effets DrawingML pour les graphiques SVG, étendant les fonctionnalités précédentes limitées aux images, a été implémenté.
- La prise en charge de la création de graphiques combinés et de l'ajustement des propriétés telles que la largeur de l'espace, le chevauchement et l'échelle des bulles au sein des groupes de séries a été introduite en ajoutant les classes [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) et [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) et la propriété [SeriesGroups](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeriesGroups).
- La fonctionnalité permettant de manipuler l'effet SoftEdge des formes a été implémentée en ajoutant la classe [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- La possibilité de modifier les valeurs d'ajustement des formes a été implémentée en ajoutant [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) et [Adjustment](https:/ /reference.aspose.com/words/java/com.aspose.words/adjustment/) classes publiques et [Ajustements](https://reference.aspose.com/words/java/com.aspose.words/shape/# getAdjustments).

#### Modifications des graphiques, des formes et des dessins <sup>24.6</sup>

* Les capacités de cartographie ont été améliorées. Vous pouvez désormais créer une plus grande variété de graphiques, notamment *Treemaps*, *Sunbursts*, *Histograms*, *Pareto*, *Box & Whisker*, *Waterfalls* et *Funnels*. Cela vous permet de visualiser vos données de manière plus diversifiée et informative.
* Le contrôle des couleurs pour le formatage des ombres a été amélioré. Vous pouvez obtenir un contrôle plus précis sur l'apparence de vos documents en accédant aux couleurs des ombres.
* L'amélioration des performances pour le rendu en arrière-plan a été améliorée. Vous pouvez accélérer considérablement le rendu des arrière-plans contenant de petits éléments grâce à la technologie de carrelage native.
* Des dégradés réalistes pour les formes ont été ajoutés. Vous pouvez désormais créer des formes DML avec des dégradés non linéaires, imitant le style visuel de Microsoft Word pour un aspect plus soigné.

#### Personnalisation des étiquettes de données de graphique <sup>24.7</sup>

La possibilité de personnaliser les étiquettes de données graphiques telles que **Orientation** et **Rotation** a été ajoutée.

#### Style de numéro personnalisé pour les niveaux de liste <sup>24.7</sup>

Un setter pour la propriété publique [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) a été ajouté. Vous pouvez désormais définir un style de numéro personnalisé pour les niveaux de liste.

#### Modifications apportées à l'utilisation d'ActiveX <sup>24.7</sup>

* Les propriétés des objets ActiveX peuvent désormais être modifiées, vous donnant plus de contrôle sur leur comportement.
* La possibilité de modifier la valeur du contrôle ActiveX du bouton radio pour activer l'interaction dynamique a été ajoutée.
* La possibilité de cocher une case ActiveX sur « cochée » ou « décochée » a été ajoutée.

#### Contrôle de l'orientation et de la rotation des libellés des axes des graphiques <sup>24.8</sup>

Un contrôle précis de l'orientation et de la rotation des libellés des axes des graphiques a été ajouté pour une personnalisation plus pratique des graphiques. La classe [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) a été étendue avec de nouvelles propriétés **Orientation** et **Rotation**.

#### Remplacement de la barre oblique inverse par le signe Yen <sup>24.8</sup>

L'exportation HTML et XAML rétrocompatible pour remplacer le caractère barre oblique inverse par le signe Yen a été améliorée. Pour y parvenir, la propriété **ReplaceBackslashWithYenSign** a été ajoutée aux classes [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) et [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/).

#### Utilisation des balises SDT comme noms de champs de formulaire lors de l'exportation au format PDF <sup>24.8</sup>

L'exportation PDF avec prise en charge de l'utilisation des balises SDT comme noms de champs de formulaire a été améliorée par l'ajout d'une nouvelle propriété **UseSdtTagAsFormFieldName** à la classe [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Conversion, chargement et enregistrement de documents

#### Exportation de liens au format Markdown <sup>24.7</sup>

La possibilité de contrôler l'export des liens au format Markdown a été ajoutée grâce à l'implémentation de la propriété [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode <sup>24.8</sup>

Une nouvelle classe **LowCode.Converter**, conçue pour fournir un ensemble de méthodes permettant de convertir différents types de documents avec une seule ligne de code, a été introduite.

### Rechercher et comparer

#### Options de comparaison avancées <sup>24.6</sup>
La possibilité de rationaliser les flux de travail d'analyse des données avec une fonctionnalité de comparaison améliorée a été ajoutée. Cela inclut une nouvelle option [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) et une interface repensée pour les comparaisons avancées.

### Autre

* La fonction permettant d'éliminer les pages vides d'un document a été implémentée en ajoutant la méthode [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24,5</sup>
* La possibilité de vérifier la présence de macros VBA sans charger de document a été fournie en ajoutant le [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros) propriété. <sup>24,5</sup>
* La conservation de la numérotation source lors de l'insertion d'un document à l'aide du moteur de reporting LINQ est désormais prise en charge. <sup>24,5</sup>
* Une nouvelle propriété [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) a été ajoutée – elle fournit un horodatage plus précis pour les commentaires, améliorant ainsi l'organisation et la traçabilité. <sup>24.6</sup>
* Le moteur de reporting LINQ a été amélioré. La suppression sélective des paragraphes vides et la définition de messages personnalisés pour les membres d'objet manquants ont été effectuées, conduisant à des rapports plus propres et plus informatifs. <sup>24.6</sup>
* Le format datetime est désormais automatiquement détecté pour une exportation transparente au format XLSX. <sup>24.7</sup>
* La propriété publique [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), qui permet de vérifier si un projet VBA est protégé, a été ajoutée. <sup>24.7</sup>
* Les informations sur les polices ont été étendues avec la propriété **EmbeddingLicensingRights** ajoutée aux classes [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) et [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* Un moyen d'effacer efficacement les en-têtes et pieds de page de section tout en préservant les filigranes a été ajouté pour travailler plus précisément avec la structure du document. Pour effacer les en-têtes et pieds de page de section, utilisez la nouvelle méthode publique **ClearHeadersFooters**. <sup>24.8</sup>
* La signature numérique des documents XPS à l'aide de [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) a été activée – une nouvelle propriété **DigitalSignatureDetails** a été ajoutée à cet effet. <sup>24.8</sup>

{{% alert color="primary" %}}

En savoir plus sur les [Notes de version d'Aspose.Words pour Java 24.5](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

En savoir plus sur les [Notes de version d'Aspose.Words pour Java 24.6](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

En savoir plus sur les [Notes de version d'Aspose.Words pour Java 24.7](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

En savoir plus sur les [Notes de version d'Aspose.Words pour Java 24.8](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words pour Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 améliore l'expérience de gestion des couleurs de course, améliore les objets OLE et les rapports LINQ, et introduit un nouveau public Bibliographie Sources API.

Aspose.Words 24.2 graphiques élargis API, gestion de style, et options LINQ. Cette version de Aspose.Words a également introduit la possibilité de spécifier SvgSaveOptions pendant le rendu, plus flexible de la charge de commande Markdown et travailler avec le texte de référence pour les notes et notes de bas de page.

Aspose.Words 24.3 introduit un nouveau lecteur/écriture TIFF et l'émulation des opérations de raster binaire pour les métafiles WMF. Aspose.Words 24.3 continue également d'élargir les graphiques API.

Aspose.Words 24.4 améliore l'enregistrement des formats, certaines options de rendu, ainsi que le travail avec les signatures numériques.

### Formats pris en charge <sup>24.4</sup>

Le format d'image moderne **WebP** est désormais pris en charge dans Aspose.Words. Vous pouvez désormais lire et insérer des images WebP dans des documents, ainsi que sauvegarder des images au format WebP. 

### Rendu et impression

#### Contrôle de couleur des accidents <sup>24.1</sup>

Les [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) classe a été étendu avec un ensemble de nouvelles propriétés publiques liées à la gestion des couleurs de course: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) et [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) et [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### Dessin des graphiquesML API Prolongation <sup>24.2 / 24.3 / 24.4</sup>

Les **DrawingML Charts API** continue d'être élargie.

#### Incorporer les polices déclarées dans les règles @font-face <sup>24.4</sup>

Il est désormais possible d'incorporer les polices déclarées dans les règles @font-face dans les définitions de polices du document résultant en ajoutant une nouvelle propriété appelée [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### Travailler avec la mise en forme des effets de lumière et de réflexion <sup>24.4</sup>

La possibilité de travailler avec la mise en forme des effets de lumière et de réflexion pour un objet de dessin a été implémentée.

### Chargement et sauvegarde des documents

#### Spécifiez SvgSaveOptions pendant le rendu <sup>24.2</sup>

La capacité de spécifier [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) pendant le rendu a été ajouté en utilisant le [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) et [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) méthodes.

#### Préserver les lignes vides lors du chargement Markdown fichiers <sup>24.2</sup>

La possibilité de préserver les lignes vides lors du chargement Markdown fichiers ont été ajoutés.

#### Un nouveau lecteur/rédacteur TIFF <sup>24.3</sup>

Un nouveau lecteur/écrivain TIFF pour Aspose.Words pour .NET Standard, .NET 6 et plus tard a été développé. Aspose.Words pour .NET 24.3 a ajouté un support pour la lecture d'images TIFF avec des types de compression JPEG et Old JPEG, et a également amélioré significativement la qualité des opérations de lecture et d'écriture.

### Autres

* La capacité de modifier le texte `TextBox` Le contrôle OLE a été introduit en ajoutant une nouvelle [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) propriété à la nouvelle [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) En cours. 24.1 <sup>24.1</sup>
* La bibliographie Sources publiques API a été mis en œuvre en ajoutant quelques nouveaux [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) et [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) cours et [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) le recensement, ainsi qu'en ajoutant un nouveau [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) propriété de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) En cours. <sup>24.1</sup>
* Un API pour limiter l'accès aux membres de type en utilisant la syntaxe modèle pour le moteur de rapport LINQ a été fourni. <sup>24.1</sup>
* Nouveaux biens publics [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), et [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) pour améliorer la gestion du style [Style](https://reference.aspose.com/words/net/aspose.words/style/) En cours. <sup>24.2</sup>
* La fonctionnalité permettant de récupérer le texte de la marque de référence pour les notes de bas de page et les notes de fin de page a été améliorée avec la [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) propriété et [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) méthode. <sup>24.2</sup>
* Compatibilité avec `Word 2016` pour les `LINQ Reporting Engine` a été activé. <sup>24.2</sup>
* L'émulation des opérations de raster binaire pour les métafiles WMF a été implémentée. <sup>24.3</sup>
* La possibilité de définir des options de signature pour les documents dans SaveOptions a été activée en ajoutant une nouvelle classe appelée [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) avec de nouveaux membres publics, ainsi qu'en ajoutant de nouvelles propriétés aux classes [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) et [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 24.1 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

En savoir plus sur [Aspose.Words pour Java 24.2 Notes de mise à jour.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

En savoir plus sur [Aspose.Words pour Java 24.3 Notes de sortie.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

En savoir plus sur [Aspose.Words pour Java 24.4 Notes de sortie.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/)

{{% /alert %}}

## Aspose.Words pour Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 élargit les options de rendu, l'émulation de rendu de métafile, et markdown Enregistrer les options.

Aspose.Words 23.10 améliore le rendu, élargit les options de chargement et de sauvegarde des documents et permet aux utilisateurs de fusionner les documents de nouvelles façons.

Aspose.Words 23.11 améliore le travail avec les révisions, le format XLSX et les polices sur la légende du graphique avec des options supplémentaires.

Aspose.Words 23.12 introduit de nouvelles propriétés et des dénombrements pour travailler avec des documents PDF, support pour WebP images, et mise à jour de la bibliothèque du château de Bouncy.

### Rendu et impression

#### Personnaliser les titres des haches dans le dessinML Graphiques <sup>23.9</sup>

La possibilité de personnaliser les titres d'axes dans les graphiques DrawML a été introduite par la mise en place d'une nouvelle classe publique [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) et [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle) propriété.

#### Détermination de la position verticale des polices dans un paragraphe <sup>23.9</sup>

Il est maintenant possible de définir la position verticale des polices dans un paragraphe en utilisant le nouveau public [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) propriété et le nouveau [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/) Énumération.

#### Contrôle de la couleur du premier plan <sup>23.10</sup>

La possibilité de récupérer la couleur avant plan sans modifier a été ajoutée à la [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) et [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) cours par **BaseForeColor** propriété.

#### Élargir la fonctionnalité des graphiques <sup>23.10</sup>

La fonctionnalité de la [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/), et [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) les classes ont été développées avec de nouvelles méthodes et propriétés.

#### Réglage automatique et mise en forme d'une image <sup>23.10</sup>

Une façon simple d'ajuster automatiquement et d'adapter une image à une forme particulière a été fournie par le nouveau [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape) méthode.

#### Formatage par défaut des polices pour le dessin ML Entrées de légende de graphique <sup>23.11</sup>

La possibilité de spécifier le formatage de police par défaut pour les entrées de légende des graphiques DrawML a été ajoutée via le **Font** propriété. Cette fonction facilite une apparence plus rationnelle et plus cohérente pour les éléments graphiques, améliorant ainsi l'esthétique globale du document.

#### Spécifier la mise en page lors de l'ouverture du PDF dans le lecteur <sup>23.12</sup>

La possibilité de spécifier la mise en page à utiliser lors de l'ouverture d'un document dans un lecteur PDF a été ajoutée par l'introduction d'un nouveau [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) propriété de [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) classe et l'introduction d'un nouveau [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/) Énumération.

### Chargement et sauvegarde des documents

#### Spécifier un nom de dossier pour construire des URI d'image dans Markdown <sup>23.9</sup>

Les [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) la classe a été élargie en incluant [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias) propriété, qui permet de spécifier le nom du dossier utilisé pour construire l'image URIs écrit dans le Markdown document.

#### Réduire le format PDF Taille de sortie <sup>23.10</sup>

Divers optimisations de rendu PDF pour réduire la taille de sortie lors de l'utilisation [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) les paramètres ont été implémentés.

#### Reconnaissez les hyperliens lors du chargement des documents TXT <sup>23.10</sup>

La fonction de reconnaissance des hyperliens lors du chargement des documents TXT a été implémentée en ajoutant un nouveau [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks) propriété.

### Autres

- L'émulation de rendu de métafile pour déterminer la taille de rastérisation a été mise en œuvre, spécifiquement pour la largeur du stylo WMF et la largeur cosmétique du stylo EMF. Pour y parvenir, les **ScaleWmfFontsToMetafileSize** la propriété a été remplacée par [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) propriété et [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) propriété a été ajoutée. <sup>23.9</sup>
- Une méthode simplifiée d'insertion d'un document dans un autre document à la position actuelle du curseur a été introduite à l'aide de [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions) méthode. <sup>23.10</sup>
- Oui. La possibilité d'accéder et de modifier les propriétés de style a été ajoutée par l'introduction de la nouvelle [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked) propriété. <sup>23.10</sup>
- Un paramètre générique de type a été ajouté aux méthodes de [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/) En cours. <sup>23.10</sup>
- Un moyen de contrôler lorsqu'une certaine révision doit être acceptée/rejetée ou qu'elle n'a pas été mise en œuvre en utilisant le [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) et [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria) méthodes. Cette amélioration permet aux utilisateurs de mieux contrôler le processus de révision. <sup>23.11</sup>
- Oui. La possibilité d'écrire toutes les sections d'un document sur la même feuille de travail XLSX a été fournie par la nouvelle [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) type de dénombrement et le nouveau [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode) propriété. <sup>23.11</sup>
- Appui à WebP image a été introduite. Veuillez noter que cette fonctionnalité n'est disponible que pour .NetStandart et .NET6+ versions. <sup>23.12</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 23.9 Notes de mise à jour](/words/java/aspose-words-for-java-23-9-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.10 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.11 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.12 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words pour Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 améliore la capacité de travailler avec les données des séries de cartes et la capacité de travailler avec les documents ODT, ainsi que d'améliorer les en-têtes/pieds et leur enveloppe de texte.

Aspose.Words 23.6 élargit les options de rendu, ajoute un nouveau format d'exportation, améliore les rapports LINQ et LowCode outils.

Aspose.Words 23.7 améliore les capacités de production de rapports, ajoute un nouveau format d'exportation et apporte des changements au travail avec les tableaux et les signatures numériques.

Aspose.Words 23.8 élargit les capacités des différents formats, améliore le rendu et ajoute de nouvelles options pour travailler avec les champs

### Formats pris en charge

* À partir de la version 23.6, il est possible de sauvegarder un document au format XLSX. Maintenant, vous pouvez convertir vos documents en format Excel. <sup>23.6</sup>

* À partir de la version 23.7, il est possible de sauvegarder une page ou une forme de document au format EPS. <sup>23.7</sup>

* Nouveau format

  - La fonctionnalité de générer automatiquement la Table des matières (TdP) pour les documents MOBI a été introduite. <sup>23.8</sup>
  - Les [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) le constructeur a été élargi avec [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - L'élaboration de texte vertical pour les métadonnées EMF a été mise en œuvre. <sup>23.8</sup>

### Rendus

#### Obtenez et modifiez Données de la série de graphiques <sup>23.5</sup>

La fonction pour obtenir et modifier les données des séries de cartes a été fournie en ajoutant:

- nouvelles classes: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- nouveaux types d ' enum: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Soutien à la typographie avancée <sup>23.6</sup>

La prise en charge de la typographie avancée dans le rendu WMF, EMF et EMF+ a été ajoutée.

#### Contenu coloré sur la page <sup>23.6</sup>

La propriété publique [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), indiquant si la page est colorée ou non, a été ajoutée.

#### Formatage pour les étiquettes de données graphiques <sup>23.6</sup>

La capacité de définir le formatage de remplissage, de course et de callout pour les étiquettes de données graphiques a été mise en place.

### Mail Merge et rapports

#### Insertion HTML dynamique pour le moteur de déclaration LINQ <sup>23.6</sup>

Une nouvelle façon d'insérer dynamique HTML pour LINQ Reporting Engine a été ajoutée.

#### Mustache Mots clés Support <sup>23.7</sup>

Mustache tags sont maintenant pris en charge dans le [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) et [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) méthodes.

#### Mises à jour syntaxiques du modèle de moteur de déclaration LINQ <sup>23.7</sup>

La syntaxe du modèle LINQ Reporting Engine prend désormais en charge `ElementAt` et les méthodes d'extension ElementAtOrDefault.

#### Spécifier la taille des images rendues <sup>23.8</sup>

Une nouvelle propriété publique **ImageSize** pour spécifier la taille des images rendues en pixel a été introduit.

#### Préserver les espaces blancs pour les valeurs des chaînes JSON – LINQ <sup>23.8</sup>

Une option a été ajoutée au moteur de rapport LINQ pour préserver les espaces blancs pour les valeurs de chaînes JSON.

### LowCode <sup>23.6</sup>

Nouveau LowCode des méthodes destinées à fusionner différents types de documents en un seul document de sortie ont été ajoutées.

### Autres

- La prise en charge de l'emballage du texte dans les en-têtes/pieds a été mise en œuvre. <sup>23.5</sup>
- Oui. La possibilité de supprimer les signatures numériques des documents ODT a été ajoutée par le biais de [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) méthode. <sup>23.5</sup>
- Oui. La propriété publique [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) pour obtenir le texte de base et rubis du guide phonétique [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) a été ajouté. <sup>23.5</sup>
- Oui. La possibilité de récupérer une valeur de signature numérique à partir d'un document signé numériquement en tant que tableau d'octets a été ajoutée en introduisant une nouvelle [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) propriété. <sup>23.7</sup>
- Les [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) et [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) les cours ont été prolongés avec de nouveaux membres publics – [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), et [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- Le soutien aux champs CITATION et BIBLIOGRAPHIE a été ajouté. <sup>23.8</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 23.5 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.6 Notes de mise à jour](/words/java/aspose-words-for-java-23-6-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.7 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.8 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words pour Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 améliore les performances de l'émulation d'opération de raster, et améliore la qualité d'exportation et de rendu des documents.

Aspose.Words 23.2 introduit la sauvegarde des documents au format MOBI, améliore le rendu des graphiques et apporte des changements notables aux détails d'apparence des documents.

Aspose.Words 23.3 améliore l'importation et l'économie de documents avec de nouvelles propriétés, et améliore également la qualité du travail avec le fond et la couleur avant plan et le dégradé radial.

Aspose.Words 23.4 améliore le calcul de certains paramètres et le positionnement du tableau et du texte environnant.

### Amélioration des performances

#### Emulation des opérations de restauration <sup>23.1</sup>

La performance et la qualité de l'émulation des opérations de raster avec les métafiles ont été considérablement améliorées.

### Formats pris en charge

#### Exportation vers le MOBI <sup>23.2</sup>

À partir de la version 23.2, il est possible de sauvegarder un document en format MOBI (également appelé RPC, AZW – Amazon Le propre format de fichier de livre électronique de Kindle). Maintenant, vous pouvez non seulement charger des documents MOBI, mais aussi exporter vos fichiers au format MOBI.

### Rendus

#### Travailler avec les couleurs du thème de l'ombrage <sup>23.1</sup>

La capacité de travailler avec des couleurs de thème ombrage a été implémentée.

#### Soutien du coefficient carré R dans les graphiques DML <sup>23.1</sup>

Prise en charge du coefficient carré R dans les étiquettes de tendance des cartes DML lorsque le rendu a été ajouté.

#### Graphique Améliorations de la soumission <sup>23.2</sup>

Depuis le 23.2, le rendu des graphiques a été considérablement amélioré.

#### Contrôle de la couleur du fond et du premier plan <sup>23.3</sup>

Les [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) classe a été étendu avec un ensemble de nouvelles propriétés publiques liées à l'arrière-plan et les couleurs de premier plan: **ForeThemeColor** et **BackThemeColor**, **ForeTintAndShade** et **BackTintAndShade**.

#### Gradients radiaux avec `SkiaSharp` Shader autochtone <sup>23.3</sup>

Rendu des gradients radiaux avec `SkiaSharp` native shader pour .NET Standard a été mis en œuvre.

#### Distance entre la table et le texte environnant <sup>23.4</sup>

La possibilité de définir la distance entre la table et le texte environnant a été ajoutée en introduisant de nouvelles propriétés à la [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) classe: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), et [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Chargement et sauvegarde des documents

#### Générer `TOC` pour les documents AZW3 <sup>23.1</sup>

La capacité de générer `TOC` (table des matières) pour les documents AZW3 a été ajouté par l'utilisation de [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) propriété.

#### Liste d'exportation Markdown <sup>23.1</sup>

Un moyen de contrôler l'exportation des articles de la liste vers Markdown le format a été fourni en ajoutant [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) propriété de [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) En cours.

#### Enregistrement des déclarations d'étape <sup>23.3</sup>

L'enregistrement des notifications d'avancement pour les formats MOBI et AZW3 a été mis en œuvre.

#### Ajustement de la peine et de l'espacement des mots <sup>23.3</sup>

La possibilité de spécifier s'il faut ajuster automatiquement la phrase et l'espacement des mots lors de l'importation du document a été ajoutée en introduisant la **AdjustSentenceAndWordSpacing** propriété.

### Autres

- Oui. La possibilité de spécifier le réglage de l'espacement des caractères d'un document a été ajoutée par le biais [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) Exécution des biens <sup>23.2</sup>
- La façon d'instruire Aspose.Words la question de savoir s'il y a lieu d'inclure des boîtes à texte, des notes de bas de page et des notes de bas de page dans les statistiques du nombre de mots a été fournie en ajoutant les [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) biens <sup>23.2</sup>
- Une nouvelle option pour un style de document, qui permet de spécifier si le style est automatiquement redéfini en fonction de la valeur appropriée, a été introduite à travers le [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) biens <sup>23.2</sup>
- Oui. La capacité de déterminer si [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) est un guide phonétique a été ajouté en utilisant le **IsPhoneticGuide** biens <sup>23.4</sup>
- Une façon simple de travailler avec des séries et des axes de cartes combo a été mise en œuvre en introduisant la **ChartAxisCollection** et ajouter la **Chart.Axes** biens <sup>23.4</sup>
- De nouvelles propriétés publiques liées au positionnement relatif de la forme et au calibrage ont été ajoutées au [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) classe <sup>23.4</sup>
- Précision et performance du calcul de luminosité de couleur pour la résolution automatique de couleur de texte a été amélioré conformément aux dernières versions de Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 23.1 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.2 Notes de mise à jour](/words/java/aspose-words-for-java-23-2-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.3 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.4 Notes de mise à jour](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Voir aussi

{{% alert color="primary" %}}

Cette page contient les dernières nouvelles des deux dernières années. Pour plus de détails sur les versions antérieures, voir [Notes de sortie](https://releases.aspose.com/words/java/release-notes/) pages dans les sections pertinentes.

{{% /alert %}}
