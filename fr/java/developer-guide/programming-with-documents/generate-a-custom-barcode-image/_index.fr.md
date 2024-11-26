---
title: Créer BarCode dans Java
second_title: Aspose.Words pour Java
articleTitle: Générer une image BarCode personnalisée
linktitle: Générer une image BarCode personnalisée
description: "Exemple de génération de forme de code à barres à l'aide de Java."
type: docs
weight: 350
url: /fr/java/how-to-generate-a-custom-barcode-image-for-displaybarcode-field/
timestamp: 2024-09-05-11-07-10
---

Un code-barres est une représentation visuelle des données sous la forme de lignes ou de motifs parallèles. Les codes à barres sont largement utilisés dans divers secteurs tels que la vente au détail, la logistique, la santé, la banque et bien d'autres.

Microsoft Word permet aux utilisateurs d'intégrer des codes-barres directement dans des documents à l'aide de champs. Les utilisateurs peuvent insérer un type spécifique de code à barres, tel qu'un code QR ou un code à barres linéaire, en utilisant le [BARCODE](https://learn.microsoft.com/en-us/openspecs/office_standards/ms-oi29500/cbc893c0-9683-416d-84c6-407a92451c19) champ.

Dans cet article, nous verrons comment le champ BARCODE est implémenté dans Aspose.Words et comment Aspose.Words permet aux utilisateurs de travailler avec des documents Word auxquels un code-barres a déjà été ajouté.

## Types de codes à barres pris en charge par Aspose.Words

Aspose.Words prend en charge différents types de codes à barres. Le type de code à barres est transmis en tant que valeur de chaîne dans la propriété [BarcodeType](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/#getBarcodeType).

{{% alert color="primary" %}}

Étant donné que l'utilisation de codes à barres dans les fonctionnalités de Aspose.Words est limitée, l'utilisateur peut utiliser n'importe quelle bibliothèque, y compris Aspose.Code à barres, ou écrire son propre rendu pour travailler avec des codes à barres. Vous pouvez en savoir plus sur les types de codes à barres [soutenu par Aspose.BarCode](https://docs.aspose.com/barcode/java/barcode-types/).

{{% /alert %}}

Lors de l'enregistrement dans des formats Word prenant en charge les codes-barres, vous pouvez utiliser n'importe quel type de code-barres [soutenu par Microsoft Word](https://support.microsoft.com/en-us/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3). Si un type de code à barres incorrect a été transmis, Word affichera une erreur.

Lors de l'enregistrement dans d'autres formats, tels que PDF, Aspose.Words délègue le rendu des codes à barres au code utilisateur, de sorte que l'utilisateur est limité aux types de codes à barres de son implémentation ou de la bibliothèque utilisée.

## Insérer un code-barres dans un Document ou Charger un Document avec un Code-barres ajouté

Aspose.Words offre la possibilité de:

1. Insérez par programme un code-barres dans un document à l'aide du [DisplayBarcode](https://support.microsoft.com/en-au/office/field-codes-displaybarcode-6d81eade-762d-4b44-ae81-f9d3d9e07be3) et [MergeBarcode](https://support.microsoft.com/en-au/office/field-codes-mergebarcode-812fc43f-cb53-4782-8f9f-290ed08d34f3) codes de champ
2. Ou chargez un document Word avec des codes-barres déjà insérés pour un travail ultérieur

Aspose.Words a une interface pour générer des codes à barres personnalisés qui le rend facile à utiliser [Aspose.Words](https://products.aspose.com/words/java/) et [Aspose.BarCode](https://products.aspose.com/barcode/java/) ensemble pour rendre les images de codes à barres dans les documents de sortie. Par exemple, vous pouvez créer un document DOC, OOXML ou RTF et y ajouter un champ DISPLAYBARCODE à l'aide de Aspose.Words. Ou vous pouvez charger un document DOC, OOXML ou RTF avec un champ DISPLAYBARCODE déjà existant et fournir votre implémentation du générateur de codes à barres personnalisé.

Un champ DISPLAYBARCODE typique a la syntaxe suivante:

`{ DISPLAYBARCODE "SomeData" QR \h 720 }`

Voici un exemple de générateur de code utilisant Aspose.Words et Aspose.BarCode APIs. Cet exemple montre comment insérer des images de codes à barres à la position du champ DISPLAYBARCODE dans un document Word:

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "barcode-generator.java" >}}

{{< gist "aspose-words-gists" "689e63b98de2dcbb12dffc37afbe9067" "custom-barcode-generator.java" >}}

Vous pouvez également enregistrer le document avec le code-barres chargé ou nouvellement inséré dans des formats de page fixes tels que PDF, XPS, etc. L'exemple de code suivant montre comment enregistrer un document Word au format PDF:

{{< gist "aspose-words-gists" "b237846932dfcde42358bd0c887661a5" "docx-to-pdf.java" >}}

{{% alert color="primary" %}}

Pour plus d'informations sur la conversion de documents d'un format à un autre, voir le [Convertir un Document](/words/java/convert-a-document/) section de documentation.

{{% /alert %}}

{{% alert color="primary" %}}

Vous pouvez également utiliser l'interface [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/) pour convertir des codes-barres intégrés dans des documents Word en images. Les images résultantes peuvent être extraites du document – voir l'article Travailler avec des images pour plus de détails.

{{% /alert %}}

## Spécifier Les Options De Code À Barres

Lorsque vous travaillez avec des codes à barres, vous pouvez définir des propriétés supplémentaires. Aspose.Words vous fournit la classe [BarcodeParameters](https://reference.aspose.com/words/java/com.aspose.words/barcodeparameters/) - classe pour les paramètres de code à barres à transmettre à BarcodeGenerator.

Aspose.Words prend en charge la résolution intégrée de 96 ppi pour les images générées avec [IBarcodeGenerator](https://reference.aspose.com/words/java/com.aspose.words/ibarcodegenerator/), ce qui limite la taille minimale d'une image de code-barres. Pour résoudre ce problème, les développeurs peuvent insérer manuellement des images de codes-barres avec la résolution cible dans un document Word et les enregistrer au format requis. Pour plus de détails et d'exemples sur l'utilisation des codes à barres, consultez l'article [Lire des codes à barres à partir de documents Word](https://docs.aspose.com/barcode/java/read-barcode-from-word-document/).
