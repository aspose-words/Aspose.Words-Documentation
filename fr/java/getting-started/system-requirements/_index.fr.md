---
title: Configuration Système Requise
second_title: Aspose.Words pour Java
articleTitle: Configuration Système Requise
linktitle: Configuration Système Requise
description: "Avant de commencer à travailler avec Aspose.Words pour Java, assurez-vous de respecter les exigences du système d'exploitation, de la plate-forme, des frameworks et de l'environnement afin que les activités sur vos appareils soient correctement comptabilisées."
type: docs
weight: 80
url: /fr/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words pour Java ne nécessite pas l'installation d'un produit tiers tel que Microsoft Word. Aspose.Words lui-même est un moteur de création, de modification, de conversion et de rendu de documents dans divers formats, y compris Microsoft Word formats de document.

## Systèmes d'Exploitation Pris En Charge

Tout système d'exploitation pouvant exécuter l'environnement d'exécution Java (JRE) peut exécuter Aspose.Words pour Java. Le tableau suivant répertorie la plupart des systèmes d'exploitation pris en charge, mais pas tous.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">Système D'Exploitation</td>
			<td style="font-weight: bold; width:400px">Versions</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>et d'autres</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS version 10.9 (Mavericks) et versions ultérieures</li></ul></td>
		</tr>
  <tr>
			<td>Mobiles</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Plateformes Cloud Prises En Charge

Aspose.Words pour Java prend en charge toutes les plates-formes cloud pouvant exécuter Java applications.

## Versions Java prises en charge

Aspose.Words pour Java prend en charge Java 7 et plus récent. Si vous êtes obligé d'utiliser Java 6, nous publions toujours un JAR séparé pour Java 6.


## Dépendances Facultatives

Comme nous l'avons indiqué ci-dessus, Aspose.Words pour Java nécessite *only* l'environnement d'exécution Java, et vous n'avez pas besoin d'installer de bibliothèques supplémentaires.

Cependant, il arrive parfois que vous deviez ajouter des bibliothèques tierces:

- Bibliothèque JogAmp JOGL pour le rendu OpenGL accéléré par le matériel. La bibliothèque est incluse dans le fichier aspose-words POM en tant que dépendance externe. Vous pouvez modifier le fichier POM pour conserver les pots JOGL requis pour votre plate-forme uniquement. Ou vous pouvez supprimer la dépendance si vous n'avez pas besoin d'un rendu OpenGL accéléré par le matériel.
- HarfBuzz moteur de polices. Il est déjà inclus dans JRE 9 et plus récent. Si vous utilisez JRE 8 ou plus ancien, vous pouvez utiliser la dépendance shaping-harfbuzz-plugin dans notre fichier POM. Sinon, vous pouvez supprimer la dépendance.
- Java Imagerie avancée (JAI) pour prendre en charge TIFF images. les images TIFF ne sont pas prises en charge par Java 8 ans et plus. Pour la prise en charge de TIFF dans les anciens environnements Java, Aspose.Words pour Java dépend de la [Ensemble d'imagerie avancée Java (JAI)](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) d'Oracle. Nous décrirons comment installer JAI ci-dessous.

### Comment installer JAI sur Windows

Suivez ces étapes pour installer natif JAI et ImageIO sur Windows:

1. Télécharger **JAI 1.1.3**.
   Au moment de la rédaction de cet article, seule la version 32 bits de l'installateur est disponible, donc si vous utilisez un JDK, vous devez télécharger [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) et si vous utilisez un JRE, vous devez télécharger [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Exécutez le programme d'installation et pointez-le vers le répertoire où JDK/JRE est installé.
1. Télécharger **JAI Image I/O 1.1**.
   Au moment de la rédaction de cet article, seule la version 32 bits de l'installateur est disponible, donc si vous utilisez un JDK, vous devez télécharger [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) et si vous utilisez un JRE, vous devez télécharger [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Exécutez le programme d'installation et pointez-le vers le répertoire où JDK/JRE est installé.

### Comment installer JAI sur Linux

Suivez ces étapes pour installer natif JAI et ImageIO sur Linux:

1. Télécharger **JAI 1.1.3** choisir l'architecture appropriée:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) pour les systèmes 32 bits
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) pour les 64 bits (même si vous utilisez des processeurs Intel)
1. Extrayez le fichier dans un répertoire temporaire.
1. Déplacer JAR fichiers vers le JDK/JRE **lib/ext** dossier.
1. Déplacer SO fichiers vers le JDK/JRE **lib/amd64** dossier.<br>

   Par exemple, sur un système Ubuntu 64 bits, les étapes 1 à 4 ressembleront à ceci:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Téléchargez **JAI Image I/O 1.1**, en choisissant l'architecture appropriée:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) pour les systèmes 32 bits
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) pour les 64 bits (même si vous utilisez des processeurs Intel)
1. Extrayez le fichier dans un répertoire temporaire.
1. Déplacer JAR fichiers vers le JDK/JRE **lib/ext** dossier.
1. Déplacer SO fichiers vers le JDK/JRE **lib/amd64** dossier.<br>

   Par exemple, sur un système Ubuntu 64 bits, les étapes 5 à 8 ressembleront à ceci:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## Dossier pour les Fichiers Temporaires

Aspose.Words pour Java utilise un répertoire temporaire sur votre ordinateur, qui est spécifié via la propriété système `java.io.tmpdir`. Aspose.Words pour Java écrit des fichiers temporaires, puis supprime ces fichiers dès que le rendu est terminé.

`java.io.tmpdir` est une propriété système Java standard qui est également utilisée par les stratégies de stockage sur disque. Il détermine où le JVM écrit les fichiers temporaires.
