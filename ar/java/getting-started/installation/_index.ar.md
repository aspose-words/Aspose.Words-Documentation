---
title: التركيب
second_title: Aspose.Words for Java
articleTitle: التركيب
linktitle: التركيب
description: "Install Aspose.Words for Java من Maven مستودع تعريف Aspose.Words for Java التبعية في بومك"
type: docs
weight: 10
url: /ar/java/installation/
---

احرص على أن تلتقي آلتك [متطلبات النظام](/words/ar/java/system-requirements/) قبل أن تبدأ

وتوضح هذه المادة كيفية تركيبها Aspose.Words for Java على حاسوبك

## Install Aspose.Words for Java من Maven المستودع {#install-aspose-words-for-java-from-maven-repository}

يفترض أن يستضيف كل شيء Java APIفي [Maven مستودع](https://releases.aspose.com/words/java/). يمكنك استخدامه بسهولة Aspose.Words for Java API مباشرة في Maven المشاريع ذات التشكيلات البسيطة:

1 أولاً، يجب أن تحددي (أفترض) Maven تشكيلة المستودعات/الموقع في Maven بوم-كسميل على النحو المبين أدناه:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. ثم تعريف Aspose.Words for Java API التبعية في بوم
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
3 تهانينا! لقد نجحت في تحديد Aspose.Words for Java اعتمادك Maven مشروع

## انظر أيضا

* [تحميل Aspose.Words من Maven](https://releases.aspose.com/words/java/)
