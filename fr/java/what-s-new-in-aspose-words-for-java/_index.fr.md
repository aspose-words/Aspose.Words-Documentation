---
title: Quoi de neuf
second_title: Aspose.Words pour Java
articleTitle: Quoi de neuf dans Aspose.Words pour Java
linktitle: Quoi de neuf dans Aspose.Words pour Java
type: docs
description: "Aspose.Words pour Java s'agrandit et s'améliore quotidiennement. Sur cette page, vous pouvez en apprendre davantage sur les fonctionnalités énormes et les plus intéressantes du produit."
weight: 2
url: /fr/java/what-s-new-in-aspose-words-for-java/
timestamp: 2024-10-14-12-53-06
---

Cette page décrit les nouvelles fonctionnalités Aspose.Words les plus intéressantes introduites dans les versions récentes.

## Aspose.Words pour Java 24.9, 24.10

Aspose.Words 24.9 introduit l'insertion group shape et l'insertion StructuredDocumentTag via DocumentBuilder, améliore le rendu radial des graphiques avec des graduations, améliore les signatures numériques avec la prise en charge de XAdES-EPES, ajoute la reconnaissance des soulignements Markdown et donne accès aux séparateurs de notes de bas de page/de fin.

Aspose.Words 24.10 introduit une prise en charge améliorée des contrôles ActiveX avec la création de CommandButton, un nouveau contrôle de visibilité des formes, la possibilité de group shapes, une exportation améliorée de Markdown pour les tableaux, la mise en forme des graphiques pour les graphiques Pie et Doughnut, une meilleure gestion de l'encodage Big5 et la prise en charge des polices taïwanaises obsolètes.

### Rendu et Impression

#### Graduations sur les Diagrammes Radiaux <sup>24.9</sup>

Le rendu des graduations sur les graphiques radiaux a été implémenté.

#### CommandButton Contrôles ActiveX <sup>24.10</sup>

