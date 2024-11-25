---
title: Installer TrueType Polices sur Linux dans Java
second_title: Aspose.Words pour Java
articleTitle: Installer TrueType Polices sur Linux
linktitle: Installer TrueType Polices sur Linux
description: "Aspose.Words pour Java permet de rendre un document créé à l'aide de Microsoft Word sur une machine Linux avec la meilleure précision."
type: docs
weight: 20
url: /fr/java/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Le plus souvent, vous utiliserez Aspose.Words pour convertir des documents DOC ou DOCX au format PDF. Si vous devez le faire sur une machine Linux, cette rubrique vous aidera à apprendre à vous assurer que Aspose.Words rend vos documents avec la meilleure précision.

Le plus souvent, les documents DOC et DOCX, qui doivent être convertis, ont été créés à l'aide de Microsoft Word, sur un système d'exploitation Windows ou Mac OS. Par conséquent, la plupart des polices utilisées dans les documents DOC et DOCX sont des "policesWindows" ou des "polices Office", c'est-à-dire les polices installées avec Microsoft Windows ou Microsoft Office. Ces polices incluent Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings et bien d'autres.

Le problème est que les polices `TrueType` listées ci-dessus ne sont pas installées par défaut sur les distributions Linux. Si vous prenez un document DOCX typique formaté avec la police Cambria et essayez de le convertir au format PDF sur Linux, Aspose.Words utilisera une police différente car Cambria n'est pas disponible. Par conséquent, le document PDF aura un aspect différent par rapport au document DOCX d'origine. Pour vous assurer que les documents convertis par Aspose.Words apparaissent aussi proches que possible de l'original, vous devez installer "Windows polices" sur votre système Linux.

Il existe deux manières principales d'obtenir des polices TrueType sur un système Linux:

- Copie .TTF et .TTC fichiers d'une Windows machine sur votre Linux machine
- Installez un package de polices `TrueType`, tel que *msttcorefonts*

## Copie de polices à partir d'une machine Windows

Un moyen simple et rapide d'obtenir TrueType polices sur un système Linux est de copier .TTF et .TTC fichiers du répertoire `C:\Windows\Fonts` sur une machine Windows vers un répertoire sur votre machine Linux. Vous n'avez en aucun cas besoin d'installer ou d'enregistrer ces polices sur Linux; il vous suffit de spécifier l'emplacement des polices en utilisant la classe [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) dans Aspose.Words.

{{% alert color="primary" %}}

Vérifiez si une licence de police est requise et lisez attentivement le EULA avant d'installer les polices MS sur n'importe quel système d'exploitation Linux.

{{% /alert %}}

## Installer un package de polices `TrueType`

Il existe un certain nombre de packages Linux, contenant des polices Microsoft TrueType, que vous pouvez télécharger et installer sur votre machine Linux. Les étapes exactes peuvent être différentes sur différentes distributions Linux.

- Sur Ubuntu, utilisez le gestionnaire de packages Synaptic pour rechercher et installer le package *ttf-mscorefonts-installer*.
- Sur openSUSE, utilisez Yast2 → Gestion des logiciels pour rechercher et installer le package *fetchmsttfonts*.
- Utilisez les polices Liberation sous licence OFL, comme alternative aux polices Windows standard: Arial, Times New Roman et Courier New.
- Pour les paquets de polices adaptés à d'autres distributions Linux, recherchez la documentation disponible sur Internet.

Après l'installation du package, Aspose.Words trouvera ces polices dans les dossiers de votre système et les utilisera lors de l'utilisation de documents.

## Voir Aussi

- [Politiques de Libération](https://github.com/liberationfonts) comme alternative aux polices Windows standard
