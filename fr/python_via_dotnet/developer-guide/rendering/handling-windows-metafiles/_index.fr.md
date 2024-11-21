---
title: Gestion des métafichiers Windows
second_title: Aspose.Words pour Python via .NET
articleTitle: Gestion des métafichiers Windows
linktitle: Gestion des métafichiers Windows
description: "Aspose.Words pour Python via .NET implémente son propre lecteur de métafichier Windows pour lire le format de métafichier sur toutes les plates-formes, prend en charge la gestion des fonctionnalités de base des métafichiers et peut effectuer un repli vers un autre type de lecteur de métafichier."
type: docs
weight: 30
url: /fr/python-net/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Le format Windows Metafile est un format de fichier image qui peut contenir à la fois des graphiques vectoriels et raster. Ce format est utilisé pour stocker des données graphiques en mémoire ou dans des fichiers sur disque. Un métafichier stocke une liste d'appels de fonction dans l'interface de périphérique graphique (GDI) Windows qui doivent être exécutés pour afficher l'image à l'écran. Le système interprète et exécute ces commandes dans le contexte d'affichage.

Auparavant, Windows Metafile était le seul format d'image vectorielle pris en charge par Microsoft Word. Microsoft Word prend désormais également en charge le format SVG, mais le format métafichier est encore couramment utilisé dans les documents Word. En outre, Metafile pourrait être un format d'échange pour certaines autres applications, telles que Microsoft Visio. Essentiellement, l'objectif principal de Metafile est d'assurer l'échange d'informations graphiques entre les applications Windows.

Il existe 3 versions du métafichier Windows:

- WMF – stocke l'appel vers GDI 16 bits.
- EMF – stocke l'appel vers Win32/GDI.
- EMF+ Metafile stocke l'appel à GDI+. Le métafichier EMF+ peut également être double, décrivant les mêmes graphiques avec les parties EMF et EMF+.

Le problème existant avec le métafichier Windows est qu'il n'est pas pris en charge par la plupart des formats non Word, dans lesquels les documents sont généralement enregistrés. Par conséquent, il est nécessaire de convertir le format Metafile vers d’autres formats raster ou vectoriels. Il est facile de convertir un métafichier Windows en image raster sur .NET en le transmettant simplement à GDI+, mais ce n'est pas possible sur d'autres plates-formes puisque même GDI+ ne fournit pas la fonctionnalité permettant d'extraire les graphiques vectoriels du métafichier. Pour résoudre ces problèmes, Aspose.Words implémente son propre lecteur de métafichier Windows, capable de lire des graphiques vectoriels et raster au format métafichier sur toutes les plates-formes.

## Contrôler le lecteur de métafichiers Aspose.Words

La classe [MetafileRenderingOptions](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/) vous permet de contrôler le lecteur de métafichiers. Par exemple, vous pouvez déterminer comment les images de métafichiers doivent être restituées à l'aide de la propriété [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/), qui a une signification particulière lors de la conversion en bitmaps (voir également la propriété [ImageSaveOptions.metafile_rendering_options](https://reference.aspose.com/words/python-net/aspose.words.saving/imagesaveoptions/metafile_rendering_options/)).

L'enregistrement au format bitmap fonctionne différemment sur les plates-formes autres que .NET. Bien que le rendu .NET GDI+ soit une référence qui fonctionne presque parfaitement même pour les formats de métafichiers les plus complexes, sur d'autres plates-formes, il peut poser des problèmes ou ne pas être pris en charge du tout.

## Prise en charge des opérations raster

Les opérations raster sont une fonctionnalité de métafichier complexe, dont la prise en charge est actuellement limitée. Les opérations raster sont disponibles aux formats de métafichier WMF et EMF. Le format de métafichier EMF+ n'utilise pas directement les opérations raster mais peut contenir des parties EMF, des métafichiers WMF ou EMF intégrés.

Il existe des opérations raster binaires et ternaires:

- Les opérations raster binaires sont appliquées aux commandes de dessin au stylet, telles que le dessin de lignes et de courbes. Lors du dessin d'une ligne, la couleur du stylo est combinée avec la couleur bitmap de destination (la couleur du pixel correspondant sur la surface du périphérique) en utilisant des opérations logiques au niveau du bit spécifiées avec des valeurs de couleur hexadécimale. L'exemple d'image ci-dessous illustre l'effet des 16 opérations raster binaires appliquées à 20 barres de couleurs différentes. Les barres de couleur verticales sont dessinées en premier, les barres horizontales sont dessinées après l'application de chaque opération raster binaire. Pour les cas simples, R2_BLACK dessine du noir, R2_NOT inverse la couleur, R2_NOP ne change pas le fond et R2_WHITE dessine du blanc.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="gestion-windows-métafichiers-aspose-words-net-1" style="width:650px"/>

