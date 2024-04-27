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

## Aspose.Words pour Java 24.1, 24.2, 24.3

Aspose.Words 24.1 améliore l'expérience de gestion des couleurs de course, améliore les objets OLE et les rapports LINQ, et introduit un nouveau public Bibliographie Sources API.

Aspose.Words 24.2 graphiques élargis API, gestion de style, et options LINQ. Cette version de Aspose.Words a également introduit la possibilité de spécifier SvgSaveOptions pendant le rendu, plus flexible de la charge de commande Markdown et travailler avec le texte de référence pour les notes et notes de bas de page.

Aspose.Words 24.3 introduit un nouveau lecteur/écriture TIFF et l'émulation des opérations de raster binaire pour les métafiles WMF. Aspose.Words 24.3 continue également d'élargir les graphiques API.

### Rendu et impression

#### Contrôle de couleur des accidents <sup>24.1</sup>

Les [Stroke](https://reference.aspose.com/words/java/com.aspose.words/stroke/) classe a été étendu avec un ensemble de nouvelles propriétés publiques liées à la gestion des couleurs de course: [ForeThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeThemeColor) et [BackThemeColor](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackThemeColor), [ForeTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getForeTintAndShade) et [BackTintAndShade](https://reference.aspose.com/words/java/com.aspose.words/stroke/#getBackTintAndShade).

#### Dessin des graphiquesML API Prolongation <sup>24.2 / 24.3</sup>

Les **DrawingML Charts API** continue d'être élargie.

### Chargement et sauvegarde des documents

#### Spécifiez SvgSaveOptions pendant le rendu <sup>24,2</sup>

La capacité de spécifier [SvgSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/svgsaveoptions/) pendant le rendu a été ajouté en utilisant le [ShapeRenderer](https://reference.aspose.com/words/java/com.aspose.words/shaperenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) et [OfficeMathRenderer](https://reference.aspose.com/words/java/com.aspose.words/officemathrenderer/).[Save](https://reference.aspose.com/words/java/com.aspose.words/noderendererbase/#save-java.io.OutputStream-com.aspose.words.SvgSaveOptions) méthodes.

#### Préserver les lignes vides lors du chargement Markdown fichiers <sup>24,2</sup>

La possibilité de préserver les lignes vides lors du chargement Markdown fichiers ont été ajoutés.

#### Un nouveau lecteur/rédacteur TIFF <sup>24,3</sup>

Un nouveau lecteur/écrivain TIFF pour Aspose.Words pour .NET Standard, .NET 6 et plus tard a été développé. Aspose.Words pour .NET 24.3 a ajouté un support pour la lecture d'images TIFF avec des types de compression JPEG et Old JPEG, et a également amélioré significativement la qualité des opérations de lecture et d'écriture.

### Autres

* La capacité de modifier le texte `TextBox` Le contrôle OLE a été introduit en ajoutant une nouvelle [Text](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/#getText) propriété à la nouvelle [TextBoxControl](https://reference.aspose.com/words/java/com.aspose.words/textboxcontrol/) En cours. 24.1 <sup>24.1</sup>
* La bibliographie Sources publiques API a été mis en œuvre en ajoutant quelques nouveaux [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/bibliography/), [Source](https://reference.aspose.com/words/java/com.aspose.words/source/), [ContributorCollection](https://reference.aspose.com/words/java/com.aspose.words/contributorcollection/), [Contributor](https://reference.aspose.com/words/java/com.aspose.words/contributor/), [Corporate](https://reference.aspose.com/words/java/com.aspose.words/corporate/), [PersonCollection](https://reference.aspose.com/words/java/com.aspose.words/personcollection/) et [Person](https://reference.aspose.com/words/java/com.aspose.words/person/) cours et [SourceType](https://reference.aspose.com/words/java/com.aspose.words/sourcetype/) le recensement, ainsi qu'en ajoutant un nouveau [Bibliography](https://reference.aspose.com/words/java/com.aspose.words/document/#getBibliography) propriété de [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) En cours. <sup>24.1</sup>
* Un API pour limiter l'accès aux membres de type en utilisant la syntaxe modèle pour le moteur de rapport LINQ a été fourni. <sup>24.1</sup>
* Nouveaux biens publics [Priority](https://reference.aspose.com/words/net/aspose.words/style/priority/), [UnhideWhenUsed](https://reference.aspose.com/words/net/aspose.words/style/unhidewhenused/), et [SemiHidden](https://reference.aspose.com/words/net/aspose.words/style/semihidden/) pour améliorer la gestion du style [Style](https://reference.aspose.com/words/net/aspose.words/style/) En cours. <sup>24,2</sup>
* La fonctionnalité permettant de récupérer le texte de la marque de référence pour les notes de bas de page et les notes de fin de page a été améliorée avec la [ActualReferenceMark](https://reference.aspose.com/words/net/aspose.words.notes/footnote/actualreferencemark/) propriété et [UpdateActualReferenceMarks](https://reference.aspose.com/words/net/aspose.words/document/updateactualreferencemarks/) méthode. <sup>24,2</sup>
* Compatibilité avec `Word 2016` pour les `LINQ Reporting Engine` a été activé. <sup>24,2</sup>
* L'émulation des opérations de raster binaire pour les métafiles WMF a été implémentée. <sup>24,3</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 24.1 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-1-release-notes/).

En savoir plus sur [Aspose.Words pour Java 24.2 Notes de mise à jour.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-2-release-notes/)

En savoir plus sur [Aspose.Words pour Java 24.3 Notes de sortie.](https://releases.aspose.com/words/java/release-notes/2024/aspose-words-for-java-24-3-release-notes/)

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

* À partir de la version 23.6, il est possible de sauvegarder un document au format XLSX. Maintenant, vous pouvez convertir vos documents en format Excel. <sup>23,6</sup>

* À partir de la version 23.7, il est possible de sauvegarder une page ou une forme de document au format EPS. <sup>23.7</sup>

* Nouveau format

  - La fonctionnalité de générer automatiquement la Table des matières (TdP) pour les documents MOBI a été introduite. <sup>23.8</sup>
  - Les [PdfEncryptionDetails](https://reference.aspose.com/words/java/com.aspose.words/pdfencryptiondetails/#PdfEncryptionDetails-java.lang.String-java.lang.String) le constructeur a été élargi avec [PdfPermissions](https://reference.aspose.com/words/java/com.aspose.words/pdfpermissions/). <sup>23.8</sup>
  - L'élaboration de texte vertical pour les métadonnées EMF a été mise en œuvre. <sup>23.8</sup>

### Rendus

#### Obtenez et modifiez Données de la série de graphiques <sup>23,5</sup>

La fonction pour obtenir et modifier les données des séries de cartes a été fournie en ajoutant:

- nouvelles classes: [ChartXValue](https://reference.aspose.com/words/java/com.aspose.words/chartxvalue/), [ChartYValue](https://reference.aspose.com/words/java/com.aspose.words/chartyvalue/), [ChartXValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluecollection/), [ChartYValueCollection](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluecollection/), [BubbleSizeCollection](https://reference.aspose.com/words/java/com.aspose.words/bubblesizecollection/), [ChartMultilevelValue](https://reference.aspose.com/words/java/com.aspose.words/chartmultilevelvalue/)
- nouveaux types d ' enum: [ChartXValueType](https://reference.aspose.com/words/java/com.aspose.words/chartxvaluetype/), [ChartYValueType](https://reference.aspose.com/words/java/com.aspose.words/chartyvaluetype/)

#### Soutien à la typographie avancée <sup>23,6</sup>

La prise en charge de la typographie avancée dans le rendu WMF, EMF et EMF+ a été ajoutée.

#### Contenu coloré sur la page <sup>23,6</sup>

La propriété publique [PageInfo.Colored](https://reference.aspose.com/words/java/com.aspose.words/pageinfo/#getColored), indiquant si la page est colorée ou non, a été ajoutée.

#### Formatage pour les étiquettes de données graphiques <sup>23,6</sup>

La capacité de définir le formatage de remplissage, de course et de callout pour les étiquettes de données graphiques a été mise en place.

### Mail Merge et rapports

#### Insertion HTML dynamique pour le moteur de déclaration LINQ <sup>23,6</sup>

Une nouvelle façon d'insérer dynamique HTML pour LINQ Reporting Engine a été ajoutée.

#### Mustache Mots clés Support <sup>23.7</sup>

Mustache tags sont maintenant pris en charge dans le [MailMerge.GetRegionsHierarchy](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getRegionsHierarchy) et [MailMerge.GetFieldNamesForRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmerge/#getFieldNamesForRegion-java.lang.String) méthodes.

#### Mises à jour syntaxiques du modèle de moteur de déclaration LINQ <sup>23.7</sup>

La syntaxe du modèle LINQ Reporting Engine prend désormais en charge `ElementAt` et les méthodes d'extension ElementAtOrDefault.

#### Spécifier la taille des images rendues <sup>23.8</sup>

Une nouvelle propriété publique **ImageSize** pour spécifier la taille des images rendues en pixel a été introduit.

#### Préserver les espaces blancs pour les valeurs des chaînes JSON – LINQ <sup>23.8</sup>

Une option a été ajoutée au moteur de rapport LINQ pour préserver les espaces blancs pour les valeurs de chaînes JSON.

### LowCode <sup>23,6</sup>

Nouveau LowCode des méthodes destinées à fusionner différents types de documents en un seul document de sortie ont été ajoutées.

### Autres

- La prise en charge de l'emballage du texte dans les en-têtes/pieds a été mise en œuvre. <sup>23,5</sup>
- Oui. La possibilité de supprimer les signatures numériques des documents ODT a été ajoutée par le biais de [RemoveAllSignatures](https://reference.aspose.com/words/java/com.aspose.words/digitalsignatureutil/#removeAllSignatures-java.io.InputStream-java.io.OutputStream) méthode. <sup>23,5</sup>
- Oui. La propriété publique [PhoneticGuide](https://reference.aspose.com/words/java/com.aspose.words/run/#getPhoneticGuide) pour obtenir le texte de base et rubis du guide phonétique [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) a été ajouté. <sup>23,5</sup>
- Oui. La possibilité de récupérer une valeur de signature numérique à partir d'un document signé numériquement en tant que tableau d'octets a été ajoutée en introduisant une nouvelle [SignatureValue](https://reference.aspose.com/words/java/com.aspose.words/digitalsignature/#getSignatureValue) propriété. <sup>23.7</sup>
- Les [Row](https://reference.aspose.com/words/java/com.aspose.words/row/) et [Cell](https://reference.aspose.com/words/java/com.aspose.words/cell/) les cours ont été prolongés avec de nouveaux membres publics – [Row.NextRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getNextRow), [Row.PreviousRow](https://reference.aspose.com/words/java/com.aspose.words/row/#getPreviousRow), [Cell.NextCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getNextCell), et [Cell.PreviousCell](https://reference.aspose.com/words/java/com.aspose.words/cell/#getPreviousCell). <sup>23.7</sup>
- Le soutien aux champs CITATION et BIBLIOGRAPHIE a été ajouté. <sup>23.8</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 23.5 Notes de mise à jour](/words/java/aspose-words-for-java-23-5-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.6 Notes de mise à jour](/words/java/aspose-words-for-java-23-6-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.7 Notes de mise à jour](/words/java/aspose-words-for-java-23-7-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.8 Notes de mise à jour](/words/java/aspose-words-for-java-23-8-release-notes/).

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

#### Exportation vers le MOBI <sup>23,2</sup>

À partir de la version 23.2, il est possible de sauvegarder un document en format MOBI (également appelé RPC, AZW – Amazon Le propre format de fichier de livre électronique de Kindle). Maintenant, vous pouvez non seulement charger des documents MOBI, mais aussi exporter vos fichiers au format MOBI.

### Rendus

#### Travailler avec les couleurs du thème de l'ombrage <sup>23.1</sup>

La capacité de travailler avec des couleurs de thème ombrage a été implémentée.

#### Soutien du coefficient carré R dans les graphiques DML <sup>23.1</sup>

Prise en charge du coefficient carré R dans les étiquettes de tendance des cartes DML lorsque le rendu a été ajouté.

#### Graphique Améliorations de la soumission <sup>23,2</sup>

Depuis le 23.2, le rendu des graphiques a été considérablement amélioré.

#### Contrôle de la couleur du fond et du premier plan <sup>23,3</sup>

Les [Fill](https://reference.aspose.com/words/java/com.aspose.words/fill/) classe a été étendu avec un ensemble de nouvelles propriétés publiques liées à l'arrière-plan et les couleurs de premier plan: **ForeThemeColor** et **BackThemeColor**, **ForeTintAndShade** et **BackTintAndShade**.

#### Gradients radiaux avec `SkiaSharp` Shader autochtone <sup>23,3</sup>

Rendu des gradients radiaux avec `SkiaSharp` native shader pour .NET Standard a été mis en œuvre.

#### Distance entre la table et le texte environnant <sup>23,4</sup>

La possibilité de définir la distance entre la table et le texte environnant a été ajoutée en introduisant de nouvelles propriétés à la [Table](https://reference.aspose.com/words/java/com.aspose.words/table/) classe: [DistanceLeft](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceLeft), [DistanceRight](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceRight), [DistanceTop](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceTop), et [DistanceBottom](https://reference.aspose.com/words/java/com.aspose.words/table/#getDistanceBottom).

### Chargement et sauvegarde des documents

#### Générer `TOC` pour les documents AZW3 <sup>23.1</sup>

La capacité de générer `TOC` (table des matières) pour les documents AZW3 a été ajouté par l'utilisation de [EpubNavigationMapLevel](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getEpubNavigationMapLevel) propriété.

#### Liste d'exportation Markdown <sup>23.1</sup>

Un moyen de contrôler l'exportation des articles de la liste vers Markdown le format a été fourni en ajoutant [ListExportMode](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getListExportMode) propriété de [MarkdownSaveOptions](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/) En cours.

#### Enregistrement des déclarations d'étape <sup>23,3</sup>

L'enregistrement des notifications d'avancement pour les formats MOBI et AZW3 a été mis en œuvre.

#### Ajustement de la peine et de l'espacement des mots <sup>23,3</sup>

La possibilité de spécifier s'il faut ajuster automatiquement la phrase et l'espacement des mots lors de l'importation du document a été ajoutée en introduisant la **AdjustSentenceAndWordSpacing** propriété.

### Autres

- Oui. La possibilité de spécifier le réglage de l'espacement des caractères d'un document a été ajoutée par le biais [JustificationMode](https://reference.aspose.com/words/java/com.aspose.words/document/#getJustificationMode) Exécution des biens <sup>23,2</sup>
- La façon d'instruire Aspose.Words la question de savoir s'il y a lieu d'inclure des boîtes à texte, des notes de bas de page et des notes de bas de page dans les statistiques du nombre de mots a été fournie en ajoutant les [IncludeTextboxesFootnotesEndnotesInStat](https://reference.aspose.com/words/java/com.aspose.words/document/#getIncludeTextboxesFootnotesEndnotesInStat) biens <sup>23,2</sup>
- Une nouvelle option pour un style de document, qui permet de spécifier si le style est automatiquement redéfini en fonction de la valeur appropriée, a été introduite à travers le [AutomaticallyUpdate](https://reference.aspose.com/words/java/com.aspose.words/style/#getAutomaticallyUpdate) biens <sup>23,2</sup>
- Oui. La capacité de déterminer si [Run](https://reference.aspose.com/words/java/com.aspose.words/run/) est un guide phonétique a été ajouté en utilisant le **IsPhoneticGuide** biens <sup>23,4</sup>
- Une façon simple de travailler avec des séries et des axes de cartes combo a été mise en œuvre en introduisant la **ChartAxisCollection** et ajouter la **Chart.Axes** biens <sup>23,4</sup>
- De nouvelles propriétés publiques liées au positionnement relatif de la forme et au calibrage ont été ajoutées au [Shape](https://reference.aspose.com/words/java/com.aspose.words/shape/) classe <sup>23,4</sup>
- Précision et performance du calcul de luminosité de couleur pour la résolution automatique de couleur de texte a été amélioré conformément aux dernières versions de Microsoft Word <sup>23,4</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 23.1 Notes de mise à jour](/words/java/aspose-words-for-java-23-1-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.2 Notes de mise à jour](/words/java/aspose-words-for-java-23-2-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.3 Notes de mise à jour](/words/java/aspose-words-for-java-23-3-release-notes/).

En savoir plus sur [Aspose.Words pour Java 23.4 Notes de mise à jour](/words/java/aspose-words-for-java-23-4-release-notes/).

{{% /alert %}}

## Aspose.Words pour Java 22.9, 22.10, 22.11, 22.12

Aspose.Words 22.9 élargit les options de chargement et de sauvegarde des documents et améliore l'interaction avec d'autres options.

Aspose.Words 22.10 améliore la recherche et le remplacement des options, améliore les objets OLE et élargit la fonctionnalité de la liste.

Aspose.Words 22.11 élargit sa fonctionnalité avec de nouvelles options pour un travail plus pratique avec des objets déjà familiers: champs, impression, OLE et étiquettes de documents structurés.

Aspose.Words 22.12 améliore les capacités de rendu et introduit des options pour travailler avec les marges lors du chargement et de la sauvegarde d'un document.

### Amélioration des performances <sup>22.12</sup>

Une optimisation qui réduit considérablement la profondeur de l'état graphique de nidification lors du rendu en PDF pour maintenir la conformité aux spécifications a été introduite.

### Rendu et impression

#### Impression non colorée Pages sur une imprimante couleur <sup>22.11</sup>

Un mode d'impression couleur/griscale personnalisé a été implémenté en ajoutant un nouveau **GrayscaleAuto** valeur de [ColorPrintMode](https://reference.aspose.com/words/java/com.aspose.words/colorprintmode/) Énumération.

Une nouvelle propriété d'impression permet aux utilisateurs de contrôler la façon dont les pages non colorées sont imprimées si l'appareil supporte l'impression couleur. Cette fonctionnalité peut être utile si les utilisateurs veulent imprimer automatiquement des pages non colorées en utilisant seulement le mode d'impression à échelle grise.

#### Nouvelles propriétés de rendu de la frontière <sup>22.12</sup>

Nouveaux biens publics [ThemeColor](https://reference.aspose.com/words/java/com.aspose.words/border/#getThemeColor) et [TintAndShade](https://reference.aspose.com/words/java/com.aspose.words/border/#getTintAndShade) ont été introduites.

#### Formule linéaire de tendance pour le rendu des LM <sup>22.12</sup>

Le rendu linéaire de la formule de tendance pour les graphiques DrawML a été mis en œuvre.

#### Paramètres de repli de police pour Google Noto Polices <sup>22.12</sup>

Les paramètres prédéfinis de la police fallback pour Google Noto Les polices ont été mises à jour.

### Chargement et sauvegarde des documents

#### En-tête de cache ou forme de pied de page pour réduire la taille PDF <sup>22,9</sup>

La possibilité de cache des formes d'en-tête / pied de page pour réduire la taille du fichier PDF de sortie a été implémentée en ajoutant un nouveau [CacheHeaderFooterShapes](https://reference.aspose.com/words/java/com.aspose.words/pdfsaveoptions/) propriété.

#### Détection de numérotation automatique lors du chargement d'un document <sup>22,9</sup>

La capacité de spécifier [AutoNumberingDetection](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/#getAutoNumberingDetection) propriété au chargement de texte a été mis en œuvre par une extension du [TxtLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/txtloadoptions/) En cours.

#### Spécifier un particulier Type de marge <sup>22.12</sup>

La capacité de spécifier un particulier [Margin](https://reference.aspose.com/words/java/com.aspose.words/pagesetup/#getMargins) type pour la section donnée a été mis en œuvre.

### Rechercher et comparer <sup>22.10</sup>

La capacité d'ignorer [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) lors de la recherche et du remplacement des options a été mis en œuvre en ajoutant un nouveau [IgnoreStructuredDocumentTags](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreStructuredDocumentTags--) propriété de [FindReplaceOptions](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/) En cours.

### Autres

- Une nouvelle fonctionnalité pour obtenir FieldEQ en tant que OfficeMath a été ajoutée. <sup>22,9</sup>
- Oui. La création d'étiquettes de documents structurés Group le type au niveau de la rangée était autorisé. <sup>22,9</sup>
- Les objets et les commandes OLE sont maintenant traités comme des images métafiles lors de la conversion d'un document en HTML. <sup>22.10</sup>
- Une nouvelle fonctionnalité pour vérifier qu'une liste particulière a été créée à partir du même modèle que la liste comparée a été ajoutée en introduisant une nouvelle [HasSameTemplate](https://reference.aspose.com/words/java/com.aspose.words/list/#hasSameTemplate-com.aspose.words.List-) méthode dans la [List](https://reference.aspose.com/words/java/com.aspose.words/list/) En cours. <sup>22.10</sup>
- Oui. La capacité de créer de nouvelles étiquettes de documents structurés [Citation](https://reference.aspose.com/words/java/com.aspose.words/sdttype/) type a été ajouté. <sup>22.11</sup>
- La capacité de suivre les progrès accomplis sur le terrain. <sup>22.11</sup>
- Un nouveau **EmbedAttachments** propriété qui permet aux utilisateurs d'intégrer des pièces jointes OLE d'un document source dans le document PDF de sortie a été introduit. <sup>22.11</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 22.9 Notes de mise à jour](/words/java/aspose-words-for-java-22-9-release-notes/).

En savoir plus sur [Aspose.Words pour Java 22.10 Notes de mise à jour](/words/java/aspose-words-for-java-22-10-release-notes/).

En savoir plus sur [Aspose.Words pour Java 22.11 Notes de mise à jour](/words/java/aspose-words-for-java-22-11-release-notes/).

En savoir plus sur [Aspose.Words pour Java 22.12 Notes de mise à jour](/words/java/aspose-words-for-java-22-12-release-notes/).

{{% /alert %}}

## Aspose.Words pour Java 22.5, 22.6, 22.7, 22.8

Aspose.Words 22.5 introduit un support pour les nouveaux formats de chargement et une nouvelle taille de page d'impression, et améliore certaines options de rendu.

Aspose.Words 22.6 élargit les possibilités de conversion de PDF vers d'autres formats, et améliore le travail avec DessinML et effet de remplissage de texte solide.

Aspose.Words 22.7 améliore les possibilités de travailler avec les fonctions de rendu, et ajoute également de nouvelles fonctionnalités pour travailler avec l'importation et l'exportation HTML vers PDF.

Aspose.Words 22.8 introduit un nouveau format d'exportation et améliore divers algorithmes de rendu.

Les API est amélioré pour un développement plus flexible et pratique.

### Formats pris en charge

* La prise en charge du chargement des documents EPUB et XML a été introduite en ajoutant de nouvelles valeurs au [LoadFormat](https://reference.aspose.com/words/java/com.aspose.words/loadformat/) Énumération. À partir de la version 22.5, il est possible de charger des documents EPUB et XML Aspose.Words modèle de document et les convertir à n'importe quel [formats supportés](https://reference.aspose.com/words/java/com.aspose.words/saveformat/). <sup>22,5</sup>
* À partir de la version 22.8, il est possible de sauvegarder un document au format AZW3 – Amazon Format de fichier de livre électronique propriétaire de Kindle (KF8 est un autre nom pour le format). Maintenant, vous pouvez non seulement charger des documents AZW3, mais aussi exporter vos fichiers au format AZW3, qui est essentiellement un EPUB compilé. <sup>22.8</sup>

### Rendu et impression

#### Nouvelle taille d'impression <sup>22,5</sup>

La prise en charge de l'enveloppe n° 10 de l'impression a été ajoutée en introduisant une nouvelle valeur à la [PaperSize](https://reference.aspose.com/words/java/com.aspose.words/papersize/) Énumération.

#### Rendu des formules MathML <sup>22,5</sup>

Le rendu d'une boîte de bordure autour des formules MathML et la détection de polices lors du rendu des caractères pour de telles formules a été amélioré.

#### DML Améliorations du graphique <sup>22,6</sup>

Dessins des cartes LM publiques API a été étendu pour supporter le gradient, la texture et les remplissages de motifs.

#### Glyph Aperçus Parsing pour OpenType <sup>22,7</sup>

Aspose.Words propres glyph l'analyse des contours des polices OpenType (CFF) a été implémentée.

Précédemment, glyph L'analyse des polices OpenType (CFF) a été effectuée via GDI+. Donc maintenant il fonctionne dans les cas où GDI+ n'est pas disponible – Java, .NET Standard plates-formes, Linux Système d'exploitation, etc. Glyph l'analyse de contours est nécessaire dans des cas spécifiques comme WordArt, effets texte, certaines fonctionnalités Office Math, et d'autres.

#### Définir le formatage de l'ombre de forme <sup>22,7</sup>

La possibilité de définir le formatage d'ombre de l'objet de forme a été fournie en ajoutant un nouveau [ShadowFormat](https://reference.aspose.com/words/java/com.aspose.words/shapebase/#getShadowFormat) propriété.

#### Soutien à l'espacement cellulaire dans les tableaux <sup>22.8</sup>

Le moteur de mise en page est maintenant considérablement amélioré: un mécanisme d'espacement cellulaire très complexe a été mis en place dans les tableaux.

#### Substitution des caractères pour les symboles <sup>22.8</sup>

La substitution des caractères pour les symboles a été améliorée.

#### Graphique Algorithme de rotation de l'étiquette Axis <sup>22.8</sup>

L'algorithme de rotation des étiquettes de l'axe des cartes a été amélioré.

### Chargement et sauvegarde des documents

#### Charger et convertir PDF en format de page fixe sans modèle de mise en page <sup>22,6</sup>

La possibilité de charger et de convertir des documents PDF en formats de pages fixes avec une grande fidélité et performance a été mise en œuvre.

#### Nouveau mode d'importation HTML <sup>22,7</sup>

Un nouveau mode d'importation HTML pour les éléments de niveau bloc a été introduit en ajoutant une nouvelle valeur au [HtmlInsertOptions](https://reference.aspose.com/words/java/com.aspose.words/htmlinsertoptions/) Énumération.

#### Convertir en PDF/UA-1 CSSompliant avec WCAG 2.0 <sup>22,7</sup>

Un support pour convertir un document en format PDF/UA-1, conforme à WCAG 2.0, a été ajouté.

Donc, si le client a un document Word accessible et le convertit en PDF/UA-1 via Aspose.Words mentionnant les spécificités de conversion, alors la sortie sera compatible WCAG 2.0.

WCAG ou contenu Web Accessibilité Les lignes directrices sont un ensemble de lignes directrices élaborées par W3C en collaboration avec des particuliers et des organisations du monde entier. Maintenant avec Aspose.Words vous pouvez convertir votre document au format PDF/UA-1 de sortie, qui est adapté pour construire des documents PDF conformes WCAG 2.0.

Il convient de noter que WCAG 2.0 a deux exigences supplémentaires qui ne sont pas précisées dans la spécification PDF/UA-1:

- prescriptions de contraste
- exigences relatives au marquage du contenu multimédia

Mais les deux exigences ne sont pas pertinentes dans notre cas de conversion de Word en PDF.

### Autres

* Exception d'hériter de l'effet de remplissage de texte solide qui imite le comportement MS Word a été implémenté. <sup>22,6</sup>
* Appui à la `DATABASE` les champs ont été ajoutés. En utilisant ce type de champ, vous pouvez, par exemple, afficher les résultats d'une requête de base de données dans une Microsoft Word tableau. <sup>22,7</sup>

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 22.5 Notes de mise à jour](/words/java/aspose-words-for-java-22-5-release-notes/).

En savoir plus sur [Aspose.Words pour Java 22.6 Notes de mise à jour](/words/java/aspose-words-for-java-22-6-release-notes/).

En savoir plus sur [Aspose.Words pour Java 22.7 Notes de mise à jour](/words/java/aspose-words-for-java-22-7-release-notes/).

En savoir plus sur [Aspose.Words pour Java 22.8 Notes de mise à jour](/words/java/aspose-words-for-java-22-8-release-notes/).

{{% /alert %}}

## Aspose.Words pour Java 22.1, 22.2, 22.3, 22.4

Aspose.Words 22.1 améliore les options de rendu, ainsi que le chargement et l'enregistrement des documents.

Aspose.Words 22.2 introduit un nouveau format de chargement et de nouvelles options pour l'exportation des documents. Il contient également une mise à jour majeure pour les tableaux et quelques changements pour travailler avec les champs.

Aspose.Words 22.3 élargit les possibilités de travailler avec les formats PDF et TXT et améliore le travail de certains algorithmes et moteurs existants.

Aspose.Words 22.4 améliore les capacités PDF – maintenant vous pouvez enregistrer un fichier en format PDF/A-4 et obtenir un certain nombre d'autres améliorations dans la sortie PDF. En même temps, Aspose.Words 22.4 fournit des capacités supplémentaires pour travailler avec les graphiques DML, lire les métadonnées de Photoshop et importer des éléments de niveau bloc HTML.

Les API est amélioré pour un développement plus flexible et pratique.

### Formats pris en charge

Chargement d'un document au format AZW3 (KF8 est un autre nom pour le format) a été ajouté. Maintenant, vous pouvez charger un document AZW3 et le convertir à tout autre format pris en charge.

### Rendus

#### Présentation au format PDF avec la conformité PDF/UA-1

Le rendu en PDF avec la conformité PDF/UA-1 a été implémenté en ajoutant de nouvelles valeurs au [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) énumération – **PDF_UA_1**. Cette option suppose le respect des exigences particulières relatives à l'accessibilité des documents.

#### Rendu des formules MathML

Le rendu des opérateurs dans les formules MathML a été amélioré.

#### DML Améliorations du graphique

Les améliorations suivantes ont été apportées aux graphiques du DML:

- L'algorithme d'échelle de l'axe des cartes DML a été amélioré pour être le même que dans MS Word
- La possibilité de manipuler avec des entrées de légendes de diagrammes de dessinML a été fournie pour faire notre graphique API de plus en plus complète
- Oui. La possibilité de spécifier le nom d'un fichier xls/xlsx auquel le graphique DrawML est lié a été implémentée

#### Présentation au format PDF avec la conformité PDF/A-4

Le rendu en PDF avec la conformité PDF/A-4 a été ajouté en ajoutant de nouvelles valeurs à la [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) énumération – PDF_A_4. Cette option suppose des niveaux de conformité révisés: la conformité régulière PDF/A-4 est équivalente au niveau de conformité U des versions précédentes, et le niveau A est supprimé.

#### Lecture de la résolution des métadonnées de Photoshop dans JPEG

La lecture de la résolution des métadonnées de Photoshop dans les images JPEG a été implémentée pour corriger un problème intéressant avec une échelle incorrecte des images lors du rendu.

### Chargement et sauvegarde des documents

#### Contrôler le comportement de style Lors du chargement d'un document

Une nouvelle option [ForceCopyStyles](https://reference.aspose.com/words/java/com.aspose.words/importformatoptions/#getForceCopyStyles) a été introduit pour contrôler le comportement des styles contradictoires lors de l'importation de document.

#### Enregistrement des déclarations d'étape

Une possibilité d'obtenir des notifications sur la progression de l'enregistrement de documents a été ajoutée par l'intermédiaire de [ProgressCallback](https://reference.aspose.com/words/java/com.aspose.words/saveoptions/#getProgressCallback) biens visés au paragraphe 22.1.

En 22.2, l'enregistrement des notifications d'avancement a été étendu pour les formats de flux basés sur HTML et XAML: HTML, MHTML, Epub, XamlFlow et XamlFlowPack.

En 22.3, les notifications d'état d'avancement ont été étendues pour le format TXT.

#### Convertir les formes en SVG Lors de l'exportation

La possibilité de convertir des formes en images SVG lors de l'exportation vers HTML, MHTML ou EPUB a été fournie en ajoutant le [ExportShapesAsSvg](https://reference.aspose.com/words/java/com.aspose.words/htmlsaveoptions/#getExportShapesAsSvg) propriété.

#### Exportation de la numérotation de la liste au format PDF Structure logique

La numérotation des listes export vers la structure logique PDF a été mise en place.

#### Enregistrement au format PDF 2.0 et amélioration de la sortie PDF

La possibilité de sauvegarder un document en format PDF 2.0 en ajoutant une nouvelle valeur au [PdfCompliance](https://reference.aspose.com/words/java/com.aspose.words/pdfcompliance/) Le recensement ainsi que plusieurs autres améliorations demandées à la sortie PDF ont été introduits.

#### Nouveau mode d'importation HTML

Un nouveau mode d'importation pour les éléments HTML de niveau bloc a été implémenté pour mimic Microsoft Word comportement.

### Autres

* Une possibilité d'obtenir des données de champ personnalisées associées au champ a été ajoutée.
* La dernière version de Aspose.Words Le document source contenait également une mise à jour importante qui traite les tableaux avec des données de largeur de colonne incorrectes ou manquantes.
* Le tableau comparant l'algorithme basé sur une analyse approfondie de Microsoft Word Le mécanisme de comparaison a été amélioré.
* La syntaxe des commentaires dans le moteur LINQ Reporting a été fournie.

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 22.1 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-1-release-notes/).

En savoir plus sur [Aspose.Words pour Java 22.2 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-2-release-notes/).

En savoir plus sur [Aspose.Words pour Java 22.3 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-3-release-notes/).

En savoir plus sur [Aspose.Words pour Java 22.4 Notes de mise à jour](https://releases.aspose.com/words/java/release-notes/2022/aspose-words-for-java-22-4-release-notes/).

{{% /alert %}}

## Aspose.Words pour Java 21.9, 21.10, 21.11, 21.12

Aspose.Words 21.9 élargit le contrôle de formatage au niveau de la liste.

Aspose.Words 21.10 améliore les options de rendu, améliore la recherche et le remplacement des options et élargit Mail Merge et la fonctionnalité d'étiquette de document de structure.

Aspose.Words 21.11 élargit les chargements et économise les fonctionnalités, améliore l'option de recherche et de remplacement et fonctionne avec PDF.

Aspose.Words 21.12 introduit des options supplémentaires pour travailler avec le texte et les polices latines pour améliorer l'apparence et les performances, et élargit la capacité de travailler avec le contrôle de contenu et les notes de bas de page

Les API est amélioré pour un développement plus flexible et pratique.

### Amélioration des performances

Chargement d'un cache de recherche de police précédemment enregistré pour accélérer le processus d'initialisation du cache de police lors du rendu a été implémenté. Maintenant, vos solutions fonctionneront encore plus vite.

### Rendus

#### Travail avec remplissages de gradient et arrêts de gradient

De nouvelles méthodes et propriétés publiques pour travailler avec les remplissages de gradient et les arrêts de gradient ont été ajoutées pour satisfaire les idées les plus brillantes lors du développement de vos documents.

#### Pièce jointe dans les documents PDF de sortie

Une nouvelle option [UseAttachments](https://reference.aspose.com/words/java/com.aspose.words/pdfpagemode/) a été implémenté pour afficher le volet de pièce jointe dans les documents PDF de sortie.

#### Permettre au texte latin d'écrire au milieu d'un mot

Le support de la fonction "Autoriser le texte latin à envelopper au milieu d'un mot" a été mis en œuvre pour rendre notre support latin encore meilleur lors du rendu.

### Rechercher et comparer

* Une nouvelle option [IgnoreFootnotes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFootnotes) pour ignorer les notes de bas de page pendant l'opération de recherche et de remplacement a été ajouté.

* Une nouvelle option [IgnoreFieldCodes](https://reference.aspose.com/words/java/com.aspose.words/findreplaceoptions/#getIgnoreFieldCodes) pour ignorer les codes de champ pendant l'opération de recherche et de remplacement a été ajouté.

### Conversion

Un moyen simple d'enregistrer des images sous la chaîne Base64 dans Markdown le format a été fourni par l'intermédiaire [ExportImagesAsBase64](https://reference.aspose.com/words/java/com.aspose.words/markdownsaveoptions/#getExportImagesAsBase64) propriété.

### Mail Merge et rapports

La capacité d'obtenir [ParentRegion](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/#getParentRegion) par [MailMergeRegionInfo](https://reference.aspose.com/words/java/com.aspose.words/mailmergeregioninfo/), qui a rendu notre moteur MailMerge plus compatible, a été ajouté.

### Autres

- Oui. Une capacité à obtenir [CustomNumberStyleFormat](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getCustomNumberStyleFormat) propriété des [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) objet a été ajouté.
- Une possibilité d'obtenir la représentation de la chaîne de [ListLevel](https://reference.aspose.com/words/java/com.aspose.words/listlevel/) objet pour un indice spécifié en utilisant [GetEffectiveValue](https://reference.aspose.com/words/java/com.aspose.words/listlevel/#getEffectiveValue-int-int-java.lang.String) la méthode a été ajoutée.
- Oui. Une capacité intuitive de modifier l'apparence des balises de documents structurés, qui permettent en fait d'intégrer la sémantique définie par le client ainsi que son comportement dans un document, a été introduite.
- Une nouvelle classe [ChmLoadOptions](https://reference.aspose.com/words/java/com.aspose.words/chmloadoptions/) a été ajouté pour obtenir plus de contrôle sur le chargement du CHM.
- Oui. La possibilité d'obtenir OOXML d'un contrôle de contenu et de l'enregistrer à la chaîne a été introduite. Pour ce faire, **WordOpenXML** propriété a été ajouté au [StructuredDocumentTag](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttag/) et [StructuredDocumentTagRangeStart](https://reference.aspose.com/words/java/com.aspose.words/structureddocumenttagrangestart/) les cours.
- La reconnaissance des notes de bas de page non standard dans les documents PDF à l'importation a été ajoutée.

{{% alert color="primary" %}}

En savoir plus sur [Aspose.Words pour Java 21.9 Notes de mise à jour](/words/java/aspose-words-for-java-21-9-release-notes/).

En savoir plus sur [Aspose.Words pour Java 21.10 Notes de mise à jour](/words/java/aspose-words-for-java-21-10-release-notes/).

En savoir plus sur [Aspose.Words pour Java 21.11 Notes de mise à jour](/words/java/aspose-words-for-java-21-11-release-notes/).

En savoir plus sur [Aspose.Words pour Java 21.12 Notes de mise à jour](/words/java/aspose-words-for-java-21-12-release-notes/).

{{% /alert %}}

## Voir aussi

{{% alert color="primary" %}}

Cette page contient les dernières nouvelles des deux dernières années. Pour plus de détails sur les versions antérieures, voir [Notes de sortie](/words/java/release-notes/) pages dans les sections pertinentes.

{{% /alert %}}
