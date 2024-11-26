---
title: Conversion au format de page fixe dans Java
second_title: Aspose.Words pour Java
articleTitle: Conversion au format de page fixe
linktitle: Conversion au format de page fixe
description: "Aspose.Words pour Java implémente son propre moteur de mise en page lui permettant de produire tous les formats de page fixes, tels que PDF, XPS et divers formats d'image."
type: docs
weight: 10
url: /fr/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implémente son propre moteur de mise en page. Avant de se plonger dans ses spécifications, il vaut la peine de discuter d'abord du document à un niveau élevé. Lorsqu'ils pensent à un document, les utilisateurs imaginent généralement un certain nombre de feuilles de papier contenant des mots, des images, des tableaux et des graphiques. Les documents peuvent être de différents types, tels que du texte, des feuilles de calcul, des diapositives, des dessins CAD, des organigrammes et, par conséquent, peuvent avoir des mises en page essentiellement différentes. La plupart des applications permettent d'envoyer des documents à une imprimante; c'est à ce moment qu'un utilisateur peut réellement voir l'apparence finale prévue du document.

## Affichage d'un Document dans diverses Applications

Diverses applications de visualisation ou de publication de documents permettent aux utilisateurs d'ouvrir (Adobe Acrobat, XPS Viewer) et parfois d'éditer (Adobe InDesign) des documents de formats spécifiques. Ces applications produisent généralement des documents au format "page fixe". Un tel format de document décrit précisément où le contenu d'un document est placé sur chaque page. En interne, le format PDF ou XPS contient une description de chaque page, ainsi que des instructions de dessin, spécifiant la mise en page du contenu sur la page. Ceci est similaire aux formats d'image, décrivant où le contenu est affiché sous forme raster ou vectorielle.

En revanche, certaines applications d'édition de texte ne prennent pas en charge l'affichage des pages d'un document. Par exemple, le bloc-notes Microsoft prend en charge très peu de fonctions autres que l'affichage, l'édition et l'impression de texte. L'observation importante ici est que de telles applications ne peuvent ni afficher les pages du document ni indiquer à un utilisateur combien d'entre elles seraient imprimées, permettant uniquement de visualiser le contenu du document. Le document peut être enregistré au format texte brut et peut être ouvert par de nombreuses autres applications. En utilisant une application qui permet de visualiser le contenu binaire d'un fichier arbitraire, on peut voir ce qui est stocké dans le fichier document – ce n'est que du texte brut, il n'y a rien d'autre dedans.

Des applications d'édition de texte légèrement plus sophistiquées, telles que Microsoft Word Pad, enregistrent le document au format de texte enrichi (RTF), qui prend en charge davantage de fonctions de formatage, telles que l'insertion d'images, la mise en forme des caractères, les marges de paragraphe et l'espacement. Cependant, le format RTF ne contient également que le contenu du document, sans aucune information sur les pages.

Microsoft Word est l'application d'édition de texte la plus avancée de Windows aujourd'hui. Il formate les fichiers au format DOCX, qui décrit le contenu du document de manière flexible et détaillée, permettant aux utilisateurs de spécifier la taille de la page, l'orientation d'une section de document et, étant une application WYSIWYG, d'afficher même les pages du document à l'écran. Néanmoins, il n'y a toujours aucune information sur la façon dont le contenu du document est affiché sur les pages disponibles dans le fichier de document. Le fichier de document décrit uniquement le contenu lui-même et la relation entre les objets du document, ainsi que certaines contraintes géométriques. Par conséquent, avant d'afficher un document, Microsoft Word calcule cette information elle-même. C'est là qu'une mise en page entre en jeu.

## Qu'est-ce qu'une mise en page

Une mise en page de document est une structure de données décrivant l'emplacement d'un objet particulier sur les pages de tous les objets du document. De plus, étant donné que les objets ont des propriétés qui affectent leur apparence, telles que la taille de la police, l'ombrage ou les effets de dessin, vous devez non seulement savoir où se trouve l'objet, mais également quelle (s) zone (s) de la page il occupe et s'il s'appliquera à plusieurs pages afin que d'autres objets ne chevauchent pas la ou les mêmes zones.

Aspose.Words implémente en interne la fonctionnalité de mise en page lui permettant de produire tous les formats de page fixes, tels que PDF, XPS et divers formats d'image. Sans mise en page, les informations stockées dans le fichier de document de page fixe ne seraient pas disponibles et tous ces formats ne seraient pas pris en charge.

La relation entre un document et une mise en page est assez simple. Alors qu'un document décrit le contenu, la mise en page correspondante décrit la géométrie de ce contenu. Notez qu'une mise en page ne peut exister sans document car il n'y aurait pas de contenu pour calculer la géométrie, mais un document peut exister sans mise en page. Par exemple, lorsqu'un document DOCX est converti en document RTF, il n'est généralement pas nécessaire de connaître la géométrie, car aucun des deux formats ne la stocke.

## Création d'une mise en page

La création d'une mise en page peut être une procédure coûteuse, à la fois en termes de vitesse et de mémoire. Cela est dû à plusieurs raisons:

- Le document peut contenir une grande quantité de contenu, qui peut devoir être affiché sur des milliers de pages. La géométrie de chaque objet sur chaque page aurait besoin d'être décrite, consommant des ressources mémoire.
- Le document peut avoir de nombreuses règles, imposant des contraintes à la géométrie. Un temps de calcul considérable peut être consacré, garantissant que chaque contrainte est satisfaite.
- Certaines fonctionnalités du document, par exemple le champ `NUMPAGES`, créent des dépendances récursives pour les valeurs de propriété futures, qui ne sont pas disponibles au moment du calcul. Cela conduit à des calculs répétitifs et s'ajoute au temps de calcul.

