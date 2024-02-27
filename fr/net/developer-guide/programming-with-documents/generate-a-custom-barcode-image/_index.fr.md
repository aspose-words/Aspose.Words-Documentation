---
title: Comment créer un code à barres
second_title: Aspose.Words pour .NET
articleTitle: Générer une image de code-barres personnalisée
linktitle: Générer une image de code-barres personnalisée
description: "Exemple de génération de forme de code-barres à l'aide de C#."
type: docs
weight: 350
url: /fr/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Aspose.Words dispose d'une interface pour générer des codes-barres personnalisés, ce qui rend très facile l'utilisation conjointe de Aspose.Words et [Aspose.BarCode](https://products.aspose.com/barcode/net/) pour restituer des images de codes-barres dans les documents de sortie. Par exemple, vous pouvez charger un document DOC, OOXML ou RTF contenant un champ `DISPLAYBARCODE` dans Aspose.Words, fournir votre implémentation d'un générateur de codes-barres personnalisé et l'enregistrer dans des formats de page fixes tels que PDF, XPS, etc.

Un champ `DISPLAYBARCODE` typique a la syntaxe suivante:

{ `DISPLAYBARCODE` "SomeData" QR \h 720 }

Vous trouverez ci-dessous un exemple de générateur de code qui exploite le `Aspose.BarCode` API. Cet exemple montre comment insérer des images de codes-barres à la position du champ `DISPLAYBARCODE` dans un document Word à l'aide de fichiers Aspose.Words et `Aspose.BarCode`:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}
