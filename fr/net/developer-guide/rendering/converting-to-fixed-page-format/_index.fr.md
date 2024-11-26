---
title: Conversion au format de page fixe dans C#
second_title: Aspose.Words pour .NET
articleTitle: Conversion au format de page fixe
linktitle: Conversion au format de page fixe
description: "Enregistrez des documents aux formats PDF, XPS, HTML, XAML, PostScript et PCL à l'aide de C#."
type: docs
weight: 10
url: /fr/net/converting-to-fixed-page-format/
timestamp: 2024-07-10-08-10-45
---

Aspose.Words implémente son propre moteur de mise en page. Avant d’approfondir ses spécifications, il convient de discuter d’abord du document à un niveau élevé. Lorsqu'ils réfléchissent à un document, les utilisateurs imaginent généralement un certain nombre de feuilles de papier contenant des mots, des images, des tableaux et des graphiques. Les documents peuvent être de différents types, tels que du texte, des feuilles de calcul, des diapositives, des dessins CAO, des organigrammes et, par conséquent, peuvent avoir des mises en page essentiellement différentes. La plupart des applications permettent d'envoyer des documents vers une imprimante ; c'est à ce moment-là qu'un utilisateur peut réellement visualiser l'apparence finale prévue du document.

## Afficher un document dans diverses applications

Diverses applications de visualisation ou de publication de documents permettent aux utilisateurs d'ouvrir (Adobe Acrobat, XPS Viewer), et parfois d'éditer (Adobe InDesign) des documents de formats spécifiques. Ces applications produisent généralement des documents au format dit "à pages fixes". Un tel format de document décrit précisément l'endroit où le contenu d'un document est placé sur chaque page. En interne, le format PDF ou XPS contient une description de chaque page, ainsi que des instructions de dessin, précisant la disposition du contenu sur la page. Ceci est similaire aux formats d'image, décrivant où le contenu est affiché sous forme raster ou vectorielle.

En revanche, certaines applications d'édition de texte ne prennent pas en charge l'affichage des pages d'un document. Par exemple, Microsoft Notepad prend en charge très peu de fonctions autres que le simple affichage, édition et impression de texte. L'observation importante ici est que de telles applications ne peuvent ni afficher les pages du document ni indiquer à l'utilisateur combien d'entre elles seront imprimées, permettant uniquement de visualiser le contenu du document. Le document peut être enregistré au format texte brut et peut être ouvert par de nombreuses autres applications. En utilisant une application qui permet de visualiser le contenu binaire d'un fichier arbitraire, on peut voir ce qui est stocké dans le fichier document – c'est juste du texte brut, il ne contient rien d'autre.

Des applications d'édition de texte légèrement plus sophistiquées, telles que Microsoft WordPad, enregistrent le document au format RTF (Rich Text Format), qui prend en charge davantage de fonctions de formatage, telles que l'insertion d'images, le formatage des caractères, les marges et l'espacement des paragraphes. Cependant, le format RTF contient également uniquement le contenu du document, sans aucune information sur les pages.

Microsoft Word est aujourd'hui l'application d'édition de texte Windows la plus avancée. Il formate les fichiers au format DOCX, qui décrit le contenu du document de manière flexible et approfondie, permettant aux utilisateurs de spécifier la taille de la page, l'orientation d'une section du document et, étant une application WYSIWYG, même d'afficher les pages du document à l'écran. Néanmoins, il n'existe toujours aucune information sur la manière dont le contenu du document est affiché sur les pages disponibles dans le fichier du document. Le fichier de document décrit uniquement le contenu lui-même et la relation entre les objets du document, ainsi que certaines contraintes géométriques. Par conséquent, avant d’afficher un document, Microsoft Word calcule lui-même ces informations. C’est là qu’intervient la mise en page.

## Qu'est-ce qu'une mise en page

Une mise en page de document est une structure de données décrivant l'emplacement d'un objet particulier sur les pages de tous les objets de document. De plus, étant donné que les objets ont des propriétés qui affectent leur apparence, telles que la taille de la police, les effets d'ombrage ou de dessin, vous devez non seulement savoir où se trouve l'objet, mais également quelle(s) zone(s) de la page il occupe et s'il sera utilisé. s'applique à plusieurs pages afin que d'autres objets ne chevauchent pas la ou les mêmes zones.

