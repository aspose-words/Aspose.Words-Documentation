---
title: Traitement Windows Les métadonnées Java
second_title: Aspose.Words pour Java
articleTitle: Traitement Windows Métafiles
linktitle: Traitement Windows Métafiles
description: "Aspose.Words pour Java met en œuvre ses propres Windows Lecteur de métafile pour jouer au format de métafile sur toutes les plateformes et prend en charge la gestion des fonctionnalités de base du métafile et peut effectuer un retour à un autre type de lecteur de métafile."
type: docs
weight: 30
url: /fr/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows Metafile format est un format de fichier image qui peut contenir à la fois des graphiques vectoriels et raster. Ce format est utilisé pour stocker des données graphiques dans des fichiers mémoire ou sur disque. Un métafile stocke une liste d'appels de fonction dans le Windows Interface de périphérique graphique (GDI) qui doit être exécutée pour afficher l'image à l'écran. Le système interprète et exécute ces commandes dans le contexte de l'affichage.

Auparavant, Windows Metafile était le seul format d'image vectoriel supporté par Microsoft Word. Microsoft Word maintenant prend également en charge le format SVG, mais le format métafile est encore couramment utilisé dans les documents Word. En outre, Metafile pourrait être un format d'échange pour d'autres applications, comme Microsoft Visio. Essentiellement, le but principal de Metafile est d'assurer l'échange d'informations graphiques entre Windows les demandes.

Il y a 3 versions de Windows Métafile & #160;:

- WMF – les magasins appellent à 16 bits GDI.
- EMF – Les magasins appellent Win32/GDI.
- Les magasins EMF+ Metafile appellent GDI+. EMF+ Metafile peut également être double, décrivant les mêmes graphiques avec les parties EMF et EMF+.

Le problème actuel avec Windows Metafile est qu'il n'est pas pris en charge par la plupart des formats non Word, dans lesquels les documents sont généralement enregistrés. Par conséquent, il est nécessaire de convertir le format Metafile en d'autres formats raster ou vectoriel. Il est facile à convertir Windows Métafile vers une image raster sur .NET en le passant simplement à GDI+, mais il n'est pas possible sur d'autres plateformes puisque même GDI+ ne fournit pas la fonctionnalité pour extraire les graphiques vectoriels de Metafile. Pour résoudre ces problèmes, Aspose.Words met en œuvre ses propres Windows Lecteur de métafile, qui est capable de jouer au format de métafile à la fois vectoriel et graphique raster sur toutes les plateformes.

## Contrôle Aspose.Words Lecteur de métadonnées

Les [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) classe vous permet de contrôler le lecteur de métafile. Par exemple, vous pouvez déterminer comment les images de métafichier doivent être rendues en utilisant le [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/) propriété, qui a une signification particulière lors de la conversion en bitmaps (voir aussi [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions) la propriété).

## Appui aux opérations de restauration

Les opérations Raster sont une fonction complexe de métafile, qui a actuellement un support limité. Les opérations Raster sont disponibles en formats WMF et EMF. Le format de métafichier EMF+ n'utilise pas directement les opérations de raster mais peut contenir des pièces EMF, des métafichiers WMF ou EMF intégrés.

Il y a des opérations de raster binaires et ternaires:

- Les opérations de raster binaires sont appliquées aux commandes de dessin des stylos, comme les lignes de dessin et les courbes. Lors du dessin d'une ligne, la couleur du stylo est combinée avec la couleur bitmap de destination (la couleur du pixel correspondant sur la surface de l'appareil) en utilisant des opérations logiques bitwise spécifiées avec des valeurs de couleur hexagonale. L'exemple d'image ci-dessous illustre l'effet des 16 opérations de raster binaire appliquées à 20 barres de couleurs différentes. Les barres de couleurs verticales sont tirées en premier, les barres horizontales sont tirées après chaque opération de raster binaire est appliquée. Pour les cas simples, R2_BLACK dessine noir, R2_NON inverse la couleur, R2_NOP ne change pas le contexte, et R2_WHITE dessine blanc.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Les opérations de raster terne sont appliquées lors du dessin des images bitmap. Ils combinent les couleurs des pixels d'image bitmap correspondants, le pinceau, et la destination bitmap en utilisant des opérations logiques bitwise avec des valeurs de couleur hexagonale spécifiées. L'un des buts les plus courants de l'utilisation des opérations ternaires est l'émulation de la transparence. L'image fournie dans l'exemple ci-dessous montre comment la transparence des icônes peut être émulée. Il existe deux types de bitmaps: le bitmap b/w masque et le bitmap couleur. Tout d'abord, le bitmap du masque est dessiné avec l'opération Scrand raster. Il change la région de l'icône opaque en noir et blanc, laissant la région transparente inchangée. Puis la deuxième bitmap est dessinée avec l'opération Scrinvert raster. Il affiche les pixels de couleur sur la région noire, laissant la région transparente inchangée.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Les opérations Raster ne peuvent pas être converties directement en graphiques vectoriels. Aspose.Words émule les opérations de raster en raster partiellement la surface du dispositif affectée par les opérations de raster. À cette fin, [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) la propriété est utilisée.

{{% alert color="primary" %}}

Bien que les opérations de raster binaire ne soient pas actuellement supportées et que le nombre limité d'opérations de raster ternaire soit supporté par Aspose.Words, il peut gérer les cas de base de la conversion en graphiques vectoriels directement, par exemple, R2_BLACK, R2_WHITE, R2_NOP. De plus, la rastérisation de la surface de l'appareil affecte considérablement les performances, surtout lorsque le nombre important de dossiers d'exploitation de l'appareil est impliqué.

{{% /alert %}}

L'exemple ci-dessous montre comment Aspose.Words rend un métafile sur une bitmap lorsqu'il n'est pas possible de rendre correctement certains enregistrements de métafile sur des graphiques vectoriels:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
