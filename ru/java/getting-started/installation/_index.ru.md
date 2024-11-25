---
title: Установка
second_title: Aspose.Words для Java
articleTitle: Установка
linktitle: Установка
description: "Установите Aspose.Words для Java из репозитория Maven. Определите зависимость Aspose.Words для Java в вашем pom.xml"
type: docs
weight: 10
url: /ru/java/installation/
timestamp: 2024-01-27-14-07-04
---

Перед началом работы убедитесь, что ваш компьютер соответствует требованиям к системе [системные требования](/words/java/system-requirements/).

В этой статье объясняется, как установить Aspose.Words для Java на ваш компьютер.

## Установить Aspose.Words для Java из Maven репозитория {#install-aspose-words-for-java-from-maven-repository}

Aspose размещает все Java APIs в [Maven репозитории](https://releases.aspose.com/words/java/). Вы можете легко использовать Aspose.Words для Java API непосредственно в своих Maven проектах с помощью простых конфигураций:

1. Во-первых, вам нужно указать конфигурацию/местоположение хранилища Aspose Maven в вашем Maven pom.xml, как показано ниже:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Затем определите зависимость Aspose.Words для Java API в вашем pom.xml следующим образом:
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
3. Поздравляю! Вы успешно определили зависимость Aspose.Words для Java в вашем проекте Maven.

## Смотрите также

* [Скачать Aspose.Words из Maven](https://releases.aspose.com/words/java/)
