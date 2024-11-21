---
title: Installazione
second_title: Aspose.Words per Java
articleTitle: Installazione
linktitle: Installazione
description: "Installazione Aspose.Words per Java da Maven repository. Definire il Aspose.Words per Java dipendenza nel vostro pom.xml"
type: docs
weight: 10
url: /it/java/installation/
timestamp: 2024-01-27-14-07-04
---

Assicurarsi che la vostra macchina incontra [Requisiti di sistema](/words/it/java/system-requirements/) prima di iniziare.

Questo articolo spiega come installare Aspose.Words per Java sul tuo computer.

## Installazione Aspose.Words per Java da Maven Repository {#install-aspose-words-for-java-from-maven-repository}

Aspose ospita tutti Java API# [Maven repository](https://releases.aspose.com/words/java/). Si può facilmente usare Aspose.Words per Java API direttamente nel vostro Maven Progetti con semplici configurazioni:

1. In primo luogo, è necessario specificare Aspose Maven Configurazione/localizzazione del repository nella tua Maven pom.xml come mostrato di seguito:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Poi, definire il Aspose.Words per Java API dipendenza nel vostro pom.xml come segue:
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
3. Congratulazioni! Hai definito con successo Aspose.Words per Java dipendenze nella vostra Maven progetto.

## Vedi anche

* [Scarica Aspose.Words # Maven](https://releases.aspose.com/words/java/)
