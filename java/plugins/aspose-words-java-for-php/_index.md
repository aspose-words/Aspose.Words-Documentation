---
title: Aspose.Words Java For PHP
type: docs
weight: 60
url: /java/aspose-words-java-for-php/
---

## Introduction

### PHP / Java Bridge

The PHP/Java Bridge is an implementation of a streaming, XML-based [network protocol](http://php-java-bridge.sourceforge.net/pjb/PROTOCOL.TXT), which can be used to connect a native script engine, for example PHP, Scheme or Python, with a Java virtual machine. It is up to 50 times faster than local RPC via SOAP, requires less resources on the web-server side. It is [faster](http://php-java-bridge.sourceforge.net/pjb/FAQ.html#performance) and more reliable than direct communication via the Java Native Interface, and it requires no additional components to invoke Java procedures from PHP or PHP procedures from Java.

Read more at [sourceforge.net](http://php-java-bridge.sourceforge.net/pjb/)

## Aspose.Words for Java

Aspose.Words for Java is an advanced class library for Java that enables you to perform a great range of document processing tasks directly within your Java applications.

Aspose.Words for Java supports processing word (DOC, DOCX, OOXML, RTF) HTML, OpenDocument, PDF, EPUB, XPS, and all image formats. With Aspose.Words you can generate, modify, and convert documents without using Microsoft Word.

Read more at [aspose.com](http://www.aspose.com/java/word-component.aspx)

## Aspose.Words Java for PHP

Project Aspose.Words for PHP shows how different tasks can be performed using Aspose.Words Java APIs in PHP. This project is aimed to provide useful examples for PHP Developers who want to utilise Aspose.Words for Java in their PHP Projects using [PHP/Java Bridge](http://php-java-bridge.sourceforge.net/pjb/).

## System Requirements and Supported Platforms

### System Requirements

**Following are the system requirements to use Aspose.Words Java for PHP:**

- Tomcat Server 8.0 or above installed.
- PHP/JavaBridge is configured.
- FastCGI is installed.
- Downloaded Aspose.Words component.

## Supported Platforms

**Following are the supported platforms:**

- PHP 5.3 or above
- Java 1.8 or above

## Downloads and Configure

Download required libraries mentioned below. These are the required for executing Aspose.Words Java for PHP examples.

- **Aspose:** [Aspose.Words for Java Component](http://www.aspose.com/community/files/72/java-components/aspose.words-for-java/default.aspx)
- [PHP/Java Bridge](http://citylan.dl.sourceforge.net/project/php-java-bridge/Binary%20package/php-java-bridge_6.2.1/php-java-bridge_6.2.1_documentation.zip)

## Download Examples from Social Coding Sites

Following releases of running examples are available to download on below mentioned social coding sites:

-----

### GitHub

- **Aspose.Words Java for PHP Examples** 
  - [Aspose.Words Java for PHP](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_Java_for_PHP)

## How to configure the source code on Linux Platform

Please follow these simple steps in order to open and extend the source code while using:

### 1. Install Tomcat Server

To install tomcat server, issue following command on the linux console. This will successfully install tomcat server. 

{{< highlight actionscript3 >}}
sudo apt-get install tomcat8
{{< /highlight >}}

### 2. Download and Configure PHP/JavaBridge

In order to download the PHP/JavaBridge binaries, issue following command on the linux console. 

{{< highlight actionscript3 >}}
 wget http://citylan.dl.sourceforge.net/project/php-java-bridge/Binary%20package/php-java-bridge_6.2.1/php-java-bridge_6.2.1_documentation.zip 
{{< /highlight >}}


Unzip the PHP/JavaBridge binaries by issuing the following command on linux console. 

{{< highlight actionscript3 >}}
 unzip -d php-java-bridge_6.2.1_documentation.zip 
{{< /highlight >}}


This will extract **JavaBridge.war** file. Copy it to tomcat88 **webapps** folder by issuing the following command on Linux console. 

{{< highlight actionscript3 >}}
 sudo cp JavaBridge.war /var/lib/tomcat8/webapps/JavaBridge.war 
{{< /highlight >}}


By copying, tomcat8 will automatically create a new folder "**JavaBridge**" in **webapps**. Once the folder is created, make sure your tomcat8 is running and then check <http://localhost:8080/JavaBridge> in browser, it should open a default page of JavaBridge. 

If any error message appears then install  **FastCGI** by issuing the following command on Linux console.

{{< highlight actionscript3 >}}
 sudo apt-get install php55-cgi 
{{< /highlight >}}

After installing php5.5 cgi, restart tomcat8 server and check <http://localhost:8080/JavaBridge> again in the browser.

If **JAVA_HOME** error is displayed, then open /etc/default/tomcat8 file and uncomment the line that sets the JAVA_HOME. Check <http://localhost:8080/JavaBridge> in browser again, it should come with PHP/JavaBridge Examples page. 

### 3. Configure Aspose.Words Java for PHP Examples

Clone, PHP examples by issuing the following commands inside webapps/JavaBridge folder.  

{{< highlight actionscript3 >}}
$ git init&nbsp;
$ git clone [https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_PHP] 
{{< /highlight >}}

## How to configure the source code on Windows Platform

Please follow below simple steps to configure PHP/Java Bridge on Windows Platform

1. Install PHP5 and configure as you normally do
1. Install JRE 6 (Java Runtime Environment) if you don’t already have it. You can check this in C:\Program Files etc. You can download it here . I am using JRE 6 as It is compatible with PHP Java Bridge (PJB).
1. Install Apache Tomcat 8.0. You can download it here
1. Download [JavaBridge.war](http://sourceforge.net/projects/php-java-bridge/files/Binary%20package/php-java-bridge_6.2.1/JavaBridgeTemplate621.war/download). Copy this file to tomcat webapps directory.<br>
(ex: C:\Program Files\Apache Software Foundation\Tomcat 8.0\webapps )
1. Restart tomcat apache service.
1. Go to <http://localhost:8080/JavaBridge/test.php> to check if php works. You can find other examples in there
1. Copy your [Aspose.Words Java](http://www.aspose.com/community/files/72/java-components/aspose.words-for-java/default.aspx) jar file to C:\Program Files\Apache Software Foundation\Tomcat 8.0\webapps\JavaBridge\WEB-INF\lib
1. Clone [Aspose.Words Java for PHP](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_PHP) examples inside C:\Program Files\Apache Software Foundation\Tomcat 8.0\webapps\ folder.
1. Copy folder C:\Program Files\Apache Software Foundation\Tomcat 8.0\webapps\JavaBridge\java to your Aspose.Words Java for PHP examples folder.
1. Restart apache tomcat service and start using examples.

## Support,Extend and Contribute

### Support

From the very first days of Aspose, we knew that just giving our customers good products would not be enough. We also needed to deliver good service. We are developers ourselves and understand how frustrating it is when a technical issue or a quirk in the software stops you from doing what you need to do. We're here to solve problems, not create them.

This is why we offer free support. Anyone who uses our product, whether they have bought them or are using an evaluation, deserves our full attention and respect.

You can log any issues or suggestions related to Aspose.Words Java for PHP using any of the following platforms:

- [Github](https://github.com/aspose-words/Aspose.Words-for-Java/issues)

## Extend and Contribute

Aspose.Words Java for PHP is open source and its source code is available on the major social coding websites listed below. Developers are encouraged to download the source code and contribute by suggesting or adding new feature or improving the existing ones, so that others could also benefit from it.

## Source Code

You can get the latest source code from one of the following locations

- [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_Java_for_PHP)
