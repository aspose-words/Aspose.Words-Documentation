---
title: Cài đặt
second_title: Aspose.Words cho Java
articleTitle: Cài đặt
linktitle: Cài đặt
description: "Cài đặt Aspose.Words cho Java từ kho Maven. Định nghĩa Aspose.Words cho tùy thuộc Java trong pom.xml của bạn"
type: docs
weight: 10
url: /vi/java/installation/
timestamp: 2024-01-27-14-07-04
---

Đảm bảo máy tính của bạn đáp ứng các [yêu cầu hệ thống]/words/java/system-requirements/) trước khi bắt đầu.

Bài viết này giải thích cách cài đặt Aspose.Words cho Java trên máy tính của bạn.

## Cài đặt {0} cho {1} từ Kho lưu trữ {2} Repository {#cài đặt-aspose-words-cho-java-từ-{3}-kho-lưu-trữ}

Aspose lưu trữ tất cả các API Java trong kho Maven (https://releases.aspose.com/words/java/). Bạn có thể dễ dàng sử dụng Aspose.Words cho Java API trực tiếp trong các dự án Maven của bạn với cấu hình đơn giản:''

1. Đầu tiên bạn cần chỉ định cấu hình hoặc vị trí kho lưu trữ Aspose Maven trong Maven của bạn pom.xml như được hiển thị ở dưới đây:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. Sau đó, xác định Aspose.Words cho Java API phụ thuộc trong pom.xml của bạn như sau:
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
3. Chúc mừng! Bạn đã thành công trong việc xác định Aspose.Words cho Java phụ thuộc trong dự án của bạn Maven.

## Xem thêm

* [Tải xuống Aspose.Words từ Maven](https://releases.aspose.com/words/java/)"
