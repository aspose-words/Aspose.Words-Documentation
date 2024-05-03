---
title: Installation
second_title: Aspose.Words pour Java
articleTitle: Installation
linktitle: Installation
description: "Installer Aspose.Words pour Java de Maven dépôt. Définir la Aspose.Words pour Java dépendance dans votre pom.xml"
type: docs
weight: 10
url: /fr/java/installation/
---

Assurez-vous que votre machine rencontre [Demandes du système](/words/fr/java/system-requirements/) Avant de commencer.

Cet article explique comment installer Aspose.Words pour Java sur votre ordinateur.

## Installer Aspose.Words pour Java de Maven Dépôt {#install-aspose-words-for-java-from-maven-repository}

Poser tous les hôtes Java APIs en [Maven Dépôt](https://releases.aspose.com/words/java/). Vous pouvez facilement utiliser Aspose.Words pour Java API directement dans votre Maven Projets avec des configurations simples:

1. Premièrement, vous devez spécifier Aspose Maven Configuration/localisation du dépôt dans votre Maven pom.xml comme indiqué ci-dessous:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Ensuite, définissez le Aspose.Words pour Java API dépendance dans votre pom.xml comme suit:
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
3. Félicitations! Vous avez défini avec succès Aspose.Words pour Java dépendance dans votre Maven Projet.

## Voir aussi

* [Téléchargements Aspose.Words de Maven](https://releases.aspose.com/words/java/)
