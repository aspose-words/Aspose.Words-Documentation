---
title: System Requirements
description: "Before you start working with Aspose.Words for Java, ensure that you meet the operating system, platform, frameworks, and environment requirements so the activities on your devices are properly accounted for."
type: docs
weight: 80
url: /java/system-requirements/
---

Aspose.Words for Java does not require third party product such as Microsoft Word to be installed. Aspose.Words itself is an engine for creating, modifying, converticg, and rendering of documents in various formats, including Microsoft Word document formats.

## Supported Operating Systems

Aspose.Words for Java supports any 64-bit or 86-bit operating system that runs the Java runtime, including but not limited to the versions listed in the following table.

<table>  
	<tr>
			<td style="font-weight: bold; width:400px">Operating System</td>
			<td style="font-weight: bold; width:400px">Versions</td>
		</tr>
  <tr>
			<td>Microsoft Windows</td>
			<td><ul><li>Windows 2003 Server (x64, x86)</li><li>Windows 2008 Server (x64, x86)</li><li>Windows 2012 Server (x64, x86)</li><li>Windows 2012 R2 Server (x64, x86)</li><li>Windows 2016 Server (x64, x86)</li><li>Windows 2019 Server (x64, x86)</li><li>Windows XP (x64, x86)</li><li>Windows Vista (x64, x86)</li><li>Windows 7 (x64, x86)</li><li>Windows 8, 8.1 (x64, x86)</li><li>Windows 10 (x64, x86)</li></ul></td>
		</tr>
  <tr>
			<td>Linux</td>
			<td><ul><li>Ubuntu</li><li>OpenSUSE</li><li>CentOS</li><li>and others</li></ul></td>
		</tr>
  <tr>
			<td>macOS</td>
			<td><ul><li>macOS version 10.9 (Mavericks) and later</li></ul></td>
		</tr>
  <tr>
			<td>Mobile</td>
			<td><ul><li>Android</li><li>iOS</li></ul></td>
		</tr>
</table>

## Supported Cloud Platforms

Aspose.Words for Java also supports cloud platforms, including but not limited to the solutions listed in the following table.

<table>  
	<tr>
			<td style="font-weight: bold; width:800px">Cloud platforms</td>
		</tr>
  <tr>
			<td><ul><li>Amazon Web Services</li><li>Microsoft Azure</li></ul></td>
			</tr>
</table>

{{% alert color="primary" %}}

Note that the list above can be extended with other cloud solutions, provided that these solutions support Java.

{{% /alert %}}

## Supported Java Versions

Aspose.Words for Java supports the Java versions listed in the following table.

<table>  
	<tr>
			<td style="font-weight: bold; width:800px">Cloud platforms</td>
		</tr>
  <tr>
			<td><ul><li>J2SE 6.0 (1.6)</li><li>J2SE 7.0 (1.7)</li><li>J2SE 8.0 (1.8)</li><li>and versions above (for example, Java 10)</li></ul></td>
			</tr>
</table>

## Additional Dependencies

Aspose.Words for Java depends on the [Java Advanced Imaging (JAI) package](http://www.oracle.com/technetwork/java/javasebusiness/downloads/java-archive-downloads-java-client-419417.html) from Oracle in order to process some image formats such as TIFF.

### Install Native JAI and ImageIO on Windows

Follow these steps to install native JAI and ImageIO on Windows:

1. Download **JAI 1.1.3**.
   At the time of writing, only the 32-bit version of the installer is available, so if you use a JDK you need to download [Jai-1_1_3-lib-windows-i586-jdk.exe](http://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe) and if you use a JRE you need to download [Jai-1_1_3-lib-windows-i586-jre.exe](http://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Run the installer and point it to the directory where JDK/JRE is installed.
1. Download **JAI Image I/O 1.1**.
   At the time of writing, only the 32-bit version of the installer is available, so if you use a JDK you need to download [jai_imageio-1_1-lib-windows-i586-jdk.exe](http://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe) and if you use a JRE you need to download [jai_imageio-1_1-lib-windows-i586-jre.exe](http://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Run the installer and point it to the directory where JDK/JRE is installed.

### Install Native JAI and ImageIO on Linux

Follow these steps to install native JAI and ImageIO on Linux:

1. Download **JAI 1.1.3** choosing the appropriate architecture:
   1. [i586](http://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) for 32-bit systems
   1. [amd64](http://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) for 64-bit ones (even if using Intel processors)
1. Extract the file into a temporary directory.
1. Move JAR files to the JDK/JRE **lib/ext** folder.
1. Move SO files to the JDK/JRE **lib/amd64** folder.<br>

   For example, on a 64-bit Ubuntu system, steps 1-4 will look like this:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget http://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz && \
   gunzip -c jai-1_1_3-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai-1_1_3/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai-1_1_3/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai-1_1_3-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai-1_1_3
   {{< /highlight >}}
1. Download **JAI Image I/O 1.1**, choosing the appropriate architecture:
   1. [i586](http://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) for the 32-bit systems
   1. [amd64](http://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) for the 64-bit ones (even if using Intel processors)
1. Extract the file into a temporary directory.
1. Move JAR files to the JDK/JRE **lib/ext** folder.
1. Move SO files to the JDK/JRE **lib/amd64** folder.<br>

   For example, on a 64-bit Ubuntu system, steps 5-8 will look like this:<br>
   {{< highlight csharp >}}
   $ cd /tmp
   $ wget http://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
   mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
   mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
   rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
   rm -r /tmp/jai_imageio-1_1
   {{< /highlight >}}

### Folder for Temporary Files

Aspose.Words for Java uses a temporary directory on your computer, which is specified via `java.io.tmpdir` system property. Aspose.Words for Java writes temporary files and then removes these files as soon as rendering is completed.

`java.io.tmpdir` is a standard Java system property that is also used by disk-based storage policies. It determines where the JVM writes temporary files. 