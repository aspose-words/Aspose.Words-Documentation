---
title: تركيب
second_title: Aspose.Words ل Java
articleTitle: تركيب
linktitle: تركيب
description: "تثبيت Aspose.Words ل Java من Maven مستودع. حدد Aspose.Words لـ Java التبعية في pom.xml"
type: docs
weight: 10
url: /ar/java/installation/
timestamp: 2024-01-27-14-07-04
---

تأكد من أن جهازك يلبي [متطلبات النظام](/words/java/system-requirements/) قبل أن تبدأ.

تشرح هذه المقالة كيفية تثبيت Aspose.Words لـ Java على جهاز الكمبيوتر الخاص بك.

## تثبيت Aspose.Words ل Java من Maven مستودع {#install-aspose-words-for-java-from-maven-repository}

يستضيف أسبوس الكل Java APIs في [Maven مستودع](https://releases.aspose.com/words/java/). يمكنك بسهولة استخدام Aspose.Words ل Java API مباشرة في مشاريعك Maven مع تكوينات بسيطة:

1. أولا، تحتاج إلى تحديد تكوين / موقع مستودع Maven في Maven pom.xml كما هو موضح أدناه:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. ثم حدد Aspose.Words لـ Java API التبعية في pom.xml على النحو التالي:
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
3. مبارك! لقد قمت بتعريف Aspose.Words للتبعية Java بنجاح في مشروعك Maven.

## أنظر أيضا

* [تحميل Aspose.Words من Maven](https://releases.aspose.com/words/java/)
