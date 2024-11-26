---
title: Instalação
second_title: Aspose.Words para Java
articleTitle: Instalação
linktitle: Instalação
description: "Instale Aspose.Words para Java do repositório Maven. Defina a dependência Aspose.Words para Java em seu pom.xml"
type: docs
weight: 10
url: /pt/java/installation/
timestamp: 2024-01-27-14-07-04
---

Certifique-se de que a sua máquina [requisitos do sistema](/words/java/system-requirements/) antes de começar.

Este artigo explica como instalar Aspose.Words para Java no seu computador.

## Instalar Aspose.Words para Java a partir de Maven repositório {#install-aspose-words-for-java-from-maven-repository}

Aspose hospeda todos os Java APIs em [Maven reposit8](https://releases.aspose.com/words/java/). Você pode facilmente usar Aspose.Words para Java API diretamente em seus Maven projetos com configurações simples:

1. Primeiro, você precisa especificar Aspose Maven Configuração/localização do repositório em seu Maven pom.xml como mostrado abaixo:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Em seguida, defina a dependência Aspose.Words para Java API em seu pom.xml da seguinte forma:
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
3. Meus parabéns! Você definiu com sucesso a dependência Aspose.Words para Java em seu projeto Maven.

## Ver Também

* [Descargar Aspose.Words a partir de Maven](https://releases.aspose.com/words/java/)
