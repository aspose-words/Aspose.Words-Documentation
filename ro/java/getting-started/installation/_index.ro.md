---
title: Instalare
second_title: Aspose.Words pentru Java
articleTitle: Instalare
linktitle: Instalare
description: "Instalare Aspose.Words pentru Java din depozitul Maven. Definiți Aspose.Words pentru Java dependența în pom.xml"
type: docs
weight: 10
url: /ro/java/installation/
---

Asigurați-vă că aparatul dvs. îndeplinește [cerințe de sistem](/words/java/system-requirements/) înainte de a începe.

Acest articol explică modul de instalare Aspose.Words pentru Java pe computer.

## Instalare Aspose.Words pentru Java din Maven depozit {#install-aspose-words-for-java-from-maven-repository}

Aspose găzduiește toate Java APIs în [Maven depozit](https://releases.aspose.com/words/java/). Puteți utiliza cu ușurință Aspose.Words pentru Java API direct în proiectele dvs. Maven cu configurații simple:

1. Mai întâi, trebuie să specificați Aspose Maven configurare/locație depozit în Maven pom.xml după cum se arată mai jos:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Apoi, definiți Aspose.Words pentru Java API dependență în pom.xml după cum urmează:
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
3. Felicitări! Ați definit cu succes Aspose.Words pentru Java dependența în proiectul tău Maven.

## Vezi Și

* [Descărcați Aspose.Words din Maven](https://releases.aspose.com/words/java/)
