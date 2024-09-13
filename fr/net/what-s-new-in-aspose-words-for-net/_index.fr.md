---
title: Quoi de neuf
second_title: Aspose.Words pour .NET
articleTitle: Quoi de neuf dans Aspose.Words pour .NET
linktitle: Quoi de neuf dans Aspose.Words pour .NET
type: docs
description: "Aspose.Words pour .NET se développe et s'améliore quotidiennement. Sur cette page, vous pouvez découvrir les fonctionnalités les plus importantes et les plus intéressantes du produit."
weight: 10
url: /fr/net/what-s-new-in-aspose-words-for-net/
---

Cette page décrit les nouvelles fonctionnalités Aspose.Words les plus intéressantes introduites dans les versions récentes.

## Aspose.Words pour .NET 24.9

Aspose.Words 24.9 introduit l'insertion de formes de groupe et l'insertion de StructuredDocumentTag via DocumentBuilder, améliore le rendu des graphiques radiaux avec des graduations, améliore les signatures numériques avec la prise en charge de XAdES-EPES, ajoute la reconnaissance du soulignement Markdown et donne accès aux séparateurs de notes de bas de page/de fin.

### Rendu et impression

#### Graduations sur les graphiques radiaux

Le rendu des graduations sur les graphiques radiaux a été implémenté.

### Conversion, chargement et enregistrement de documents

#### Formatage du soulignement lors du chargement de fichiers Markdown

L'option de reconnaissance du formatage du soulignement lors du chargement de documents Markdown a été incorporée en ajoutant une nouvelle propriété publique [ImportUnderlineFormatting](https://reference.aspose.com/words/net/aspose.words.loading/markdownloadoptions/importunderlineformatting/).

### Signatures numériques

#### Signer des documents avec XAdES-EPES

