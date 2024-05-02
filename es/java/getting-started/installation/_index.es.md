---
title: Instalación
second_title: Aspose.Words para Java
articleTitle: Instalación
linktitle: Instalación
description: "Instala Aspose.Words para Java desde Maven repositorio. Define el Aspose.Words para Java dependencia en su pom.xml"
type: docs
weight: 10
url: /es/java/installation/
---

Asegúrate de que tu máquina conozca a la [Requisitos del sistema](/words/es/java/system-requirements/) antes de empezar.

Este artículo explica cómo instalar Aspose.Words para Java en tu computadora.

## Instala Aspose.Words para Java desde Maven Repositorio {#install-aspose-words-for-java-from-maven-repository}

Aspose acoge a todos Java APIS in [Maven repositorio](https://releases.aspose.com/words/java/). Usted puede utilizar fácilmente Aspose.Words para Java API directamente en su Maven Proyectos con configuraciones sencillas:

1. Primero, necesita especificar la hipótesis Maven Configuración/ubicación del repositorio en su Maven pom.xml como se muestra a continuación:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Entonces, definir el Aspose.Words para Java API dependencia en su pom.xml como sigue:
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
3. ¡Enhorabuena! Usted ha definido con éxito Aspose.Words para Java dependencia en su Maven proyecto.

## Vea también

* [Descargar Aspose.Words desde Maven](https://releases.aspose.com/words/java/)
