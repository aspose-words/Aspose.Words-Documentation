---
title: インストール
second_title: Aspose.WordsのためのJava
articleTitle: インストール
linktitle: インストール
description: "MavenリポジトリからJavaのAspose.Wordsをインストールします。 あなたのpom.xmlのJava依存関係のAspose.Wordsを定義します"
type: docs
weight: 10
url: /ja/java/installation/
timestamp: 2024-01-27-14-07-04
---

あなたの機械が会うことを確かめて下さい [システム要件](/words/java/system-requirements/) 始める前に。

この記事では、コンピュータにAspose.WordsforJavaをインストールする方法について説明します。

## Mavenリポジトリ {#install-aspose-words-for-java-from-maven-repository}からJavaのAspose.Wordsをインストールします

AsposeはすべてのJavaAPIsをホストします [Mavenリポジトリ](https://releases.aspose.com/words/java/). 簡単な構成でMavenプロジェクトでJavaAPIにAspose.Wordsを直接使用することができます:

1. まず、以下に示すように、Mavenpom.xmlにAsposeMavenリポジトリの設定/場所を指定する必要があります:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. 次に、pom.xmlのJavaAPI依存関係のAspose.Wordsを次のように定義します:
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
3. おめでとうございます！ MavenプロジェクトでJava依存関係のAspose.Wordsを正常に定義しました。

## また見て下さい

* [アスポーズWordsをMavenからダウンロード](https://releases.aspose.com/words/java/)