Aspose.Words implémente en interne une fonctionnalité de mise en page lui permettant de produire tous les formats de page fixes, tels que PDF, XPS et divers formats d'image. Sans mise en page, les informations stockées dans le fichier de document à page fixe ne seraient pas disponibles et tous ces formats ne seraient pas pris en charge.

La relation entre un document et une mise en page est assez simple. Alors qu'un document décrit le contenu, la mise en page correspondante décrit la géométrie de ce contenu. Notez qu'une mise en page ne peut pas exister sans document puisqu'il n'y aurait pas de contenu pour calculer la géométrie, mais un document peut exister sans mise en page. Par exemple, lorsqu'un document DOCX est converti en document RTF, il n'est généralement pas nécessaire de connaître la géométrie, puisqu'aucun des deux formats ne la stocke.

## Création d'une mise en page

Créer une mise en page peut être une procédure coûteuse, à la fois en termes de vitesse et de mémoire. Cela est dû à plusieurs raisons:

- Le document peut avoir une grande quantité de contenu, qui peut devoir être affiché sur des milliers de pages. La géométrie de chaque objet sur chaque page devrait être décrite, ce qui consommerait des ressources mémoire.
- Le document peut comporter de nombreuses règles, imposant des contraintes sur la géométrie. Un temps de calcul considérable peut être nécessaire pour garantir que chaque contrainte est satisfaite
- Certaines fonctionnalités du document, par exemple le champ `NUMPAGES`, créent des dépendances récursives pour les valeurs de propriété futures, qui ne sont pas disponibles au moment du calcul. Cela conduit à des calculs répétitifs et s’ajoute au temps de calcul.

Pour les raisons mentionnées ci-dessus, Aspose.Words créera une mise en page uniquement lorsque cela est nécessaire. Une raison typique serait une demande de rendu des pages d'un document ou d'obtention d'une valeur de champ qui dépend des informations disponibles dans la mise en page. Une raison moins évidente pourrait être l’exportation d’un document au format HTML. Même si HTML n'est pas un format de page fixe et ne décrit pas la géométrie des objets de contenu, il prend toujours en charge les images. De telles images peuvent se présenter sous la forme de formes créées en Microsoft Word avec un texte à l'intérieur. Par exemple, un graphique avec des étiquettes d'axe peut être exporté au format HTML sous forme d'image, mais avant que cela puisse être fait, Aspose.Words doit restituer cette image et doit donc savoir où afficher l'étiquette. Voir l'exemple de graphique ci-dessous:

<img src="/words/net/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="conversion en format de page fixe_1" style="width:800px"/>

### Propriétés non géométriques

En plus de gérer les informations géométriques, une mise en page est également responsable du calcul des couleurs et des styles de bordure. Dans Microsoft Word, la couleur du texte peut être spécifiée comme automatique, ce qui implique que la sélection des couleurs doit être basée sur la couleur d'ombrage de la cellule ou du paragraphe, ou sur la couleur de la page sur laquelle le texte apparaît.

La mise en page calcule où le texte apparaîtra et quel contenu sera rendu derrière, permettant ainsi le calcul des couleurs. Il existe d'autres calculs spécifiques effectués par la mise en page. Par exemple, une bordure horizontale dans un tableau dépend du fait qu'une ligne du tableau soit la dernière d'une colonne de texte et qu'elle soit répartie entre les colonnes. Si une ligne est affichée en dernier dans une colonne, la bordure inférieure est utilisée à la place de l'horizontale.

