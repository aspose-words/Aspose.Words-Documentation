---
title: Instalación
second_title: Aspose.Words por Java
articleTitle: Instalación
linktitle: Instalación
description: "Instale Aspose.Words para Java desde el repositorio Maven. Defina la dependencia Aspose.Words para Java en su pom.xml"
type: docs
weight: 10
url: /es/java/installation/
timestamp: 2024-01-27-14-07-04
---

Asegúrese de que su máquina cumpla con los [requisitos del sistema](/words/java/system-requirements/) antes de que empieces.

Este artículo explica cómo instalar Aspose.Words para Java en su computadora.

## Instalar Aspose.Words para Java desde Maven Repositorio {#install-aspose-words-for-java-from-maven-repository}

Aspose aloja todos Java APIs en [Maven repositorio](https://releases.aspose.com/words/java/). Puede usar fácilmente Aspose.Words para Java API directamente en sus Maven Proyectos con configuraciones simples:

1. Primero, debe especificar la configuración/ubicación del repositorio Aspose Maven en su Maven pom.xml como se muestra a continuación:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Luego, defina la dependencia Aspose.Words para Java API en su pom.xml de la siguiente manera:
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
3. ¡Felicitaciones! Ha definido correctamente la dependencia Aspose.Words para Java en su proyecto Maven.

## Véase También

* [Descargar Aspose.Words de Maven](https://releases.aspose.com/words/java/)