La possibilité de signer des documents avec des signatures XML-DSig de niveau XAdES-EPES a été introduite en ajoutant une nouvelle propriété publique [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/signoptions/xmldsiglevel/) et une nouvelle énumération publique [XmlDsigLevel](https://reference.aspose.com/words/net/aspose.words.digitalsignatures/xmldsiglevel/).

### Autre

* Une nouvelle méthode publique [InsertGroupShape](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertgroupshape/) a été ajoutée pour regrouper les formes.
* Une nouvelle méthode publique [InsertStructuredDocumentTag](https://reference.aspose.com/words/net/aspose.words/documentbuilder/insertstructureddocumenttag/) a été ajoutée pour insérer des **StructuredDocumentTags** dans un document.
* L'accès public aux séparateurs de notes de bas de page/de fin de document a été fourni en ajoutant quelques classes et propriétés publiques.

{{% alert color="primary" %}}

En savoir plus sur [Notes de version Aspose.Words pour .NET 24.9](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words pour .NET 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 étend les options pour les assemblages, améliore les capacités de rendu et étend d'autres options.

Aspose.Words 24.6 améliore les options de rendu, améliore les fonctionnalités de recherche et de comparaison et étend plusieurs autres fonctionnalités.

Aspose.Words 24.7 modifie la façon dont vous travaillez avec ActiveX, étend les capacités de rendu, ainsi que l'exportation aux formats Markdown et XLSX.

Aspose.Words 24.8 améliore la personnalisation des graphiques avec un contrôle précis des étiquettes des axes, étend la gestion des polices, améliore la gestion de la structure des documents et ajoute de nouvelles fonctionnalités pour l'exportation HTML/XAML, la fonctionnalité PDF, la conversion de documents et les signatures numériques.

### Formats pris en charge

À partir de la version 24.7, l'exportation au format PDF/UA-2 est prise en charge pour garantir l'accessibilité aux utilisateurs handicapés.

### Plateformes <sup>24.5</sup>

Les assemblys .NET 7.0/8.0 ont été inclus dans le package Aspose.Words NuGet.

### Rendu et impression

#### Modifications dans les Charts, les Shapes et DrawingML <sup>24.5</sup>

* Le rendu des effets DrawingML pour les graphiques SVG, étendant les fonctionnalités précédentes limitées aux images, a été implémenté.
* La prise en charge de la création de graphiques combinés et de l'ajustement des propriétés telles que la largeur de l'espace, le chevauchement et l'échelle des bulles au sein des groupes de séries a été introduite en ajoutant le [ChartSeriesGroup](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroup/)  et les classes [ChartSeriesGroupCollection](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartseriesgroupcollection/) et les classes [SeriesGroups](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chart/seriesgroups/).
* La fonctionnalité permettant de manipuler l'effet SoftEdge des formes a été implémentée en ajoutant la classe [SoftEdgeFormat](https://reference.aspose.com/words/net/aspose.words.drawing/softedgeformat/).
* La possibilité de modifier les valeurs d'ajustement des formes a été implémentée en ajoutant [AdjustmentCollection](https://reference.aspose.com/words/net/aspose.words.drawing/adjustmentcollection/) et [Adjustment](https://reference.aspose.com/words/net/aspose.words.drawing/adjustment/) classes publiques et [Adjustments](https://reference.aspose.com/words/net/aspose.words.drawing/shape/adjustments/) propriété.

#### Modifications des graphiques, des formes et des dessins <sup>24.6</sup>

* Les capacités de cartographie ont été améliorées. Vous pouvez désormais créer une plus grande variété de graphiques, notamment *Treemaps*, *Sunbursts*, *Histograms*, *Pareto*, *Box & Whisker*, *Waterfalls* et *Funnels*. Cela vous permet de visualiser vos données de manière plus diversifiée et informative.
* Le contrôle des couleurs pour le formatage des ombres a été amélioré. Vous pouvez obtenir un contrôle plus précis sur l'apparence de vos documents en accédant aux couleurs des ombres.
* L'amélioration des performances pour le rendu en arrière-plan a été améliorée. Vous pouvez accélérer considérablement le rendu des arrière-plans contenant de petits éléments grâce à la technologie de carrelage native.
* Des dégradés réalistes pour les formes ont été ajoutés. Vous pouvez désormais créer des formes DML avec des dégradés non linéaires, imitant le style visuel de Microsoft Word pour un aspect plus soigné.

#### Personnalisation des étiquettes de données de graphique <sup>24.7</sup>

La possibilité de personnaliser les étiquettes de données graphiques telles que **Orientation** et **Rotation** a été ajoutée.

#### Style de numéro personnalisé pour les niveaux de liste <sup>24.7</sup>

Un setter pour la propriété publique [CustomNumberStyleFormat](https://reference.aspose.com/words/net/aspose.words.lists/listlevel/customnumberstyleformat/) a été ajouté. Vous pouvez désormais définir un style de numéro personnalisé pour les niveaux de liste.

#### Modifications apportées à l'utilisation d'ActiveX <sup>24.7</sup>

* Les propriétés des objets ActiveX peuvent désormais être modifiées, vous donnant plus de contrôle sur leur comportement.
* La possibilité de modifier la valeur du contrôle ActiveX du bouton radio pour activer l'interaction dynamique a été ajoutée.
* La possibilité de cocher une case ActiveX sur « cochée » ou « décochée » a été ajoutée.

#### Contrôle de l'orientation et de la rotation des graduations des axes du graphique <sup>24.8</sup>

Un contrôle précis de l'orientation et de la rotation des graduations des axes du graphique a été ajouté pour une personnalisation plus pratique du graphique. La classe [AxisTickLabels](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/) a été étendue avec les nouvelles propriétés [Orientation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/orientation/) et [Rotation](https://reference.aspose.com/words/net/aspose.words.drawing.charts/axisticklabels/rotation/).

#### Remplacement de la barre oblique inverse par le signe yen <sup>24.8</sup>

L'exportation HTML et XAML rétrocompatible pour le remplacement du caractère barre oblique inverse par le signe yen a été améliorée. Pour ce faire, la propriété **ReplaceBackslashWithYenSign** a été ajoutée aux classes [HtmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/) et [XamlFlowSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xamlflowsaveoptions/).

#### Utilisation des balises SDT comme noms de champs de formulaire lors de l'exportation au format PDF <sup>24.8</sup>

L'exportation PDF avec prise en charge de l'utilisation des balises SDT comme noms de champs de formulaire a été améliorée en ajoutant une nouvelle propriété [UseSdtTagAsFormFieldName](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/usesdttagasformfieldname/) à la classe [PdfSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/).

### Conversion, chargement et enregistrement de documents

#### Exportation de liens au format Markdown <sup>24.7</sup>

La possibilité de contrôler l'export des liens au format Markdown a été ajoutée grâce à l'implémentation de la propriété [LinkExportMode](https://reference.aspose.com/words/net/aspose.words.saving/markdownsaveoptions/linkexportmode/).

#### LowCode <sup>24.8</sup>

Une nouvelle classe [LowCode.Converter](https://reference.aspose.com/words/net/aspose.words.lowcode/converter/), conçue pour fournir un ensemble de méthodes permettant de convertir différents types de documents avec une seule ligne de code, a été introduite.

### Rechercher et comparer

#### Options de comparaison avancées <sup>24.6</sup>
La possibilité de rationaliser les flux de travail d'analyse des données avec une fonctionnalité de comparaison améliorée a été ajoutée. Cela inclut une nouvelle option [IgnoreStoreItemId](https://reference.aspose.com/words/net/aspose.words.comparing/advancedcompareoptions/ignorestoreitemid/) et une interface repensée pour les comparaisons avancées.

### Autre

* La fonction permettant d'éliminer les pages vides d'un document a été implémentée en ajoutant la méthode [RemoveBlankPages](https://reference.aspose.com/words/net/aspose.words/document/removeblankpages/). <sup>24,5</sup>
* La possibilité de vérifier la présence de macros VBA sans charger de document a été fournie en ajoutant la propriété [HasMacros](https://reference.aspose.com/words/net/aspose.words/fileformatinfo/hasmacros/). <sup>24,5</sup>
* Conserver la numérotation des sources lors de l'insertion d'un document à l'aide du moteur de reporting LINQ est désormais pris en charge. <sup>24,5</sup>
* Une nouvelle propriété [DateTimeUtc](https://reference.aspose.com/words/net/aspose.words/comment/datetimeutc/) a été ajoutée – elle fournit un horodatage plus précis pour les commentaires, améliorant ainsi l'organisation et la traçabilité. <sup>24.6</sup>
* Le moteur de reporting LINQ a été amélioré. La suppression sélective des paragraphes vides et la définition de messages personnalisés pour les membres d'objet manquants ont été effectuées, conduisant à des rapports plus propres et plus informatifs. <sup>24.6</sup>
* Le format datetime est désormais automatiquement détecté pour une exportation transparente au format XLSX. <sup>24.7</sup>
* La propriété publique [IsProtected](https://reference.aspose.com/words/net/aspose.words.vba/vbaproject/isprotected/), qui permet de vérifier si un projet VBA est protégé, a été ajoutée. <sup>24.7</sup>
* Les informations sur les polices ont été étendues avec la propriété **EmbeddingLicensingRights** ajoutée aux classes [FontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/fontinfo/) et [PhysicalFontInfo](https://reference.aspose.com/words/net/aspose.words.fonts/physicalfontinfo/). <sup>24.8</sup>
* Un moyen d'effacer efficacement les en-têtes et les pieds de page de section tout en préservant les filigranes a été ajouté pour travailler plus précisément avec la structure du document. Pour effacer les en-têtes et pieds de page des sections, utilisez la nouvelle méthode publique [ClearHeadersFooters](https://reference.aspose.com/words/net/aspose.words/section/clearheadersfooters/). <sup>24.8</sup>
* La signature numérique des documents XPS à l'aide de [XpsSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/) a été activée - une nouvelle propriété [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/xpssaveoptions/digitalsignaturedetails/) a été ajoutée à cet effet. <sup>24.8</sup>

{{% alert color="primary" %}}

En savoir plus sur [Notes de version Aspose.Words pour .NET 24.5](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-5-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour .NET 24.6](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-6-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour .NET 24.7](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-7-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour .NET 24.8](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words pour .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 améliore l'expérience de gestion des couleurs de trait, améliore les objets OLE et les rapports LINQ, et introduit un nouveau API public de sources bibliographiques.

Aspose.Words 24.2 a étendu les options Charts API, de gestion des styles et LINQ. Cette version d'Aspose.Words a également introduit la possibilité de spécifier des SvgSaveOptions lors du rendu, un contrôle plus flexible du chargement des fichiers Markdown et l'utilisation du texte de référence pour les notes de bas de page et de fin.

Aspose.Words 24.3 introduit un nouveau lecteur/écrivain TIFF et une émulation des opérations binaires raster pour les métafichiers WMF. Aspose.Words 24.3 continue également d'étendre l'API des graphiques.

Aspose.Words 24.4 améliore l'enregistrement des formats, certaines options de rendu, ainsi que le travail avec les signatures numériques.

### Formats pris en charge <sup>24.4</sup>

Le format d'image moderne **WebP** est désormais pris en charge dans Aspose.Words pour .NET Framework 4.6.2 et versions supérieures. Vous pouvez désormais lire et insérer des images WebP dans des documents, ainsi que sauvegarder des images au format WebP. 

Veuillez noter que WebP est actuellement disponible uniquement dans .NET Standard et .NET Framework v4.6.2 et versions supérieures.

### Rendu et impression

#### Contrôle des couleurs de trait <sup>24.1</sup>

La classe [Stroke](https://reference.aspose.com/words/fr/net/aspose.words.drawing/stroke/) a été étendue avec un ensemble de nouvelles propriétés publiques liées à la gestion des couleurs de trait: [ForeThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/forethemecolor/) et [BackThemeColor](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/foretintandshade/) et [BackTintAndShade](https://reference.aspose.com/words/net/aspose.words.drawing/stroke/backtintandshade/).

#### DrawingML Charts API Extension <sup>24.2 / 24.3 / 24.4</sup>

Le **DrawingML Charts API** continue de s’étoffer.

#### Incorporer les polices déclarées dans les règles @font-face <sup>24.4</sup>

Il est désormais possible d'incorporer les polices déclarées dans les règles @font-face dans les définitions de polices du document résultant en ajoutant une nouvelle propriété appelée [SupportFontFaceRules](https://reference.aspose.com/words/net/aspose.words.loading/htmlloadoptions/supportfontfacerules/).

#### Travailler avec la mise en forme des effets de lumière et de réflexion <sup>24.4</sup>

La possibilité de travailler avec la mise en forme des effets de lumière et de réflexion pour un objet de dessin a été implémentée.

### Chargement et enregistrement de documents

#### Spécifier les options SvgSaveOptions lors du rendu <sup>24.2</sup>

La possibilité de spécifier des [SvgSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/svgsaveoptions/) lors du rendu a été ajoutée à l'aide des méthodes [ShapeRenderer](https://reference.aspose.com/words/fr/net/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/save/) et [OfficeMathRenderer](https://reference.aspose.com/words/fr/net/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/fr/net/aspose.words.rendering/noderendererbase/save/).

#### Conserver les lignes vides lors du chargement des fichiers Markdown <sup>24.2</sup>

La possibilité de conserver les lignes vides lors du chargement des fichiers Markdown a été ajoutée.

#### Un nouveau lecteur/écrivain TIFF <sup>24.3</sup>

Un nouveau lecteur/écrivain TIFF a été développé pour Aspose.Words pour .NET Standard, .NET 6 et les versions ultérieures. Aspose.Words for .NET 24.3 prend en charge la lecture des images TIFF avec les types de compression JPEG et Old JPEG, et améliore également significativement la qualité des opérations de lecture et d'écriture.

### Autre

* La possibilité de modifier le texte du contrôle OLE `TextBox` a été introduite en ajoutant une nouvelle propriété [Text](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/text/) à la nouvelle classe [TextBoxControl](https://reference.aspose.com/words/net/aspose.words.drawing.ole/textboxcontrol/). <sup>24.1</sup>
* Le API public Sources bibliographiques a été implémenté via l'ajout d'un nouvel espace de noms [Aspose.Words.Bibliography](https://reference.aspose.com/words/net/aspose.words.bibliography/) avec ses nouvelles classes et énumérations, et via l'ajout d'une nouvelle propriété [Bibliography](https://reference.aspose.com/words/net/aspose.words/document/bibliography/) à la classe [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/). <sup>24.1</sup>
* Un API pour limiter l'accès aux membres de type utilisant la syntaxe de modèle pour le moteur de reporting LINQ a été fourni. <sup>24.1</sup>
* De nouvelles propriétés publiques [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) et [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) pour une gestion améliorée des styles ont été ajoutées à la classe [Style](https://reference.aspose.com/words/fr/net/aspose.words/style/). <sup>24.2</sup>
* La fonctionnalité permettant de récupérer le texte réel de la marque de référence pour les notes de bas de page et les notes de fin a été améliorée avec la propriété [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) et la méthode [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* La compatibilité avec les graphiques `Word 2016` pour le `LINQ Reporting Engine` a été activée. <sup>24.2</sup>
* L'émulation des opérations binaires raster pour les métafichiers WMF a été implémentée. <sup>24.3</sup>
* La possibilité de définir des options de signature pour les documents dans SaveOptions a été activée en ajoutant une nouvelle classe appelée [DigitalSignatureDetails](https://reference.aspose.com/words/net/aspose.words.saving/digitalsignaturedetails/) avec de nouveaux membres publics, ainsi qu'en ajoutant de nouvelles propriétés aux classes [OoxmlSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/docsaveoptions/) et [OdtSaveOptions](https://reference.aspose.com/words/net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

En savoir plus sur [Notes de version Aspose.Words pour .NET 24.1](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-1-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour .NET 24.2](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-2-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour .NET 24.3](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-3-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour .NET 24.4](https://releases.aspose.com/words/net/release-notes/2024/aspose-words-for-net-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words pour .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 étend les options de rendu, l'émulation de rendu des métafichiers et les options d'enregistrement markdown.

Aspose.Words 23.10 améliore le rendu, étend les options de chargement et d'enregistrement des documents et permet aux utilisateurs de fusionner des documents de nouvelles manières.

Aspose.Words 23.11 améliore le travail avec les révisions, le format XLSX et les polices sur la légende des graphiques avec des options supplémentaires.

Aspose.Words 23.12 introduit de nouvelles propriétés et énumérations pour travailler avec des documents PDF et OOXML, ainsi que la prise en charge des images WebP.

### Rendu et impression

#### Personnalisation des titres des axes dans DrawingML Charts <sup>23.9</sup>

La possibilité de personnaliser les titres des axes dans les graphiques DrawingML a été introduite par l'implémentation d'une nouvelle propriété de classe publique [ChartAxisTitle](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartaxistitle/) et [Title](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartaxis/title/).

#### Détermination de la position verticale des polices dans un paragraphe <sup>23.9</sup>

Il est désormais possible de définir la position verticale des polices au sein d'un paragraphe grâce à la nouvelle propriété publique [BaselineAlignment](https://reference.aspose.com/words/fr/net/aspose.words/paragraphformat/baselinealignment/) et à la nouvelle énumération [BaselineAlignment](https://reference.aspose.com/words/fr/net/aspose.words/baselinealignment/).

#### Contrôle des couleurs de premier plan <sup>23.10</sup>

La possibilité de récupérer la couleur de premier plan sans modificateurs a été ajoutée aux classes [Fill](https://reference.aspose.com/words/fr/net/aspose.words.drawing/fill/) et [Stroke](https://reference.aspose.com/words/fr/net/aspose.words.drawing/stroke/) via la propriété **BaseForeColor**.

#### Extension des fonctionnalités des graphiques <sup>23.10</sup>

Les fonctionnalités des classes [ChartDataPointCollection](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartseries/) et [ChartFormat](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartformat/) ont été étendues avec de nouvelles méthodes et propriétés.

#### Ajuster et adapter automatiquement une image à une forme <sup>23.10</sup>

Un moyen simple d'ajuster et d'ajuster automatiquement une image dans une forme particulière a été fourni grâce à la nouvelle méthode [FitImageToShape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/imagedata/fitimagetoshape/).

#### Formatage de police par défaut pour les entrées de légende de graphique DrawingML <sup>23.11</sup>

La possibilité de spécifier le formatage de police par défaut pour les entrées de légende des graphiques DrawingML a été ajoutée via la propriété [Font](https://reference.aspose.com/words/net/aspose.words.drawing.charts/chartlegend/font/). Cette fonctionnalité facilite une apparence plus rationalisée et cohérente des éléments du graphique, améliorant ainsi l’esthétique globale du document.

#### Spécifier la mise en page lors de l'ouverture d'un PDF dans Reader <sup>23.12</sup>

La possibilité de spécifier la mise en page à utiliser lors de l'ouverture d'un document dans un lecteur PDF a été ajoutée grâce à l'introduction d'une nouvelle propriété [PageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfsaveoptions/pagelayout/) dans la classe [PdfSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/pdfsaveoptions/) et à l'introduction d'une nouvelle énumération [PdfPageLayout](https://reference.aspose.com/words/net/aspose.words.saving/pdfpagelayout/).

### Chargement et enregistrement de documents

#### Spécification d'un nom de dossier pour construire des URI d'image dans Markdown <sup>23.9</sup>

La classe [MarkdownSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/markdownsaveoptions/) a été étendue en incluant la propriété [ImagesFolderAlias](https://reference.aspose.com/words/fr/net/aspose.words.saving/markdownsaveoptions/imagesfolderalias/), qui permet de spécifier le nom du dossier utilisé pour construire les URI d'image écrites dans le document Markdown.

#### Réduire la taille de sortie PDF <sup>23.10</sup>

Diverses optimisations de rendu PDF pour réduire la taille de sortie lors de l'utilisation des paramètres [OptimizeOutput](https://reference.aspose.com/words/fr/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/) ont été mises en œuvre.

#### Reconnaître les hyperliens lors du chargement de documents TXT <sup>23.10</sup>

La fonctionnalité permettant de reconnaître les hyperliens lors du chargement de documents TXT a été implémentée en ajoutant une nouvelle propriété [DetectHyperlinks](https://reference.aspose.com/words/fr/net/aspose.words.loading/txtloadoptions/detecthyperlinks/).

### Autre

* L'émulation de rendu de métafichier pour déterminer la taille de rastérisation a été implémentée, en particulier pour la largeur du stylo WMF et la largeur du stylo cosmétique EMF. Pour y parvenir, la propriété **ScaleWmfFontsToMetafileSize** a été remplacée par la propriété [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/fr/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpage/) et la propriété [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/fr/net/aspose.words.saving/metafilerenderingoptions/emulaterenderingtosizeonpageresolution/) a été ajoutée. <sup>23.9</sup>
* Une méthode simplifiée pour insérer un document dans un autre document à la position actuelle du curseur a été introduite en utilisant la méthode [InsertDocumentInline](https://reference.aspose.com/words/fr/net/aspose.words/documentbuilder/insertdocumentinline/). <sup>23h10</sup>
* La possibilité d'accéder et de modifier les propriétés de style a été ajoutée grâce à l'introduction de la nouvelle propriété [Locked](https://reference.aspose.com/words/fr/net/aspose.words/style/locked/). <sup>23h10</sup>
* Un paramètre de type générique a été ajouté aux méthodes de la classe [CompositeNode](https://reference.aspose.com/words/fr/net/aspose.words/compositenode/). <sup>23h10</sup>
* Un moyen de contrôler quand une certaine révision doit être acceptée/rejetée ou non a été implémenté en utilisant les méthodes [Accept](https://reference.aspose.com/words/net/aspose.words/revisioncollection/accept/) et [Reject](https://reference.aspose.com/words/net/aspose.words/revisioncollection/reject/). Cette amélioration offre aux utilisateurs un contrôle plus précis sur le processus de révision. <sup>23.11</sup>
* La possibilité d'écrire toutes les sections d'un document sur la même feuille de calcul XLSX a été fournie grâce au nouveau type d'énumération [XlsxSectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsectionmode/) et à la nouvelle propriété [SectionMode](https://reference.aspose.com/words/net/aspose.words.saving/xlsxsaveoptions/sectionmode/). <sup>23.11</sup>
* Un moyen de contrôler la manière dont les extensions au format ZIP64 seront utilisées pour les documents OOXML a été implémenté via la nouvelle propriété Zip64Mode de la classe `OoxmlSaveOptions` et la nouvelle énumération Zip64Mode. <sup>23.12</sup>
* La prise en charge de l'image WebP a été introduite. Veuillez noter que cette fonctionnalité n'est disponible que pour les versions .NetStandart et .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

En savoir plus sur [Notes de version de Aspose.Words pour .NET 23.9](/words/net/aspose-words-for-net-23-9-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour .NET 23.10](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-10-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour .NET 23.11](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-11-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour .NET 23.12](https://releases.aspose.com/words/net/release-notes/2023/aspose-words-for-net-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words pour .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 améliore la capacité de travailler avec des données de séries de graphiques et la capacité de travailler avec des documents ODT, ainsi que d'améliorer les en-têtes/pieds de page et leur habillage de texte.

Aspose.Words 23.6 étend les options de rendu, ajoute un nouveau format d'exportation, améliore les outils de reporting LINQ et LowCode.

Aspose.Words 23.7 améliore les capacités de reporting, ajoute un nouveau format d'exportation et introduit des modifications dans l'utilisation des tableaux et des signatures numériques.

Aspose.Words 23.8 étend les capacités de différents formats, améliore le rendu et ajoute de nouvelles options pour travailler avec les champs

### Formats pris en charge

* A partir de la version 23.6, il est possible d'enregistrer un document au format XLSX. Vous pouvez désormais convertir vos documents au format Excel. <sup>23.6</sup>
* À partir de la version 23.7, il est possible d'enregistrer une page ou une forme de document au format EPS. <sup>23.7</sup>

### Nouvelles fonctionnalités de format

* La fonctionnalité permettant de générer automatiquement une table des matières (TOC) pour les documents MOBI a été introduite. <sup>23.8</sup>
* Le constructeur [PdfEncryptionDetails](https://reference.aspose.com/words/fr/net/aspose.words.saving/pdfencryptiondetails/pdfencryptiondetails/) a été étendu avec [PdfPermissions](https://reference.aspose.com/words/fr/net/aspose.words.saving/pdfpermissions/). <sup>23.8</sup>
* La mise en forme du texte vertical pour les métafichiers EMF a été implémentée. <sup>23.8</sup>

### Rendu et impression

#### Obtenir et modifier les données d'une série de graphiques <sup>23.5</sup>

La fonctionnalité permettant d'obtenir et de modifier les données des séries de graphiques a été fournie en ajoutant:

* nouvelles classes: [ChartXValue](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartmultilevelvalue/)
* nouveaux types d'énumérations: [ChartXValueType](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartyvaluetype/)

#### Prise en charge de la typographie avancée <sup>23.6</sup>

La prise en charge de la typographie avancée dans les rendus WMF, EMF et EMF+ a été ajoutée.

#### Contenu coloré sur la page <sup>23.6</sup>

La propriété publique [PageInfo.Colored](https://reference.aspose.com/words/fr/net/aspose.words.rendering/pageinfo/colored/), indiquant si la page est colorée ou non, a été ajoutée.

#### Formatage des étiquettes de données de graphique <sup>23.6</sup>

La possibilité de définir le formatage du remplissage, du contour et des légendes pour les étiquettes de données de graphique a été implémentée.

### Mail Merge et rapports

#### Insertion HTML dynamique pour le moteur de reporting LINQ <sup>23.6</sup>

Une nouvelle méthode d'insertion HTML dynamique pour LINQ Reporting Engine a été ajoutée.

#### Prise en charge des balises Mustache <sup>23.7</sup>

Les balises Mustache sont désormais prises en charge dans les méthodes [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/fr/net/aspose.words.mailmerging/mailmerge/getregionshierarchy/) et [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/fr/net/aspose.words.mailmerging/mailmerge/getfieldnamesforregion/#getfieldnamesforregion).

#### Mises à jour de la syntaxe du modèle du moteur de reporting LINQ <sup>23.7</sup>

La syntaxe du modèle LINQ Reporting Engine prend désormais en charge les méthodes d'extension `ElementAt` et ElementAtOrDefault.

#### Spécification de la taille des images rendues <sup>23.8</sup>

Un nouveau [ImageSize](https://reference.aspose.com/words/fr/net/aspose.words.saving/imagesaveoptions/imagesize/) de propriété publique permettant de spécifier la taille des images rendues en pixels a été introduit.

#### Conserver les espaces pour les valeurs de chaîne JSON – LINQ <sup>23.8</sup>

Une option a été ajoutée au moteur de reporting LINQ pour conserver les espaces pour les valeurs de chaîne JSON.

### <sup>LowCode23.6</sup>

De nouvelles méthodes LowCode destinées à fusionner différents types de documents en un seul document de sortie ont été ajoutées.

### Autre

* La prise en charge du retour à la ligne du texte dans les en-têtes/pieds de page a été implémentée. <sup>23.5</sup>
* La possibilité de supprimer les signatures numériques des documents ODT a été ajoutée via la méthode [RemoveAllSignatures](https://reference.aspose.com/words/fr/net/aspose.words.digitalsignatures/digitalsignatureutil/removeallsignatures/). <sup>23.5</sup>
* Le [PhoneticGuide](https://reference.aspose.com/words/fr/net/aspose.words/run/phoneticguide/) de propriété publique pour obtenir le texte de base et rubis du guide phonétique [Run](https://reference.aspose.com/words/fr/net/aspose.words/run/) a été ajouté. <sup>23.5</sup>
* La possibilité de récupérer une valeur de signature numérique à partir d'un document signé numériquement sous forme de tableau d'octets a été ajoutée en introduisant une nouvelle propriété [SignatureValue](https://reference.aspose.com/words/fr/net/aspose.words.digitalsignatures/digitalsignature/signaturevalue/). <sup>23.7</sup>
* Les classes [Row](https://reference.aspose.com/words/fr/net/aspose.words.tables/row/) et [Cell](https://reference.aspose.com/words/fr/net/aspose.words.tables/cell/) ont été étendues avec de nouveaux membres publics: [Row.NextRow](https://reference.aspose.com/words/fr/net/aspose.words.tables/row/nextrow/), [Row.PreviousRow](https://reference.aspose.com/words/fr/net/aspose.words.tables/row/previousrow/), [Cell.NextCell](https://reference.aspose.com/words/fr/net/aspose.words.tables/cell/nextcell/) et [Cell.PreviousCell](https://reference.aspose.com/words/fr/net/aspose.words.tables/cell/previouscell/). <sup>23.7</sup>
* La prise en charge des champs CITATION et BIBLIOGRAPHIE a été ajoutée. <sup>23.8</sup>

{{% alert color="primary" %}}

En savoir plus sur [Notes de version Aspose.Words pour .NET 23.5](/words/net/aspose-words-for-net-23-5-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour .NET 23.6](/words/net/aspose-words-for-net-23-6-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour .NET 23.7](/words/net/aspose-words-for-net-23-7-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour .NET 23.8](/words/net/aspose-words-for-net-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words pour .NET 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 améliore les performances de l'émulation des opérations raster, ainsi que la qualité de l'exportation et du rendu des documents.

Aspose.Words 23.2 introduit l'enregistrement des documents au format MOBI, améliore le rendu des graphiques et apporte des modifications notables aux détails de l'apparence du document.

Aspose.Words 23.3 améliore l'importation et l'enregistrement des documents avec de nouvelles propriétés, et améliore également la qualité du travail avec les couleurs d'arrière-plan et de premier plan et le dégradé radial.

Aspose.Words 23.4 améliore le calcul de certains paramètres et le positionnement du tableau et du texte environnant.

### Amélioration des performances

#### Émulation des opérations raster <sup>23.1</sup>

Les performances et la qualité de l'émulation des opérations raster avec les métafichiers ont été considérablement améliorées.

### Formats pris en charge

#### Exporter vers MOBI <sup>23.2</sup>

À partir de la version 23.2, il est possible d'enregistrer un document au format MOBI (également appelé PRC, AZW – le format de fichier de livre électronique Amazon Kindle). Vous pouvez désormais non seulement charger des documents MOBI, mais également exporter vos fichiers au format MOBI.

### Le rendu

#### Travailler avec les couleurs du thème d'ombrage <sup>23.1</sup>

La possibilité de travailler avec les couleurs du thème d'ombrage a été implémentée.

#### Prise en charge du coefficient R au carré dans les graphiques DML <sup>23.1</sup>

Prise en charge du coefficient R au carré dans les étiquettes de courbe de tendance des graphiques DML lors de l'ajout du rendu.

#### Améliorations du rendu des graphiques <sup>23.2</sup>

Depuis la version 23.2, le rendu des graphiques a été considérablement amélioré.

#### Contrôle des couleurs d'arrière-plan et de premier plan <sup>23.3</sup>

La classe [Fill](https://reference.aspose.com/words/fr/net/aspose.words.drawing/fill/) a été étendue avec un ensemble de nouvelles propriétés publiques liées aux couleurs d'arrière-plan et de premier plan: [ForeThemeColor](https://reference.aspose.com/words/fr/net/aspose.words.drawing/fill/forethemecolor/) et [BackThemeColor](https://reference.aspose.com/words/fr/net/aspose.words.drawing/fill/backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/fr/net/aspose.words.drawing/fill/foretintandshade/) et [BackTintAndShade](https://reference.aspose.com/words/fr/net/aspose.words.drawing/fill/backtintandshade/).

#### Dégradés radiaux avec le `SkiaSharp` Native Shader <sup>23.3</sup>

Le rendu des dégradés radiaux avec le shader natif `SkiaSharp` pour .NET Standard a été implémenté.

#### Distance entre le tableau et le texte environnant <sup>23.4</sup>

La possibilité de définir la distance entre le tableau et le texte environnant a été ajoutée en introduisant de nouvelles propriétés dans la classe [Table](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/): [DistanceLeft](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/distanceleft/), [DistanceRight](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/distanceright/), [DistanceTop](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/distancetop/) et [DistanceBottom](https://reference.aspose.com/words/fr/net/aspose.words.tables/table/distancebottom/).

### Chargement et enregistrement de documents

#### Générer `TOC` pour les documents AZW3 <sup>23.1</sup>

La possibilité de générer des `TOC` (table des matières) pour les documents AZW3 a été ajoutée grâce à l'utilisation de la propriété [NavigationMapLevel](https://reference.aspose.com/words/fr/net/aspose.words.saving/htmlsaveoptions/navigationmaplevel/).

#### Exportation d'éléments de liste vers Markdown <sup>23.1</sup>

Un moyen de contrôler l'exportation des éléments de liste au format Markdown a été fourni en ajoutant la propriété [ListExportMode](https://reference.aspose.com/words/fr/net/aspose.words.saving/markdownsaveoptions/listexportmode/) à la classe [MarkdownSaveOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/markdownsaveoptions/).

#### Notifications de progression de l'enregistrement des documents <sup>23.3</sup>

L'enregistrement des notifications de progression pour les formats MOBI et AZW3 a été implémenté.

#### Ajustement de l'espacement des phrases et des mots <sup>23.3</sup>

La possibilité de spécifier s'il faut ajuster automatiquement l'espacement des phrases et des mots lors de l'importation du document a été ajoutée en introduisant la propriété [AdjustSentenceAndWordSpacing](https://reference.aspose.com/words/fr/net/aspose.words/importformatoptions/adjustsentenceandwordspacing/).

### Autre

* La possibilité de spécifier l'ajustement de l'espacement des caractères d'un document a été ajoutée via l'implémentation de la propriété [JustificationMode](https://reference.aspose.com/words/fr/net/aspose.words/document/justificationmode/) <sup>23.2</sup>
* La manière d'indiquer à Aspose.Words s'il doit inclure des zones de texte, des notes de bas de page et des notes de fin dans les statistiques du nombre de mots a été fournie en ajoutant la propriété [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/fr/net/aspose.words/document/includetextboxesfootnotesendnotesinstat/) <sup>23.2.</sup>
* Une nouvelle option pour un style de document, qui permet de spécifier si le style est automatiquement redéfini en fonction de la valeur appropriée, a été introduite via la propriété [AutomaticallyUpdate](https://reference.aspose.com/words/fr/net/aspose.words/style/automaticallyupdate/) <sup>23.2</sup>
* La possibilité de déterminer si [Run](https://reference.aspose.com/words/fr/net/aspose.words/run/) est un guide phonétique a été ajoutée à l'aide de la propriété [IsPhoneticGuide](https://reference.aspose.com/words/fr/net/aspose.words/run/isphoneticguide/) <sup>23.4</sup>
* Un moyen simple de travailler avec des séries et des axes de graphiques combinés a été implémenté en introduisant la classe [ChartAxisCollection](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chartaxiscollection/) et en ajoutant la propriété [Chart.Axes](https://reference.aspose.com/words/fr/net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
* De nouvelles propriétés publiques liées au positionnement et au dimensionnement relatifs de la forme ont été ajoutées à la classe [Shape](https://reference.aspose.com/words/fr/net/aspose.words.drawing/shape/) <sup>23.4</sup>
* La précision et les performances du calcul de la luminosité des couleurs pour la résolution automatique des couleurs du texte ont été améliorées conformément aux dernières versions de Microsoft Word <sup>23.4</sup> 

{{% alert color="primary" %}}

En savoir plus sur [Notes de version Aspose.Words pour .NET 23.1](/words/net/aspose-words-for-net-23-1-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour .NET 23.2](/words/net/aspose-words-for-net-23-2-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour .NET 23.3](/words/net/aspose-words-for-net-23-3-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour .NET 23.4](/words/net/aspose-words-for-net-23-4-release-notes/).

{{% /alert %}}

## Voir également

{{% alert color="primary" %}}

Cette page contient les dernières nouvelles sur les versions des 2 dernières années. Pour plus de détails sur les versions antérieures, consultez les pages [Notes de version'](/words/net/release-notes/) dans les sections correspondantes.

{{% /alert %}}