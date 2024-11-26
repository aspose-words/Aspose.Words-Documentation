---
title: Монтиране
second_title: Aspose.Words вместо Java
articleTitle: Монтиране
linktitle: Монтиране
description: "Инсталиране Aspose.Words вместо Java от Maven Хранилище. Дефинирай Aspose.Words вместо Java Зависимост от вашия pom.xml"
type: docs
weight: 10
url: /bg/java/installation/
timestamp: 2024-01-27-14-07-04
---

Уверете се, че машината ви отговаря на [Системни изисквания](/words/bg/java/system-requirements/) Преди да започнеш.

Тази статия обяснява как да инсталирате Aspose.Words вместо Java на компютъра ти.

## Инсталиране Aspose.Words вместо Java от Maven Хранилище {#install-aspose-words-for-java-from-maven-repository}

Домакин на всичко Java APIре [Maven хранилище на данни](https://releases.aspose.com/words/java/). Можете лесно да използвате Aspose.Words вместо Java API директно в Maven Проекти с прости конфигурации:

1. Първо, трябва да посочите Aspose Maven Конфигурация/местоположение във Вашия Maven пом. xml, както е показано по- долу:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Тогава, дефинирайте Aspose.Words вместо Java API Зависимостта от вашия pom.xml, както следва:
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
3. Поздравления! Вие успешно сте определили Aspose.Words вместо Java зависимост от Вашата Maven проект.

## Вижте също

* [Изтегляне Aspose.Words от Maven](https://releases.aspose.com/words/java/)
