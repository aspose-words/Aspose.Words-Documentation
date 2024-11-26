---
title: Gestion des métafichiers Windows en C++
second_title: Aspose.Words pour C++
articleTitle: Gestion des métafichiers Windows
linktitle: Gestion des métafichiers Windows
description: "Aspose.Words pour C++ implémente son propre lecteur de métafichier Windows pour lire le format de métafichier sur toutes les plateformes et prend en charge la gestion des fonctionnalités de base du métafichier et peut effectuer un repli vers un autre type de lecteur de métafichier."
type: docs
weight: 30
url: /fr/cpp/handling-windows-metafiles/
timestamp: 2024-01-30-16-22-34
---

Windows Le format de métafichier est un format de fichier image qui peut contenir à la fois des graphiques vectoriels et raster. Ce format est utilisé pour stocker des données graphiques en mémoire ou des fichiers sur disque. Un métafichier stocke une liste d'appels de fonction dans l'interface de périphérique graphique Windows (GDI) qui doivent être exécutés pour afficher l'image à l'écran. Le système interprète et exécute ces commandes dans le contexte d'affichage.

Auparavant, le métafichier Windows était le seul format d'image vectorielle pris en charge par Microsoft Word. Microsoft Word prend désormais également en charge le format SVG, mais le format de métafichier est toujours couramment utilisé dans les documents Word. En outre, le métafichier pourrait être un format d'échange pour certaines autres applications, telles que Microsoft Visio. Essentiellement, le but principal du métafichier est d'assurer l'échange d'informations graphiques entre Windows applications.

Il existe 3 versions de Windows Métafichier:

- Les magasins WMF appellent le GDI 16 bits.
- Les magasins EMF appellent Win32 / GDI.
- Le métafichier EMF+ stocke l'appel vers GDI+. Le métafichier EMF+ peut également être double, décrivant les mêmes graphiques avec des parties EMF et EMF+.

Le problème existant avec le métafichier Windows est qu'il n'est pas pris en charge par la plupart des formats non Word, dans lesquels les documents sont généralement enregistrés. Par conséquent, il est nécessaire de convertir le format du métafichier en d'autres formats raster ou vectoriels. Il est facile de convertir le métafichier Windows en image raster sur .NET en le passant simplement à GDI+, mais ce n'est pas possible sur d'autres plates-formes car même GDI+ ne fournit pas la fonctionnalité pour extraire les graphiques vectoriels du métafichier. Pour résoudre ces problèmes, Aspose.Words implémente son propre lecteur de métafichier Windows, capable de lire des graphiques vectoriels et raster au format métafichier sur toutes les plateformes.

## Contrôler le lecteur de métafichier Aspose.Words

La classe [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/) vous permet de contrôler le lecteur de métafichier. Par exemple, vous pouvez déterminer comment les images de métafichier doivent être rendues à l'aide de la propriété [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/), qui a une signification particulière lors de la conversion en bitmaps (voir aussi la propriété [MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/metafilerenderingoptions/)).

L'enregistrement dans un bitmap fonctionne différemment sur les plates-formes autres que .NET. Alors que le rendu .NET GDI+ est une référence qui fonctionne presque parfaitement même pour le format de métafichier le plus complexe, sur d'autres plates-formes, cela peut poser des problèmes ou ne pas être pris en charge du tout.

## Prise En Charge des Opérations Raster

Les opérations raster sont une fonctionnalité de métafichier complexe, qui a actuellement un support limité. Les opérations raster sont disponibles aux formats de métafichier WMF et EMF. Le format de métafichier EMF+ n'utilise pas directement les opérations raster mais peut contenir des parties EMF, des métafichiers WMF ou EMF intégrés.

Il existe des opérations raster binaires et ternaires:

- Les opérations de trame binaires sont appliquées aux commandes de dessin au stylet, telles que le dessin de lignes et de courbes. Lorsque vous tracez une ligne, la couleur du stylet est combinée avec la couleur de l'image bitmap de destination (la couleur du pixel correspondant sur la surface du périphérique) en utilisant des opérations logiques au niveau du bit spécifiées avec des valeurs de couleur hexadécimales. L'exemple d'image ci-dessous illustre l'effet des 16 opérations de trame binaire appliquées à 20 barres de couleurs différentes. Les barres de couleur verticales sont dessinées en premier, les barres horizontales sont dessinées après l'application de chaque opération de trame binaire. Pour les cas simples, R2_BLACK dessine du noir, R2_NOT inverse la couleur, R2_NOP ne change pas l'arrière-plan et R2_WHITE dessine du blanc.

