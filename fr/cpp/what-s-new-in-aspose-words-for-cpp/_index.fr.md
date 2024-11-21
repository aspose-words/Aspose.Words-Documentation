---
title: Quoi de neuf
second_title: Aspose.Words pour C++
articleTitle: Quoi de neuf dans Aspose.Words pour C++
linktitle: Quoi de neuf dans Aspose.Words pour C++
type: docs
description: "Aspose.Words pour C++ s'agrandit et s'améliore quotidiennement. Sur cette page, vous pouvez en apprendre davantage sur les fonctionnalités énormes et les plus intéressantes du produit."
weight: 2
url: /fr/cpp/what-s-new-in-aspose-words-for-cpp/
timestamp: 2024-10-28-11-53-45
---

Cette page décrit les nouvelles fonctionnalités Aspose.Words les plus intéressantes introduites dans les versions récentes.

## Aspose.Words pour C++ 24.9

Aspose.Words 24.9 introduit l'insertion group shape et l'insertion StructuredDocumentTag via DocumentBuilder, améliore le rendu radial des graphiques avec des graduations, améliore les signatures numériques avec la prise en charge XAdES-EPES, ajoute la reconnaissance des soulignements Markdown et donne accès aux séparateurs de notes de bas de page/de fin.

### Rendu et Impression

#### Graduations sur les Diagrammes Radiaux

Le rendu des graduations sur les graphiques radiaux a été implémenté.

### Conversion, Chargement et Enregistrement de Documents

#### Mise en forme soulignée lors du chargement de fichiers Markdown

L'option permettant de reconnaître la mise en forme soulignée lors du chargement de documents Markdown a été incorporée en ajoutant une nouvelle propriété publique [ImportUnderlineFormatting]().

### Signatures Numériques

#### Signer des documents avec XAdES-EPES

La possibilité de signer des documents avec des signatures XML de niveau XAdES-EPES-DSig a été introduite en ajoutant une nouvelle propriété publique [XmlDsigLevel]() et une nouvelle énumération publique [XmlDsigLevel]().

### Autres

* Une nouvelle méthode publique [InsertGroupShape]() a été ajoutée à group shapes.
* Une nouvelle méthode publique [InsertStructuredDocumentTag]() a été ajoutée pour insérer **StructuredDocumentTags** dans un document.
* L'accès public aux séparateurs de notes de bas de page / de fin a été fourni en ajoutant quelques classes et propriétés publiques.

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour C++ 24.9 Notes de version](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-9-release-notes/).

{{% /alert %}}

## Aspose.Words pour C++ 24.5, 24.6, 24.7

Aspose.Words 24.5 étend les options pour les assemblys, améliore les capacités de rendu et étend certaines autres options.

Aspose.Words 24.6 améliore les options de rendu, améliore les fonctionnalités de recherche et de comparaison et étend plusieurs autres fonctionnalités.

Aspose.Words 24.7 modifie la façon dont vous travaillez avec ActiveX, étend les capacités de rendu et exporte vers les formats Markdown et XLSX.

### Formats Pris En Charge

À partir de la version 24.7, l'exportation vers PDF/UA-2 est prise en charge pour garantir l'accessibilité aux utilisateurs handicapés.

### Rendu et Impression

#### Modifications des graphiques, des Formes et du dessinml <sup>24.5</sup>

- Le rendu des effets DrawingML pour les graphiques SVG, étendant les fonctionnalités précédentes limitées aux images, a été implémenté.
- La prise en charge de la création de graphiques combinés et de l'ajustement des propriétés telles que la largeur de l'écart, le chevauchement et l'échelle des bulles dans les groupes de séries a été introduite en ajoutant les classes **ChartSeriesGroup** et **ChartSeriesGroupCollection** et la propriété **SeriesGroups**.
- La fonctionnalité permettant de manipuler l'effet SoftEdge des formes a été implémentée en ajoutant la classe **SoftEdgeFormat**.
- La possibilité de modifier les valeurs d'ajustement des formes a été implémentée en ajoutant les classes publiques **AdjustmentCollection** et **Adjustment** et la propriété **Adjustments**.

