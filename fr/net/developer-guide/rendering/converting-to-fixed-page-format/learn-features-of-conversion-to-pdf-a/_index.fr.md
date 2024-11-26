---
title: Conversion en PDF/A et PDF/UA
second_title: Aspose.Words pour .NET
articleTitle: Découvrez les fonctionnalités de conversion en PDF/A et PDF/UA
linktitle: Découvrez les fonctionnalités de conversion en PDF/A et PDF/UA
description: "Convertissez en PDF/A-1, PDF/A-2, PDF/A-4 et PDF/UA à l'aide de C#. Choisissez le meilleur standard PDF pour convertir un document à l'aide de C#."
type: docs
weight: 25
url: /fr/net/learn-features-of-conversion-to-pdf-a-pdf-ua/
timestamp: 2024-01-31-14-23-37
---

Le PDF est un format de page fixe très populaire parmi les utilisateurs et largement pris en charge par diverses applications, car un document PDF se présente de la même manière sur n'importe quel appareil. Pour cette raison, la conversion au format PDF est une fonctionnalité importante de Aspose.Words.

Le PDF est un format complexe en soi, car il possède une structure de fichier spécifique, un modèle graphique, l'intégration de polices et certaines fonctionnalités de sortie complexes telles que les balises de structure de document, le cryptage, les signatures numériques et les formulaires modifiables. De plus, la conversion d'un document en PDF nécessite plusieurs étapes de calcul, complexes et chronophages.

Dans les articles suivants, nous examinerons les principaux problèmes pouvant survenir lors de l'utilisation de documents conformes à diverses normes PDF et décrirons les options pour les résoudre.

## Quelle norme PDF Aspose.Words prend en charge

Aspose.Words permet désormais aux utilisateurs de travailler avec les formats PDF/A-1, PDF/A-2 et PDF/A-4, ainsi qu'avec PDF/UA-1:

* PDF/A-1 présente de sérieuses limitations telles que la transparence et certaines options de compression sont interdites
* PDF/A-2 élimine certaines des limitations de PDF/A-1, telles que la prise en charge de la transparence et des effets de calque ou l'intégration de polices OpenType
* PDF/A-4 suppose des niveaux de conformité révisés: la conformité PDF/A-4 standard est équivalente à la conformité de niveau U des versions précédentes, et la conformité de niveau A est supprimée
* Le contenu PDF/UA-1 doit être étiqueté et standardisé selon ISO 32000-1: 2008

PDF/A est une version standardisée ISO de PDF destinée à être utilisée pour l'archivage et le stockage à long terme de documents électroniques. Dans le même temps, PDF/UA est une autre version standardisée ISO du PDF conçue pour garantir l'accessibilité aux personnes handicapées qui utilisent des technologies d'assistance. Pour spécifier le niveau de conformité aux normes PDF, utilisez la propriété [Compliance](https://reference.aspose.com/words/fr/net/aspose.words.saving/pdfsaveoptions/compliance/). En raison des conditions de stockage, le document PDF/A doit intégrer toutes les polices et désactiver le cryptage, tandis que le PDF/UA doit uniquement intégrer toutes les polices.

Dans cette section, nous examinerons de plus près l'utilisation de documents PDF/A ou PDF/UA-1.

## ISO pertinent pour les normes PDF

Pour en savoir plus sur les différentes normes PDF, consultez les ISO suivants:

*PDF 1.7 = ISO-32000-1: 2008
*PDF 2.0 = ISO-32000-2: 2020
* PDF/A-1 = ISO-19005-1: 2005
*PDF/A-2 = ISO-19005-2: 2011
*PDF/A-4 = ISO-19005-4: 2020
* PDF/UA-1 = ISO-14289: 2014

## Voir également

* [Convertir un document en PDF](/words/fr/net/convert-a-document-to-pdf/)
* [Comment modifier les balises de structure de document dans Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html)
* [Comment vérifier ou modifier la langue du texte dans Microsoft Word](https://support.microsoft.com/en-us/office/check-spelling-and-grammar-in-a-different-language-667ba67a-a202-42fd-8596-edc1fa320e00)
* [Comment changer la langue du texte dans Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags)
* [Comment ajouter un texte alternatif à une forme, une image, un graphique, un graphique SmartArt ou un autre objet dans Microsoft Word](https://support.microsoft.com/en-us/office/add-alternative-text-to-a-shape-picture-chart-smartart-graphic-or-other-object-44989b2a-903c-4d9a-b742-6a75b451c669)
* [Comment ajouter du texte alternatif et des informations supplémentaires aux balises](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html) (ou lisez les mêmes informations dans le [Guide de l'utilisateur Adobe Acrobat](https://helpx.adobe.com/acrobat/using/editing-document-structure-content-tags.html#add_alternate_text_and_supplementary_information_to_tags))
* [Comment configurer l'entrée ActualText pour le texte](https://helpx.adobe.com/acrobat/using/create-verify-pdf-accessibility.html), la section "Ajouter du texte réel pour un terme abrégé, une formule ou un symbole non Unicode"
* [Mappage Unicode pour les polices symboliques Windows courantes](http://www.alanwood.net/demos/webdings.html)
