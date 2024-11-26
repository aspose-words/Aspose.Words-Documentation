---
title: Download and Configure Aspose.Words in PHP
second_title: Aspose.Words for Java
articleTitle: Download and Configure Aspose.Words in PHP
linktitle: Download and Configure Aspose.Words in PHP
description: "PHP: Download and Configure Aspose.Words for Java."
type: docs
weight: 10
url: /java/download-and-configure-aspose-words-in-php/
timestamp: 2024-01-27-14-07-04
---

## Download Required Libraries

Download required libraries mentioned below. These are the required for executing Aspose.Words Java for PHP examples.

- [Aspose.Words for Java Component](https://releases.aspose.com/words/java/)
- [PHP/Java Bridge](https://osdn.net/projects/sfnet_php-java-bridge/downloads/Binary%20package/php-java-bridge_6.2.1/php-java-bridge_6.2.1_documentation.zip/)

## Download Examples from Social Coding Sites

Following releases of running examples are available to download on below mentioned social coding sites:

- [Aspose.Words Java for PHP Examples](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_Java_for_PHP)

## How to configure the source code on Linux Platform

Please follow these simple steps in order to open and extend the source code while using:

### Install Tomcat Server

To install tomcat server, issue following command on the linux console. This will successfully install tomcat server. 

{{< highlight actionscript3 >}}
sudo apt-get install tomcat8
{{< /highlight >}}

### Download and Configure PHP/JavaBridge

{{% alert color="primary" %}}
Install and configure the PHP/Java Bridge to make use of Java from PHP. See [more details about installing and configuring the PHP](https://www.php.net/manual/en/install.php).

Also, you can [download PHP/Java Bridge](https://php-java-bridge.sourceforge.net/pjb/) that doesn’t require a java extension. Learn [the installation instruction](https://php-java-bridge.sourceforge.net/pjb/installation.php) for installing PHP/ Java Bridge. 

Download [the latest version of Aspose.Words for Java](https://releases.aspose.com/words/java/). Extract files and copy the lib folder with jar files to the root folder of your project. 

{{% /alert %}}

In order to download the PHP/JavaBridge binaries, issue following command on the linux console. 

{{< highlight actionscript3 >}}
 wget https://osdn.net/projects/sfnet_php-java-bridge/downloads/Binary%20package/php-java-bridge_6.2.1/php-java-bridge_6.2.1_documentation.zip/
{{< /highlight >}}


Unzip the PHP/JavaBridge binaries by issuing the following command on linux console. 

{{< highlight actionscript3 >}}
 unzip -d php-java-bridge_6.2.1_documentation.zip 
{{< /highlight >}}


This will extract **JavaBridge.war** file. Copy it to tomcat88 **webapps** folder by issuing the following command on Linux console. 

{{< highlight actionscript3 >}}
 sudo cp JavaBridge.war /var/lib/tomcat8/webapps/JavaBridge.war 
{{< /highlight >}}


By copying, tomcat8 will automatically create a new folder "**JavaBridge**" in **webapps**. Once the folder is created, make sure your tomcat8 is running and then check `localhost:8080/JavaBridge` in browser, it should open a default page of JavaBridge. 

If any error message appears then install  **FastCGI** by issuing the following command on Linux console.

{{< highlight actionscript3 >}}
 sudo apt-get install php55-cgi 
{{< /highlight >}}

After installing php5.5 cgi, restart tomcat8 server and check `localhost:8080/JavaBridge` again in the browser.

If **JAVA_HOME** error is displayed, then open /etc/default/tomcat8 file and uncomment the line that sets the JAVA_HOME. Check `localhost:8080/JavaBridge` in browser again, it should come with PHP/JavaBridge Examples page. 

### Configure Aspose.Words Java for PHP Examples

Clone, PHP examples by issuing the following commands inside webapps/JavaBridge folder.  

{{< highlight actionscript3 >}}
$ git init&nbsp;
$ git clone [https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_Java_for_PHP] 
{{< /highlight >}}

## How to configure the source code on Windows Platform

Please follow below simple steps to configure PHP/Java Bridge on Windows Platform:

1. Install PHP5 and configure as you normally do.
1. Install JRE 6 (Java Runtime Environment) if you don’t already have it. You can check this in C:\Program Files etc. You can download it here . I am using JRE 6 as It is compatible with PHP Java Bridge (PJB).
1. Install Apache Tomcat 8.0.
1. Download [JavaBridge.war](https://osdn.net/projects/sfnet_php-java-bridge/downloads/Binary%20package/php-java-bridge_6.2.1/php-java-bridge_6.2.1_documentation.zip/). Copy this file to tomcat webapps directory.<br>
(ex: C:\Program Files\Apache Software Foundation\Tomcat 8.0\webapps)
1. Restart tomcat apache service.
1. Go to `localhost:8080/JavaBridge/test.php` to check if php works.
1. Copy your [Aspose.Words Java](https://releases.aspose.com/words/java/) jar file to C:\Program Files\Apache Software Foundation\Tomcat 8.0\webapps\JavaBridge\WEB-INF\lib
1. Clone [Aspose.Words Java for PHP](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_Java_for_PHP) examples inside C:\Program Files\Apache Software Foundation\Tomcat 8.0\webapps\ folder.
1. Copy folder C:\Program Files\Apache Software Foundation\Tomcat 8.0\webapps\JavaBridge\java to your Aspose.Words Java for PHP examples folder.
1. Restart apache tomcat service and start using examples.
