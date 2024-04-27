---
title: การติดตั้ง
second_title: Aspose.Words สําหรับ Java
articleTitle: การติดตั้ง
linktitle: การติดตั้ง
description: "ติดตั้ง Aspose.Words สําหรับ Java จาก Maven ห้องเก็บของ นิยาม Aspose.Words สําหรับ Java เชื่อมโยงใน pom.xml ของคุณ"
type: docs
weight: 10
url: /th/java/installation/
---

ให้แน่ใจว่าเครื่องของคุณพบกับ [เงื่อนไขของระบบ](/words/th/java/system-requirements/) ก่อนที่คุณจะเริ่มต้น

บทความ นี้ อธิบาย วิธี ติด ตั้ง Aspose.Words สําหรับ Java ในคอมพิวเตอร์ของคุณ

## ติดตั้ง Aspose.Words สําหรับ Java จาก Maven เรียกคืน {#install-aspose-words-for-java-from-maven-repository}

ต้นแบบทั้งหมด Java APIแสดง [Maven คลังสื่อ](https://releases.aspose.com/words/java/). คุณใช้ง่ายนะ Aspose.Words สําหรับ Java API โดยตรงในของคุณ Maven โครงการที่มีการปรับแต่งง่าย ๆ:

1 อย่างแรก คุณต้องระบุสถานะก่อน Maven การปรับแต่ง/ การจัดวางในของคุณ Maven pom.xml ที่แสดงด้านล่างนี้:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2 แล้วให้นิยาม Aspose.Words สําหรับ Java API เชื่อมโยงใน pom.xml ของคุณดังต่อไปนี้:
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
3 ยินดีด้วย! คุณกําหนดค่าสําเร็จ Aspose.Words สําหรับ Java การเข้าไปพัวพัน Maven โครงการ

## ดูด้วย

* [ดาวน์โหลด Aspose.Words จาก Maven](https://releases.aspose.com/words/java/)
