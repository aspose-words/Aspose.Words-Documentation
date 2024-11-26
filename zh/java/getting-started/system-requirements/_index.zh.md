---
title: 系统要求
second_title: Aspose.Words为Java
articleTitle: 系统要求
linktitle: 系统要求
description: "在开始使用Aspose.WordsforJava之前，请确保您满足操作系统、平台、框架和环境要求，以便正确考虑设备上的活动。"
type: docs
weight: 80
url: /zh/java/system-requirements/
timestamp: 2024-01-27-14-07-04
---

Aspose.WordsforJava不需要安装Microsoft Word等第三方产品。 Aspose.Words本身是一个引擎，用于创建，修改，转换和呈现各种格式的文档，包括Microsoft Word文档格式。

## 支持的操作系统

任何可以运行Java运行时环境(JRE)的操作系统都可以为Java运行Aspose.Words。 下表列出了大多数（但不是全部）受支持的操作系统。

<table>
	<tr>
			<td style="font-weight: bold; width:400px">操作系统</td>
			<td style="font-weight: bold; width:400px">版本</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>和其他人</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS版本10.9(Mavericks)及更高版本</li></ul></td>
		</tr>
  <tr>
			<td>流动电话</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## 支持的云平台

Aspose.WordsforJava支持可以运行Java应用程序的任何云平台。

## 支持的Java版本

Aspose.WordsforJava支持Java7及更高版本。 如果您被迫使用Java6，我们仍然为Java6发布单独的JAR。


## 可选依赖项

如上所述，Aspose.WordsforJava需要*only*Java运行时环境，您不需要安装任何其他库。

但是，有时您可能需要添加第三方库:

- 用于硬件加速OpenGL渲染的JogAmp JOGL库。 该库作为外部依赖项包含在aspose-wordsPOM文件中。 您可以编辑POM文件以仅保留平台所需的JOGLjar。 或者，如果不需要硬件加速OpenGL渲染，则可以删除依赖项。
- HarfBuzz字体引擎。 它已经包含在JRE9及更高版本中。 如果您使用的是JRE8或更早版本，则可以在我们的POM文件中使用shaping-harfbuzz-plugin依赖项。 否则，您可以删除依赖项。
- Java高级成像(JAI)以支持TIFF图像。 TIFF图像不支持Java8及更早版本。 对于旧Java环境中的TIFF支持，Java的Aspose.Words取决于 [Java高级成像(JAI)包](https://www.oracle.com/java/technologies/java-archive-downloads-java-client-downloads.html) 从Oracle。 我们将在下面描述如何安装JAI。

### 如何在Windows上安装JAI

按照以下步骤在Windows上安装本机JAI和ImageIO:

1. 下载**JAI 1.1.3**。
   在撰写本文时，只有32位版本的安装程序可用，因此如果您使用JDK，则需要下载 [Jai-1_1_3-lib-windows-i586-jdk.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) 如果你使用JRE，你需要下载 [Jai-1_1_3-lib-windows-i586-jre.exe](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. 运行安装程序并将其指向安装JDK/JRE的目录。
1. 下载**JAI Image I/O 1.1**。
   在撰写本文时，只有32位版本的安装程序可用，因此如果您使用JDK，则需要下载 [jai_imageio-1_1-lib-windows-i586-jdk.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) 如果你使用JRE，你需要下载 [jai_imageio-1_1-lib-windows-i586-jre.exe](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. 运行安装程序并将其指向安装JDK/JRE的目录。

### 如何在Linux上安装JAI

按照以下步骤在Linux上安装本机JAI和ImageIO:

1. 下载**JAI 1.1.3**选择合适的架构:
   1. [我586](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) 对于32位系统
   1. [amd64](https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) 对于64位的（即使使用英特尔处理器）
1. 将文件解压缩到临时目录中。
1. 将JAR文件移动到JDK/JRE **lib/ext** 文件夹。
1. 将SO文件移动到JDK/JRE **lib/amd64** 文件夹。<br>

   例如，在64位Ubuntu系统上，步骤1-4将如下所示:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. 下载**JAI Image I/O 1.1**，选择合适的架构:
   1. [我586](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) 对于32位系统
   1. [amd64](https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) 对于64位的（即使使用英特尔处理器）
1. 将文件解压缩到临时目录中。
1. 将JAR文件移动到JDK/JRE **lib/ext** 文件夹。
1. 将SO文件移动到JDK/JRE **lib/amd64** 文件夹。<br>

   例如，在64位Ubuntu系统上，步骤5-8将如下所示:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget https://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

## 临时文件的文件夹

Aspose.WordsforJava使用计算机上的临时目录，该目录通过`java.io.tmpdir`系统属性指定。 Aspose.WordsforJava写入临时文件，然后在渲染完成后立即删除这些文件。

`java.io.tmpdir`是基于磁盘的存储策略也使用的标准Java系统属性。 它确定JVM写入临时文件的位置。