- Les opérations raster ternaires sont appliquées lors du dessin d'images bitmap. Ils combinent les couleurs des pixels de l'image bitmap correspondants, du pinceau et du bitmap de destination en utilisant des opérations logiques au niveau du bit avec des valeurs de couleur hexadécimale spécifiées. L’un des objectifs les plus courants de l’utilisation d’opérations raster ternaires est l’émulation de la transparence. L'image fournie dans l'exemple ci-dessous montre comment la transparence des icônes peut être émulée. Il existe deux types de bitmaps: le bitmap de masque n/b et le bitmap de couleur. Tout d’abord, le bitmap du masque est dessiné avec l’opération raster SRCAND. Cela change la région opaque de l’icône en noir et blanc, laissant la région transparente inchangée. Ensuite, le deuxième bitmap est dessiné avec l'opération raster SRCINVERT. Il affiche les pixels de couleur sur la région noire, laissant la région transparente inchangée.

<img src="/words/python-net/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="gestion-windows-métafichiers-aspose-words-net-2" style="width:650px"/>

Les opérations raster ne peuvent pas être converties directement en graphiques vectoriels. Aspose.Words émule les opérations raster en rastérisant partiellement la surface du périphérique affectée par les opérations raster. A cet effet, la propriété [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) est utilisée.

{{% alert color="primary" %}}

Bien que les opérations raster binaires ne soient pas actuellement prises en charge et que le nombre limité d'opérations raster ternaires soient prises en charge par Aspose.Words, il peut gérer directement les cas de base de conversion en graphiques vectoriels, par exemple R2_BLACK, R2_WHITE, R2_NOP. En outre, la rastérisation de la surface du périphérique affecte considérablement les performances, en particulier lorsqu'un nombre important d'enregistrements d'opérations raster sont impliqués.

{{% /alert %}}

L'exemple ci-dessous montre comment Aspose.Words restitue un métafichier en bitmap lorsqu'il n'est pas possible de restituer correctement certains enregistrements de métafichier en graphiques vectoriels:

{{< highlight python >}}
# Load the document from disk.
doc = aw.Document(docs_base.my_dir +  "Rendering.docx")

metafileRenderingOptions = aw.saving.MetafileRenderingOptions()
metafileRenderingOptions.emulate_raster_operations = False
metafileRenderingOptions.rendering_mode = aw.saving.MetafileRenderingMode.VECTOR_WITH_FALLBACK

saveOptions = aw.saving.PdfSaveOptions()
saveOptions.metafile_rendering_options = metafileRenderingOptions

doc.save(docs_base.artifacts_dir +"PdfSaveOptions.HandleRasterWarnings.pdf", saveOptions)
{{< /highlight >}}

## Paramètres de secours des métafichiers

Aspose.Words ne prend pas en charge un certain nombre de fonctionnalités de métafichiers les plus complexes ou les plus rares. Dans ce cas, Aspose.Words peut effectuer un repli vers un autre type de lecteur de métafichiers

Premièrement, Aspose.Words effectue un repli du lecteur de métafichiers vectoriels vers le raster, qui est contrôlé par la propriété [rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/rendering_mode/). Si la fonctionnalité de secours est désactivée, Aspose.Words tente d'afficher des graphiques de substitution à la place des fonctionnalités qui ne sont pas prises en charge.

Aspose.Words lit avec succès le métafichier sur le raster en utilisant GDI+ sur .NET, ce qui sécurise cette option de rappel.

Deuxièmement, il existe une option permettant au métafichier EMF+ Dual de passer de la partie EMF+ à la partie EMF. Il est contrôlé par [emf_plus_dual_rendering_mode](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emf_plus_dual_rendering_mode/). Si des problèmes surviennent lors de la lecture de la partie EMF, le retour au raster peut également être effectué.

Comme pour les opérations raster, si le [emulate_raster_operations](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingoptions/emulate_raster_operations/) est désactivé, alors les opérations raster sont considérées comme non prises en charge, ce qui déclenche le recours au lecteur de métafichiers bitmap s'il est activé. Par conséquent, si vous disposez d'un métafichier avec des opérations raster, mais que vous ne souhaitez pas utiliser l'émulation d'opérations raster et que vous souhaitez néanmoins obtenir la sortie vectorielle avec des graphiques de substitution, sélectionnez le [MetafileRenderingMode.VECTOR](https://reference.aspose.com/words/python-net/aspose.words.saving/metafilerenderingmode/#vector).
