---
title: Установка
second_title: Aspose.Words для Java
articleTitle: Установка
linktitle: Установка
description: "Устанавливать Aspose.Words для Java из Maven хранилище. Определить Aspose.Words для Java Зависимость от pom.xml"
type: docs
weight: 10
url: /ru/java/installation/
---

Убедитесь, что ваша машина соответствует [Системные требования](/words/ru/java/system-requirements/) Прежде чем начать.

В этой статье объясняется, как установить Aspose.Words для Java на вашем компьютере.

## Устанавливать Aspose.Words для Java из Maven Репозиторий {#install-aspose-words-for-java-from-maven-repository}

Взять хостов всех Java APIв [Maven хранилище](https://releases.aspose.com/words/java/). Вы можете легко использовать Aspose.Words для Java API непосредственно в вашей Maven Проекты с простыми конфигурациями:

1. Во-первых, вам нужно указать назначение Maven Конфигурация/местоположение хранилища в вашем Maven pom.xml, как показано ниже:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Затем определите Aspose.Words для Java API Зависимость от pom.xml:
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
3. Поздравляю! Вы успешно определили Aspose.Words для Java Зависимость от вашего Maven Проект.

## Смотрите также

* [Скачать Aspose.Words из Maven](https://releases.aspose.com/words/java/)
