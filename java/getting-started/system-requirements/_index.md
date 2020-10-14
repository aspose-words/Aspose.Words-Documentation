---
title: System Requirements
type: docs
weight: 80
url: /java/system-requirements/
---


## Overview

Aspose.Words for Java does not require having Microsoft Word installed, as Aspose.Words itself is a Word document creation, conversion, page layout, and rendering engine.

## Supported Operating Systems

Aspose.Words for Java supports any 32-bit or 64-bit operating system that runs the Java runtime including, but not limited:

### Windows

- Microsoft Windows 2003 Server ( x64, x86)
- Microsoft Windows 2008 Server ( x64, x86)
- Microsoft Windows 2012 Server ( x64, x86)
- Microsoft Windows 2012 R2 Server ( x64, x86)
- Microsoft Windows 2016 Server ( x64, x86)
- Microsoft Windows 2019 Server ( x64, x86)
- Microsoft Windows Vista ( x64, x86)
- Microsoft Windows XP ( x64, x86)
- Microsoft Windows 7 ( x64, x86)
- Microsoft Windows 8, 8.1 ( x64, x86)
- Microsoft Windows 10 ( x64, x86)
- Microsoft Azure

### Linux

- Linux (Ubuntu, OpenSUSE, CentOS, and others)

### Mac

- Mac OS X

## Supported Java Versions

Aspose.Words for Java supports the following Java versions:

- J2SE 6.0 (1.6)
- J2SE 7.0 (1.7)
- J2SE 8.0 (1.8)
- or above (*for example Java 10*)

## Additional Dependencies

Aspose.Words for Java depends upon the [Java Advanced Imaging (JAI) package](http://www.oracle.com/technetwork/java/javasebusiness/downloads/java-archive-downloads-java-client-419417.html) from Oracle in order to process some image formats such as TIFF.

### Installing Native JAI and ImageIO on Windows

1. Download **JAI 1.1.3**. At the time of writing only the 32-bit version of the installer is available, so if you are using a JDK, you will want to download [Jai-1_1_3-lib-windows-i586-jdk.exe](http://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jdk.exe), and if you are using a JRE, you will want to download [Jai-1_1_3-lib-windows-i586-jre.exe](http://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-windows-i586-jre.exe).
1. Run the installer and point it to the directory where JDK/JRE is installed.
1. Download **JAI Image I/O 1.1**. At the time of writing only the 32-bit version of the installer is available, so if you are using a JDK, you will want to download [jai_imageio-1_1-lib-windows-i586-jdk.exe](http://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jdk.exe), and if you are using a JRE, you will want to download [jai_imageio-1_1-lib-windows-i586-jre.exe](http://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-windows-i586-jre.exe)
1. Run the installer and point it to the directory where JDK/JRE is installed.

#### Installing Native JAI and ImageIO on Linux

1. Download **JAI 1.1.3**, choosing the appropriate architecture:
   1. [i586](http://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-i586.tar.gz) for the 32 bit systems
   1. [amd64](http://download.java.net/media/jai/builds/release/1_1_3/jai-1_1_3-lib-linux-amd64.tar.gz) for the 64-bit ones (even if using Intel processors)
1. Extract the file into a temporary directory
1. Move JAR files in the JDK/JRE **lib/ext** folder.
1. Move SO files in the JDK/JRE **lib/amd64** folder.
1. For example, on an Ubuntu 64 bit system:<br>
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
   1. [i586](http://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-i586.tar.gz) for the 32 bit systems
   1. [amd64](http://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz) for the 64-bit ones (even if using Intel processors)
1. Extract the file into a temporary directory
1. Move JAR files in the JDK/JRE **lib/ext** folder.
1. Move SO files in the JDK/JRE **lib/amd64** folder.
1. For example, on an Ubuntu 64 bit system:
 

{{< highlight csharp >}}
$ cd /tmp
$ wget http://download.java.net/media/jai-imageio/builds/release/1.1/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
gunzip -c jai_imageio-1_1-lib-linux-amd64.tar.gz | tar xf - && \
mv /tmp/jai_imageio-1_1/lib/*.jar $JAVA_HOME/jre/lib/ext/ && \
mv /tmp/jai_imageio-1_1/lib/*.so $JAVA_HOME/jre/lib/amd64/ && \
rm /tmp/jai_imageio-1_1-lib-linux-amd64.tar.gz && \
rm -r /tmp/jai_imageio-1_1
{{< /highlight >}}

### Folder used for temporary files

Aspose.Words for Java uses a temporary directory on your machine that is specified via **java.io.tmpdir** system property. Aspose.Words for Java writes temporary files and then removes these files as soon as the rendering is completed. "java.io.tmpdir" is a standard Java system property which is also used by the disk-based storage policies. It determines where the JVM writes temporary files. 
