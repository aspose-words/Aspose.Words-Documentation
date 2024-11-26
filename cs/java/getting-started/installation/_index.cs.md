---
title: Instalace
second_title: Aspose.Words místo Java
articleTitle: Instalace
linktitle: Instalace
description: "Nainstalovat Aspose.Words místo Java od Maven Úložiště. Definovat Aspose.Words místo Java závislost ve vašem pom.xml"
type: docs
weight: 10
url: /cs/java/installation/
timestamp: 2024-01-27-14-07-04
---

Ujistěte se, že váš stroj splňuje [Požadavky na systém](/words/cs/java/system-requirements/) Než začneš.

Tento článek vysvětluje, jak nainstalovat Aspose.Words místo Java na tvém počítači.

## Nainstalovat Aspose.Words místo Java od Maven Repozitář {#install-aspose-words-for-java-from-maven-repository}

Aspose hostí všechny Java APIs v [Maven úložiště](https://releases.aspose.com/words/java/). Můžete snadno použít Aspose.Words místo Java API přímo ve vašem Maven Projekty s jednoduchými konfiguracemi:

1. Nejprve musíte zadat Aspose Maven Repozitář konfigurace / umístění ve vašem Maven pom.xml, jak je uvedeno níže:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Pak definujte Aspose.Words místo Java API závislost ve Vašem pom.xml takto:
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
3. Gratuluji! Úspěšně jste definovali Aspose.Words místo Java závislost ve Vašem Maven projekt.

## Viz také

* [Stáhnout Aspose.Words tro Maven](https://releases.aspose.com/words/java/)
