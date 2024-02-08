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

## Aspose.Words pour Python via .NET 24.1

Aspose.Words 24.1 améliore l'expérience de gestion des couleurs de trait, améliore les objets OLE et introduit un nouveau API public de sources bibliographiques.

### Rendu et impression

#### Contrôle des couleurs de trait <sup>24.1</sup>

La classe [Stroke](https://reference.aspose.com/words/python-net/aspose.words.drawing/stroke/) a été étendue avec un ensemble de nouvelles propriétés publiques liées à la gestion des couleurs de trait: **ForeThemeColor** et **BackThemeColor**, **ForeTintAndShade** et **BackTintAndShade**.

### Autre

* La possibilité de modifier le texte du contrôle OLE `TextBox` a été introduite en ajoutant une nouvelle propriété **Text** à la nouvelle classe **TextBoxControl**. <sup>24.1</sup>
* Le API public Sources bibliographiques a été implémenté via l'ajout d'un nouvel espace de noms **Aspose.Words.Bibliography** avec ses nouvelles classes et énumérations, et via l'ajout d'une nouvelle propriété **Bibliography** à la classe **Document**. <sup>24.1</sup>

{{% alert color="primary" %}}

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 24.1](https://releases.aspose.com/words/python/release-notes/2024/aspose-words-for-python-via-dotnet-24-1-release-notes/).

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

* À partir de la version 23.7, il est possible d'enregistrer une page ou une forme de document au format EPS. <sup>23,7</sup>

### Nouvelles fonctionnalités de format

- La fonctionnalité permettant de générer automatiquement une table des matières (TOC) pour les documents MOBI a été introduite. <sup>23,8</sup>
- Le constructeur [PdfEncryptionDetails](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions) a été étendu avec [PdfPermissions](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfencryptiondetails/__init__/#str_str_pdfpermissions). <sup>23,8</sup>
- La mise en forme du texte vertical pour les métafichiers EMF a été implémentée. <sup>23,8</sup>

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

- La prise en charge du retour à la ligne du texte dans les en-têtes/pieds de page a été implémentée. <sup>23,5</sup>
- La possibilité de supprimer les signatures numériques des documents ODT a été ajoutée via la méthode [RemoveAllSignatures](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignatureutil/remove_all_signatures/#str_str). <sup>23,5</sup>
- Le domaine public [phonetic_guide](https://reference.aspose.com/words/python-net/aspose.words/run/phonetic_guide/) pour obtenir le texte de base et rubis du guide phonétique [Run](https://reference.aspose.com/words/python-net/aspose.words/run/) a été ajouté. <sup>23,5</sup>
- La possibilité de récupérer une valeur de signature numérique à partir d'un document signé numériquement sous forme de tableau d'octets a été ajoutée en introduisant une nouvelle propriété [signature_value](https://reference.aspose.com/words/python-net/aspose.words.digitalsignatures/digitalsignature/signature_value/). <sup>23,7</sup>
- Les classes [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/) et [Cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/) ont été étendues avec de nouveaux membres publics: [Row.next_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/next_row/), [Row.previous_row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/previous_row/), [Cell.next_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/next_cell/) et [Cell.previous_cell](https://reference.aspose.com/words/python-net/aspose.words.tables/cell/previous_cell/). <sup>23,7</sup>

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

La classe [Fill](https://reference.aspose.com/words/net/aspose.words.drawing/fill/) a été étendue avec un ensemble de nouvelles propriétés publiques liées aux couleurs d'arrière-plan et de premier plan: [fore_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_theme_color/) et [back_theme_color](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_theme_color/), [fore_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/fore_tint_and_shade/) et [back_tint_and_shade](https://reference.aspose.com/words/python-net/aspose.words.drawing/fill/back_tint_and_shade/).

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

- Une nouvelle fonctionnalité permettant d'obtenir FieldEQ en tant qu'OfficeMath a été ajoutée. <sup>22,9</sup>
- La création de balises de documents structurés de type Group au niveau Row a été autorisée. <sup>22,9</sup>
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

## Aspose.Words pour Python via .NET 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 introduit la prise en charge de nouveaux formats de chargement et d'une nouvelle taille de page d'impression, et améliore certaines options de rendu.

Aspose.Words 22.6 étend les possibilités de conversion de PDF vers d'autres formats, et améliore également le travail avec DrawingML et l'effet de remplissage de texte solide.

Aspose.Words 22.7 améliore les possibilités de travail avec les fonctionnalités de rendu et ajoute également de nouvelles fonctionnalités pour travailler avec l'importation et l'exportation HTML au format PDF.

Aspose.Words 22.8 introduit un nouveau format d'exportation et améliore divers algorithmes de rendu.

Le API est amélioré pour un développement plus flexible et plus pratique.

### Formats pris en charge

* La prise en charge du chargement de documents EPUB et XML a été introduite en ajoutant de nouvelles valeurs à l'énumération **LoadFormat**. À partir de la version 22.5, il est possible de charger des documents EPUB et XML dans un modèle de document Aspose.Words et de les convertir en n'importe quel [Formats de documents pris en charge](/words/fr/python-net/supported-document-formats/). <sup>22,5</sup>
* À partir de la version 22.8, il est possible d'enregistrer un document au format AZW3 – le format de fichier de livre électronique propriétaire de Kindle Amazon (KF8 est un autre nom pour le format). Vous pouvez désormais non seulement charger des documents AZW3, mais également exporter vos fichiers au format AZW3, qui est essentiellement un EPUB compilé. <sup>22,8</sup>

### Rendu et impression

#### Nouvelle taille d'impression <sup>22,5</sup>

La prise en charge de la taille de page d'impression "Enveloppe n° 10" a été ajoutée en introduisant une nouvelle valeur dans l'énumération [PaperSize](https://reference.aspose.com/words/python-net/aspose.words/papersize/).

#### Rendu de formules MathML <sup>22.5</sup>

Le rendu d'une zone de bordure autour des formules MathML et la détection des polices lors du rendu des caractères pour ces formules ont été améliorés.

#### Améliorations des graphiques DML <sup>22.6</sup>

Les graphiques DrawingML publics API ont été étendus pour prendre en charge les remplissages de dégradés, de textures et de motifs.

#### Glyph décrit l'analyse pour OpenType <sup>22.7</sup>

L'analyse des contours glyph propres à Aspose.Words pour les polices OpenType (CFF) a été implémentée.

Auparavant, l'analyse glyph pour les polices OpenType (CFF) était effectuée via GDI+. Alors maintenant, cela fonctionne dans les cas où GDI+ n'est pas disponible – Java, plateformes .NET Standard, Linux, macOS, etc. L'analyse des contours Glyph est requise dans des cas spécifiques comme WordArt, les effets de texte, certaines fonctionnalités d'Office Math et autres.

#### Définir le formatage de l'ombre de forme <sup>22.7</sup>

La possibilité de définir le formatage de l'ombre de l'objet forme a été fournie en ajoutant une nouvelle propriété [shadow_format](https://reference.aspose.com/words/python-net/aspose.words.drawing/shapebase/shadow_format/).

#### Prise en charge de l'espacement des cellules dans les tableaux <sup>22.8</sup>

Le moteur de mise en page est désormais considérablement amélioré: un mécanisme d'espacement des cellules très complexe dans les tableaux a été implémenté.

#### Substitution de polices pour les symboles <sup>22.8</sup>

La substitution de police pour les symboles a été améliorée.

#### Algorithme de rotation des étiquettes de l’axe du graphique <sup>22.8</sup>

L'algorithme de rotation des étiquettes des axes du graphique a été amélioré.

### Chargement et sauvegarde de documents

#### Charger et convertir un PDF au format de page fixe sans modèle de mise en page <sup>22.6</sup>

La possibilité de charger et de convertir des documents PDF en formats de page fixes avec une haute fidélité et des performances a été implémentée.

#### Nouveau mode d'importation HTML <sup>22.7</sup>

Un nouveau mode d'importation HTML pour les éléments de niveau bloc a été introduit en ajoutant une nouvelle valeur à l'énumération [HtmlInsertOptions](https://reference.aspose.com/words/python-net/aspose.words/htmlinsertoptions/).

#### Convertir en PDF/UA-1 Conforme aux WCAG 2.0 <sup>22.7</sup>

La prise en charge de la conversion d'un document au format PDF/UA-1, conforme aux WCAG 2.0, a été ajoutée.

Ainsi, si le client dispose d'un document Word accessible et le convertit en PDF/UA-1 via Aspose.Words en mentionnant les spécificités de la conversion, alors le résultat sera compatible WCAG 2.0.

Les WCAG ou Web Content Accessibility Guidelines sont un ensemble de lignes directrices développées par le W3C en collaboration avec des individus et des organisations du monde entier. Désormais, avec Aspose.Words, vous pouvez convertir votre document au format de sortie PDF/UA-1, adapté à la création de documents PDF conformes aux WCAG 2.0.

Il convient de noter que WCAG 2.0 comporte deux exigences supplémentaires qui ne sont pas spécifiées dans la spécification PDF/UA-1:

- exigences de contraste
- exigences relatives au balisage du contenu multimédia

Mais ces deux exigences ne sont pas pertinentes dans notre cas de conversion de Word en PDF.

### Autre

L'exception de l'héritage de l'effet de remplissage de texte solide qui imite le comportement de MS Word a été implémentée. <sup>22.6</sup>

{{% alert color="primary" %}}

En savoir plus sur [Notes de version Aspose.Words pour Python via .NET 22.5](/words/python-net/aspose-words-for-python-via-dotnet-22-5-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 22.6](/words/python-net/aspose-words-for-python-via-dotnet-22-6-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 22.7](/words/python-net/aspose-words-for-python-via-dotnet-22-7-release-notes/).

En savoir plus sur [Notes de version Aspose.Words pour Python via .NET 22.8](/words/python-net/aspose-words-for-python-via-dotnet-22-8-release-notes/).

{{% /alert %}}

## Aspose.Words pour Python via .NET 22.3, 22.4

Aspose.Words 22.3 étend les possibilités de travail avec les formats PDF et TXT et améliore le travail de certains algorithmes et moteurs existants.

Aspose.Words 22.4 améliore les capacités PDF: vous pouvez désormais enregistrer un fichier au format PDF/A-4 et bénéficier d'un certain nombre d'autres améliorations dans la sortie PDF. Dans le même temps, Aspose.Words 22.4 offre des capacités supplémentaires pour travailler avec des graphiques DML, lire les métadonnées Photoshop et importer des éléments HTML au niveau des blocs.

Le API est amélioré pour un développement plus flexible et plus pratique.

### Fonctionnalités prises en charge

À partir de Aspose.Words 22.4, la prise en charge de Python 3.10 a été ajoutée.

### Amélioration des performances

Le chargement d'un cache de recherche de polices précédemment enregistré pour accélérer le processus d'initialisation du cache de polices lors du rendu a été implémenté. Désormais, vos solutions fonctionneront encore plus rapidement.

### Formats pris en charge

Le chargement d'un document au format AZW3 (KF8 est un autre nom du format) a été ajouté. Vous pouvez désormais charger un document AZW3 et le convertir dans n'importe quel autre format pris en charge.

### Le rendu

#### Rendu de formules MathML

Le rendu des opérateurs dans les formules MathML a été amélioré.

#### Améliorations des graphiques DML

Les améliorations suivantes ont été apportées aux graphiques DML:

* L'algorithme de mise à l'échelle des axes du graphique DML a été amélioré pour être le même que dans MS Word

* La possibilité de manipuler les entrées de légende des graphiques DrawingML a été fournie pour rendre notre graphique API de plus en plus complet
* La possibilité de spécifier le nom d'un fichier xls/xlsx auquel le graphique DrawingML est lié a été implémentée

#### Rendu au format PDF avec conformité PDF/A-4

Le rendu au format PDF avec la conformité PDF/A-4 a été ajouté en ajoutant de nouvelles valeurs à l'énumération [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/) – [PDF_A4](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/#pdf_a4). Cette option suppose des niveaux de conformité révisés: la conformité PDF/A-4 standard est équivalente au niveau de conformité U des versions précédentes, et la conformité de niveau A est supprimée.

#### Lecture de la résolution des métadonnées Photoshop en JPEG

La lecture de la résolution des métadonnées Photoshop dans les images JPEG a été implémentée pour résoudre un problème intéressant de mise à l'échelle incorrecte des images lors du rendu.

#### Autoriser le texte latin à s'enrouler au milieu d'un mot

La prise en charge de la fonctionnalité "Autoriser le texte latin à s'insérer au milieu d'un mot" a été implémentée pour améliorer encore notre prise en charge du latin lors du rendu.

### Chargement et enregistrement de documents

#### Contrôle du comportement du style lors du chargement d'un document

Une nouvelle option [force_copy_styles](https://reference.aspose.com/words/python-net/aspose.words/importformatoptions/force_copy_styles/) a été introduite pour contrôler le comportement des styles en conflit lors de l'importation de documents.

#### Convertir les formes en SVG lors de l'exportation

La possibilité de convertir des formes en images SVG lors de l'exportation au format HTML, MHTML ou EPUB a été fournie par l'ajout de la propriété [export_shapes_as_svg](https://reference.aspose.com/words/python-net/aspose.words.saving/htmlsaveoptions/export_shapes_as_svg/).

#### Enregistrement au format PDF 2.0 et améliorations de la sortie PDF

La possibilité d'enregistrer un document au format PDF 2.0 en ajoutant une nouvelle valeur à l'énumération [PdfCompliance](https://reference.aspose.com/words/python-net/aspose.words.saving/pdfcompliance/), ainsi que plusieurs autres améliorations demandées à la sortie PDF, ont été introduites.

#### Nouveau mode d'importation HTML

Un nouveau mode d'importation pour les éléments HTML au niveau des blocs a été implémenté pour imiter le comportement de Microsoft Word.

### Autre

* La possibilité d'obtenir le OOXML d'un contrôle de contenu et de l'enregistrer sous forme de chaîne a été introduite.
* La reconnaissance des notes de bas de page non standard dans les documents PDF lors de l'importation a été ajoutée.
* Une possibilité d'obtenir des données de champ personnalisées associées au champ a été ajoutée.
* L'algorithme de comparaison de tableaux reposant sur une analyse approfondie du mécanisme de comparaison Microsoft Word a été amélioré.
* La syntaxe des commentaires dans le moteur de reporting LINQ a été fournie.

{{% alert color="primary" %}}

En savoir plus sur [Notes de version Aspose.Words pour Python via .NET 22.3](/words/python-net/aspose-words-for-python-via-dotnet-22-3-release-notes/).

En savoir plus sur [Notes de version de Aspose.Words pour Python via .NET 22.4](/words/python-net/aspose-words-for-python-via-dotnet-22-4-release-notes/).

{{% /alert %}}

## Voir également

{{% alert color="primary" %}}

Cette page contient les dernières nouvelles sur les versions des 2 dernières années. Pour plus de détails sur les versions antérieures, consultez les pages [Notes de version'](/words/python-net/release-notes/) dans les sections correspondantes.

{{% /alert %}}