---
title: Installation
second_title: Aspose.Words für Java
articleTitle: Installation
linktitle: Installation
description: "Installiere Aspose.Words für Java aus Maven Repository. Definieren Sie die Abhängigkeit Aspose.Words für Java in Ihrem pom.xml"
type: docs
weight: 10
url: /de/java/installation/
timestamp: 2024-01-27-14-07-04
---

Stellen Sie sicher, dass Ihre Maschine die Anforderungen erfüllt [Systemanforderungen](/words/java/system-requirements/) bevor Sie beginnen.

In diesem Artikel wird erläutert, wie Sie Aspose.Words für Java auf Ihrem Computer installieren.

## Installiere Aspose.Words für Java aus Maven Repository {#install-aspose-words-for-java-from-maven-repository}

Aspose hostet alle Java APIs in [Maven Speicher](https://releases.aspose.com/words/java/). Sie können Aspose.Words einfach für Java API direkt in Ihren Maven Projekten mit einfachen Konfigurationen verwenden:

1. Zuerst müssen Sie die Konfiguration / den Speicherort des Aspose Maven -Repositorys in Ihrem Maven pom.xml angeben, wie unten gezeigt:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Definieren Sie dann die Abhängigkeit Aspose.Words für Java API in Ihrem pom.xml wie folgt:
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
3. Herzlichen Glückwunsch! Sie haben die Abhängigkeit Aspose.Words für Java in Ihrem Maven-Projekt erfolgreich definiert.

## Siehe auch

* [Herunterladen Aspose.Words von Maven](https://releases.aspose.com/words/java/)
