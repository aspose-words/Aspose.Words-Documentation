---
title: Avertissements lors de l'enregistrement au format PDF/A et PDF/UA
second_title: Aspose.Words pour Python
articleTitle: Avertissements relatifs aux problèmes d'accessibilité lors de l'enregistrement au format PDF/A et PDF/UA
linktitle: Avertissements relatifs aux problèmes d'accessibilité lors de l'enregistrement au format PDF/A et PDF/UA
description: "PDF/A et PDF/UA imposent des exigences d'accessibilité liées au contenu du document. Lors de l'enregistrement au format PDF/A ou PDF/UA dans Python et que le problème ne respecte pas la conformité, un avertissement est émis."
type: docs
weight: 29
url: /fr/python-net/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Les formats PDF/A et PDF/UA imposent un certain nombre d'exigences d'accessibilité liées au contenu du document qui ne peuvent pas être remplies lors de la conversion automatique de Word en PDF. Ces exigences sont décrites dans l'article précédent *"Travailler avec PDF/A ou PDF/UA"*. Des avertissements sont désormais émis pour certains de ces problèmes.

Des avertissements sont émis lors de l'enregistrement dans l'un des formats PDF/A ou PDF/UA et le problème viole la conformité. Par exemple, l'avertissement concernant le titre du document manquant sera émis lors de l'enregistrement au format PDF/UA et ne sera pas émis lors de l'enregistrement au format PDF/A.

Tous les avertissements sont au format [WarningType](https://reference.aspose.com/words/python-net/aspose.words/warningtype/)**.MinorFormattingLoss** et [WarningSource](https://reference.aspose.com/words/python-net/aspose.words/warningsource/)**.Pdf**. Voici une liste des nouvelles valeurs d'avertissement de description:

|  Description valeur d'avertissement |  PDF/A |  PDF/UA |
|  ------------------------------------------------------------  |  ----------------------  |  ----------------------  |
|  "Le document contient des titres dont les niveaux ne sont pas consécutifs. Cela viole les exigences de conformité. Le document final ne sera pas entièrement conforme." |                          |   {{< emoticons/tick >}}  |
|  "Il y a des formes sans texte alternatif dans le document. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Il y a des tableaux sans texte alternatif dans le document. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
|  "Le document contient des caractères Unicode PUA. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |   {{< emoticons/tick >}}  |                          |
|  "Le document contient des glyph .notdef. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |   {{< emoticons/tick >}}  |   {{< emoticons/tick >}}  |
