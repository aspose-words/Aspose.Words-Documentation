---
title: Créer Barcode en Java
second_title: Aspose.Words pour Java
articleTitle: Générer une image de code-barres personnalisée
linktitle: Générer une image de code-barres personnalisée
description: "Exemple de génération de forme de code-barres en utilisant Java."
type: docs
weight: 350
url: /fr/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Un code-barres est une représentation visuelle de données sous la forme de lignes parallèles ou de motifs. Les codes-barres sont largement utilisés dans divers secteurs tels que la grande distribution, la logistique, les soins de santé, la banque et bien d'autres.

Microsoft Word permet aux utilisateurs d'incorporer des codes-barres directement dans les documents en utilisant des champs. Les utilisateurs peuvent insérer un type spécifique de code-barre, tel qu'un code QR ou un code linéaire, à l'aide du champ [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19).

Dans cet article, nous allons voir comment le champ "BARCODE" est mis en œuvre dans Aspose.Words et comment Aspose.Words permet aux utilisateurs de travailler avec des documents Word auxquels un code-barres a déjà été ajouté.

## Types de codes-barres pris en charge par Aspose.Words

Aspose.Words prend en charge divers types de codes à barres. Le type de code à barres est transmis sous forme de valeur de chaîne dans la propriété [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Puisque le travail avec des barcodes dans la fonctionnalité de Aspose.Words est limité, l'utilisateur peut utiliser n'importe quelle bibliothèque, y compris Aspose.Barcode, ou écrire sa propre rendu pour travailler avec les barcodes. Vous pouvez en savoir plus sur les types de barcodes [supported by Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Lors de l'enregistrement sous un format Word qui prend en charge les codes à barres, vous pouvez utiliser n'importe quel type de code à barres qui est [supported by Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Si un mauvais type de code à barres a été passé, Word affichera une erreur.

Lorsqu'ils sont enregistrés dans d'autres formats comme PDF, Aspose.Words délègue le rendu des codes-barres au code utilisateur, donc l'utilisateur est limité aux types de codes-barres de leur mise en œuvre ou bibliothèque utilisée.

## Insérer un code-barres dans un document ou charger un document avec un code-barres ajouté

Aspose.Words fournit la possibilité de:

1. Insérer programatiquement un code-barres dans un document à l’aide des codes [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) et [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3)
2. Ou bien charger un document Word avec des codes-barres déjà insérés pour poursuivre le travail

Aspose.Words propose une interface pour générer des barcodes personnalisés qui facilite l'utilisation de [Aspose.Words](https://products.aspose.com/words/java/) et [Aspose.BarCode](https://products.aspose.com/barcode/java/) ensemble afin de restituir des images de barcode dans les documents de sortie. Par exemple, vous pouvez créer un document DOC, OOXML ou RTF et ajouter le champ DISPLAYBARCODE à celui-ci en utilisant Aspose.Words. Ou bien, vous pouvez charger un document DOC, OOXML ou RTF avec le champ DISPLAYBARCODE déjà existant et fournir votre propre implémentation d'un générateur de barcode personnalisé.

Un champ typique DISPLAYBARCODE a la syntaxe suivante:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Voici un exemple de générateur de code utilisant Aspose.Words et Aspose.BarCode API. Cet exemple montre comment insérer des images de codes-barres dans la position du champ DISPLAYBARCODE d'un document Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Vous pouvez également enregistrer le document avec les barcodes chargés ou insérés récemment dans des formats de page fixes tels que PDF, XPS, etc. L'exemple de code suivant montre comment enregistrer un document Word au format PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Pour plus d'informations sur la conversion de documents d'un format à un autre, consultez [Convert a Document](/words/java/convert-a-document/) la section documentation.

{{% /alert %}}

{{% alert color="primary" %}}

Vous pouvez également utiliser l'interface [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) pour convertir les codes-barres incorporés dans les documents Word en images. Les images résultantes peuvent être extraites du document – voir l'article "Travailler avec des images" pour plus de détails.

{{% /alert %}}

## Spécifiez les options de code-barres

Lorsque vous travaillez avec des barcodes, vous pouvez définir certaines propriétés supplémentaires. Aspose.Words fournit la classe [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) – classe pour les paramètres du code barre à transmettre à BarcodeGenerator.

Aspose.Words prend en charge la résolution intégrée de 96 ppi pour les images générées avec [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), qui limite la taille minimale d'une image de code-barres. Pour y remédier, les développeurs peuvent manuellement insérer des images de code-barres de la résolution cible dans un document Word et les enregistrer au format requis. Pour plus de détails et d'exemples sur le travail avec des codes-barres, voir l'article [Read Barcodes from Word Documents](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
