---
title: Kurulum
second_title: Aspose.Words için Java
articleTitle: Kurulum
linktitle: Kurulum
description: "Aspose.Words yükle Java için Maven deposundan. Pom.xml dosyanızdaki Java bağımlılığı için Aspose.Words tanımlayın"
type: docs
weight: 10
url: /tr/java/installation/
timestamp: 2024-01-27-14-07-04
---

Başlamadan önce makinenin [system requirements](/words/java/system-requirements/)'i karşıladığından emin olun.

Bu makale Aspose.Words bilgisayarınıza yüklemeyi nasıl açıklar? Java

## Aspose.Words için Java 'den Maven Deposu {#install-aspose-words-for-java-from-maven-repository}

Aspose tüm Java APIleri barındırır [Maven repository](https://releases.aspose.com/words/java/). Basit yapılandırmalarla projelerinizde kolayca Aspose.Words kullanabilirsiniz: Java ve API doğrudan Maven

1. İlk olarak, aşağıda gösterildiği gibi Aspose Maven Depo yapılandırmasını/konumunu Maven pom.xml'de belirtmeniz gerekir:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Sonra, Aspose.Words için Java bağımlılığın API tanımını pom.xml dosyasında aşağıdaki şekilde yapın:
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
3. Tebrikler! Başarıyla Aspose.Words Java bağımlılığı için tanımladınız Maven projenizde.

## Ayrıca Bakın

* [Download Aspose.Words from Maven](https://releases.aspose.com/words/java/)
