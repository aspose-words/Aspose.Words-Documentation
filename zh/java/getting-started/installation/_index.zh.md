---
title: 安装工程
second_title: Aspose.Words为Java
articleTitle: 安装工程
linktitle: 安装工程
description: "从Maven存储库为Java安装Aspose.Words。 在pom.xml中为Java依赖项定义Aspose.Words"
type: docs
weight: 10
url: /zh/java/installation/
timestamp: 2024-01-27-14-07-04
---

确保您的机器符合 [系统要求](/words/java/system-requirements/) 在你开始之前。

本文介绍如何在计算机上为Java安装Aspose.Words。

## 从Maven存储库 {#install-aspose-words-for-java-from-maven-repository}为Java安装Aspose.Words

Aspose承载所有JavaAPIs在 [Maven存储库](https://releases.aspose.com/words/java/). 您可以通过简单的配置直接在Maven项目中使用Aspose.WordsforJavaAPI:

1. 首先，您需要在Mavenpom.xml中指定AsposeMaven存储库配置/位置，如下所示:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. 然后，在pom.xml中为JavaAPI依赖项定义Aspose.Words，如下所示:
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
3. 祝贺你！ 您已经成功地在Maven项目中为Java依赖项定义了Aspose.Words。

## 请参阅

* [从Maven下载Aspose.单词](https://releases.aspose.com/words/java/)
