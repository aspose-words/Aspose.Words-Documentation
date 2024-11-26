---
title: Instalasi
second_title: Aspose.Words untuk Java
articleTitle: Instalasi
linktitle: Instalasi
description: "Instal Aspose.Words untuk Java dari repositori Maven. Tentukan ketergantungan Aspose.Words untuk Java di pom.xmlAnda"
type: docs
weight: 10
url: /id/java/installation/
timestamp: 2024-01-27-14-07-04
---

Pastikan mesin Anda memenuhi persyaratan [kesatuan sistem](/words/java/system-requirements/) sebelum Anda mulai.

Artikel ini menjelaskan cara menginstal Aspose.Words untuk Java di komputer Anda.

## Instal Aspose.Words untuk Java dari Maven Repositori {#install-aspose-words-for-java-from-maven-repository}

Aspose menampung semua Java APIs dalam [Maven repositori](https://releases.aspose.com/words/java/). Anda dapat dengan mudah menggunakan Aspose.Words untuk Java API secara langsung dalam Proyek Maven Anda dengan konfigurasi sederhana:

1. Pertama, Anda perlu menentukan konfigurasi/lokasi Repositori Aspose Maven di Maven pom.xml Anda seperti yang ditunjukkan di bawah ini:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Kemudian, tentukan ketergantungan Aspose.Words untuk Java API di pom.xml Anda sebagai berikut:
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
3. Selamat! Anda telah berhasil mendefinisikan ketergantungan Aspose.Words untuk Java dalam proyek Maven Anda.

## Lihat Juga

* [Unduh Aspose.Wordsdari Maven](https://releases.aspose.com/words/java/)