#### Modifications des Graphiques, des Formes et des dessins <sup>24.6</sup>

- Les capacités de cartographie ont été améliorées. Vous pouvez désormais créer une plus grande variété de graphiques, notamment *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* graphiques, *Box & Whisker* graphiques, *Waterfalls* et *Funnels*. Cela vous permet de visualiser vos données de manière plus diversifiée et informative.
- Le contrôle des couleurs pour la mise en forme des ombres a été amélioré. Vous pouvez obtenir un contrôle plus précis sur l'apparence de vos documents en accédant aux couleurs des ombres.
- L'amélioration des performances pour le rendu en arrière-plan a été améliorée. Vous pouvez considérablement accélérer le rendu des arrière-plans contenant de petits éléments grâce à la technologie de mosaïque native.
- Des dégradés réalistes pour les formes ont été ajoutés. Vous pouvez désormais créer des formes DML avec des dégradés non linéaires, imitant le style visuel de Microsoft Word pour un aspect plus soigné.

#### Personnalisation des Étiquettes de Données de Graphique <sup>24.7</sup>

La possibilité de personnaliser les étiquettes de données de graphique telles que **Orientation** et **Rotation** a été ajoutée.

#### Style de nombre personnalisé pour les niveaux de liste <sup>24.7</sup>

