---
title: Comment Créer un Code-barres
second_title: Aspose.Words pour .NET
articleTitle: Générer une image de code-barres personnalisée
linktitle: Générer une image de code-barres personnalisée
description: "Exemple de génération de forme de code-barres en utilisant C#."
type: docs
weight: 350
url: /fr/net/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
---

Un code-barres est une représentation visuelle des données sous forme de lignes ou de motifs parallèles. Les codes-barres sont largement utilisés dans divers secteurs tels que le commerce de détail, la logistique, les soins de santé, la banque et bien d'autres encore.

Microsoft Word permet aux utilisateurs d'incorporer des codes-barres directement dans les documents à l'aide de champs. Les utilisateurs peuvent insérer un type spécifique de code-barre, tel qu'un code QR ou un code linéaire, à l'aide du champ [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

Dans cet article, nous allons voir comment le champ BARCODE est implémenté dans Aspose.Words et comment Aspose.Words permet aux utilisateurs de travailler avec des documents Word auxquels un code-barres a déjà été ajouté.

## Types de code-barres pris en charge par Aspose.Words

Aspose.Words prend en charge divers types de codes-barres. Le type de code-barres est passé comme une valeur de chaîne dans la propriété [BarcodeType](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/barcodetype/).

{{% alert color="primary" %}}

Étant donné que le travail avec les codes-barres dans la fonctionnalité de Aspose.Words est limité, l'utilisateur peut utiliser n'importe quelle bibliothèque, y compris Aspose.Barcode, ou écrire sa propre rendu pour travailler avec des codes-barres. Vous pouvez en savoir plus sur les types de barcodes [supported by Aspose.BarCode](https://docs.aspose.com/barcode/net/barcode-types/).

{{% /alert %}}

Lors de l'enregistrement dans des formats Word qui prennent en charge les codes-barres, vous pouvez utiliser tout type de code-barre qui est [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Si un mauvais type de code-barre a été passé, Word affichera une erreur.

Lorsqu'ils sont enregistrés dans d'autres formats comme PDF, Aspose.Words délègue la rendu du code-barres au code utilisateur, de sorte que l'utilisateur est limité aux types de code-barres de leur implémentation ou bibliothèque utilisée.

## Insérez un code-barres dans un document ou chargez un document avec un code-barres ajouté

Aspose.Words fournit la possibilité de:

1. Insérer programmatiquement un code-barres dans un document à l'aide du code [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) et du code [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. Ou bien chargez un document Word avec des barres de codes déjà insérées pour un travail ultérieur

Aspose.Words dispose d'une interface pour générer des codes-barres personnalisés qui facilite l'utilisation de [Aspose.Words](https://products.aspose.com/words/net/) et [Aspose.BarCode](https://products.aspose.com/barcode/net/) ensemble pour restituer des images de code-barres dans les documents de sortie. Par exemple, vous pouvez créer un document DOC, OOXML ou RTF et ajouter le champ DISPLAYBARCODE à celui-ci en utilisant Aspose.Words. Ou bien, vous pouvez charger un document DOC, OOXML ou RTF avec le champ DISPLAYBARCODE déjà existant dans celui-ci et fournir votre propre implémentation d'un générateur de code-barres personnalisé.

Un champ typique "DISPLAYBARCODE" a la syntaxe suivante:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Voici un exemple de générateur de code utilisant Aspose.Words et Aspose.BarCode API. Cet exemple montre comment insérer des images de code-barres dans le champ DISPLAYBARCODE d'un document Word:

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "barcode-generator.cs" >}}

{{< gist "aspose-words-gists" "00d34dba66626dbc0175b60bb3b71c8a" "custom-barcode-generator.cs" >}}

Vous pouvez également enregistrer le document avec le code à barres chargé ou récemment inséré dans des formats de pages fixes tels que PDF, XPS, etc. L'exemple de code suivant montre comment enregistrer un document Word au format PDF:

{{< gist "aspose-words-gists" "a53bdaad548845275c1b9556ee21ae65" "docx-to-pdf.cs" >}}

{{% alert color="primary" %}}

Pour plus d'informations sur la conversion de documents à partir d'un format vers un autre, voir [Convert a Document](/words/net/convert-a-document/) la section.

{{% /alert %}}

{{% alert color="primary" %}}

Vous pouvez utiliser l'interface [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/) pour convertir les codes-barres incorporés dans des documents Word en images. Les images résultantes peuvent être extraites du document - voir l'article "Travailler avec les images" pour plus de détails.

{{% /alert %}}

## Spécifiez les options de code à barres

Lorsque vous travaillez avec des codes barres, vous pouvez définir certaines propriétés supplémentaires. Aspose.Words fournit la classe [BarcodeParameters](https://reference.aspose.com/words/net/aspose.words.fields/barcodeparameters/) – classe pour les paramètres de code barre à passer au générateur de code barre.

Aspose.Words prend en charge la résolution intégrée de 96 ppp pour les images générées avec [IBarcodeGenerator](https://reference.aspose.com/words/net/aspose.words.fields/ibarcodegenerator/), ce qui limite la taille minimale d'une image de code-barres. Pour remédier à cela, les développeurs peuvent insérer manuellement des images de code-barres avec la résolution cible dans un document Word et les enregistrer au format requis. Pour plus de détails et d'exemples sur le travail avec les codes-barres, voir l'article [Create Custom Barcodes with IBarcodeGenerator](https://docs.aspose.com/barcode/net/how-to-create-custom-barcodes-with-ibarcodegenerator/).