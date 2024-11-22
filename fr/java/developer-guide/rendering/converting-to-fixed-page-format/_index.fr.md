---
title: Conversion en format de page fixe dans Java
second_title: Aspose.Words pour Java
articleTitle: Conversion en format de page fixe
linktitle: Conversion en format de page fixe
description: "Aspose.Words pour Java implémente son propre moteur de mise en page lui permettant de produire tous les formats de page fixes, tels que PDF, XPS, et différents formats d'image."
type: docs
weight: 10
url: /fr/java/converting-to-fixed-page-format/
timestamp: 2024-01-31-14-23-37
---

Aspose.Words implémente son propre moteur de mise en page. Avant d'entrer dans ses spécifications, il est intéressant de discuter d'abord du document à un niveau élevé. Lorsqu'on pense à un document, les utilisateurs imaginent généralement un certain nombre de feuilles de papier contenant des mots, des images, des tableaux et des graphiques. Les documents peuvent être de différents types, comme le texte, les feuilles de calcul, les diapositives, les dessins CAO, les diagrammes de flux et, par conséquent, peuvent avoir des mises en page essentiellement différentes. La plupart des applications permettent d'envoyer des documents à une imprimante ; c'est alors qu'un utilisateur peut réellement voir l'apparence finale prévue du document.

## Affichage d'un document dans diverses applications

Diverses applications de visualisation ou de publication de documents permettent aux utilisateurs d'ouvrir (Adobe Acrobat, XPS Viewer), et parfois éditer (Adobe InDesign) des documents de formats spécifiques. Ces applications produisent généralement des documents de format dits "pages fixes". Un tel format de document décrit précisément où un contenu de document est placé sur chaque page. En interne, le PDF ou XPS format contient une description de chaque page, ainsi que des instructions de dessin, précisant la mise en page du contenu sur la page. Ceci est similaire aux formats d'images, décrivant où le contenu est montré soit sous forme de raster ou de vecteur.

En revanche, certaines applications d'édition de texte ne supportent pas l'affichage des pages d'un document. Par exemple, Microsoft Notepad prend en charge très peu de fonctions autres que simplement afficher, éditer et imprimer du texte. L'observation importante ici est que de telles applications ne peuvent pas afficher les pages du document ni indiquer à un utilisateur combien d'entre elles seraient imprimées, ne permettant que de voir le contenu du document. Le document peut être enregistré en format texte simple et peut être ouvert par de nombreuses autres applications. En utilisant une application qui permet de visualiser le contenu binaire d'un fichier arbitraire, on peut voir ce qui est stocké dans le fichier de document – c'est juste du texte simple, il n'y a rien d'autre.

Des applications d'édition de texte légèrement plus sophistiquées, comme Microsoft WordPad, enregistrez le document en format texte Rich (RTF), qui prend en charge plus de fonctions de formatage, comme l'insertion d'images, le formatage de caractères, les marges de paragraphes et l'espacement. Cependant, le format RTF ne contient que le contenu du document, sans information sur les pages.

Microsoft Word est l'application de rédaction de texte la plus avancée dans Windows Aujourd'hui. Il formate les fichiers au format DOCX, qui décrit le contenu du document de manière flexible et exhaustive, permettant aux utilisateurs de spécifier la taille de la page, l'orientation pour une section de document, et, étant une application WYSIWYG même afficher des pages de document à l'écran. Néanmoins, il n'y a toujours aucune information sur la façon dont le contenu du document est affiché sur les pages disponibles dans le fichier du document. Le fichier document ne décrit que le contenu lui-même, la relation entre les objets du document et certaines contraintes géométriques. Par conséquent, avant d'afficher un document, Microsoft Word calcule cette information elle-même. C'est là qu'une mise en page entre en jeu.

## Qu'est-ce qu'une mise en page

La mise en page d'un document est une structure de données décrivant l'emplacement d'un objet particulier sur les pages pour tous les objets du document. De plus, puisque les objets ont des propriétés qui affectent leurs apparences, telles que la taille de police, l'ombrage ou les effets de dessin, vous devez non seulement savoir où se trouve l'objet, mais aussi quelle (s) zone (s) de la page qu'il occupe, et si elle s'appliquera à plusieurs pages afin que d'autres objets ne chevauchent pas la (s) même (s).

