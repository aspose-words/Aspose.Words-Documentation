---
title: Instalacja
second_title: Aspose.Words zamiast Java
articleTitle: Instalacja
linktitle: Instalacja
description: "Instalacja Aspose.Words zamiast Java od Maven repozytorium. Zdefiniuj Aspose.Words zamiast Java zależność w pom.xml"
type: docs
weight: 10
url: /pl/java/installation/
timestamp: 2024-01-27-14-07-04
---

Upewnij się, że maszyna spełnia [Wymaganie dotyczące ukladu](/words/pl/java/system-requirements/) Zanim zaczniesz.

Ten artykuł wyjaśnia jak zainstalować Aspose.Words zamiast Java na komputerze.

## Instalacja Aspose.Words zamiast Java od Maven Repozytorium {#install-aspose-words-for-java-from-maven-repository}

Zapisz wszystkie hosty Java APIs [Maven repozytor](https://releases.aspose.com/words/java/). Można łatwo użyć Aspose.Words zamiast Java API bezpośrednio w Maven Projekty z prostą konfiguracją:

1. Po pierwsze, musisz określić pozycję Maven Konfiguracja / lokalizacja repozytorium w Twoim Maven Pom.xml, jak przedstawiono poniżej:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Następnie zdefiniuj Aspose.Words zamiast Java API zależność w pom.xml w następujący sposób:
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
3. Gratulacje! Pomyślnie zdefiniowałeś Aspose.Words zamiast Java uzależnienie od Maven projekt.

## Zobacz również

* [Pobiecz Aspose.Words do Maven](https://releases.aspose.com/words/java/)