<img src="handling-windows-metafiles-1.png" alt="handling-windows-metafiles-aspose-words-cpp-1" style="width:650px"/>

- Des opérations matricielles ternaires sont appliquées lors du dessin d'images bitmap. Ils combinent les couleurs des pixels d'image bitmap correspondants, du pinceau et de l'image bitmap de destination en utilisant des opérations logiques au niveau du bit avec des valeurs de couleur hexadécimales spécifiées. L'un des objectifs les plus courants de l'utilisation des opérations matricielles ternaires est l'émulation de la transparence. L'image fournie dans l'exemple ci-dessous montre comment la transparence des icônes peut être émulée. Il existe deux types de bitmaps: le bitmap de masque noir et blanc et le bitmap de couleur. Tout d'abord, le bitmap du masque est dessiné avec l'opération SRCAND raster. Il change la région de l'icône opaque en noir et blanc, laissant la région transparente inchangée. Ensuite, la deuxième image bitmap est dessinée avec l'opération raster SRCINVERT. Il affiche les pixels de couleur sur la région noire, laissant la région transparente inchangée.

<img src="handling-windows-metafiles-2.png" alt="handling-windows-metafiles-aspose-words-cpp-2" style="width:650px"/>

Les opérations raster ne peuvent pas être converties directement en graphiques vectoriels. Aspose.Words émule les opérations raster en pixellisant partiellement la surface du périphérique affectée par les opérations raster. Pour cela, la propriété [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) est utilisée.

{{% alert color="primary" %}}

Bien que les opérations de trame binaires ne soient actuellement pas prises en charge et que le nombre limité d'opérations de trame ternaires soit pris en charge par Aspose.Words, il peut gérer directement les cas de base de conversion en graphiques vectoriels, par exemple, R2_BLACK, R2_WHITE, R2_NOP. De plus, la pixellisation de la surface du périphérique affecte considérablement les performances, en particulier lorsque le nombre important d'enregistrements d'opérations raster est impliqué.

{{% /alert %}}

L'exemple ci-dessous montre comment Aspose.Words restitue un métafichier en bitmap lorsqu'il n'est pas possible de restituer correctement certains des enregistrements du métafichier en graphiques vectoriels:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-Doc2Pdf-RenderMetafileToBitmap.cpp" >}}

## Paramètres de secours du métafichier

Aspose.Words ne prend pas en charge un certain nombre de fonctionnalités de métafichier qui sont les plus complexes ou rares. Les utilisateurs peuvent implémenter l'interface [IWarningCallBack](https://reference.aspose.com/words/cpp/aspose.words/iwarningcallback/) et recevoir des messages d'avertissement. Si Aspose.Words rencontre des fonctionnalités non prises en charge dans un métafichier, il émet un message d'avertissement avec [WarningSource](https://reference.aspose.com/words/cpp/aspose.words/warninginfo/get_source/).**Metafile**. Dans ce cas, Aspose.Words peut effectuer un repli vers un autre type de lecteur de métafichier. Le message d'avertissement concernant le repli est également émis.

Tout d'abord, Aspose.Words effectue un repli du lecteur de métafichier vectoriel vers raster, qui est contrôlé par la propriété [RenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/). Si la fonctionnalité de secours est désactivée, Aspose.Words essaie de restituer des graphiques de substitution au lieu des fonctionnalités qui ne sont pas prises en charge.

Aspose.Words lit avec succès le métafichier en raster en utilisant GDI + sur .NET, ce qui rend cette option de rappel sûre.

Deuxièmement, il existe une option pour que le métafichier double EMF+ passe de la partie EMF + à la partie EMF. Il est contrôlé par [EmfPlusDualRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emfplusdualrenderingmode/). S'il y a des problèmes lors de la lecture de la partie EMF, un retour au raster peut également être effectué.

Comme pour les opérations raster, si [EmulateRasterOperations](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_emulaterasteroperations/) est désactivé, les opérations raster sont considérées comme non prises en charge, ce qui déclenche le retour au lecteur de métafichier bitmap s'il est activé. Par conséquent, si vous avez un métafichier avec des opérations raster, mais que vous ne souhaitez pas utiliser l'émulation des opérations raster et que vous souhaitez néanmoins obtenir la sortie vectorielle avec des graphiques de substitution, sélectionnez [MetafileRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/metafilerenderingoptions/get_renderingmode/).**Vector**.