Aspose.Words implémente la fonctionnalité de mise en page en interne lui permettant de produire tous les formats de page fixes, tels que PDF, XPS, et différents formats d'image. Sans mise en page, les informations stockées dans le fichier de document de page fixe ne seraient pas disponibles et tous ces formats ne seraient pas pris en charge.

La relation entre un document et une mise en page est assez simple. Alors qu'un document décrit le contenu, la mise en page correspondante décrit la géométrie de ce contenu. Notez qu'une mise en page ne peut exister sans un document car il n'y aurait pas de contenu pour calculer la géométrie, mais un document peut exister sans une mise en page. Par exemple, lorsqu'un document DOCX est converti en document RTF, il est généralement inutile de connaître la géométrie, car aucun format ne le stocke.

## Création d'une mise en page

Créer une mise en page peut être une procédure coûteuse, à la fois en termes de vitesse et de mémoire. Cela est dû à plusieurs raisons:

- Oui. Le document peut avoir une grande quantité de contenu, qui peut devoir être affiché sur des milliers de pages. La géométrie de chaque objet sur chaque page devrait être décrite, consommant des ressources de mémoire.
- Oui. Le document peut avoir de nombreuses règles, plaçant des contraintes sur la géométrie. On peut consacrer beaucoup de temps au calcul, en veillant à ce que toutes les contraintes soient satisfaites
- Certaines caractéristiques du document, par exemple `NUMPAGES` champ, créer des dépendances récursives pour les valeurs de propriété futures, qui ne sont pas disponibles au moment du calcul. Cela conduit à des calculs répétitifs et s'additionne dans le temps de calcul.

Pour les raisons susmentionnées, Aspose.Words créera une mise en page seulement quand cela est nécessaire. Une raison typique à cela serait une demande de rendre des pages de documents ou d'obtenir une valeur de champ qui dépend de l'information disponible en mise en page. Une raison moins évidente pourrait être l'exportation d'un document vers HTML. Même si HTML n'est pas un format de page fixe et qu'il ne décrit pas la géométrie des objets de contenu, il supporte toujours les images. Ces images peuvent prendre la forme de formes créées dans Microsoft Word avec un texte en eux. Par exemple, un graphique avec des étiquettes d'axe peut être exporté en HTML comme image, mais avant cela peut être fait Aspose.Words doit rendre cette image, et donc doit savoir où afficher l'étiquette. Voir l'exemple ci-dessous:

<img src="/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-1.png" alt="converting-to-fixed-page-format-aspose-words-" style="width:800px"/>

### Non géométrique Propriétés

En plus de gérer l'information géométrique, une mise en page est également responsable du calcul des couleurs et des styles de bordure. En Microsoft Word, La couleur du texte peut être spécifiée comme automatique, ce qui implique que la sélection de la couleur doit être basée sur la couleur d'ombrage de la cellule ou du paragraphe, ou sur la couleur de la page, où le texte apparaît.

La mise en page calcule où le texte apparaîtra et quel contenu sera rendu derrière, permettant le calcul de la couleur. Il y a d'autres calculs spécifiques effectués par la mise en page. Par exemple, une bordure horizontale dans une table dépend du fait qu'une ligne de table est la dernière dans une colonne de texte, et si elle est brisée entre les colonnes. Si une ligne est rendue la dernière dans une colonne, la bordure inférieure est utilisée au lieu d'horizontale.

![non_geometric_properties_aspose-words-java](/words/java/converting-to-fixed-page-format/converting-to-fixed-page-format-2.png)

En Aspose.Words"> un utilisateur peut demander si construire une nouvelle mise en page, ou mettre à jour une page existante. Tous les deux peuvent être exécutés par la [UpdatePageLayout](https://reference.aspose.com/words/java/com.aspose.words/document/#updatePageLayout\(\)) méthode fournie par [Document](https://reference.aspose.com/words/java/com.aspose.words/document/) En cours. Si une mise en page n'existe pas, mais qu'elle est nécessaire (par exemple, lorsque le document est exporté vers un format de page fixe), Aspose.Words appellera automatiquement cette méthode. Cependant, si une mise en page existe déjà, Aspose.Words utilisera celui existant, afin d'éviter de consommer les ressources nécessaires à sa mise à jour. Dans ce cas, l'utilisateur doit appeler le `UpdatePageLayout` méthode, afin de s'assurer que la mise en page est à jour avec le modèle de document.

