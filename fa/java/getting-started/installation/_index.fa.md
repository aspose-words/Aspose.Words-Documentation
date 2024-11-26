---
title: نصب و راه اندازی
second_title: Aspose.Words برای Java
articleTitle: نصب و راه اندازی
linktitle: نصب و راه اندازی
description: "Aspose.Words را برای Java از Maven مخزن نصب کنید. وابستگی Aspose.Words برای Java را در pom.xmlخود تعریف کنید"
type: docs
weight: 10
url: /fa/java/installation/
timestamp: 2024-01-27-14-07-04
---

مطمئن شو که ماشينت با [الزامات سیستم](/words/java/system-requirements/) قبل از شروع

این مقاله توضیح می دهد که چگونه Aspose.Words برای Java را در کامپیوتر خود نصب کنید.

## Aspose.Words را برای Java از Maven مخزن {#install-aspose-words-for-java-from-maven-repository}نصب کنید

Aspose میزبان همه Java APIs در [Maven مخزن](https://releases.aspose.com/words/java/). شما به راحتی می توانید از Aspose.Words برای Java API به طور مستقیم در پروژه های Maven خود با پیکربندی های ساده استفاده کنید:

1. ابتدا باید Aspose Maven repository configuration/location را در Maven pom.xml خود مشخص کنید که در زیر نشان داده شده است:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. سپس، وابستگی Aspose.Words برای Java API را در pom.xml خود به شرح زیر تعریف کنید:
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
3. تبريک ميگم شما با موفقیت Aspose.Words را برای Java وابستگی در پروژه Maven خود تعریف کرده اید.

## بایگانی برچسب برای:

* [دانلود Aspose.Words از Maven](https://releases.aspose.com/words/java/)
