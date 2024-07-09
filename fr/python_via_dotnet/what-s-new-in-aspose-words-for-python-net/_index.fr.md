---
title: Quoi de neuf
second_title: Aspose.Words pour Python via .NET
articleTitle: Quoi de neuf dans Aspose.Words pour Python via .NET
linktitle: Quoi de neuf dans Aspose.Words pour Python via .NET
type: docs
description: "Aspose.Words pour Python via .NET se développe et s'améliore quotidiennement. Sur cette page, vous pouvez découvrir les fonctionnalités les plus importantes et les plus intéressantes du produit."
weight: 10
url: /fr/python-net/what-s-new-in-aspose-words-for-python-net/
---

Cette page décrit les nouvelles fonctionnalités Aspose.Words les plus intéressantes introduites dans les versions récentes.

## Aspose.Words pour Python via .NET 24.5, 24.6

Aspose.Words 24.5 étend les options pour les assemblages, améliore les capacités de rendu et étend d'autres options.

Aspose.Words 24.6 améliore les options de rendu, améliore les fonctionnalités de recherche et de comparaison et étend plusieurs autres fonctionnalités.

### Rendu et impression

#### Modifications dans les Charts, les Shapes et DrawingML <sup>24.5</sup>

* Le rendu des effets DrawingML pour les graphiques SVG, étendant les fonctionnalités précédentes limitées aux images, a été implémenté.
* La prise en charge de la création de graphiques combinés et de l'ajustement des propriétés telles que la largeur de l'espace, le chevauchement et l'échelle des bulles au sein des groupes de séries a été introduite en ajoutant le [ChartSeriesGroup](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroup/) et les classes [ChartSeriesGroupCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseriesgroupcollection/) et les classes [series_groups](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/series_groups/).
* La fonctionnalité permettant de manipuler l'effet SoftEdge des formes a été implémentée en ajoutant la classe [SoftEdgeFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing/softedgeformat/).
* La possibilité de modifier les valeurs d'ajustement des formes a été implémentée en ajoutant **AdjustmentCollection** et **Adjustment** classes publiques et [adjustments](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/adjustments/) propriété.

#### Modifications des graphiques, des formes et des dessins <sup>24.6</sup>

* Les capacités de cartographie ont été améliorées. Vous pouvez désormais créer une plus grande variété de graphiques, notamment *Treemaps*, *Sunbursts*, *Histograms*, *Pareto*, *Box & Whisker*, *Waterfalls* et *Funnels*. Cela vous permet de visualiser vos données de manière plus diversifiée et informative.
* Le contrôle des couleurs pour le formatage des ombres a été amélioré. Vous pouvez obtenir un contrôle plus précis sur l'apparence de vos documents en accédant aux couleurs des ombres.
* L'amélioration des performances pour le rendu en arrière-plan a été améliorée. Vous pouvez accélérer considérablement le rendu des arrière-plans contenant de petits éléments grâce à la technologie de carrelage native.
* Des dégradés réalistes pour les formes ont été ajoutés. Vous pouvez désormais créer des formes DML avec des dégradés non linéaires, imitant le style visuel de Microsoft Word pour un aspect plus soigné.

### Rechercher et comparer

#### Options de comparaison avancées <sup>24.6</sup>
La possibilité de rationaliser les flux de travail d'analyse des données avec une fonctionnalité de comparaison améliorée a été ajoutée. Cela inclut une nouvelle option [ignore_store_item_id](https://reference.aspose.com/words/python-net/aspose.words.comparing/advancedcompareoptions/ignore_store_item_id/) et une interface repensée pour les comparaisons avancées.

### Autre

