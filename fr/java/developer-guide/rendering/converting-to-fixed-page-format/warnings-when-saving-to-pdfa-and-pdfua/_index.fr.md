---
title: Avertissements Lors de l'enregistrement sur PDF/A et PDF/UA
second_title: Aspose.Words pour Java
articleTitle: Avertissements d'accessibilité Lors de l'enregistrement dans PDF/A et PDF/UA
linktitle: Avertissements d'accessibilité Lors de l'enregistrement dans PDF/A et PDF/UA
description: "PDF/A et PDF/UA imposent des exigences d'accessibilité liées au contenu du document. Lors de l'enregistrement sur PDF/A ou PDF/UA dans Java et que le problème enfreint la conformité, un avertissement est émis."
type: docs
weight: 29
url: /fr/java/warnings-when-saving-to-pdfa-and-pdfua/
timestamp: 2024-01-27-14-07-04
---

Les formats PDF/A et PDF/UA imposent un certain nombre d'exigences d'accessibilité liées au contenu du document qui ne peuvent pas être satisfaites lors de la conversion automatique de Word en PDF. Ces exigences sont décrites dans l'article précédent *"Working with PDF/A or PDF/UA"*. Maintenant, des avertissements sont émis pour certains de ces problèmes.

Des avertissements sont émis lors de l'enregistrement dans l'un des formats PDF/A ou PDF/UA et le problème enfreint la conformité. Par exemple, l'avertissement concernant le titre du document manquant sera émis lors de l'enregistrement sur PDF/UA et ne sera pas émis lors de l'enregistrement sur PDF/A.

Tous les avertissements sont de [WarningType](https://reference.aspose.com/words/java/com.aspose.words/warningtype/) **.MinorFormattingLoss** et [WarningSource](https://reference.aspose.com/words/java/com.aspose.words/warningsource/) **.Pdf**. Voici une liste des nouvelles valeurs d'avertissement de description:

| Valeur d'avertissement de description | PDF/A | PDF/UA |
| ------------------------------------------------------------ | ---------------------- | ---------------------- |
| "Le titre du document est manquant. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |  | {{< emoticons/tick >}} |
| "Le document contient des rubriques dont les niveaux ne sont pas consécutifs. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |  | {{< emoticons/tick >}} |
| "Il y a des formes sans texte alternatif dans le document. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Il y a des tableaux sans texte alternatif dans le document. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
| "Il y a des hyperliens sans texte alternatif dans le document. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |  | {{< emoticons/tick >}} |
| "Il y a des tableaux sans ligne/colonne d'en-tête dans le document. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." |  | {{< emoticons/tick >}} |
| "Le document contient des caractères Unicode PUA. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." | {{< emoticons/tick >}} |  |
| "Le document contient .notdef glyphes. Cela viole les exigences de conformité. Le document de sortie ne sera pas entièrement conforme." | {{< emoticons/tick >}} | {{< emoticons/tick >}} |
