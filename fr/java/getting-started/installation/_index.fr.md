---
title: Montage
second_title: Aspose.Words pour Java
articleTitle: Montage
linktitle: Montage
description: "Installez Aspose.Words pour Java à partir du référentiel Maven. Définissez la dépendance Aspose.Words pour Java dans votre pom.xml"
type: docs
weight: 10
url: /fr/java/installation/
timestamp: 2024-01-27-14-07-04
---

Assurez-vous que votre machine répond aux [configuration système requise](/words/java/system-requirements/) avant de commencer.

Cet article explique comment installer Aspose.Words pour Java sur votre ordinateur.

## Installer Aspose.Words pour Java à partir de Maven Référentiel {#install-aspose-words-for-java-from-maven-repository}

Aspose héberge tous les Java APIs dans [Maven dépôt](https://releases.aspose.com/words/java/). Vous pouvez facilement utiliser Aspose.Words pour Java API directement dans vos projets Maven avec des configurations simples:

1. Tout d'abord, vous devez spécifier la configuration/l'emplacement du référentiel Aspose Maven dans votre Maven pom.xml comme indiqué ci-dessous:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Ensuite, définissez la dépendance Aspose.Words pour Java API dans votre pom.xml comme suit:
	{{< highlight html >}}
	<dependencies>
		<dependency>
			<groupId>com.aspose</groupId>
			<artifactId>aspose-words</artifactId>
			<version>22.11</version>
			<classifier>jdk17</classifier>
		</dependency>
		<dependency>
			<groupId>com.aspose</groupId>
			<artifactId>aspose-words</artifactId>
			<version>22.11</version>
			<classifier>javadoc</classifier>
		</dependency>
	</dependencies>
	{{< /highlight >}}
3. Bravo! Vous avez défini avec succès la dépendance Aspose.Words pour Java dans votre projet Maven.

## Voir Aussi

* [Télécharger Aspose.Words à partir de Maven](https://releases.aspose.com/words/java/)
