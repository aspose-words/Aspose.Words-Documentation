---
title: Installazione
second_title: Aspose.Words per Java
articleTitle: Installazione
linktitle: Installazione
description: "Installare Aspose.Words per Java dal repository Maven. Definisci la dipendenza Aspose.Words per Java nel tuo pom.xml"
type: docs
weight: 10
url: /it/java/installation/
timestamp: 2024-01-27-14-07-04
---

Assicurati che la tua macchina soddisfi il [requisiti di sistema](/words/java/system-requirements/) prima di iniziare.

Questo articolo spiega come installare Aspose.Words per Java sul computer.

## Installare Aspose.Words per Java dal repositoryMaven {#install-aspose-words-for-java-from-maven-repository}

Aspose ospita tutti Java APIs in [Maven archivio](https://releases.aspose.com/words/java/). Puoi usare facilmente Aspose.Words per Java API direttamente nei tuoi progetti Maven con semplici configurazioni:

1. Innanzitutto, è necessario specificare la configurazione/posizione del repository Aspose Maven nel proprio Maven pom.xml come mostrato di seguito:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Quindi, definisci la dipendenza Aspose.Words per Java API nel tuo pom.xml come segue:
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
3. Felicitazioni! È stata definita correttamente la dipendenza Aspose.Words per Java nel progetto Maven.

## Vedi anche

* [Scarica Aspose.Words da Maven](https://releases.aspose.com/words/java/)