* La fonction permettant d'éliminer les pages vides d'un document a été implémentée en ajoutant la méthode [remove_blank_pages](https://reference.aspose.com/words/python-net/aspose.words/document/remove_blank_pages/). <sup>24,5</sup>
* La possibilité de vérifier la présence de macros VBA sans charger de document a été fournie en ajoutant la propriété [has_macros](https://reference.aspose.com/words/python-net/aspose.words/fileformatinfo/has_macros/). <sup>24,5</sup>
* Conserver la numérotation des sources lors de l'insertion d'un document à l'aide du moteur de reporting LINQ est désormais pris en charge. <sup>24,5</sup>
* Une nouvelle propriété [date_time_utc](https://reference.aspose.com/words/python-net/aspose.words/comment/date_time_utc/) a été ajoutée – elle fournit un horodatage plus précis pour les commentaires, améliorant ainsi l'organisation et la traçabilité. <sup>24.6</sup>
* Le moteur de reporting LINQ a été amélioré. La suppression sélective des paragraphes vides et la définition de messages personnalisés pour les membres d'objet manquants ont été effectuées, conduisant à des rapports plus propres et plus informatifs. <sup>24.6</sup>

{{% alert color="primary" %}}

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 24.5](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-5-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 24.6](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-6-release-notes/).

{{% /alert %}}

## Aspose.Words pour Python via .NET 24.1, 24.2, 24.3, 24.4

Aspose.Words 24.1 améliore l'expérience de gestion des couleurs de trait, améliore les objets OLE et introduit un nouveau API public de sources bibliographiques.

Aspose.Words 24.2 a étendu l'API Charts et la gestion des styles. Cette version d'Aspose.Words a également introduit la possibilité de spécifier des SvgSaveOptions lors du rendu, un contrôle plus flexible du chargement des fichiers Markdown et l'utilisation du texte de référence pour les notes de bas de page et de fin.

Aspose.Words 24.3 introduit un nouveau lecteur/écrivain TIFF et une émulation des opérations binaires raster pour les métafichiers WMF. Aspose.Words 24.3 continue également d'étendre l'API des graphiques.

Aspose.Words 24.4 améliore l'enregistrement des formats, certaines options de rendu, ainsi que le travail avec les signatures numériques.

### Formats pris en charge <sup>24.4</sup>

Le format d'image moderne **WebP** est désormais pris en charge dans Aspose.Words pour .NET Framework 4.6.2 et versions supérieures. Vous pouvez désormais lire et insérer des images WebP dans des documents, ainsi que sauvegarder des images au format WebP.

Veuillez noter que WebP est actuellement disponible uniquement dans .NET Standard et .NET Framework v4.6.2 et versions supérieures.

### Rendu et impression

#### Contrôle des couleurs de trait <sup>24.1</sup>

La classe [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) a été étendue avec un ensemble de nouvelles propriétés publiques liées à la gestion des couleurs de trait: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_theme_color/) et [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/fore_tint_and_shade/) et [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/back_tint_and_shade/).

#### DrawingML Charts API Extension <sup>24.2 / 24.3 / 24.4</sup>

Le **DrawingML Charts API** continue de s’étoffer.

#### Incorporer les polices déclarées dans les règles @font-face <sup>24.4</sup>

Il est désormais possible d'incorporer les polices déclarées dans les règles @font-face dans les définitions de polices du document résultant en ajoutant une nouvelle propriété appelée [support_font_face_rules](https://reference.aspose.com/words/python-net/aspose.words.loading/htmlloadoptions/support_font_face_rules/).

#### Travailler avec la mise en forme des effets de lumière et de réflexion <sup>24.4</sup>

La possibilité de travailler avec la mise en forme des effets de lumière et de réflexion pour un objet de dessin a été implémentée.

### Chargement et enregistrement de documents

#### Spécifier les options SvgSaveOptions lors du rendu <sup>24.2</sup>

La possibilité de spécifier des [SvgSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/svgsaveoptions/) lors du rendu a été ajoutée à l'aide des méthodes [ShapeRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/shaperenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions) et [OfficeMathRenderer](https://reference.aspose.com/words/python-net/aspose.words.rendering/officemathrenderer/).[save](https://reference.aspose.com/words/python-net/aspose.words.rendering/noderendererbase/save/#bytesio_svgsaveoptions).

#### Conserver les lignes vides lors du chargement des fichiers Markdown <sup>24.2</sup>

La possibilité de conserver les lignes vides lors du chargement des fichiers Markdown a été ajoutée.

#### Un nouveau lecteur/écrivain TIFF <sup>24.3</sup>

Un nouveau lecteur/écrivain TIFF a été développé pour Aspose.Words. Aspose.Words for .NET 24.3 prend en charge la lecture des images TIFF avec les types de compression JPEG et Old JPEG, et améliore également significativement la qualité des opérations de lecture et d'écriture.

### Autre

* La possibilité de modifier le texte du contrôle OLE `TextBox` a été introduite en ajoutant une nouvelle propriété **Text** à la nouvelle classe **TextBoxControl**. <sup>24.1</sup>
* Le API public Sources bibliographiques a été implémenté via l'ajout d'un nouvel espace de noms [Aspose.Words.Bibliography](https://reference.aspose.com/words/python-net/aspose.words.bibliography/) avec ses nouvelles classes et énumérations, et via l'ajout d'une nouvelle propriété [bibliography](https://reference.aspose.com/words/python-net/aspose.words/document/bibliography/) à la classe [Document](https://reference.aspose.com/words/python-net/aspose.words/document/). <sup>24.1</sup>
* De nouvelles propriétés publiques [priority](https://reference.aspose.com/words/python-net/aspose.words/style/priority/), [unhide_when_used](https://reference.aspose.com/words/python-net/aspose.words/style/unhide_when_used/) et [semi_hidden](https://reference.aspose.com/words/python-net/aspose.words/style/semi_hidden/) pour une gestion améliorée des styles ont été ajoutées à la classe [Style](https://reference.aspose.com/words/fr/net/aspose.words/style/). <sup>24.2</sup>
* La fonctionnalité permettant de récupérer le texte réel de la marque de référence pour les notes de bas de page et les notes de fin a été améliorée avec la propriété [actual_reference_mark](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/actual_reference_mark/) et la méthode [update_actual_reference_marks](https://reference.aspose.com/words/python-net/aspose.words/document/update_actual_reference_marks/#default). <sup>24.2</sup>
* L'émulation des opérations binaires raster pour les métafichiers WMF a été implémentée. <sup>24.3</sup>
* La possibilité de définir des options de signature pour les documents dans SaveOptions a été activée en ajoutant une nouvelle classe appelée [DigitalSignatureDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/digitalsignaturedetails/) avec de nouveaux membres publics, ainsi qu'en ajoutant de nouvelles propriétés aux classes [OoxmlSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/ooxmlsaveoptions/), [DocSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/docsaveoptions/) et [OdtSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/odtsaveoptions/). <sup>24.4</sup>

{{% alert color="primary" %}}

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 24.1](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 24.2](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-2-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 24.3](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-3-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 24.4](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-4-release-notes/).

{{% /alert %}}

## Aspose.Words pour Python via .NET 23.9, 23.10, 23.11, 23.12

Aspose.Words 23.9 étend les options de rendu, l'émulation de rendu des métafichiers et les options d'enregistrement markdown.

Aspose.Words 23.10 améliore le rendu, étend les options de chargement et d'enregistrement des documents et permet aux utilisateurs de fusionner des documents de nouvelles manières.

Aspose.Words 23.11 améliore le travail avec les révisions, le format XLSX et les polices sur la légende des graphiques avec des options supplémentaires.

Aspose.Words 23.12 introduit de nouvelles propriétés et énumérations pour travailler avec des documents PDF et OOXML, ainsi que la prise en charge des images WebP.

### Rendu et impression

#### Personnalisation des titres des axes dans DrawingML Charts <sup>23.9</sup>

La possibilité de personnaliser les titres des axes dans les graphiques DrawingML a été introduite par l'implémentation d'une nouvelle propriété de classe publique [ChartAxisTitle](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxistitle/) et [title](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxis/title/).

####  Détermination de la position verticale des polices dans un paragraphe <sup>23.9</sup>

Il est désormais possible de définir la position verticale des polices au sein d'un paragraphe grâce à la nouvelle propriété publique [baseline_alignment](https://reference.aspose.com/words/python-net/aspose.words/paragraphformat/baseline_alignment/) et à la nouvelle énumération [BaselineAlignment](https://reference.aspose.com/words/python-net/aspose.words/baselinealignment/).

#### Contrôle des couleurs de premier plan <sup>23.10</sup>

La possibilité de récupérer la couleur de premier plan sans modificateurs a été ajoutée aux classes [Fill](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/) et [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) via la propriété **BaseForeColor**.

#### Extension des fonctionnalités des graphiques <sup>23.10</sup>

Les fonctionnalités des classes [ChartDataPointCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartdatapointcollection/), [ChartSeries](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartseries/) et [ChartFormat](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartformat/) ont été étendues avec de nouvelles méthodes et propriétés.

#### Ajuster et adapter automatiquement une image à une forme <sup>23.10</sup>

Un moyen simple d'ajuster et d'ajuster automatiquement une image dans une forme particulière a été fourni grâce à la nouvelle méthode [fit_image_to_shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/imagedata/fit_image_to_shape/#default).

#### Formatage de police par défaut pour les entrées de légende de graphique DrawingML <sup>23.11</sup>

La possibilité de spécifier le formatage de police par défaut pour les entrées de légende des graphiques DrawingML a été ajoutée via la propriété [font](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartlegend/font/). Cette fonctionnalité facilite une apparence plus rationalisée et cohérente des éléments du graphique, améliorant ainsi l’esthétique globale du document.

#### Spécifier la mise en page lors de l'ouverture d'un PDF dans Reader <sup>23.12</sup>

La possibilité de spécifier la mise en page à utiliser lors de l'ouverture d'un document dans un lecteur PDF a été ajoutée grâce à l'introduction d'une nouvelle propriété [page_layout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/page_layout/) dans la classe [PdfSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfsaveoptions/) et à l'introduction d'une nouvelle énumération [PdfPageLayout](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfpagelayout/).

### Chargement et enregistrement de documents

#### Spécification d'un nom de dossier pour construire des URI d'image dans Markdown <sup>23.9</sup>

La classe [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/) a été étendue en incluant la propriété [images_folder_alias](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/images_folder_alias/), qui permet de spécifier le nom du dossier utilisé pour construire les URI d'image écrites dans le document Markdown.

#### Réduire la taille de sortie PDF <sup>23.10</sup>

Diverses optimisations de rendu PDF pour réduire la taille de sortie lors de l'utilisation des paramètres [optimize_output](https://reference.aspose.com/words/python-net/aspose.words.saving/fixedpagesaveoptions/optimize_output/) ont été mises en œuvre.

#### Reconnaître les hyperliens lors du chargement de documents TXT <sup>23.10</sup>

La fonctionnalité permettant de reconnaître les hyperliens lors du chargement de documents TXT a été implémentée en ajoutant une nouvelle propriété [detect_hyperlinks](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/detect_hyperlinks/).

### Autre

- L'émulation de rendu de métafichier pour déterminer la taille de rastérisation a été implémentée, en particulier pour la largeur du stylo WMF et la largeur du stylo cosmétique EMF. Pour y parvenir, la propriété **ScaleWmfFontsToMetafileSize** a été remplacée par la propriété [emulate_rendering_to_size_on_page](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page/) et la propriété [emulate_rendering_to_size_on_page_resolution](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_rendering_to_size_on_page_resolution/) a été ajoutée. <sup>23.9</sup>
- Une méthode simplifiée pour insérer un document dans un autre document à la position actuelle du curseur a été introduite en utilisant la méthode [insert_document_inline](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/insert_document_inline/#document_importformatmode_importformatoptions). <sup>23h10</sup>
- La possibilité d'accéder et de modifier les propriétés de style a été ajoutée grâce à l'introduction de la nouvelle propriété [locked](https://reference.aspose.com/words/python-net/aspose.words/style/locked/). <sup>23h10</sup>
- Un paramètre de type générique a été ajouté aux méthodes de la classe [CompositeNode](https://reference.aspose.com/words/python-net/aspose.words/compositenode/). <sup>23h10</sup>
- La possibilité d'écrire toutes les sections d'un document sur la même feuille de calcul XLSX a été fournie grâce au nouveau type d'énumération [XlsxSectionMode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsectionmode/) et à la nouvelle propriété [section_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/xlsxsaveoptions/section_mode/). <sup>23.11</sup>
* Un moyen de contrôler la manière dont les extensions au format ZIP64 seront utilisées pour les documents OOXML a été implémenté via la nouvelle propriété Zip64Mode de la classe `OoxmlSaveOptions` et la nouvelle énumération Zip64Mode. <sup>23.12</sup>
* La prise en charge de l'image WebP a été introduite. Veuillez noter que cette fonctionnalité n'est disponible que pour les versions .NetStandart et .NET6+. <sup>23.12</sup>

{{% alert color="primary" %}}

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 23.9](/words/python-net/aspose-words-for-python-via-dotnet-23-9-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour Python via .NET 23.10](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-10-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour Python via .NET 23.11](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-11-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour .NET 23.12](https://releases.aspose.com/words/python/release-notes/2023/aspose-words-for-python-via-dotnet-23-12-release-notes/).

{{% /alert %}}

## Aspose.Words pour Python via .NET 23.5, 23.6, 23.7, 23.8

Aspose.Words 23.5 améliore la capacité de travailler avec des données de séries de graphiques et la capacité de travailler avec des documents ODT, ainsi que d'améliorer les en-têtes/pieds de page et leur habillage de texte.

Aspose.Words 23.6 étend les options de rendu, ajoute un nouveau format d'exportation, améliore les outils de reporting LINQ et LowCode.

Aspose.Words 23.7 améliore les capacités de reporting, ajoute un nouveau format d'exportation et introduit des modifications dans l'utilisation des tableaux et des signatures numériques.

Aspose.Words 23.8 étend les capacités de différents formats, améliore le rendu et ajoute de nouvelles options pour travailler avec les champs

### Formats pris en charge

* A partir de la version 23.6, il est possible d'enregistrer un document au format XLSX. Vous pouvez désormais convertir vos documents au format Excel. <sup>23.6</sup>

* À partir de la version 23.7, il est possible d'enregistrer une page ou une forme de document au format EPS. <sup>23.7</sup>

### Nouvelles fonctionnalités de format

- La fonctionnalité permettant de générer automatiquement une table des matières (TOC) pour les documents MOBI a été introduite. <sup>23.8</sup>
- Le constructeur [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) a été étendu avec [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23.8</sup>
- La mise en forme du texte vertical pour les métafichiers EMF a été implémentée. <sup>23.8</sup>

### Le rendu

#### Obtenir et modifier les données d'une série de graphiques <sup>23.5</sup>

La fonctionnalité permettant d'obtenir et de modifier les données des séries de graphiques a été fournie en ajoutant:

- nouvelles classes: [ChartXValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartmultilevelvalue/)
- nouveaux types d'énumérations: [ChartXValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartyvaluetype/)

#### Prise en charge de la typographie avancée <sup>23.6</sup>

La prise en charge de la typographie avancée dans les rendus WMF, EMF et EMF+ a été ajoutée.

#### Contenu coloré sur la page <sup>23.6</sup>

La propriété publique [PageInfo.colored](https://reference.aspose.com/words/python-net/aspose.words.rendering/pageinfo/colored/), indiquant si la page est colorée ou non, a été ajoutée.

#### Formatage des étiquettes de données de graphique <sup>23.6</sup>

La possibilité de définir le formatage du remplissage, du contour et des légendes pour les étiquettes de données de graphique a été implémentée.

### Mail Merge et rapports

#### Insertion HTML dynamique pour le moteur de reporting LINQ <sup>23.6</sup>

Une nouvelle méthode d'insertion HTML dynamique pour LINQ Reporting Engine a été ajoutée.

#### Prise en charge des balises Mustache <sup>23.7</sup>

Les balises Mustache sont désormais prises en charge dans les méthodes [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_regions_hierarchy/) et [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/python-net/aspose.words.mailmerging/mailmerge/get_field_names_for_region/).

#### Spécification de la taille des images rendues <sup>23.8</sup>

Un nouveau [image_size](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/image_size/) de propriété publique permettant de spécifier la taille des images rendues en pixels a été introduit.

#### Conserver les espaces pour les valeurs de chaîne JSON – LINQ <sup>23.8</sup>

Une option a été ajoutée au moteur de reporting LINQ pour conserver les espaces pour les valeurs de chaîne JSON.

### <sup>LowCode23.6</sup>

De nouvelles méthodes LowCode destinées à fusionner différents types de documents en un seul document de sortie ont été ajoutées.

### Autre

- La prise en charge du retour à la ligne du texte dans les en-têtes/pieds de page a été implémentée. <sup>23.5</sup>
- La possibilité de supprimer les signatures numériques des documents ODT a été ajoutée via la méthode [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str). <sup>23.5</sup>
- Le domaine public [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) pour obtenir le texte de base et rubis du guide phonétique [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) a été ajouté. <sup>23.5</sup>
- La possibilité de récupérer une valeur de signature numérique à partir d'un document signé numériquement sous forme de tableau d'octets a été ajoutée en introduisant une nouvelle propriété [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/). <sup>23.7</sup>
- Les classes [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) et [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) ont été étendues avec de nouveaux membres publics: [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/) et [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23.7</sup>

{{% alert color="primary" %}}

En savoir plus sur [Notes de version Aspose.Words pour Python via .NET 23.5](/words/python-net/aspose-words-for-python-via-dotnet-23-5-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 23.6](/words/python-net/aspose-words-for-python-via-dotnet-23-6-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 23.7](/words/python-net/aspose-words-for-python-via-dotnet-23-7-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour Python via .NET 23.8](/words/python-net/aspose-words-for-python-via-dotnet-23-8-release-notes/).

{{% /alert %}}

## Aspose.Words pour Python via .NET 23.1, 23.2, 23.3, 23.4

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

La classe [Fill](https://reference.aspose.com/words/fr/net/aspose.words.drawing/fill/) a été étendue avec un ensemble de nouvelles propriétés publiques liées aux couleurs d'arrière-plan et de premier plan: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) et [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) et [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

#### Dégradés radiaux avec le `SkiaSharp` Native Shader <sup>23.3</sup>

Le rendu des dégradés radiaux avec le shader natif `SkiaSharp` pour .NET Standard a été implémenté.

#### Distance entre le tableau et le texte environnant <sup>23.4</sup>

La possibilité de définir la distance entre le tableau et le texte environnant a été ajoutée en introduisant de nouvelles propriétés dans la classe [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/): [distance_left](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_left/), [distance_right](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_right/), [distance_top](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_top/) et [distance_bottom](https://reference.aspose.com/words/python-net/aspose.words.tables/table/distance_bottom/).

### Chargement et enregistrement de documents

#### Générer `TOC` pour les documents AZW3 <sup>23.1</sup>

La possibilité de générer des `TOC` (table des matières) pour les documents AZW3 a été ajoutée grâce à l'utilisation de la propriété [epub_navigation_map_level](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/epub_navigation_map_level/).

#### Exportation d'éléments de liste vers Markdown <sup>23.1</sup>

Un moyen de contrôler l'exportation des éléments de liste au format Markdown a été fourni en ajoutant la propriété [list_export_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/list_export_mode/) à la classe [MarkdownSaveOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/markdownsaveoptions/).

#### Notifications de progression de l'enregistrement des documents <sup>23.3</sup>

L'enregistrement des notifications de progression pour les formats MOBI et AZW3 a été implémenté.

#### Ajustement de l'espacement des phrases et des mots <sup>23.3</sup>

La possibilité de spécifier s'il faut ajuster automatiquement l'espacement des phrases et des mots lors de l'importation du document a été ajoutée en introduisant la propriété [adjust_sentence_and_word_spacing](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/adjust_sentence_and_word_spacing/).

### Autre

- La possibilité de spécifier l'ajustement de l'espacement des caractères d'un document a été ajoutée via l'implémentation de la propriété [justification_mode](https://reference.aspose.com/words/python-net/aspose.words/document/justification_mode/) <sup>23.2</sup>
- La manière d'indiquer à Aspose.Words s'il doit inclure des zones de texte, des notes de bas de page et des notes de fin dans les statistiques du nombre de mots a été fournie en ajoutant la propriété [include_textboxes_footnotes_endnotes_in_stat](https://reference.aspose.com/words/python-net/aspose.words/document/include_textboxes_footnotes_endnotes_in_stat/) <sup>23.2.</sup>
- Une nouvelle option pour un style de document, qui permet de spécifier si le style est automatiquement redéfini en fonction de la valeur appropriée, a été introduite via la propriété [automatically_update](https://reference.aspose.com/words/python-net/aspose.words/style/automatically_update/) <sup>23.2</sup>
- La possibilité de déterminer si [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) est un guide phonétique a été ajoutée à l'aide de la propriété [is_phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/is_phonetic_guide/) <sup>23.4</sup>
- Un moyen simple de travailler avec des séries et des axes de graphiques combinés a été implémenté en introduisant la classe [ChartAxisCollection](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chartaxiscollection/) et en ajoutant la propriété [Chart.axes](https://reference.aspose.com/words/python-net/aspose.words.drawing.charts/chart/axes/) <sup>23.4</sup>
- De nouvelles propriétés publiques liées au positionnement et au dimensionnement relatif de la forme ont été ajoutées à la classe [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/) <sup>23.4</sup>
- La précision et les performances du calcul de la luminosité des couleurs pour la résolution automatique des couleurs du texte ont été améliorées conformément aux dernières versions de Microsoft Word <sup>23.4</sup>

{{% alert color="primary" %}}

En savoir plus sur [Notes de version Aspose.Words pour Python via .NET 23.1](/words/python-net/aspose-words-for-python-via-dotnet-23-1-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour Python via .NET 23.2](/words/python-net/aspose-words-for-python-via-dotnet-23-2-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 23.3](/words/python-net/aspose-words-for-python-via-dotnet-23-3-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 23.4](/words/python-net/aspose-words-for-python-via-dotnet-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words pour Python via .NET 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 étend les options de chargement et d'enregistrement de documents et améliore l'interaction avec certaines autres options.

Aspose.Words 22.10 améliore les options de recherche et de remplacement, améliore les objets OLE et étend les fonctionnalités de liste.

Aspose.Words 22.11 étend ses fonctionnalités avec de nouvelles options pour un travail plus pratique avec des objets déjà familiers: OLE et balises de document structuré.

Aspose.Words 22.12 améliore les capacités de rendu et introduit des options pour travailler avec les marges lors du chargement/enregistrement d'un document.

### Améliorations des performances <sup>22.12</sup>

Une optimisation qui réduit considérablement la profondeur de l'imbrication des états graphiques lors du rendu au format PDF afin de maintenir la conformité aux spécifications a été introduite.

### Rendu et impression

#### Nouvelles propriétés de rendu des bordures <sup>22.12</sup>

De nouvelles propriétés publiques [theme_color](https://reference.aspose.com/words/python-net/aspose.words/border/theme_color/) et [tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words/border/tint_and_shade/) ont été introduites.

#### Formule de ligne de tendance linéaire pour le rendu DrawingML <sup>22.12</sup>

Le rendu de formule de ligne de tendance linéaire pour les graphiques DrawingML a été implémenté.

#### Paramètres de secours des polices pour les polices Google Noto <sup>22.12</sup>

Les paramètres de secours de police prédéfinis pour les polices Google Noto ont été mis à jour.

### Chargement et enregistrement de documents

#### Cacher les formes d'en-tête ou de pied de page pour réduire la taille du PDF <sup>22.9</sup>

La possibilité de mettre en cache les formes d'en-tête/pied de page pour réduire la taille du fichier PDF de sortie a été implémentée en ajoutant une nouvelle propriété **CacheHeaderFooterShapes**.

#### Détection automatique de la numérotation lors du chargement d'un document <sup>22.9</sup>

La possibilité de spécifier la propriété [auto_numbering_detection](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/auto_numbering_detection/) lors du chargement du texte a été implémentée via une extension de la classe [TxtLoadOptions](https://reference.aspose.com/words/python-net/aspose.words.loading/txtloadoptions/).

#### Spécification d'un type de marge particulier <sup>22.12</sup>

La possibilité de spécifier un type **Margin** particulier pour la section donnée a été implémentée.

### Rechercher et comparer <sup>22.10</sup>

La possibilité d'ignorer [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) lors des options de recherche et de remplacement a été implémentée en ajoutant une nouvelle propriété [ignore_structured_document_tags](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/ignore_structured_document_tags/) à la classe [FindReplaceOptions](https://reference.aspose.com/words/python-net/aspose.words.replacing/findreplaceoptions/).

### Autre

- Une nouvelle fonctionnalité permettant d'obtenir FieldEQ en tant qu'OfficeMath a été ajoutée. <sup>22.9</sup>
- La création de balises de documents structurés de type Group au niveau Row a été autorisée. <sup>22.9</sup>
- Les objets et contrôles OLE sont désormais traités comme des images métafichiers lors de la conversion d'un document en HTML. <sup>22h10</sup>
- Une nouvelle fonctionnalité permettant de vérifier qu'une liste particulière a été créée à partir du même modèle que la liste comparée a été ajoutée en introduisant une nouvelle méthode **HasSameTemplate** dans la classe [List](https://reference.aspose.com/words/python-net/aspose.words.lists/list/). <sup>22h10</sup>
- La possibilité de créer de nouvelles balises de documents structurés de type [Citation](https://reference.aspose.com/words/python-net/aspose.words.markup/sdttype/) a été ajoutée. <sup>22.11</sup>
- Une nouvelle propriété **EmbedAttachments** qui permet aux utilisateurs d'intégrer des pièces jointes OLE d'un document source dans le document PDF de sortie a été introduite. <sup>22.11</sup>

{{% alert color="primary" %}}

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 22.9](/words/python-net/aspose-words-for-python-via-dotnet-22-9-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour Python via .NET 22.10](/words/python-net/aspose-words-for-python-via-dotnet-22-10-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour Python via .NET 22.11](/words/python-net/aspose-words-for-python-via-dotnet-22-11-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour Python via .NET 22.12](/words/python-net/aspose-words-for-python-via-dotnet-22-12-release-notes/).

{{% /alert %}}

## Voir également

{{% alert color="primary" %}}

Cette page contient les dernières nouvelles sur les versions des 2 dernières années. Pour plus de détails sur les versions antérieures, consultez les pages [Notes de version'](/words/python-net/release-notes/) dans les sections correspondantes.

{{% /alert %}}