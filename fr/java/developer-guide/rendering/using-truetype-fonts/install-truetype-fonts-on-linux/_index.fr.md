---
title: Installer Vrai Saisissez les polices sur Linux en Java
second_title: Aspose.Words pour Java
articleTitle: Installer Vrai Saisissez les polices sur Linux
linktitle: Installer Vrai Saisissez les polices sur Linux
description: "Aspose.Words pour Java permet de rendre un document créé en utilisant Microsoft Word sur une Linux machine avec la meilleure précision."
type: docs
weight: 20
url: /fr/java/install-truetype-fonts-on-linux/
timestamp: 2024-01-27-14-07-04
---

Le plus souvent, vous utiliserez Aspose.Words pour convertir les documents DOC ou DOCX en format PDF. Si vous devez le faire sur un Linux machine, ce sujet vous aidera à apprendre comment assurer Aspose.Words rend vos documents avec la meilleure précision.

Le plus souvent, les documents DOC et DOCX, qui doivent être convertis, ont été créés en utilisant Microsoft Word, sur une Windows ou système d'exploitation Mac OS. Par conséquent, la plupart des polices utilisées dans les documents DOC et DOCX sont "Windows polices" ou "Doises Office", qui sont les polices installées avec Microsoft Windows ou Microsoft Bureau. Ces polices comprennent Arial, Calibri, Cambria, Century Gothic, Courier New, Garamond, Tahoma, Verdana, Wingdings et bien d'autres.

Le problème, c'est que `TrueType` Les polices énumérées ci-dessus ne sont pas installées par défaut sur Linux distributions. Si vous prenez un document DOCX typique qui est formaté avec la police Cambria et essayez de le convertir en format PDF sur Linux, Aspose.Words utilisera une police différente car Cambria n'est pas disponible. Par conséquent, le document PDF sera différent par rapport au document DOCX original. Pour s'assurer que les documents convertis Aspose.Words apparaître le plus près possible de l'original, vous devez installer "Windows polices" sur votre Linux système.

Il existe deux façons principales d'obtenir les polices TrueType sur un Linux système:

- Copier .TTF et. Fichiers TTC d'un Windows machine sur votre Linux machine
- Installer un `TrueType` paquet de polices, comme *msttcorefonts*

## Copie des polices d'un Windows Machine

Un moyen simple et rapide d'obtenir les polices TrueType sur une Linux système est de copier. TTF et. Fichiers TTC du `C:\Windows\Fonts` répertoire sur un Windows machine à certains répertoires sur votre Linux machine. Vous n'avez pas à installer ou enregistrer ces polices sur Linux de quelque manière que ce soit; vous devez simplement spécifier l'emplacement des polices en utilisant la [FontSettings](https://reference.aspose.com/words/java/com.aspose.words/fontsettings/) dans la catégorie Aspose.Words.

{{% alert color="primary" %}}

Vérifier si la licence de police est nécessaire et lire attentivement l'EULA avant d'installer MS Fonts sur n'importe quel Linux système d'exploitation.

{{% /alert %}}

## Installer un `TrueType` Paquet Polices

Il y a un certain nombre de Linux colis contenant Microsoft Polices TrueType, que vous pouvez télécharger et installer sur votre Linux machine. Les étapes exactes peuvent être différentes sur divers Linux distributions.

- À Ubuntu, Utilisez Synaptic Package Manager pour trouver et installer le paquet *ttf-mscorefonts-installer*.
- Sur openSUSE, utilisez Yast2 → Gestion de logiciels pour trouver et installer le *fetchmsttfonts* colis.
- Utiliser les polices de libération sous licence OFL, comme alternative à la norme Windows polices: Arial, Times New Roman et Courrier New.
- Pour les paquets de polices adaptés à d'autres Linux distributions, recherche la documentation disponible sur Internet.

Après l'installation du paquet, Aspose.Words retrouvera ces polices dans les dossiers de votre système et les utilisera lorsque vous travaillerez avec des documents.

## Voir aussi

- Oui. [Polices de libération](https://github.com/liberationfonts) comme alternative à la norme Windows polices
