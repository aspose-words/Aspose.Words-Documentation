---
title: Enregistrement au format de page fixe en C++
second_title: Aspose.Words pour C++
articleTitle: Enregistrement d'un document au format de page fixe
linktitle: Enregistrement d'un document au format de page fixe
description: "Comment enregistrer un document dans un format de page fixe - PDF, XPS, HTML, XAML, PostScript et PCL? Voir les instructions."
type: docs
weight: 15
url: /fr/cpp/saving-a-document-to-fixed-page-format/
---

Une fois la mise en page créée et la géométrie des objets et leur position sur la page calculées, le document peut être enregistré dans un format de page fixe pris en charge par Aspose.Words.

Lors de l'enregistrement de documents dans des formats de pages fixes, les options de rendu communes à tous ces formats peuvent être utilisées. Ils permettent de contrôler:

- Le nombre et la plage de pages contenues dans le document de sortie([PageIndex](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/), [PageCount](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pageset/)).
- Progression de l'enregistrement du document page par page ([PageSavingCallback](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_pagesavingcallback/)).
- Un ensemble de caractères utilisés pour le rendu des nombres ([NumeralFormat](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_numeralformat/)).
- Un lecteur de métafichier ([MetafileRenderingOptions](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_metafilerenderingoptions/)). Pour plus de détails, voir le [Gestion des métafichiers Windows ](/words/cpp/handling-windows-metafiles/) l'article.
- Un taux de qualité pour la recompression des images JPEG, dont la valeur peut différer légèrement, en fonction du format de sauvegarde sélectionné ([JpegQuality](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_jpegquality/)).
- Optimisation des graphiques vectoriels en sortie Aspose.Words ([OptimizeOutput](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_optimizeoutput/)).
- Options graphiques lors de l'enregistrement aux formats Tiff, Png, Bmp, Jpeg, Emf ([UseAntiAliasing](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_useantialiasing/), [UseHighQualityRendering](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_usehighqualityrendering/)).
- Enregistrement du document en niveaux de gris ([ColorMode](https://reference.aspose.com/words/cpp/aspose.words.saving/fixedpagesaveoptions/get_colormode/)).
- Basculer entre le rendu des formes DrawingML et des formes de secours ([DmlRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmlrenderingmode/)).
- Commutation entre les modes de rendu des effets DML ([DmlEffectsRenderingMode](https://reference.aspose.com/words/cpp/aspose.words.saving/saveoptions/get_dmleffectsrenderingmode/)).

L'exemple ci-dessous montre comment enregistrer un document au format JPEG à l'aide de la méthode `Save` et des options de rendu:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Rendering-Printing-SaveDocumentToJPEG-SaveDocumentToJPEG.cpp" >}}
