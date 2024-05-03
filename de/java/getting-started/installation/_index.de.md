---
title: Installation
second_title: Aspose.Words für Java
articleTitle: Installation
linktitle: Installation
description: "Installieren Aspose.Words für Java von Maven Repository. Definieren Sie die Aspose.Words für Java Abhängigkeit in Ihrem pom.xml"
type: docs
weight: 10
url: /de/java/installation/
---

Achten Sie darauf, dass Ihre Maschine [Das ist der Grund](/words/de/java/system-requirements/) bevor Sie beginnen.

Dieser Artikel erklärt die Installation Aspose.Words für Java auf Ihrem Computer.

## Installieren Aspose.Words für Java von Maven Repository {#install-aspose-words-for-java-from-maven-repository}

Aspose beherbergt alle Java APIin [Maven Repository](https://releases.aspose.com/words/java/). Sie können leicht verwenden Aspose.Words für Java API direkt in Ihrem Maven Projekte mit einfachen Konfigurationen:

ANHANG Zuerst müssen Sie Aspose angeben Maven Repository Konfiguration/Ort in Ihrem Maven pom.xml wie unten gezeigt:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Dann definieren Sie die Aspose.Words für Java API Abhängigkeit in Ihrem pom.xml wie folgt:
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
3. Glückwunsch! Sie haben erfolgreich definiert Aspose.Words für Java Abhängigkeit in Ihrer Maven Projekt.

## Siehe auch

* [Downloads Aspose.Words von Maven](https://releases.aspose.com/words/java/)
