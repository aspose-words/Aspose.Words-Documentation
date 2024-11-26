---
title: 시스템 요구 사항
second_title: Aspose.WordsJava
articleTitle: 시스템 요구 사항
linktitle: 시스템 요구 사항
description: "Java에 대해Aspose.Words작업을 시작하기 전에 운영 체제,플랫폼,프레임워크 및 환경 요구 사항을 충족해야 장치의 활동이 제대로 고려됩니다."
type: docs
weight: 80
url: /ko/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.Words의 경우Java는Microsoft Word과 같은 제 3 자 제품을 설치할 필요가 없습니다. Aspose.Words자체는Microsoft Word문서 형식을 포함한 다양한 형식의 문서를 생성,수정,변환 및 렌더링하는 엔진입니다.

## 지원되는 운영 체제

Java런타임 환경(JRE)을 실행할 수 있는 모든 운영 체제는Java에 대해Aspose.Words을 실행할 수 있습니다. 다음 표에는 지원되는 운영 체제가 전부는 아니지만 대부분의 운영 체제가 나열되어 있습니다.

<table>
	<tr>
			<td style="font-weight: bold; width:400px">운영 체제</td>
			<td style="font-weight: bold; width:400px">버전</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>및 기타</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS 버전 10.9(Mavericks) 이상</li></ul></td>
		<td><ul><li></tr></li></ul></td>
  <tr>
			<td>모바일</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## 지원되는 클라우드 플랫폼

Aspose.WordsJava의 경우Java응용 프로그램을 실행할 수 있는 모든 클라우드 플랫폼을 지원합니다.

## 지원되는Java버전

Aspose.Words의 경우Java은Java7 을 지원합니다. Java6 을 사용하도록 강요하는 경우Java6 에 대해 별도의JAR를 릴리스합니다.


## 선택적 종속성

위에서 언급했듯이Java의 경우Aspose.Words에는*only*Java런타임 환경이 필요하며 추가 라이브러리를 설치할 필요가 없습니다.

그러나 경우에 따라 타사 라이브러리를 추가해야 하는 경우가 있습니다:

- 하드웨어 가속 OpenGL 렌더링을 위한 JogAmp JOGL 라이브러리. 라이브러리는 외부 종속성으로 aspose-words POM 파일에 포함되어 있습니다. 플랫폼에 필요한 JOGL jar 파일만 보존하기 위해 POM 파일을 편집할 수 있습니다. 또는 하드웨어 가속 OpenGL 렌더링이 필요하지 않으면 종속성을 제거할 수 있습니다.
- HarfBuzz글꼴 엔진. 이미JRE9 및 최신에 포함되어 있습니다. JRE8 이상을 사용하는 경우POM파일에서 쉐이핑-하프 버즈-플러그인 종속성을 사용할 수 있습니다. 그렇지 않으면 종속성을 제거 할 수 있습니다.
- Java 고급 이미징(JAI)은 TIFF 이미지를 지원합니다. TIFF 이미지는 Java 8 이하에서 지원되지 않습니다. 이전 Java 환경에서 TIFF 지원을 위해 Java에 대한 Aspose.Words은 다음에 따라 달라집니다.[ Java 고급 이미징(JAI) 패키지](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) Oracle에서 JAI를 설치하는 방법을 아래에서 설명합니다.

### Windows에JAI을 설치하는 방법

다음 단계에 따라Windows에 기본JAI및ImageIO을 설치합니다:

1. 다운로드**JAI 1.1.3**.
   이 글을 쓰는 시점에서 32 비트 버전의 설치 프로그램만 사용할 수 있으므로JDK을 사용하는 경우 다운로드해야 합니다 [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) 그리고 당신은JRE를 사용하는 경우 당신은 다운로드 할 필요가 [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. 설치 프로그램을 실행하고JDK/JRE이 설치된 디렉터리를 가리킵니다.
1. 다운로드**JAI Image I/O 1.1**.
   이 글을 쓰는 시점에서 32 비트 버전의 설치 프로그램만 사용할 수 있으므로JDK을 사용하는 경우 다운로드해야 합니다 [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) 그리고 당신은JRE를 사용하는 경우 당신은 다운로드 할 필요가 [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. 설치 프로그램을 실행하고JDK/JRE이 설치된 디렉터리를 가리킵니다.

### Linux에JAI을 설치하는 방법

다음 단계에 따라Linux에 기본JAI및ImageIO을 설치합니다:

1. 다운로드**JAI 1.1.3**적절한 아키텍처 선택:
   1. [586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) 32 비트 시스템용
   1. [64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) 64 비트(인텔 프로세서를 사용하는 경우에도)
1. 임시 디렉터리에 파일을 추출합니다.
1. JAR파일을JDK/JRE **lib/ext** 폴더
1. SO파일 이동JDK/JRE **lib/amd64** 폴더<br>

   예를 들어,64 비트Ubuntu시스템에서 1-4 단계는 다음과 같습니다:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. **JAI Image I/O 1.1**다운로드,적절한 아키텍처 선택:
   1. [586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) 32 비트 시스템용
   1. [64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) 64 비트 용(인텔 프로세서를 사용하는 경우에도)
1. 임시 디렉터리에 파일을 추출합니다.
1. JAR파일을JDK/JRE **lib/ext** 폴더
1. SO파일 이동JDK/JRE **lib/amd64** 폴더<br>

   예를 들어,64 비트Ubuntu시스템에서 5-8 단계는 다음과 같습니다:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## 임시 파일 폴더

Aspose.Words의 경우Java는`java.io.tmpdir`시스템 속성을 통해 지정된 컴퓨터의 임시 디렉터리를 사용합니다. Aspose.WordsJava에 대해 임시 파일을 작성한 다음 렌더링이 완료되는 즉시 이러한 파일을 제거합니다.

`java.io.tmpdir`은 디스크 기반 저장소 정책에서도 사용되는 표준Java시스템 속성입니다. JVM가 임시 파일을 쓰는 위치를 결정합니다.
