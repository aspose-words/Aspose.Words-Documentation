---
title: Installer les polices TrueType sur Linux en C#
second_title: Aspose.Words pour .NET
articleTitle: Installer les polices TrueType sur Linux
linktitle: Installer les polices TrueType sur Linux
description: "Aspose.Words pour .NET permet de restituer un document créé en Microsoft Word sur une machine Linux avec la meilleure précision en utilisant C#. Pour ce faire, copiez les fichiers de polices à partir d'une machine Windows ou installez un package de polices `TrueType` sur votre machine Linux en C#."
type: docs
weight: 20
url: /fr/net/installing-truetype-fonts-on-linux/
---

Le plus souvent, vous utiliserez Aspose.Words pour convertir des documents DOC ou DOCX au format PDF. Si vous devez le faire sur une machine Linux, cette rubrique vous aidera à apprendre comment garantir que Aspose.Words restitue vos documents avec la meilleure précision.

Le plus souvent, les documents DOC et DOCX à convertir ont été créés en Microsoft Word, sur un système d'exploitation Windows ou Mac OS. Par conséquent, la plupart des polices utilisées dans les documents DOC et DOCX sont des "polices Windows" ou des "polices Office", qui sont les polices installées avec Microsoft Windows ou Microsoft Office. Ces polices incluent Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings et bien d'autres.

Le problème est que les polices `TrueType` répertoriées ci-dessus ne sont pas installées par défaut sur les distributions Linux. Si vous prenez un document DOCX typique formaté avec la police Cambria et essayez de le convertir au format PDF sur Linux, Aspose.Words utilisera une police différente car Cambria n'est pas disponible. En conséquence, le document PDF aura un aspect différent du document DOCX original. Pour vous assurer que les documents convertis par Aspose.Words apparaissent aussi près que possible de l'original, vous devez installer des "polices Windows" sur votre système Linux.

Il existe deux manières principales d'obtenir des polices TrueType sur un système Linux:

- Copiez les fichiers .TTF et .TTC d'une machine Windows sur votre machine Linux
- Installez un package de polices `TrueType`, tel que *msttcorefonts*

## Copie de polices à partir d'une machine Windows

Un moyen simple et rapide d'obtenir des polices TrueType sur un système Linux consiste à copier les fichiers .TTF et .TTC du répertoire `C:\Windows\Fonts` sur une machine Windows vers un répertoire de votre machine Linux. Vous n'avez en aucun cas besoin d'installer ou d'enregistrer ces polices sur Linux ; il vous suffit de préciser l'emplacement des polices à l'aide de la classe [FontSettings](https://reference.aspose.com/words/fr/net/aspose.words.fonts/fontsettings/) en Aspose.Words.

{{% alert color="primary" %}}

Vérifiez si une licence de police est requise et lisez attentivement le CLUF avant d'installer MS Fonts sur n'importe quel système d'exploitation Linux.

{{% /alert %}}

## Installer un package de polices `TrueType`

Il existe un certain nombre de packages Linux, contenant des polices Microsoft TrueType, que vous pouvez télécharger et installer sur votre machine Linux. Les étapes exactes peuvent être différentes selon les distributions Linux.

- Sur Ubuntu, utilisez Synaptic Package Manager pour rechercher et installer le package *ttf-mscorefonts-installer*.
- Sur openSUSE, utilisez Yast2 → Software Management pour rechercher et installer le package *fetchmsttfonts*.
- Utilisez les polices Liberation sous licence OFL, comme alternative aux polices Windows standard: Arial, Times New Roman et Courier New.
- Pour les packages de polices adaptés à d'autres distributions Linux, recherchez la documentation disponible sur Internet.

Après avoir installé le package, Aspose.Words trouvera ces polices dans les dossiers de votre système et les utilisera lors de l'utilisation de documents.

## Voir également

- [Polices de libération](https://github.com/liberationfonts) comme alternative aux polices Windows standard
