---
title: Exigences du système
second_title: Aspose.Words pour Java
articleTitle: Exigences du système
linktitle: Exigences du système
description: "Avant de commencer à travailler avec Aspose.Words pour Java, s'assurer que vous répondez aux exigences du système d'exploitation, de la plate-forme, des cadres et de l'environnement afin que les activités de vos appareils soient dûment comptabilisées."
type: docs
weight: 80
url: /fr/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words pour Java n'exige pas un produit tiers tel que Microsoft Word à installer. Aspose.Words elle-même est un moteur pour la création, la modification, la conversion et le rendu de documents dans différents formats, y compris Microsoft Word les formats de documents.

## Systèmes d'exploitation pris en charge

Tout système d'exploitation qui peut exécuter le Java L'environnement d'exécution (JRE) peut fonctionner Aspose.Words pour Java. Le tableau suivant énumère la plupart des systèmes d'exploitation, mais pas tous.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Système d'exploitation</td>
			<td style="font-weight: bold; width:400px">Versions</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>Ouvrir</li><li>CentOS</li><li>et autres</li></ul></td>
		</tr>
  <tr>
			<td>MACOS</td>
			<td><ul><li>MacOS version 10.9 (Mavericks) et après</li></ul></td>
		</tr>
  <tr>
			<td>Mobile</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Plateformes Cloud supportées

Aspose.Words pour Java prend en charge toutes les plateformes cloud qui peuvent fonctionner Java les demandes

## Appui Java Versions

Aspose.Words pour Java soutien Java 7 et plus récent. Si vous êtes forcé d'utiliser Java 6, nous libérons toujours un séparé JAR pour Java 6.


## Dépendances facultatives

Comme nous l'avons dit plus haut, Aspose.Words pour Java nécessite *only* des Java Environnement d'exécution, et vous n'avez pas besoin d'installer de bibliothèques supplémentaires.

Cependant, il y a parfois des situations où vous pourriez avoir besoin d'ajouter des bibliothèques tierces:

- Oui. JogAmp JOGL bibliothèque pour le rendu du matériel OpenGL accéléré. La bibliothèque est incluse dans les mots-possibles POM fichier comme une dépendance externe. Vous pouvez modifier le POM fichier pour préserver les jarres JOGL requis pour votre plateforme seulement. Ou vous pouvez supprimer la dépendance si vous n'avez pas besoin du rendu OpenGL accéléré matériel.
- Oui. HarfBuzz moteur de police. Il est déjà inclus dans JRE 9 et plus récent. Si vous utilisez JRE 8 ou plus, vous pouvez utiliser la dépendance de façonnage-harfbuzz-plugin dans notre POM fichier. Sinon, vous pouvez supprimer la dépendance.
- Oui. Java Advanced Imaging (JAI) pour soutenir les images TIFF. Les images TIFF ne sont pas prises en charge par Java 8 ans et plus. Pour le soutien TIFF dans les anciens Java environnement, Aspose.Words pour Java dépend du [Java Advanced Imaging (JAI) Cols](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) de Oracle. Nous décrirons comment installer JAI ci-dessous.

### Comment installer JAI sur Windows

Suivez ces étapes pour installer native JAI et ImageIO le Windows:

1. Télécharger **JAI 1.1.3**.
   Au moment de l'écriture, seule la version 32-bit de l'installateur est disponible, donc si vous utilisez un JDK vous devez télécharger [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) et si vous utilisez un JRE vous devez télécharger [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Exécutez l'installateur et pointez-le vers le répertoire où JDK/JRE est installé.
1. Télécharger **JAI Image I/O 1.1**.
   Au moment de l'écriture, seule la version 32-bit de l'installateur est disponible, donc si vous utilisez un JDK vous devez télécharger [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) et si vous utilisez un JRE vous devez télécharger [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Exécutez l'installateur et pointez-le vers le répertoire où JDK/JRE est installé.

### Comment installer JAI sur Linux

Suivez ces étapes pour installer native JAI et ImageIO le Linux:

1. Télécharger **JAI 1.1.3** choisir l'architecture appropriée:
   1. [* 586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) pour les systèmes 32 bits
   1. [pour les](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) pour les 64 bits (même si vous utilisez des processeurs Intel)
1. Extraire le fichier dans un répertoire temporaire.
1. Déplacer JAR fichiers vers le JDK/JRE **lib/ext** dossier.
1. Déplacer les fichiers SO vers le JDK/JRE **lib/amd64** dossier.<br/>

   Par exemple, sur un 64 bits Ubuntu système, étapes 1-4 ressemblera à ceci:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Télécharger **JAI Image I/O 1.1**, choisir l'architecture appropriée:
   1. [* 586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) pour les systèmes 32 bits
   1. [pour les](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) pour les 64 bits (même si vous utilisez des processeurs Intel)
1. Extraire le fichier dans un répertoire temporaire.
1. Déplacer JAR fichiers vers le JDK/JRE **lib/ext** dossier.
1. Déplacer les fichiers SO vers le JDK/JRE **lib/amd64** dossier.<br/>

   Par exemple, sur un 64 bits Ubuntu système, les étapes 5-8 ressembleront à ceci:<br/>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Dossier pour fichiers temporaires

Aspose.Words pour Java utilise un répertoire temporaire sur votre ordinateur, qui est spécifié via `java.io.tmpdir` propriété du système. Aspose.Words pour Java écrit des fichiers temporaires, puis supprime ces fichiers dès que le rendu est terminé.

`java.io.tmpdir` est une norme Java propriété système qui est également utilisée par les politiques de stockage sur disque. Il détermine où le JVM écrit des fichiers temporaires.
