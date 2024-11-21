---
title: Avertissements lors de l'enregistrement en PDF/A et PDF/UA
second_title: Aspose.Words pour Java
articleTitle: Avertissements concernant l'accessibilité lors de l'enregistrement en format PDF/A et PDF/UA
linktitle: Avertissements concernant l'accessibilité lors de l'enregistrement en format PDF/A et PDF/UA
description: "Les documents PDF/A et PDF/UA imposent des exigences d'accessibilité liées au contenu des documents. Lorsque vous enregistrez en PDF/A ou PDF/UA Java et la question viole la conformité, un avertissement est émis."
type: docs
weight: 29
url: /fr/java/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Les formats PDF/A et PDF/UA imposent un certain nombre d'exigences d'accessibilité liées au contenu des documents qui ne peuvent être remplies lors de la conversion automatique de Word en PDF. Ces exigences sont décrites dans l'article précédent *"Travailler avec PDF/A ou PDF/UA"*. Maintenant des avertissements sont émis pour certains de ces problèmes.

Des avertissements sont émis lors de l'enregistrement dans l'un des formats PDF/A ou PDF/UA et le problème viole la conformité. Par exemple, l'avertissement concernant le titre du document manquant sera émis lors de l'enregistrement au format PDF/UA et ne sera pas émis lors de l'enregistrement au format PDF/A.

Tous les avertissements [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/)**.MinorFormattingPerte** et [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/)**. Pdf**. Voici une liste des nouvelles valeurs d'avertissement Description:

|  Valeur d'avertissement |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Le titre du document est manquant. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |                          |   {{< emoticons/tick >}}  |
|  "Le document contient des rubriques dont les niveaux ne sont pas consécutifs. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |                          |   {{< emoticons/tick >}}  |
|  "Il y a des formes sans texte alt dans le document. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Il y a des tableaux sans texte alt dans le document. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Il y a des hyperliens sans texte alt dans le document. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |                          |   {{< emoticons/tick >}}  |
|  "Il y a des tables sans ligne d'en-tête/colonne dans le document. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |                          |   {{< emoticons/tick >}}  |
|  "Le document contient des caractères Unicode PUA. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |   {{< emoticons/tick >}}  |                          |
|  "Le document contient .notdef glyphPar. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
