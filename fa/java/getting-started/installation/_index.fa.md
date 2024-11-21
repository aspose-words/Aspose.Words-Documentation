---
title: نصب نصب
second_title: Aspose.Words برای Java
articleTitle: نصب نصب
linktitle: نصب نصب
description: "نصب install Aspose.Words برای Java از Maven مخزن تعریف کردن Aspose.Words برای Java وابستگی به pom.xml"
type: docs
weight: 10
url: /fa/java/installation/
timestamp: 2024-01-27-14-07-04
---

اطمینان حاصل کنید که دستگاه شما با ماشین مطابقت دارد [الزامات سیستم](/words/fa/java/system-requirements/) قبل از شروع

این مقاله توضیح می دهد که چگونه نصب کنیم Aspose.Words برای Java روی کامپیوتر شما

## نصب install Aspose.Words برای Java از Maven بازگشت {#install-aspose-words-for-java-from-maven-repository}

میزبانی همه Java APIدر [Maven مخزن](https://releases.aspose.com/words/java/)... شما می توانید به راحتی استفاده کنید Aspose.Words برای Java API به طور مستقیم در Maven پروژه هایی با تنظیمات ساده:

1. اول، شما باید Aspose را مشخص کنید Maven Repository Configuration/location in your Maven نشان داده شده در زیر:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. سپس تعریف کنید Aspose.Words برای Java API وابستگی به pom.xml شما به شرح زیر است:
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
3. تبریک می گویم! شما با موفقیت تعریف کرده اید Aspose.Words برای Java وابستگی به شما Maven پروژه

## همچنین ببینید

* [دانلود بازی کامپیوتر Aspose.Words دانلود بازی کامپیوتر Maven](https://releases.aspose.com/words/java/)