Un setter pour la propriété publique [CustomNumberStyleFormat](https://reference.aspose.com/words/cpp/aspose.words.lists/listlevel/get_customnumberstyleformat/) a été ajouté. Vous pouvez maintenant définir un style de nombre personnalisé pour les niveaux de liste.

#### Changements dans l'utilisation d'ActiveX <sup>24.7</sup>

- Les propriétés des objets ActiveX peuvent désormais être modifiées, ce qui vous donne plus de contrôle sur leur comportement.
- La possibilité de modifier la valeur du contrôle ActiveX du bouton radio pour activer l'interaction dynamique a été ajoutée.
- La possibilité de basculer une case à cocher ActiveX sur "cochée" ou "décochée" a été ajoutée.

### Chargement et Enregistrement de Documents

#### Exportation de liens au format Markdown <sup>24.7</sup>

La possibilité de contrôler l'exportation des liens au format Markdown a été ajoutée grâce à l'implémentation de la propriété [LinkExportMode](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_linkexportmode/).

### Rechercher et Comparer

#### Options de Comparaison Avancées <sup>24.6</sup>

La possibilité de rationaliser les flux de travail d'analyse des données avec une fonctionnalité de comparaison améliorée a été ajoutée. Cela inclut une nouvelle option **IgnoreStoreItemId** et une interface repensée pour des comparaisons avancées.

### Autres

- La fonction d'élimination des pages vides d'un document a été implémentée en ajoutant la méthode [RemoveBlankPages](https://reference.aspose.com/words/cpp/aspose.words/document/removeblankpages/). <sup>24.5</sup>
- La possibilité de vérifier la présence de macros VBA sans charger de document a été fournie en ajoutant la propriété **HasMacros**. <sup>24.5</sup>
- Une nouvelle propriété **DateTimeUtc** a été ajoutée – cela fournit un horodatage plus précis pour les commentaires, améliorant l'organisation et la traçabilité. <sup>24.6</sup>
- Le format datetime est maintenant automatiquement détecté pour une exportation transparente au format XLSX. <sup>24.7</sup>
- La propriété publique [IsProtected](https://reference.aspose.com/words/cpp/aspose.words.vba/vbaproject/get_isprotected/), qui vous permet de vérifier si un projet VBA est protégé, a été ajoutée. <sup>24.7</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour C++ 24.5 Notes de version](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-5-release-notes/).

En savoir plus sur [Aspose.Words pour C++ 24.6 Notes de version](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-6-release-notes/).

En savoir plus sur [Aspose.Words pour C++ 24.7 Notes de version](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-7-release-notes/).

{{% /alert %}}

## Aspose.Words pour C++ 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 améliore l'expérience de gestion des couleurs de trait, améliore les objets OLE et introduit une nouvelle API publique de sources bibliographiques.

Aspose.Words 24.2 API de graphiques étendue et gestion des styles. Cette version de Aspose.Words a également introduit la possibilité de spécifier SvgSaveOptions pendant le rendu, un contrôle plus flexible chargeant les fichiers Markdown et travaillant avec du texte de référence pour les notes de bas de page et de fin.

Aspose.Words 24.3 introduit l'émulation des opérations raster binaires pour les métafichiers WMF et continue également d'étendre l'API Charts.

Aspose.Words 24.4 améliore certaines options de rendu, ainsi que le travail avec les signatures numériques.

### Rendu et Impression

#### Contrôle de la Couleur des Traits <sup>24.1</sup>

La classe [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) a été étendue avec un ensemble de nouvelles propriétés publiques liées à la gestion des couleurs de trait: [ForeThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_forethemecolor/) et [BackThemeColor](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backthemecolor/), [ForeTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_foretintandshade/) et [BackTintAndShade](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/get_backtintandshade/).

#### Extension de l'API des graphiques DrawingML <sup>24.2 / 24.3 / 24.4</sup>

Le **DrawingML Charts API** continue d'être étendu.

#### Incorporer les polices déclarées dans les règles @font-face <sup>24.4</sup>

Ajout d'une possibilité d'incorporer des polices déclarées dans les règles @font-face dans les définitions de polices du document résultant a été introduite en ajoutant une nouvelle propriété [SupportFontFaceRules](https://reference.aspose.com/words/cpp/aspose.words.loading/htmlloadoptions/get_supportfontfacerules/).

#### Travailler avec la mise en forme de Lueur et de réflexion <sup>24.4</sup>

La possibilité de travailler avec la mise en forme de lueur et de réflexion pour un objet de dessin a été implémentée.

### Chargement et Enregistrement de Documents

#### Spécifiez SvgSaveOptions Pendant Le Rendu <sup>24.2</sup>

La possibilité de spécifier [SvgSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/svgsaveoptions/) pendant le rendu a été ajoutée à l'aide de [ShapeRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/shaperenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) et [OfficeMathRenderer](https://reference.aspose.com/words/cpp/aspose.words.rendering/officemathrenderer/).[Save](https://reference.aspose.com/words/cpp/aspose.words.rendering/noderendererbase/save/) méthodes.

#### Conserver les lignes vides lors du chargement des fichiers Markdown <sup>24.2</sup>

La possibilité de conserver les lignes vides lors du chargement des fichiers Markdown a été ajoutée.

### Autres

- La possibilité de modifier le texte du contrôle OLE `TextBox` a été introduite en ajoutant une nouvelle propriété **Text** à la nouvelle classe **TextBoxControl**. <sup>24.1</sup>
- L'API publique des sources de bibliographie a été implémentée en ajoutant un nouvel espace de noms [Aspose.Words.Bibliography](https://reference.aspose.com/words/cpp/aspose.words.bibliography/) avec ses nouvelles classes et énumérations, et en ajoutant une nouvelle propriété [Bibliography](https://reference.aspose.com/words/cpp/aspose.words/document/get_bibliography/) à la classe [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). <sup>24.1</sup>
- De nouvelles propriétés publiques [Priority](https://reference.aspose.com/words/cpp/aspose.words/style/get_priority/), [UnhideWhenUsed](https://reference.aspose.com/words/cpp/aspose.words/style/get_unhidewhenused/) et [SemiHidden](https://reference.aspose.com/words/cpp/aspose.words/style/get_semihidden/) pour une gestion améliorée des styles ont été ajoutées à la classe [Style](https://reference.aspose.com/words/cpp/aspose.words/style/). <sup>24.2</sup>
- La fonctionnalité permettant de récupérer le texte de la marque de référence réelle pour les notes de bas de page et de fin a été améliorée avec la propriété [ActualReferenceMark](https://reference.aspose.com/words/cpp/aspose.words.notes/footnote/get_actualreferencemark/) et la méthode [UpdateActualReferenceMarks](https://reference.aspose.com/words/cpp/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
- L'émulation des opérations raster binaires pour les métafichiers WMF a été implémentée. <sup>24.3</sup>
- La possibilité de définir des options de signature pour les documents au sein de **SaveOptions** a été activée en ajoutant une nouvelle classe **DigitalSignatureDetails** avec de nouveaux membres publics, ainsi qu'en ajoutant de nouvelles propriétés aux classes [OoxmlSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/docsaveoptions/) et [OdtSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour C++ 24.1 Notes de version](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-1-release-notes/).

En savoir plus sur [Aspose.Words pour C++ 24.2 Notes de version](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-2-release-notes/).

En savoir plus sur [Aspose.Words pour C++ 24.3 Notes de version](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-3-release-notes/).

En savoir plus sur [Aspose.Words pour C++ 24.4 Notes de version](https://releases.aspose.com/words/cpp/release-notes/2024/aspose-words-for-cpp-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words pour C++ 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 développe les options de rendu, l'émulation de rendu de métafichier et les options d'enregistrement markdown.

Aspose.Words 23.10 améliore le rendu, élargit les options de chargement et d'enregistrement des documents et permet aux utilisateurs de fusionner des documents de nouvelles manières.

Aspose.Words 23.11 améliore le travail avec les révisions, le format XLSX et les polices sur la légende du graphique avec des options supplémentaires.

Aspose.Words 23.12 introduit de nouvelles propriétés et énumérations pour travailler avec PDF et les documents OOXML, ainsi que la prise en charge des images WebP.

### Rendu et Impression

#### Personnalisation des titres d'axes dans les graphiques DrawingML <sup>23.9</sup>

La possibilité de personnaliser les titres des axes dans les graphiques DrawingML a été introduite par l'implémentation d'une nouvelle propriété de classe publique **ChartAxisTitle** et [Title](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartaxis/get_title/).

#### Déterminer la position verticale des polices dans un Paragraphe <sup>23.9</sup>

Il est maintenant possible de définir la position verticale des polices dans un paragraphe en utilisant la nouvelle propriété public [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/paragraphformat/get_baselinealignment/) et la nouvelle énumération [BaselineAlignment](https://reference.aspose.com/words/cpp/aspose.words/baselinealignment/).

#### Contrôle des Couleurs De Premier Plan <sup>23.10</sup>

La possibilité de récupérer la couleur de premier plan sans modificateurs a été ajoutée aux classes [Fill](https://reference.aspose.com/words/cpp/aspose.words.drawing/fill/) et [Stroke](https://reference.aspose.com/words/cpp/aspose.words.drawing/stroke/) via la propriété **BaseForeColor**.

#### Extension de la fonctionnalité des graphiques <sup>23.10</sup>

La fonctionnalité des classes [ChartDataPointCollection](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartseries/) et [ChartFormat](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartformat/) a été étendue avec de nouvelles méthodes et propriétés.

#### Ajuster et ajuster automatiquement une image dans une forme <sup>23.10</sup>

Un moyen simple d'ajuster et d'ajuster automatiquement une image dans une forme particulière a été fourni par la nouvelle méthode [FitImageToShape](https://reference.aspose.com/words/cpp/aspose.words.drawing/imagedata/fitimagetoshape/).

#### Formatage de police par défaut pour les entrées de légende de graphique DrawingML <sup>23.11</sup>

La possibilité de spécifier le formatage de police par défaut pour les entrées de légende des graphiques DrawingML a été ajoutée via la propriété [Font](https://reference.aspose.com/words/cpp/aspose.words.drawing.charts/chartlegend/get_font/). Cette fonctionnalité facilite une apparence plus simplifiée et cohérente des éléments de graphique, améliorant ainsi l'esthétique globale du document.

#### Spécifier la mise en page lors de l'ouverture de PDF dans Reader <sup>23.12</sup>

La possibilité de spécifier la mise en page à utiliser lors de l'ouverture d'un document dans un lecteur PDF a été ajoutée grâce à l'introduction d'une nouvelle propriété **PageLayout** dans la classe [PdfSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/pdfsaveoptions/) et à l'introduction d'une nouvelle énumération **PdfPageLayout**.

### Chargement et Enregistrement de Documents

#### Spécification d'un nom de dossier pour Construire l'Image URIs dans Markdown <sup>23.9</sup>

La classe [MarkdownSaveOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/) a été étendue en incluant la propriété [ImagesFolderAlias](https://reference.aspose.com/words/cpp/aspose.words.saving/markdownsaveoptions/get_imagesfolderalias/), qui permet de spécifier le nom du dossier utilisé pour construire l'image URIs écrite dans le document Markdown.

#### Réduire la Taille de sortie PDF <sup>23.10</sup>

Diverses optimisations de rendu PDF pour réduire la taille de sortie lors de l'utilisation des paramètres [OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/) ont été implémentées.

#### Reconnaître les Hyperliens lors du Chargement de Documents TXT <sup>23.10</sup>

La fonctionnalité de reconnaissance des hyperliens lors du chargement de documents TXT a été implémentée en ajoutant une nouvelle propriété [DetectHyperlinks](https://reference.aspose.com/words/cpp/aspose.words.loading/txtloadoptions/get_detecthyperlinks/).

### Autres

- Une émulation de rendu de métafichier pour déterminer la taille de pixellisation a été implémentée, en particulier pour la largeur du stylet WMF et la largeur du stylet cosmétique EMF. Pour ce faire, la propriété **ScaleWmfFontsToMetafileSize** a été remplacée par la propriété [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpage/) et la propriété [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterenderingtosizeonpageresolution/) a été ajoutée. <sup>23.9</sup>
* Une méthode simplifiée pour insérer un document dans un autre document à la position actuelle du curseur a été introduite à l'aide de la méthode [InsertDocumentInline](https://reference.aspose.com/words/cpp/aspose.words/documentbuilder/insertdocumentinline/). <sup>23.10</sup>
* La possibilité d'accéder et de modifier les propriétés de style a été ajoutée grâce à l'introduction de la nouvelle propriété [Locked](https://reference.aspose.com/words/cpp/aspose.words/style/get_locked/). <sup>23.10</sup>
* Un paramètre de type générique a été ajouté aux méthodes de la classe [CompositeNode](https://reference.aspose.com/words/cpp/aspose.words/compositenode/). <sup>23.10</sup>
* Un moyen de contrôler quand une certaine révision doit être acceptée / rejetée ou non a été implémenté en utilisant les méthodes [Accept](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/accept/) et [Reject](https://reference.aspose.com/words/cpp/aspose.words/revisioncollection/reject/). Cette amélioration donne aux utilisateurs un contrôle plus fin sur le processus de révision. <sup>23.11</sup>
* La possibilité d'écrire toutes les sections d'un document sur la même feuille de calcul XLSX a été fournie via le nouveau type d'énumération [XlsxSectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsectionmode/) et la nouvelle propriété [SectionMode](https://reference.aspose.com/words/cpp/aspose.words.saving/xlsxsaveoptions/get_sectionmode/). <sup>23.11</sup>
* Un moyen de contrôler comment les extensions de format ZIP64 seront utilisées pour les documents OOXML a été implémenté via la nouvelle propriété Zip64Mode de la classe `OoxmlSaveOptions` et la nouvelle énumération Zip64Mode. <sup>23.12</sup>
* La prise en charge de l'image WebP a été introduite. Veuillez noter que cette fonctionnalité n'est disponible que pour .versions NetStandart et .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour C++ 23.9 Notes de version](/words/cpp/aspose-words-for-cpp-23-9-release-notes/).
En savoir plus sur [Aspose.Words pour C++ 23.10 Notes de version](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-10-release-notes/).
En savoir plus sur [Aspose.Words pour C++ 23.11 Notes de version](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-11-release-notes/).
En savoir plus sur [Aspose.Words pour C++ 23.12 Notes de version](https://releases.aspose.com/words/cpp/release-notes/2023/aspose-words-for-cpp-23-12-release-notes/).

{{% /alert %}}

## Voir Aussi

{{% alert color="primary" %}}

Cette page contient les dernières nouvelles sur les versions des 2 dernières années. Pour plus de détails sur les versions antérieures, voir le [Notes de mise à jour'](/words/cpp/release-notes/) pages dans les sections pertinentes.

{{% /alert %}}