![converting-to-fixed-page-format_2](/words/net/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

Dans Aspose.Words, un utilisateur peut demander s'il souhaite créer une nouvelle mise en page ou mettre à jour une mise en page existante. Ces deux opérations peuvent être effectuées par la méthode [UpdatePageLayout](https://reference.aspose.com/words/fr/net/aspose.words/document/updatepagelayout/), fournie par la classe [Document](https://reference.aspose.com/words/fr/net/aspose.words/document/). Si une mise en page n'existe pas, mais qu'elle est nécessaire (par exemple, lorsque le document est exporté vers un format de page fixe), Aspose.Words appellera automatiquement cette méthode. Cependant, si une mise en page existe déjà, Aspose.Words utilisera celle existante, afin d'éviter de consommer les ressources nécessaires à sa mise à jour. Dans ce cas, l'utilisateur doit appeler la méthode `UpdatePageLayout`, afin de s'assurer que la mise en page est à jour avec le modèle du document.

### Structure dynamique

Le processus de création d’une mise en page comprend les étapes suivantes:

- *Conversion* – énumération du contenu du modèle de document et préparation des objets de mise en page correspondants.
- *Build* – organiser les objets de mise en page pour représenter le contenu du document sur les pages.
- *Reflow* – mise à jour de la disposition des objets pour satisfaire les contraintes géométriques.
- *Projeter les objets de mise en page dans une présentation de page fixe et finaliser les informations de couleur*.
- *Création et redistribution du contenu de la forme* – une étape requise si le document contient des formes avec un contenu de texte imbriqué.

Notez que la mise en page est une structure dynamique, qui peut être partiellement reconstruite. Ceci est particulièrement nécessaire lorsqu'il est impossible de calculer les valeurs des champs sans reconstruire la structure de mise en page du document. Le champ peut référencer l'emplacement d'un objet sur une page, et en même temps la valeur du champ elle-même est également rendue sur la page, affectant l'emplacement de l'objet référencé. Une mise en page ne peut pas être construite en une seule fois, car les valeurs des champs peuvent ne pas être encore disponibles au moment du positionnement sur une page.

Considérez le scénario typique où le champ `NUMPAGES` apparaît dans le pied de page de la première page du document. La valeur de ce champ est le nombre total de pages. Afin de positionner le champ sur une page, sa valeur doit être connue. Si seule la première page est en cours de création, le nombre total de pages n'est pas encore connu. Dans ce cas, la mise en page doit utiliser la valeur par défaut, puis revenir à ce champ et modifier sa valeur en fonction des calculs réels. Cependant, la modification de la valeur du champ peut affecter le contenu d'un autre document sur une page et finalement entraîner l'ajout d'une nouvelle page ou la suppression d'une page existante, rendant ainsi la valeur calculée obsolète. Ce problème peut être résolu en permettant de mettre à jour la mise en page existante.

Lors de la création d'une mise en page, il est également possible de configurer des propriétés [LayoutOptions](https://reference.aspose.com/words/fr/net/aspose.words.layout/layoutoptions/) qui affectent la sortie du document sur les pages.

## Enregistrement au format de page fixe

Une fois la mise en page créée et la géométrie des objets et leur position sur la page calculées, le document peut être enregistré dans un format de page fixe pris en charge par Aspose.Words. Lors de l'enregistrement de documents dans des formats de page fixe, les options de rendu communes à tous ces formats peuvent être utilisées. Ils permettent de contrôler:

- Le nombre et l'étendue des pages contenues dans le document de sortie ([PageCount](https://reference.aspose.com/words/fr/net/aspose.words/document/pagecount/)).
- Progression de la sauvegarde du document page par page ([PageSavingCallback](https://reference.aspose.com/words/fr/net/aspose.words.saving/fixedpagesaveoptions/pagesavingcallback/)).
- Un ensemble de caractères utilisés pour le rendu des nombres ([NumeralFormat](https://reference.aspose.com/words/fr/net/aspose.words.saving/fixedpagesaveoptions/numeralformat/)).
- Un lecteur de métafichiers ([MetafileRenderingOptions](https://reference.aspose.com/words/fr/net/aspose.words.saving/fixedpagesaveoptions/metafilerenderingoptions/)). Pour plus de détails, consultez l'article [Gestion des métafichiers Windows](/words/fr/net/handling-windows-metafiles/).
- Un taux de qualité de recompression des images JPEG dont la valeur peut légèrement différer selon le format de sauvegarde choisi ([JpegQuality](https://reference.aspose.com/words/fr/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/)).
- Optimisation des graphiques vectoriels en sortie Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/fr/net/aspose.words.saving/fixedpagesaveoptions/optimizeoutput/)).
- Options graphiques lors de l'enregistrement aux formats Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/fr/net/aspose.words.saving/saveoptions/useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/fr/net/aspose.words.saving/saveoptions/usehighqualityrendering/)).
- Sauvegarde du document en niveaux de gris ([ColorMode](https://reference.aspose.com/words/fr/net/aspose.words.saving/fixedpagesaveoptions/colormode/)).
- Basculer entre le rendu des formes DrawingML et les formes de secours ([DmlRenderingMode](https://reference.aspose.com/words/fr/net/aspose.words.saving/saveoptions/dmlrenderingmode/)).
- Basculement entre les modes de rendu des effets DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/fr/net/aspose.words.saving/saveoptions/dmleffectsrenderingmode/)).

L'exemple ci-dessous montre comment enregistrer un document au format JPEG à l'aide de la méthode `Save` et des options de rendu:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cs" >}}
