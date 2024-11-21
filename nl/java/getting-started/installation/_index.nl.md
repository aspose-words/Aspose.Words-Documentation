---
title: Installatie
second_title: Aspose.Words voor Java
articleTitle: Installatie
linktitle: Installatie
description: "Installeren Aspose.Words voor Java van Maven repository. Definieer de Aspose.Words voor Java afhankelijkheid in uw pom.xml"
type: docs
weight: 10
url: /nl/java/installation/
timestamp: 2024-01-27-14-07-04
---

Zorg ervoor dat uw machine voldoet aan de [Systeemeisen](/words/nl/java/system-requirements/) Voordat je begint.

Dit artikel legt uit hoe te installeren Aspose.Words voor Java Op je computer.

## Installeren Aspose.Words voor Java van Maven Repository {#install-aspose-words-for-java-from-maven-repository}

Aspose hosts all Java APIsm [Maven archief](https://releases.aspose.com/words/java/). U kunt gemakkelijk gebruiken Aspose.Words voor Java API rechtstreeks in uw Maven Projecten met eenvoudige configuraties:

1. Eerst moet je Aspose specificeren Maven Repository configuratie/locatie in uw Maven pom.xml zoals hieronder weergegeven:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Definieer dan de Aspose.Words voor Java API afhankelijkheid in uw pom.xml als volgt:
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
3. Gefeliciteerd! U hebt de Aspose.Words voor Java afhankelijkheid in uw Maven project.

## Zie ook

* [Gedownload Aspose.Words bestelwagen Maven](https://releases.aspose.com/words/java/)