Pour les raisons susmentionnées, Aspose.Words créera une mise en page uniquement lorsque cela est nécessaire. Une raison typique à cela serait une demande de rendu des pages de document ou d'obtention d'une valeur de champ qui dépend des informations disponibles dans la mise en page. Une raison moins évidente pourrait être l'exportation d'un document vers HTML. Même si HTML n'est pas un format de page fixe et qu'il ne décrit pas la géométrie des objets de contenu, il prend toujours en charge les images. De telles images peuvent être sous la forme de formes créées dans Microsoft Word avec un texte à l'intérieur. Par exemple, un graphique avec des étiquettes d'axe peut être exporté dans HTML en tant qu'image, mais avant que cela puisse être fait, Aspose.Words doit rendre cette image et doit donc savoir où afficher l'étiquette. Voir l'exemple de graphique ci-dessous:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Propriétés Non Géométriques

En plus de gérer les informations géométriques, une mise en page est également responsable du calcul des couleurs et des styles de bordure. Dans Microsoft Word, la couleur du texte peut être spécifiée comme automatique, ce qui implique que la sélection de couleur doit être basée sur la couleur d'ombrage de la cellule ou du paragraphe, ou sur la couleur de la page, où le texte apparaît.

La mise en page calcule où le texte apparaîtra et quel contenu sera rendu derrière, ce qui permet le calcul des couleurs. Il y a d'autres calculs spécifiques effectués par la mise en page. Par exemple, une bordure horizontale dans un tableau dépend si une ligne de tableau est la dernière dans une colonne de texte et si elle est divisée en colonnes. Si une ligne est rendue en dernier dans une colonne, la bordure inférieure est utilisée à la place de l'horizontale.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

Dans Aspose.Words, un utilisateur peut demander s'il souhaite créer une nouvelle mise en page ou mettre à jour une mise en page existante. Ces deux opérations peuvent être effectuées par la méthode [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)), fournie par la classe [Document](https://reference.aspose.com/words/java/com.aspose.words/document/). Si une mise en page n'existe pas, mais qu'elle est nécessaire (par exemple, lorsque le document est exporté vers un format de page fixe), Aspose.Words appellera automatiquement cette méthode. Cependant, si une mise en page existe déjà, Aspose.Words utilisera celle existante, afin d'éviter de consommer les ressources nécessaires à sa mise à jour. Dans ce cas, l'utilisateur doit appeler la méthode `UpdatePageLayout`, afin de s'assurer que la mise en page est à jour avec le modèle de document.

### Structure Dynamique

Le processus de création de la mise en page comprend les étapes suivantes:

- *Conversion* - énumération du contenu du modèle de document et préparation des objets de mise en page correspondants.
- *Build* – organisation des objets de mise en page pour représenter le contenu du document sur les pages.
- *Reflow* - mise à jour de la disposition des objets pour satisfaire les contraintes géométriques.
- *Projecting layout objects into fixed page presentation and finalizing color information*.
- *Building and reflowing of shape content* - une étape requise si le document contient des formes avec un contenu de texte imbriqué.

Notez que la mise en page est une structure dynamique, qui peut être partiellement reconstruite. Ceci est particulièrement nécessaire lorsqu'il est impossible de calculer les valeurs des champs sans reconstruire la structure de mise en page du document. Le champ peut référencer l'emplacement d'un objet sur une page, et en même temps la valeur du champ elle-même est également rendue sur la page, affectant l'emplacement de l'objet référencé. Une mise en page ne peut pas être créée en une seule fois, car les valeurs de champ peuvent ne pas encore être disponibles au moment du positionnement sur une page.

Considérez le scénario typique lorsque le champ `NUMPAGES` apparaît dans le pied de page de la première page du document. La valeur de ce champ est le nombre total de pages. Pour positionner le champ sur une page, sa valeur doit être connue. Si seule la première page est en cours de construction, le nombre total de pages n'est pas encore connu. Dans ce cas, la mise en page doit utiliser la valeur par défaut, puis revenir à ce champ et modifier sa valeur en fonction des calculs réels. Cependant, la modification de la valeur du champ peut affecter d'autres contenus de document sur une page et, en fin de compte, entraîner l'ajout d'une nouvelle page ou la suppression d'une page existante, rendant ainsi la valeur calculée obsolète. Ce problème peut être résolu en permettant de mettre à jour la mise en page existante.

Lors de la création d'une mise en page, il est également possible de définir des propriétés [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) qui affectent la sortie du document sur les pages.

## Enregistrement au format de page fixe

Une fois la mise en page créée et la géométrie des objets et leur position sur la page calculées, le document peut être enregistré dans un format de page fixe pris en charge par Aspose.Words. Lors de l'enregistrement de documents dans des formats de pages fixes, les options de rendu communes à tous ces formats peuvent être utilisées. Ils permettent de contrôler:

- Le nombre et la plage de pages contenues dans le document de sortie ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Progression de l'enregistrement du document page par page ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un ensemble de caractères utilisés pour le rendu des nombres ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un lecteur de métafichier ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Pour plus de détails, voir le [Gestion des métaphichiers Windows](/words/java/handling-windows-metafiles/) l'article.
- Un taux de qualité pour la recompression des images JPEG, dont la valeur peut différer légèrement, selon le format de sauvegarde sélectionné ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Optimisation des graphiques vectoriels en sortie Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Options graphiques lors de l'enregistrement aux formats Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Enregistrement du document en niveaux de gris ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Basculer entre le rendu des formes DrawingML et des formes de secours ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Commutation entre les modes de rendu des effets DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

L'exemple ci-dessous montre comment enregistrer un document au format JPEG à l'aide de la méthode `Save` et des options de rendu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
