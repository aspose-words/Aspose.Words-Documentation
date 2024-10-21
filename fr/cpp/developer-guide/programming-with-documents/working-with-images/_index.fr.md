---
title: Travailler avec des images en C++
second_title: Aspose.Words pour C++
articleTitle: Travailler avec des Images
linktitle: Travailler avec des Images
type: docs
description: "Introduction à la fonctionnalité d'image, comment créer et manipuler une image en utilisant C++."
weight: 300
url: /fr/cpp/working-with-images/
---

Aspose.Words permet aux utilisateurs de travailler avec des images de manière très flexible. Dans cet article, vous ne pouvez explorer que certaines des possibilités de travailler avec des images.

## Comment extraire des images d'un Document

Toutes les images sont stockées à l'intérieur de **Shape** nœuds dans un [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). Pour extraire toutes les images ou les images ayant un type spécifique du document, procédez comme suit:

- Utilisez la méthode [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) pour sélectionner tous les nœuds **Shape**.
- Parcourez les collections de nœuds résultantes.
- Vérifiez la propriété booléenne [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/).
- Extrayez les données d'image à l'aide de la propriété [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- Enregistrez les données d'image dans un fichier.

L'exemple de code suivant montre comment extraire des images d'un document et les enregistrer en tant que fichiers:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## Enregistrement des images au format WMF

Aspose.Words fournit une fonctionnalité pour enregistrer toutes les images disponibles dans un document dans [FRMF ](https://docs.fileformat.com/image/wmf/)formatez lors de la conversion de DOCX en RTF.

L'exemple de code suivant montre comment enregistrer des images au format WMF avec les options d'enregistrement RTF:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