La possibilité de créer CommandButton contrôles ActiveX a été introduite en ajoutant une nouvelle méthode publique [InsertForms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertForms2OleControl-com.aspose.words.Forms2OleControl) et une nouvelle classe publique [Forms2OleControl](https://reference.aspose.com/words/java/com.aspose.words/forms2olecontrol/).

#### Visibilité de la Forme de Contrôle <sup>24.10</sup>

Une nouvelle propriété publique [Hidden](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getHidden) a été ajoutée pour contrôler la visibilité des formes.

#### Changements dans les graphiques Pie et Doughnut <sup>24.10</sup>

Plusieurs nouvelles propriétés publiques ont été ajoutées au format Pie et Doughnut graphiques.

### Conversion, Chargement et Enregistrement de Documents

#### Mise en forme soulignée lors du chargement de fichiers Markdown <sup>24.9</sup>

L'option permettant de reconnaître la mise en forme soulignée lors du chargement de documents Markdown a été incorporée en ajoutant une nouvelle propriété publique [ImportUnderlineFormatting](https://reference.aspose.com/words/java/com.aspose.words/markdownloadoptions/#getImportUnderlineFormatting).

#### Exportation des tables sous HTML lors de l'enregistrement dans Markdown <sup>24.10</sup>

Une option pour exporter les tableaux au format HTML lors de l'enregistrement des documents au format Markdown a été implémentée en ajoutant une nouvelle propriété publique [ExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportAsHtml) et une énumération [MarkdownExportAsHtml](https://reference.aspose.com/words/java/com.aspose.words/markdownexportashtml/).

### Signatures Numériques

#### Signer des documents avec XAdES-EPES <sup>24.9</sup>

La possibilité de signer des documents avec des signatures de niveau XAdES-EPES XML-DSig a été introduite en ajoutant une nouvelle propriété publique [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/signoptions/#getXmlDsigLevel) et une nouvelle énumération publique [XmlDsigLevel](https://reference.aspose.com/words/java/com.aspose.words/xmldsiglevel/)

### Autres

* Une nouvelle méthode publique [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-com.aspose.words.Shape...) a été ajoutée à group shapes. <sup>24.9</sup>
* Une nouvelle méthode publique [InsertStructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertStructuredDocumentTag-int) a été ajoutée pour insérer **StructuredDocumentTags** dans un document. <sup>24.9</sup>
* L'accès public aux séparateurs de notes de bas de page / de fin a été fourni en ajoutant quelques classes et propriétés publiques. <sup>24.9</sup>
* La possibilité de regrouper des formes individuelles, group shapes ensemble, et de regrouper directement les deux formes et group shapes a été introduite en ajoutant la méthode [InsertGroupShape](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertGroupShape-double-double-double-double-com.aspose.words.ShapeBase...). <sup>24.10</sup>
* La gestion de l'encodage Big5 pour les tables cmap TrueType a été améliorée. <sup>24.10</sup>
* La prise en charge des polices taïwanaises obsolètes a été améliorée. <sup>24.10</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 24.9 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-9-release-notes/).

En savoir plus sur [Aspose.Words pour Java 24.10 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-10-release-notes/).

{{% /alert %}}

## Aspose.Words pour Java 24.5, 24.6, 24.7, 24.8

Aspose.Words 24.5 étend les options pour les assemblys, améliore les capacités de rendu et étend certaines autres options.

Aspose.Words 24.6 améliore les options de rendu, améliore les fonctionnalités de recherche et de comparaison et étend plusieurs autres fonctionnalités.

Aspose.Words 24.7 modifie la façon dont vous travaillez avec ActiveX, étend les capacités de rendu et exporte vers les formats Markdown et XLSX.

Aspose.Words 24.8 améliore la personnalisation des graphiques avec un contrôle précis sur les étiquettes des axes, étend la gestion des polices, améliore la gestion de la structure des documents et ajoute de nouvelles fonctionnalités pour l'exportation HTML/XAML, la fonctionnalité PDF, la conversion de documents et les signatures numériques.

### Formats Pris En Charge

À partir de la version 24.7, l'exportation vers PDF/UA-2 est prise en charge pour garantir l'accessibilité aux utilisateurs handicapés.

### Rendu et Impression

#### Modifications des graphiques, des formes et de DrawingML <sup>24.5</sup>

- Le rendu des effets DrawingML pour les graphiques SVG, étendant les fonctionnalités précédentes limitées aux images, a été implémenté.
- La prise en charge de la création de graphiques combinés et de l'ajustement des propriétés telles que la largeur de l'écart, le chevauchement et l'échelle des bulles dans les groupes de séries a été introduite en ajoutant les classes [ChartSeriesGroup](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroup/) et [ChartSeriesGroupCollection](https://reference.aspose.com/words/java/com.aspose.words/chartseriesgroupcollection/) et la propriété [SeriesGroups](https://reference.aspose.com/words/java/com.aspose.words/chart/#getSeriesGroups).
- La fonctionnalité permettant de manipuler l'effet SoftEdge des formes a été implémentée en ajoutant la classe [SoftEdgeFormat](https://reference.aspose.com/words/java/com.aspose.words/softedgeformat/).
- La possibilité de modifier les valeurs d'ajustement des formes a été implémentée en ajoutant les classes publiques [AdjustmentCollection](https://reference.aspose.com/words/java/com.aspose.words/adjustmentcollection/) et [Adjustment](https://reference.aspose.com/words/java/com.aspose.words/adjustment/) et la propriété [Adjustments](https://reference.aspose.com/words/java/com.aspose.words/shape/#getAdjustments).

#### Modifications des Graphiques, des Formes et des dessins <sup>24.6</sup>

- Les capacités de cartographie ont été améliorées. Vous pouvez désormais créer une plus grande variété de graphiques, notamment *Treemaps*, *Sunbursts*, *Histograms*, *Pareto* graphiques, *Box & Whisker* graphiques, *Waterfalls* et *Funnels*. Cela vous permet de visualiser vos données de manière plus diversifiée et informative.
- Le contrôle des couleurs pour la mise en forme des ombres a été amélioré. Vous pouvez obtenir un contrôle plus précis sur l'apparence de vos documents en accédant aux couleurs des ombres.
- L'amélioration des performances pour le rendu en arrière-plan a été améliorée. Vous pouvez considérablement accélérer le rendu des arrière-plans contenant de petits éléments grâce à la technologie de mosaïque native.
- Des dégradés réalistes pour les formes ont été ajoutés. Vous pouvez maintenant créer des formes DML avec des dégradés non linéaires, imitant le style visuel de Microsoft Word pour un aspect plus raffiné.

#### Personnalisation des Étiquettes de Données de Graphique <sup>24.7</sup>

La possibilité de personnaliser les étiquettes de données de graphique telles que **Orientation** et **Rotation** a été ajoutée.

#### Style de nombre personnalisé pour les niveaux de liste <sup>24.7</sup>

Un setter pour la propriété publique [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) a été ajouté. Vous pouvez maintenant définir un style de nombre personnalisé pour les niveaux de liste.

#### Changements dans l'utilisation d'ActiveX <sup>24.7</sup>

* Les propriétés des objets ActiveX peuvent désormais être modifiées, ce qui vous donne plus de contrôle sur leur comportement.
* La possibilité de modifier la valeur du contrôle ActiveX du bouton radio pour activer l'interaction dynamique a été ajoutée.
* La possibilité de basculer un ActiveX checkbox sur "coché" ou "décoché" a été ajoutée.

#### Contrôle de l'Orientation et de la Rotation des Étiquettes de Graduation De l'Axe du Graphique <sup>24.8</sup>

Un contrôle précis de l'orientation et de la rotation des étiquettes de graduation de l'axe du graphique a été ajouté pour une personnalisation plus pratique du graphique – la classe [AxisTickLabels](https://reference.aspose.com/words/java/com.aspose.words/axisticklabels/) a été étendue avec de nouvelles propriétés **Orientation** et **Rotation**.

#### Remplacement de la barre oblique inverse par le signe Yen <sup>24.8</sup>

L'exportation rétrocompatible HTML et XAML pour remplacer la barre oblique inverse par le signe Yen a été améliorée. Pour ce faire, la propriété **ReplaceBackslashWithYenSign** a été ajoutée aux classes [HtmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/) et [XamlFlowSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/).

#### Utilisation des balises SDT comme noms de champs de formulaire lors de l'exportation vers PDF <sup>24.8</sup>

L'exportation PDF avec la prise en charge de l'utilisation des balises SDT comme noms de champs de formulaire a été améliorée en ajoutant une nouvelle propriété **UseSdtTagAsFormFieldName** à la classe [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/).

### Conversion, Chargement et Enregistrement de Documents

#### Exportation de liens au format Markdown <sup>24.7</sup>

La possibilité de contrôler l'exportation des liens au format Markdown a été ajoutée grâce à l'implémentation de la propriété [LinkExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getLinkExportMode).

#### LowCode 24.8 <sup>24.8</sup>

Une nouvelle classe **LowCode.Converter**, conçue pour fournir un ensemble de méthodes pour convertir divers types de documents avec une seule ligne de code, a été introduite.

### Rechercher et Comparer

#### Options de Comparaison Avancées <sup>24.6</sup>

La possibilité de rationaliser les flux de travail d'analyse des données avec une fonctionnalité de comparaison améliorée a été ajoutée. Cela inclut une nouvelle option [IgnoreStoreItemId](https://reference.aspose.com/words/java/com.aspose.words/advancedcompareoptions/#getIgnoreStoreItemId) et une interface repensée pour des comparaisons avancées.

### Autres

* La fonction d'élimination des pages vides d'un document a été implémentée en ajoutant la méthode [RemoveBlankPages](https://reference.aspose.com/words/java/com.aspose.words/document/#removeBlankPages). <sup>24.5</sup>
* La possibilité de vérifier la présence de VBA macros sans charger un document a été fournie en ajoutant la propriété [HasMacros](https://reference.aspose.com/words/java/com.aspose.words/fileformatinfo/#hasMacros). <sup>24.5</sup>
* Le maintien de la numérotation des sources lors de l'insertion d'un document à l'aide du moteur de création de rapports LINQ est désormais pris en charge. <sup>24.5</sup>
* Une nouvelle propriété [DateTimeUtc](https://reference.aspose.com/words/java/com.aspose.words/comment/#getDateTimeUtc) a été ajoutée – cela fournit un horodatage plus précis pour les commentaires, améliorant l'organisation et la traçabilité. <sup>24.6</sup>
* Le moteur de rapports LINQ a été amélioré. La suppression sélective des paragraphes vides et la définition de messages personnalisés pour les membres d'objets manquants ont été effectuées, ce qui conduit à des rapports plus propres et plus informatifs. <sup>24.6</sup>
* Le format datetime est maintenant automatiquement détecté pour une exportation transparente au format XLSX. <sup>24.7</sup>
* La propriété publique [IsProtected](https://reference.aspose.com/words/java/com.aspose.words/vbaproject/#isProtected), qui vous permet de vérifier si un projet VBA est protégé, a été ajoutée. <sup>24.7</sup>
* Les informations de police ont été étendues avec la propriété **EmbeddingLicensingRights** ajoutée aux classes [FontInfo](https://reference.aspose.com/words/java/com.aspose.words/fontinfo/) et [PhysicalFontInfo](https://reference.aspose.com/words/java/com.aspose.words/physicalfontinfo/). <sup>24.8</sup>
* Un moyen d'effacer efficacement les en-têtes et les pieds de page des sections tout en préservant les filigranes a été ajouté pour travailler plus précisément avec la structure du document. Pour effacer les en-têtes et les pieds de page de section, utilisez la nouvelle méthode publique **ClearHeadersFooters**. <sup>24.8</sup>
* La signature numérique de XPS documents utilisant [XpsSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/xpssaveoptions/) a été activée – une nouvelle propriété **DigitalSignatureDetails** a été ajoutée à cet effet. <sup>24.8</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 24.5 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-5-release-notes/).

En savoir plus sur [Aspose.Words pour Java 24.6 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-6-release-notes/).

En savoir plus sur [Aspose.Words pour Java 24.7 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-7-release-notes/).

En savoir plus sur [Aspose.Words pour Java 24.8 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-8-release-notes/).

{{% /alert %}}

## Aspose.Words pour Java 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 améliore l'expérience de gestion des couleurs de trait, améliore OLE objets et LINQ rapports, ainsi qu'introduit une nouvelle Bibliographie Sources publique API.

Aspose.Words 24.2 graphiques étendus API, gestion des styles et LINQ options. Cette version de Aspose.Words a également introduit la possibilité de spécifier SvgSaveOptions pendant le rendu, un contrôle plus flexible chargeant les fichiers Markdown et travaillant avec du texte de référence pour les notes de bas de page et de fin.

Aspose.Words 24.3 introduit un nouveau lecteur/graveur TIFF et une émulation des opérations raster binaires pour WMF métafichiers. Aspose.Words 24.3 continue également d'étendre les graphiques API.

Aspose.Words 24.4 améliore les formats d'enregistrement, certaines options de rendu, ainsi que le travail avec les signatures numériques.

### Formats Pris En Charge <sup>24.4</sup>

Le format d'image moderne **WebP** est désormais pris en charge dans Aspose.Words. Vous pouvez maintenant lire et insérer WebP images dans des documents, ainsi qu'enregistrer des images au format WebP.

### Rendu et Impression

#### Contrôle de la Couleur des Traits <sup>24.1</sup>

La classe [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) a été étendue avec un ensemble de nouvelles propriétés publiques liées à la gestion des couleurs de trait: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) et [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) et [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### DrawingML Cartes API Extension <sup>24.2 / 24.3 / 24.4</sup>

Le **DrawingML Charts API** continue d'être étendu.

#### Incorporer les polices déclarées dans les règles @font-face <sup>24.4</sup>

Ajout d'une possibilité d'incorporer des polices déclarées dans les règles @font-face dans les définitions de polices du document résultant a été introduite en ajoutant une nouvelle propriété [SupportFontFaceRules](https://reference.aspose.com/words/java/com.aspose.words/htmlloadoptions/#getSupportFontFaceRules).

#### Travailler avec la mise en forme de Lueur et de réflexion <sup>24.4</sup>

La possibilité de travailler avec la mise en forme de lueur et de réflexion pour un objet de dessin a été implémentée.

### Chargement et Enregistrement de Documents

#### Spécifiez SvgSaveOptions Pendant Le Rendu <sup>24.2</sup>

La possibilité de spécifier [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) pendant le rendu a été ajoutée à l'aide de [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) et [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) méthodes.

#### Conserver les lignes vides lors du chargement des fichiers Markdown <sup>24.2</sup>

La possibilité de conserver les lignes vides lors du chargement des fichiers Markdown a été ajoutée.

#### Un nouveau TIFF Lecteur / Écrivain <sup>24.3</sup>

Un nouveau lecteur/graveur TIFF pour Aspose.Words pour .NET Standard, .NET 6 et versions ultérieures a été développé. Aspose.Words pour .NET 24.3 ajout de la prise en charge de la lecture des images TIFF avec les types de compression JPEG et anciens JPEG, et amélioration significative de la qualité des opérations de lecture et d'écriture.

### Autres

* La possibilité de modifier le texte du contrôle `TextBox` OLE a été introduite en ajoutant une nouvelle propriété [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) à la nouvelle classe [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/). 24.1 <sup>24.1</sup>
* La Bibliographie Sources public API a été implémentée en ajoutant quelques nouveaux [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) et [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) classes et une énumération [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/), ainsi qu'en ajoutant une nouvelle propriété [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) à la classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). <sup>24.1</sup>
* Un API pour limiter l'accès aux membres de type à l'aide de la syntaxe de modèle pour le moteur de rapports LINQ a été fourni. <sup>24.1</sup>
* De nouvelles propriétés publiques [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/) et [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) pour une gestion améliorée des styles ont été ajoutées à la classe [Style](https://reference.aspose.com/words/net/aspose.words/style/). <sup>24.2</sup>
* La fonctionnalité permettant de récupérer le texte de la marque de référence réelle pour les notes de bas de page et de fin a été améliorée avec la propriété [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) et la méthode [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/). <sup>24.2</sup>
* La compatibilité avec `Word 2016` graphiques pour le `LINQ Reporting Engine` a été activée. <sup>24.2</sup>
* L'émulation des opérations raster binaires pour WMF métafichiers a été implémentée. <sup>24.3</sup>
* La possibilité de définir des options de signature pour les documents au sein de **SaveOptions** a été activée en ajoutant une nouvelle classe [DigitalSignatureDetails](https://reference.aspose.com/words/java/com.aspose.words/digitalsignaturedetails/) avec de nouveaux membres publics, ainsi qu'en ajoutant de nouvelles propriétés aux classes [OoxmlSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/docsaveoptions/) et [OdtSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 24.1 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

En savoir plus sur [Aspose.Words pour Java 24.2 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/).

En savoir plus sur [Aspose.Words pour Java 24.3 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/).

En savoir plus sur [Aspose.Words pour Java 24.4 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words pour Java 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 développe les options de rendu, l'émulation de rendu de métafichier et les options d'enregistrement markdown.

Aspose.Words 23.10 améliore le rendu, élargit les options de chargement et d'enregistrement des documents et permet aux utilisateurs de fusionner des documents de nouvelles manières.

Aspose.Words 23.11 améliore le travail avec les révisions, XLSX le format et les polices sur la légende du graphique avec des options supplémentaires.

Aspose.Words 23.12 introduit de nouvelles propriétés et énumérations pour travailler avec PDF documents, la prise en charge de WebP images et une bibliothèque de châteaux gonflables mise à jour.

### Rendu et Impression

#### Personnalisation des titres d'axes dans DrawingML Graphiques <sup>23.9</sup>

La possibilité de personnaliser les titres des axes dans les graphiques DrawingML a été introduite par l'implémentation d'une nouvelle propriété de classe publique [ChartAxisTitle](https://reference.aspose.com/words/java/com.aspose.words/chartaxistitle/) et [Title](https://reference.aspose.com/words/java/com.aspose.words/chartaxis/#getTitle).

#### Déterminer la position verticale des polices dans un Paragraphe <sup>23.9</sup>

Il est maintenant possible de définir la position verticale des polices dans un paragraphe en utilisant la nouvelle propriété public [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/paragraphformat/#getBaselineAlignment) et la nouvelle énumération [BaselineAlignment](https://reference.aspose.com/words/java/com.aspose.words/baselinealignment/).

#### Contrôle des Couleurs De Premier Plan <sup>23.10</sup>

La possibilité de récupérer la couleur de premier plan sans modificateurs a été ajoutée aux classes [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) et [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) via la propriété **BaseForeColor**.

#### Extension de la fonctionnalité des graphiques <sup>23.10</sup>

La fonctionnalité des classes [ChartDataPointCollection](https://reference.aspose.com/words/java/com.aspose.words/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/java/com.aspose.words/chartseries/) et [ChartFormat](https://reference.aspose.com/words/java/com.aspose.words/chartformat/) a été étendue avec de nouvelles méthodes et propriétés.

#### Ajuster et ajuster automatiquement une image dans une forme <sup>23.10</sup>

Un moyen simple d'ajuster et d'ajuster automatiquement une image dans une forme particulière a été fourni par la nouvelle méthode [FitImageToShape](https://reference.aspose.com/words/java/com.aspose.words/imagedata/#fitImageToShape).

#### Formatage de police par défaut pour les entrées de légende de graphique DrawingML <sup>23.11</sup>

La possibilité de spécifier le formatage de police par défaut pour les entrées de légende des graphiques DrawingML a été ajoutée via la propriété **Font**. Cette fonctionnalité facilite une apparence plus simplifiée et cohérente des éléments de graphique, améliorant ainsi l'esthétique globale du document.

#### Spécifier la mise en page lors de l'ouverture de PDF dans Reader <sup>23.12</sup>

La possibilité de spécifier la mise en page à utiliser lors de l'ouverture d'un document dans un lecteur PDF a été ajoutée grâce à l'introduction d'une nouvelle propriété [PageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/#getPageLayout) dans la classe [PdfSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) et à l'introduction d'une nouvelle énumération [PdfPageLayout](https://reference.aspose.com/words/java/com.aspose.words/pdfpagelayout/).

### Chargement et Enregistrement de Documents

#### Spécification d'un nom de dossier pour Construire l'Image URIs dans Markdown <sup>23.9</sup>

La classe [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) a été étendue en incluant la propriété [ImagesFolderAlias](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getImagesFolderAlias), qui permet de spécifier le nom du dossier utilisé pour construire l'image URIs écrite dans le document Markdown.

#### Réduire la Taille de sortie PDF <sup>23.10</sup>

Diverses optimisations de rendu PDF pour réduire la taille de sortie lors de l'utilisation des paramètres [OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getOptimizeOutput) ont été implémentées.

#### Reconnaître les hyperliens lors du Chargement de TXT Documents <sup>23.10</sup>

La fonctionnalité de reconnaissance des hyperliens lors du chargement de documents TXT a été implémentée en ajoutant une nouvelle propriété [DetectHyperlinks](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getDetectHyperlinks).

### Autres

- Une émulation de rendu de métafichier pour déterminer la taille de pixellisation a été implémentée, spécifiquement pour la largeur de stylo WMF et la largeur de stylo cosmétique EMF. Pour ce faire, la propriété **ScaleWmfFontsToMetafileSize** a été remplacée par la propriété [EmulateRenderingToSizeOnPage](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPage) et la propriété [EmulateRenderingToSizeOnPageResolution](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRenderingToSizeOnPageResolution) a été ajoutée. <sup>23.9</sup>
- Une méthode simplifiée pour insérer un document dans un autre document à la position actuelle du curseur a été introduite à l'aide de la méthode [InsertDocumentInline](https://reference.aspose.com/words/java/com.aspose.words/documentbuilder/#insertDocumentInline-com.aspose.words.Document-int-com.aspose.words.ImportFormatOptions). <sup>23.10</sup>
- La possibilité d'accéder et de modifier les propriétés de style a été ajoutée grâce à l'introduction de la nouvelle propriété [Locked](https://reference.aspose.com/words/java/com.aspose.words/style/#getLocked). <sup>23.10</sup>
- Un paramètre de type générique a été ajouté aux méthodes de la classe [CompositeNode](https://reference.aspose.com/words/java/com.aspose.words/compositenode/). <sup>23.10</sup>
- Un moyen de contrôler quand une certaine révision doit être acceptée / rejetée ou non a été implémenté en utilisant les méthodes [Accept](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#accept-com.aspose.words.IRevisionCriteria) et [Reject](https://reference.aspose.com/words/java/com.aspose.words/revisioncollection/#reject-com.aspose.words.IRevisionCriteria). Cette amélioration donne aux utilisateurs un contrôle plus fin sur le processus de révision. <sup>23.11</sup>
- La possibilité d'écrire toutes les sections d'un document sur la même feuille de calcul XLSX a été fournie via le nouveau type d'énumération [XlsxSectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsectionmode/) et la nouvelle propriété [SectionMode](https://reference.aspose.com/words/java/com.aspose.words/xlsxsaveoptions/#getSectionMode). <sup>23.11</sup>
- La prise en charge de l'image WebP a été introduite. Veuillez noter que cette fonctionnalité n'est disponible que pour .versions NetStandart et .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 23.9 Notes de mise à jour](/words/java/aspose-words-for-java-23-9-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.10 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-10-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.11 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-11-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.12 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words pour Java 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 améliore la possibilité de travailler avec des données de séries de graphiques et la possibilité de travailler avec ODT documents, ainsi que d'améliorer les en-têtes/pieds de page et leur habillage de texte.

Aspose.Words 23.6 étend les options de rendu, ajoute un nouveau format d'exportation, améliore les outils LINQ reporting et LowCode.

Aspose.Words 23.7 améliore les fonctionnalités de création de rapports, ajoute un nouveau format d'exportation et apporte des modifications à l'utilisation des tables et des signatures numériques.

Aspose.Words 23.8 étend les capacités de différents formats, améliore le rendu et ajoute de nouvelles options pour travailler avec les champs.

### Formats Pris En Charge

* À partir de la version 23.6, il est possible d'enregistrer un document au format XLSX. Maintenant, vous pouvez convertir vos documents au format Excel. <sup>23.6</sup>

* À partir de la version 23.7, il est possible d'enregistrer une page ou une forme de document au format EPS. <sup>23.7</sup>

* ### Nouvelles Fonctionnalités de Format

  - La fonctionnalité de génération automatique de la Table des matières (TOC) pour les documents MOBI a été introduite. <sup>23.8</sup>
  - Le constructeur [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) a été étendu avec [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - La mise en forme du texte vertical pour les métafichiers EMF a été implémentée. <sup>23.8</sup>

### Rendu

#### Obtenir et modifier les Données des Séries de Graphiques <sup>23.5</sup>

La fonctionnalité permettant d'obtenir et de modifier les données de la série de graphiques a été fournie en ajoutant:

- nouvelles classes: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- nouveaux types d'énumération: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Prise en charge de la typographie avancée <sup>23.6</sup>

La prise en charge de la typographie avancée dans le rendu WMF, EMF et EMF+ a été ajoutée.

#### Contenu coloré sur la Page <sup>23.6</sup>

La propriété publique [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), indiquant si la page est colorée ou non, a été ajoutée.

#### Formatage des étiquettes de données de graphique <sup>23.6</sup>

La possibilité de définir le remplissage, le contour et le formatage des légendes pour les étiquettes de données de graphique a été implémentée.

### Mail Merge et rapports

#### Insertion dynamique HTML pour le moteur de reporting LINQ <sup>23.6</sup>

Une nouvelle méthode d'insertion dynamique HTML pour le moteur de reporting LINQ a été ajoutée.

#### Mustache Prise en charge des balises <sup>23.7</sup>

Les balises Mustache sont désormais prises en charge dans les méthodes [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) et [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String).

#### LINQ Mises à jour de la syntaxe du Modèle de Moteur de rapports <sup>23.7</sup>

La syntaxe du modèle LINQ Reporting Engine prend désormais en charge les méthodes d'extension `ElementAt` et ElementAtOrDefault.

#### Spécification de la taille des images rendues <sup>23.8</sup>

Une nouvelle propriété publique **ImageSize** pour spécifier la taille des images rendues en pixels a été introduite.

#### Conserver les espaces pour les valeurs de chaîne JSON - LINQ <sup>23.8</sup>

Une option a été ajoutée au moteur de création de rapports LINQ pour conserver les espaces blancs pour les valeurs de chaîne JSON.

### LowCode <sup>23.6</sup>

De nouvelles méthodes LowCode destinées à fusionner différents types de documents en un seul document de sortie ont été ajoutées.

### Autres

- La prise en charge de l'habillage du texte dans les en-têtes/pieds de page a été implémentée. <sup>23.5</sup>
- La possibilité de supprimer les signatures numériques de ODT documents a été ajoutée via la méthode [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream). <sup>23.5</sup>
- La propriété publique [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) pour obtenir la base et le texte rubis du guide phonétique [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) a été ajoutée. <sup>23.5</sup>
- La possibilité de récupérer une valeur de signature numérique à partir d'un document signé numériquement sous la forme d'un tableau d'octets a été ajoutée en introduisant une nouvelle propriété [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue). <sup>23.7</sup>
- Les classes [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) et [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) ont été étendues avec de nouveaux membres publics– [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), et [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- La prise en charge des champs CITATION et BIBLIOGRAPHY a été ajoutée. <sup>23.8</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 23.5 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-5-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.6 Notes de mise à jour](/words/java/aspose-words-for-java-23-6-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.7 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-7-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.8 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words pour Java 23.1, 23.2, 23.3, 23.4

Aspose.Words 23.1 améliore les performances de l'émulation des opérations raster, ainsi que la qualité d'exportation et de rendu des documents.

Aspose.Words 23.2 introduit l'enregistrement de documents au format MOBI, améliore le rendu des graphiques et apporte des modifications notables aux détails d'apparence des documents.

Aspose.Words 23.3 améliore l'importation et l'enregistrement des documents avec de nouvelles propriétés, et améliore également la qualité du travail avec la couleur d'arrière-plan et de premier plan et le dégradé radial.

Aspose.Words 23.4 améliore le calcul de certains paramètres et le positionnement du tableau et du texte environnant.

### Amélioration des Performances

#### Émulation des opérations Raster <sup>23.1</sup>

Les performances et la qualité de l'émulation des opérations raster avec les métafichiers ont été considérablement améliorées.

### Formats Pris En Charge

#### Exporter vers MOBI <sup>23.2</sup>

À partir de la version 23.2, il est possible d'enregistrer un document au format MOBI (également appelé PRC, AZW – Amazon Propre format de fichier de livre électronique Kindle). Maintenant, vous pouvez non seulement charger MOBI documents, mais aussi exporter vos fichiers au format MOBI.

### Rendu

#### Travailler avec des Couleurs de Thème d'ombrage <sup>23.1</sup>

La possibilité de travailler avec des couleurs de thème d'ombrage a été implémentée.

#### Prise en charge du coefficient R au carré dans les graphiques DML <sup>23.1</sup>

Prise en charge du coefficient R au carré dans les étiquettes de courbe de tendance DML du graphique lorsque le rendu a été ajouté.

#### Améliorations Du Rendu des Graphiques <sup>23.2</sup>

Depuis 23.2, le rendu du graphique a été considérablement amélioré.

#### Contrôle des couleurs d'arrière-plan et d'avant-plan <sup>23.3</sup>

La classe [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) a été étendue avec un ensemble de nouvelles propriétés publiques liées aux couleurs d'arrière-plan et de premier plan: **ForeThemeColor** et **BackThemeColor**, **ForeTintAndShade** et **BackTintAndShade**.

#### Dégradés radiaux avec le Shader natif `SkiaSharp` <sup>23.3</sup>

Le rendu des dégradés radiaux avec le shader natif `SkiaSharp` pour .NET Standard a été implémenté.

#### Distance entre le Tableau et le Texte environnant <sup>23.4</sup>

La possibilité de définir la distance entre le tableau et le texte environnant a été ajoutée en introduisant de nouvelles propriétés dans la classe [Table](https://reference.aspose.com/words/java/com.aspose.words/table/): [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), et [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Chargement et Enregistrement de Documents

#### Générer `TOC` pour AZW3 Documents <sup>23.1</sup>

La possibilité de générer `TOC` (table des matières) pour AZW3 documents a été ajoutée grâce à l'utilisation de la propriété [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel).

#### Exportation d'éléments de liste vers Markdown <sup>23.1</sup>

Un moyen de contrôler l'exportation des éléments de liste au format Markdown a été fourni en ajoutant la propriété [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) à la classe [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/).

#### Notifications de Progression de l'Enregistrement des Documents <sup>23.3</sup>

L'enregistrement des notifications de progression pour les formats MOBI et AZW3 a été implémenté.

#### Ajustement de l'espacement des Phrases et des Mots <sup>23.3</sup>

La possibilité de spécifier s'il faut ajuster automatiquement l'espacement des phrases et des mots lors de l'importation du document a été ajoutée en introduisant la propriété **AdjustSentenceAndWordSpacing**.

### Autres

- La possibilité de spécifier l'ajustement de l'espacement des caractères d'un document a été ajoutée via l'implémentation de la propriété [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) <sup>23.2</sup>
- La façon d'indiquer à Aspose.Words s'il faut inclure des zones de texte, des notes de bas de page et des notes de fin dans les statistiques de comptage de mots a été fournie en ajoutant la propriété [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) <sup>23.2</sup>
- Une nouvelle option pour un style de document, qui permet de spécifier si le style est automatiquement redéfini en fonction de la valeur appropriée, a été introduite via la propriété [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) <sup>23.2</sup>
- La possibilité de déterminer si [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) est une exécution de guide phonétique a été ajoutée à l'aide de la propriété **IsPhoneticGuide** <sup>23.4</sup>
- Un moyen simple de travailler avec des séries et des axes de graphiques combinés a été implémenté en introduisant la classe **ChartAxisCollection** et en ajoutant la propriété **Chart.Axes** <sup>23.4</sup>
- De nouvelles propriétés publiques liées au positionnement relatif et au dimensionnement de la forme ont été ajoutées à la classe [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) <sup>23.4</sup>
- La précision et les performances du calcul de la luminosité des couleurs pour la résolution automatique des couleurs du texte ont été améliorées conformément aux dernières versions de Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 23.1 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-1-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.2 Notes de mise à jour](/words/java/aspose-words-for-java-23-2-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.3 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2023/aspose-words-for-java-23-3-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.4 Notes de mise à jour](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Voir Aussi

{{% alert color="primary" %}}

Cette page contient les dernières nouvelles sur les versions des 2 dernières années. Pour plus de détails sur les versions antérieures, voir le [Notes de mise à jour'](https://releases.aspose.com/words/java/release-notes/) pages dans les sections pertinentes.

{{% /alert %}}
