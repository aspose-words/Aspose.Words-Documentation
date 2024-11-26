---
title: 설치
second_title: Aspose.WordsJava
articleTitle: 설치
linktitle: 설치
description: "Maven리포지토리에서Java에 대해Aspose.Words을 설치합니다. pom.xml에서Java종속성에 대해Aspose.Words을 정의합니다"
type: docs
weight: 10
url: /ko/java/installation/
timestamp: 2024-01-27-14-07-04
---

당신의 기계가 만나는 것을 확인하십시오 [시스템 요구 사항](/words/java/system-requirements/) 시작하기 전에.

이 문서에서는 컴퓨터에Java에 대해Aspose.Words을 설치하는 방법을 설명합니다.

## Maven저장소 {#install-aspose-words-for-java-from-maven-repository}에서Java에 대해Aspose.Words설치

JavaAPIs의 모든 호스트 [Maven저장소](https://releases.aspose.com/words/java/). 간단한 구성으로Maven프로젝트에서JavaAPI에Aspose.Words를 직접 쉽게 사용할 수 있습니다:

1. 먼저 아래와 같이Maven저장소 구성/위치를Mavenpom.xml에 지정해야 합니다:
	{{< highlight html >}}
	<repositories>
		<repository>
			<id>AsposeJavaAPI</id>
			<name>Aspose Java API</name>
			<url>https://releases.aspose.com/java/repo/</url>
		</repository>
	</repositories>
	{{< /highlight >}}
2. 그런 다음pom.xml의JavaAPI종속성에 대한Aspose.Words을 다음과 같이 정의합니다:
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
3. 축하해! Maven프로젝트에서Java종속성에 대해Aspose.Words을 성공적으로 정의했습니다.

## 또한 참조

* [Maven에서Aspose.어 공짜 다운로드](https://releases.aspose.com/words/java/)
