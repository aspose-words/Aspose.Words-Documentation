---
title: การติดตั้ง
second_title: Aspose.WordsสำหรับJava
articleTitle: การติดตั้ง
linktitle: การติดตั้ง
description: "ติดตั้งAspose.WordsสำหรับJavaจากMavenที่เก็บข้อมูล กำหนดAspose.WordsสำหรับJavaการพึ่งพาในpom.xmlของคุณ"
type: docs
weight: 10
url: /th/java/installation/
timestamp: 2024-01-27-14-07-04
---

ให้แน่ใจว่าเครื่องของคุณตรงตาม [ความต้องการของระบบ](/words/java/system-requirements/) ก่อนที่คุณจะเริ่ม.

บทความนี้อธิบายวิธีการติดตั้งAspose.WordsสำหรับJavaบนคอมพิวเตอร์ของคุณ.

## ติดตั้งAspose.WordsสำหรับJavaจากMavenที่เก็บ {#install-aspose-words-for-java-from-maven-repository}

แอสโพสโฮสต์ทั้งหมดJavaAPIsใน [Mavenที่เก็บ](https://releases.aspose.com/words/java/). คุณสามารถใช้Aspose.WordsสำหรับJavaAPIโดยตรงในโครงการของคุณMavenด้วยการกำหนดค่าที่เรียบง่าย:

1. ขั้นแรก คุณต้องระบุการกำหนดค่า/ตำแหน่งที่เก็บ Aspose Maven ใน Maven pom.xml ของคุณดังแสดงด้านล่าง:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. จากนั้นกำหนดAspose.WordsสำหรับJavaAPIการพึ่งพาในpom.xmlของคุณดังนี้:
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
3. ยินดีด้วย! คุณได้กำหนดAspose.WordsสำหรับJavaการพึ่งพาในโครงการMavenของคุณเรียบร้อยแล้ว.

## ดูเพิ่มเติม

* [ดาวน์โหลดAspose.WordsจากMaven](https://releases.aspose.com/words/java/)
