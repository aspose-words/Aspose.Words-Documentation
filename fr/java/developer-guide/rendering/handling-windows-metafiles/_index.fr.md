---
title: Gestion des métafichiers Windows dans Java
second_title: Aspose.Words pour Java
articleTitle: Gestion des métafichiers Windows
linktitle: Gestion des métafichiers Windows
description: "Aspose.Words pour Java implémente son propre lecteur de métafichier Windows pour lire le format de métafichier sur toutes les plateformes et prend en charge la gestion des fonctionnalités de base du métafichier et peut effectuer un repli vers un autre type de lecteur de métafichier."
type: docs
weight: 30
url: /fr/java/handling-windows-metafiles/
timestamp: 2024-01-27-14-07-04
---

Windows Le format de métafichier est un format de fichier image qui peut contenir à la fois des graphiques vectoriels et raster. Ce format est utilisé pour stocker des données graphiques en mémoire ou des fichiers sur disque. Un métafichier stocke une liste d'appels de fonction dans l'interface de périphérique graphique Windows (GDI) qui doivent être exécutés pour afficher l'image à l'écran. Le système interprète et exécute ces commandes dans le contexte d'affichage.

Auparavant, le métafichier Windows était le seul format d'image vectorielle pris en charge par Microsoft Word. Microsoft Word prend désormais également en charge le format SVG, mais le format de métafichier est toujours couramment utilisé dans les documents Word. De plus, le métafichier peut être un format d'échange pour d'autres applications, telles que Microsoft Visio. Essentiellement, le but principal du métafichier est d'assurer l'échange d'informations graphiques entre Windows applications.

Il existe 3 versions du métafichier Windows:

- WMF – stocke l'appel sur 16 bits GDI.
- EMF – les magasins appellent Win32 / GDI.
- EMF+ Les magasins de métafichiers appellent GDI+. Le métafichier EMF+ peut également être double, décrivant les mêmes graphiques avec les parties EMF et EMF+.

Le problème existant avec le métafichier Windows est qu'il n'est pas pris en charge par la plupart des formats non Word, dans lesquels les documents sont généralement enregistrés. Par conséquent, il est nécessaire de convertir le format du métafichier en d'autres formats raster ou vectoriels. Il est facile de convertir le métafichier Windows en une image raster sur .NET en le passant simplement à GDI+, mais ce n'est pas possible sur d'autres plates-formes car même GDI+ ne fournit pas la fonctionnalité pour extraire les graphiques vectoriels du Métafichier. Pour résoudre ces problèmes, Aspose.Words implémente son propre lecteur de métafichier Windows, capable de lire des graphiques vectoriels et raster au format métafichier sur toutes les plateformes.

## Contrôler le lecteur de métafichier Aspose.Words

La classe [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/) vous permet de contrôler le lecteur de métafichier. Par exemple, vous pouvez déterminer comment les images de métafichier doivent être rendues à l'aide de la propriété [RenderingMode](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingmode/), qui a une signification particulière lors de la conversion en bitmaps (voir aussi la propriété [MetafileRenderingOptions](https://reference.aspose.com/words/java/com.aspose.words/imagesaveoptions/#getMetafileRenderingOptions)).

## Prise En Charge des Opérations Raster

Les opérations raster sont une fonctionnalité de métafichier complexe, qui a actuellement un support limité. Les opérations raster sont disponibles aux formats de métafichier WMF et EMF. Le format EMF+ métafichier n'utilise pas directement d'opérations raster mais peut contenir EMF parties, WMF incorporées ou EMF métafichiers.

Il existe des opérations raster binaires et ternaires:

- Les opérations de trame binaires sont appliquées aux commandes de dessin au stylet, telles que le dessin de lignes et de courbes. Lorsque vous tracez une ligne, la couleur du stylet est combinée avec la couleur de l'image bitmap de destination (la couleur du pixel correspondant sur la surface du périphérique) en utilisant des opérations logiques au niveau du bit spécifiées avec des valeurs de couleur hexadécimales. L'exemple d'image ci-dessous illustre l'effet des 16 opérations de trame binaire appliquées à 20 barres de couleurs différentes. Les barres de couleur verticales sont dessinées en premier, les barres horizontales sont dessinées après l'application de chaque opération de trame binaire. Pour les cas simples, R2_BLACK dessine du noir, R2_NOT inverse la couleur, R2_NOP ne change pas l'arrière-plan et R2_WHITE dessine du blanc.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-java-1" style="width:650px"/>

- Des opérations matricielles ternaires sont appliquées lors du dessin d'images bitmap. Ils combinent les couleurs des pixels d'image bitmap correspondants, du pinceau et de l'image bitmap de destination en utilisant des opérations logiques au niveau du bit avec des valeurs de couleur hexadécimales spécifiées. L'un des objectifs les plus courants de l'utilisation des opérations matricielles ternaires est l'émulation de la transparence. L'image fournie dans l'exemple ci-dessous montre comment la transparence des icônes peut être émulée. Il existe deux types de bitmaps: le bitmap de masque noir et blanc et le bitmap de couleur. Tout d'abord, le bitmap du masque est dessiné avec l'opération raster SRCAND. Il change la région de l'icône opaque en noir et blanc, laissant la région transparente inchangée. Ensuite, la deuxième image bitmap est dessinée avec l'opération raster SRCINVERT. Il affiche les pixels de couleur sur la région noire, laissant la région transparente inchangée.

<img src="/words/java/handling-windows-metafiles/handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-java-2" style="width:650px"/>

Les opérations raster ne peuvent pas être converties directement en graphiques vectoriels. Aspose.Words émule les opérations raster en pixellisant partiellement la surface du périphérique affectée par les opérations raster. Pour cela, la propriété [EmulateRasterOperations](https://reference.aspose.com/words/java/com.aspose.words/metafilerenderingoptions/#getEmulateRasterOperations) est utilisée.

{{% alert color="primary" %}}

Bien que les opérations raster binaires ne soient actuellement pas prises en charge et que le nombre limité d'opérations raster ternaires soit pris en charge par Aspose.Words, il peut gérer directement les cas de base de conversion en graphiques vectoriels, par exemple, R2_BLACK, R2_WHITE, R2_NOP. De plus, la pixellisation de la surface du périphérique affecte considérablement les performances, en particulier lorsque le nombre important d'enregistrements d'opérations raster est impliqué.

{{% /alert %}}

L'exemple ci-dessous montre comment Aspose.Words restitue un métafichier en bitmap lorsqu'il n'est pas possible de restituer correctement certains des enregistrements du métafichier en graphiques vectoriels:

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-HandleDocumentWarnings-HandleDocumentWarnings.java" >}}

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-rendering_printing-RenderMetafileToBitmap-RenderMetafileToBitmap.java" >}}
