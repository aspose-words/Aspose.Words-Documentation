---
title: Instalação
second_title: Aspose.Words para Java
articleTitle: Instalação
linktitle: Instalação
description: "Instalar Aspose.Words para Java a partir de Maven repositório. Definir o Aspose.Words para Java dependência em seu pom.xml"
type: docs
weight: 10
url: /pt/java/installation/
timestamp: 2024-01-27-14-07-04
---

Certifique-se de que sua máquina encontra o [Requisitos do sistema](/words/pt/java/system-requirements/) antes de começares.

Este artigo explica como instalar Aspose.Words para Java no seu computador.

## Instalar Aspose.Words para Java a partir de Maven Repositório {#install-aspose-words-for-java-from-maven-repository}

Aspose hosts todos Java APIem [Maven - Sim](https://releases.aspose.com/words/java/). Você pode facilmente usar Aspose.Words para Java API diretamente em seu Maven Projetos com configurações simples:

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
2. Então, defina o Aspose.Words para Java API dependência em seu pom.xml como segue:
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
3. Parabéns! Você definiu com sucesso o Aspose.Words para Java dependência em sua Maven projeto.

## Ver também

* [Baixar Aspose.Words a partir de Maven](https://releases.aspose.com/words/java/)
