---
title: システム要件
second_title: Aspose.WordsのためのJava
articleTitle: システム要件
linktitle: システム要件
description: "Aspose.WordsとJavaの作業を開始する前に、オペレーティングシステム、プラットフォーム、フレームワーク、および環境の要件を満たしていることを確認して、デバイス上のアクティビティが適切に考慮されていることを確認してください。"
type: docs
weight: 80
url: /ja/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.WordsforJavaは、Microsoft Wordなどのサードパーティ製品をインストールする必要はありません。 Aspose.Words自体は、Microsoft Wordドキュメント形式を含むさまざまな形式のドキュメントを作成、変更、変換、およびレンダリングするためのエンジンです。

## サポートされているオペレーティングシステム

Javaランタイム環境(JRE)を実行できるオペレーティングシステムは、Javaに対してAspose.Wordsを実行できます。 次の表に、すべてではありませんが、サポートされているオペレーティングシステムのほとんどを示します。

<table>
	<tr>
			<td style="font-weight: bold; width:400px">オペレーティングシステム</td>
			<td style="font-weight: bold; width:400px">バージョン</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>その他</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS バージョン 10.9 (Mavericks) 以降</li></ul></td>
		<td><ul><li></tr></li></ul></td>
  <tr>
			<td>モバイル</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## サポートされているクラウドプラットフォーム

Aspose.WordsforJavaはJavaアプリケーションを実行できるクラウドプラットフォームをサポートします。

## サポートされているJavaバージョン

JavaのAspose.WordsはJava7以降をサポートします。 Java6を使用することを余儀なくされた場合でも、Java6には別のJARをリリースします。


## オプションの依存関係

上で述べたように、JavaのAspose.Wordsには*only*がJavaランタイム環境である必要があり、追加のライブラリをインストールする必要はありません。

ただし、サードパーティのライブラリを追加する必要がある場合があります:

- JogAmp JOGLハードウェアアクセラレーションOpenGLレンダリング用のライブラリ。 このライブラリは、外部依存関係としてaspose-wordsPOMファイルに含まれています。 POMファイルを編集して、プラットフォームにのみ必要なJOGLjarを保持することができます。 または、ハードウェアアクセラレーションOpenGLレンダリングが必要ない場合は、依存関係を削除できます。
- HarfBuzzフォントエンジン。 これはすでにJRE9以降に含まれています。 JRE8以前を使用している場合は、POMファイルでshaping-harfbuzz-plugin依存関係を使用できます。 それ以外の場合は、依存関係を削除できます。
- Java Advanced Imaging (JAI) は、TIFF イメージをサポートします。TIFF イメージは、Java 8 以前ではサポートされていません。古い Java 環境での TIFF のサポートについては、Java の Aspose.Words は、[ Java 高度なイメージング (JAI) パッケージ](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html)Oracle から提供されています。以下では、JAI のインストール方法について説明します。

### WindowsにJAIをインストールする方法

ネイティブJAIとImageIOをWindowsにインストールするには、次の手順に従います:

1. **JAI 1.1.3**をダウンロードします。
   この記事の執筆時点では、32ビット版のインストーラのみが利用可能なので、JDKを使用する場合はダウンロードする必要があります [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) また、JREを使用する場合は、ダウンロードする必要があります [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. インストーラを実行し、JDK/JREがインストールされているディレクトリを指定します。
1. **JAI Image I/O 1.1**をダウンロードします。
   この記事の執筆時点では、32ビット版のインストーラのみが利用可能なので、JDKを使用する場合はダウンロードする必要があります [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) また、JREを使用する場合は、ダウンロードする必要があります [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. インストーラを実行し、JDK/JREがインストールされているディレクトリを指定します。

### LinuxにJAIをインストールする方法

ネイティブJAIとImageIOをLinuxにインストールするには、次の手順に従います:

1. ダウンロード**JAI 1.1.3**適切なアーキテクチャの選択:
   1. [i586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) 32ビットシステム用
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) 64ビットのものの場合（インテルプロセッサを使用していても）
1. ファイルを一時ディレクトリに抽出します。
1. JARファイルを次の場所に移動します。JDK/JRE **lib/ext** フォルダ。
1. SOファイルを次の場所に移動します。JDK/JRE **lib/amd64** フォルダ。<br>

   たとえば、64ビットUbuntuシステムでは、手順1～4は次のようになります:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. **JAI Image I/O 1.1**をダウンロードし、適切なアーキテクチャを選択します:
   1. [i586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) 32ビットシステムの場合
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) 64ビットのものの場合（Intelプロセッサを使用していても）
1. ファイルを一時ディレクトリに抽出します。
1. JARファイルを次の場所に移動します。JDK/JRE **lib/ext** フォルダ。
1. SOファイルを次の場所に移動します。JDK/JRE **lib/amd64** フォルダ。<br>

   たとえば、64ビットUbuntuシステムでは、手順5～8は次のようになります:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## 一時ファイルのフォルダ

Aspose.WordsforJavaは、`java.io.tmpdir`システムプロパティで指定されたコンピュータ上の一時ディレクトリを使用します。 Aspose.WordsforJavaは一時ファイルを書き込み、レンダリングが完了するとすぐにこれらのファイルを削除します。

`java.io.tmpdir`は、ディスクベースの記憶域ポリシーでも使用される標準のJavaシステムプロパティです。 JVMが一時ファイルを書き込む場所を決定します。