### Structure dynamique

Le processus de création de la mise en page comprend les étapes suivantes:

- Oui. *Conversion* – énumérer le contenu du modèle de document et préparer les objets de mise en page correspondants.
- Oui. *Build* – organiser des objets de mise en page pour représenter le contenu du document sur les pages.
- Oui. *Reflow* – mettre à jour la disposition des objets pour satisfaire les contraintes géométriques.
- *Projecter des objets de mise en page dans une présentation de page fixe et finaliser les informations de couleur*.
- *Construction et rediffusion du contenu en forme* – étape requise si le document contient des formes avec du contenu en texte imbriqué.

Notez que la mise en page est une structure dynamique, qui peut être partiellement reconstruite. Cela est particulièrement nécessaire lorsqu'il est impossible de calculer des valeurs de champ sans reconstruire la structure de mise en page du document. Le champ peut faire référence à l'emplacement d'un objet sur une page, et en même temps la valeur du champ lui-même est également rendue sur la page, ce qui affecte l'emplacement de l'objet référencé. Une mise en page ne peut pas être construite en une seule fois, car les valeurs de champ peuvent ne pas être encore disponibles au moment du positionnement sur une page.

Considérez le scénario typique lorsque le `NUMPAGES` champ apparaît au pied de la première page du document. La valeur de ce champ est le nombre total de pages. Pour positionner le champ sur une page, sa valeur doit être connue. Si seulement la première page est en cours de construction, alors le nombre total de pages n'est pas encore connu. Dans ce cas, la mise en page doit utiliser la valeur par défaut et revenir plus tard à ce champ et modifier sa valeur en fonction des calculs réels. Toutefois, modifier la valeur du champ peut affecter d'autres contenus de document sur une page et finalement faire annexer une nouvelle page ou supprimer une page existante, rendant ainsi la valeur calculée obsolète. Ce problème peut être résolu en permettant de mettre à jour la mise en page existante.

Lors de la création d'une mise en page, il est également possible de configurer [LayoutOptions](https://reference.aspose.com/words/java/com.aspose.words/layoutoptions/) propriétés qui affectent la sortie du document sur les pages.

## Enregistrement au format de page fixe

Une fois la mise en page construite et la géométrie des objets et leur position sur la page sont calculées, le document peut être enregistré dans un format de page fixe supporté par Aspose.Words. Lors de l'enregistrement de documents dans des formats de page fixe, les options de rendu communes à tous ces formats peuvent être utilisées. Ils permettent de contrôler:

- Oui. Nombre et gamme de pages contenues dans le document de sortie ([PageIndex](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/), [PageCount](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Progrès de l'enregistrement page par page du document ([PageSavingCallback](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un ensemble de caractères utilisés pour le rendu des nombres ([NumeralFormat](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Un lecteur de métafile ([MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/). Pour plus de détails, voir [Traitement Windows Métafiles](/words/fr/java/handling-windows-metafiles/) article.
- Un taux de qualité pour la recompression des images JPEG, dont la valeur peut différer légèrement, selon le format de sauvegarde sélectionné ([JpegQuality](https://reference.aspose.com/words/net/aspose.words.saving/fixedpagesaveoptions/jpegquality/).
- Optimisation des graphiques vectoriaux Aspose.Words sortie ([OptimizeOutput](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Options graphiques lors de l'enregistrement sur les formats Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/#getUseAntiAliasing), [UseHighQualityRendering](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Sauver le document à l'échelle grise ([ColorMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Changement entre le rendu des formes DrawingML et les formes de recul ([DmlRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).
- Changement entre les modes de rendu des effets DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/java/com.aspose.words/fixedpagesaveoptions/).

L'exemple ci-dessous montre comment enregistrer un document au format JPEG en utilisant le `Save` méthodes et options de rendu:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-SaveDocumentToJPEG-SaveDocumentToJPEG.java" >}}
