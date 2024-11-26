---
title: Installasie
second_title: Aspose.Words vir Java
articleTitle: Installasie
linktitle: Installasie
description: "Installeer Aspose.Words vir Java van Maven bewaarplek. Definieer die Aspose.Words vir Java afhanklikheid in jou pom.xml"
type: docs
weight: 10
url: /af/java/installation/
timestamp: 2024-01-27-14-07-04
---

Maak seker dat jou masjien voldoen aan die [stelselvereistes](/words/java/system-requirements/) voordat jy begin.

Hierdie artikel verduidelik hoe om te installeer Aspose.Words vir Java op jou rekenaar.

## Installeer Aspose.Words vir Java van Maven Bewaarplek {#install-aspose-words-for-java-from-maven-repository}

Aspose gasheer al Java APIs in [Maven bewaarplek](https://releases.aspose.com/words/java/). Jy kan maklik gebruik Aspose.Words vir Java API direk in jou Maven Projekte met eenvoudige konfigurasies:

1. Eerstens moet Jy aspose Maven Repository configuration/location in jou Maven pom spesifiseer.xml soos hieronder getoon:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Definieer dan die Aspose.Words vir Java API afhanklikheid in jou pom.xml soos volg:
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
3. Baie geluk! Jy het die definisie van Aspose.Words vir Java afhanklikheid in jou Maven projek.

## Sien Ook

* [Aflaai Aspose.Words van Maven](https://releases.aspose.com/words/java/)
