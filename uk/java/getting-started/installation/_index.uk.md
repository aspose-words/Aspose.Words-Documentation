---
title: Монтаж
second_title: Aspose.Words для Java
articleTitle: Монтаж
linktitle: Монтаж
description: "Встановити Aspose.Words для Java з Maven репозиторій. Визначте Aspose.Words для Java залежність в pom.xml"
type: docs
weight: 10
url: /uk/java/installation/
timestamp: 2024-01-27-14-07-04
---

Переконайтеся, що ваша машина відповідає [Вимоги до системи](/words/uk/java/system-requirements/) перед початком.

Ця стаття пояснює, як встановити Aspose.Words для Java на комп'ютері.

## Встановити Aspose.Words для Java з Maven Репозиторій {#install-aspose-words-for-java-from-maven-repository}

Aspose приймає всіх Java APIй [Maven репозиторій](https://releases.aspose.com/words/java/)й Ви можете легко використовувати Aspose.Words для Java API прямо у вашому Maven Проекти з простими налаштуваннями:

1,1 км По-перше, потрібно вказати Aspose Maven Репозиторійна конфігурація Maven pom.xml як показано нижче:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2,2 км Далі визначаємо Aspose.Words для Java API залежностей в pom.xml:
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
3. У Вітаємо! Ви успішно визначилися Aspose.Words для Java залежностей у вашому Maven проект.

## Дивитися ще

* [Завантажити Aspose.Words з Maven](https://releases.aspose.com/words/java/)
