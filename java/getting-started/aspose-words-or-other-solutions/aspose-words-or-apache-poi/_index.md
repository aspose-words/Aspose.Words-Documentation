---
title: Aspose.Words or Apache POI
description: "Aspose.Words for Java is a very useful document processing library that provides great support for all Microsoft Word and other document formats. Aspose.Words allows to perform a large number of tasks with documents faster and more conveniently than POI."
type: docs
weight: 30
url: /java/aspose-words-java-for-apache-poi/
aliases: [/java/aspose-words-java-for-apache-poi-hwpf-and-xwpf/]
---

Sometimes we get the following question: why should we use Aspose products rather than the Apache POI? This question is easy to answer: features and functionality.

Apache POI is a project that can help you read or write files in Microsoft Office formats. As part of the current comparison, consider the following POI components – HWPF and XWPF:

- HWPF provides reading and writing of Microsoft Word 97 file formats and limited support for reading Word 6 and Word 95 file formats
- XWPF provides reading and writing of Word 2007 file formats

Both HWPF and XWPF provides Basis Text Extraction, Specific Text Extraction, Access of Header & Footers, and Changing Text features. While HWPF and XWPF provide similar functionality, they currently do not have a common interface. It has a fairly stable core API providing read or write access to the main parts of .DOCX files, but it is not complete.

Aspose.Words is a very useful document processing library that provides great support for all Microsoft Word and other document formats. With Aspose.Words you can view, generate, modify, convert, render, and print documents without using Microsoft Word.

In this article, we will look at when it makes sense for you to prefer Aspose.Words.

## Why not Apache POI

It is worth noting that some tasks can be achieved with Aspose.Words, but cannot be accomplished with Apache POI. For example, if you need to perform a mail merge operation and then modify the result document, then you cannot use only Apache POI, you also need Microsoft Word. The point is that the merge results are not directly stored in a .DOCX file, and POI can only receive data that was stored in the .DOCX file. That is, you will need to complete the mail merge in Word, save the result to a .DOCX file, and then modify this file.

You can compare Apache POI with Aspose. To do this, we suggest that you familiarize yourself with the [Aspose.Words for POI project (HWPF and XWPF)](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0) – it shows how different tasks can be done using the Aspose.Words for Java API versus Apache POI. The project also covers features for working with text documents that are only available in Aspose.Words, but not in Apache POI.

This project is also useful for developers looking to migrate from Apache POI to Aspose.Words.

{{% alert color="primary" %}}

The project uses the evaluation version of Aspose.Words. When you are happy with your evaluation, you can purchase a license from the [Aspose website](https://purchase.aspose.com/buy). To remove the evaluation message and feature limitations, you must apply a product license. After purchasing the product, you will receive a license file. Please follow the instructions in the ["Licensing and Subscription"](https://docs.aspose.com/words/java/licensing/) article to do this.

{{% /alert %}}

In the following sections and articles, we will take a closer look at some of the features and abilities provided by Aspose.Words.



## See Also

- [More about Apache POI](http://poi.apache.org/)







## Aspose.Words Java for Apache POI - HWPF and XWPF

Project Aspose.Words for Apache POI - HWPF and XWPF shows how different tasks can be performed using Aspose.Words Java APIs in comparison with Apache POI HWPF and XWPF. The project also covers the features that are only available in Aspose.Words APIs but not in Apache POI HWPF and XWPF for dealing with word processing documents.

This project is helpful for developers who want to compare Apache POI HWPF and XWPF with Aspose.Words OR migrate from Apache POI HWPF and XWPF to Aspose.Words.















## System Requirements and Supported Platforms

### System Requirements

**Following are the system requirements to use Aspose.Words Java for Apache POI - HWPF and XWPF:**

- Java 1.4 or above installed.
- Downloaded Aspose.Words component.
- Downloaded Apache POI HWPF and XWPF libraries.

### Supported Platforms

**Following are the supported platforms:**

- Apache POI 3.11 and above.
- Aspose.Words 14.8 and above.
- Java IDE (Eclipse, NetBeans, IntelliJ, ...).

## Downloading

### Download Examples from social coding websites

You can directly include the source code of **Aspose.Words Java for Apache POI HWPF and XWPF** in your own project, Following releases of running examples are available to download on all of the below mentioned social coding sites:

#### CodePlex

- [Aspose.Words Java for Apache POI WP - v 1.0](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)

#### GitHub

- [Aspose.Words Java for Apache POI WP - v 1.0](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

To configure **Aspose.Words for Java API**, include the Aspose repository URL and Aspose.Words for Java API maven dependency in your **pom.xml** as following:

#### Aspose Maven Repository

{{< highlight csharp >}}
<repositories>
    <repository>
        <id>aspose-maven-repository</id>
        <name>Aspose Maven Repository</name>
        <url>http://repository.aspose.com/repo/</url>
    </repository>
</repositories>
{{< /highlight >}}

#### Aspose.Words for Java Maven Dependency

{{< highlight csharp >}}
<dependency>
    <groupId>com.aspose</groupId>
    <artifactId>aspose-words</artifactId>
    <version>15.6.0</version>
    <classifier>jdk16</classifier>
</dependency>
{{< /highlight >}}

**Note:** Please use the available latest version of the Aspose API.

## Support, Extend and Contribute

### Support

From the very first days of Aspose, we knew that just giving our customers good products would not be enough. We also needed to deliver good service. We are developers ourselves and understand how frustrating it is when a technical issue or a quirk in the software stops you from doing what you need to do. We're here to solve problems, not create them.

This is why we offer free support. Anyone who uses our product, whether they have bought them or are using an evaluation, deserves our full attention and respect.

You can log any issues or suggestions related to Aspose.Words Java for Apache POI HWPF and XWPF using any of the following platforms:

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/workitem/list/basic)
- [Github](https://github.com/aspose-words/Aspose.Words-for-Java/issues)

### Extend and Contribute

Aspose.Words Java for Apache POI (HWPF + XWPF) is open source and its source code is available on the major social coding websites listed below. Developers are encouraged to download the source code and contribute by suggesting or adding new feature or improving the existing ones, so that others could also benefit from it.

### Source Code

You can get the latest source code from one of the following locations

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest)
- [Github](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose_Words_for_Apache_POI)

### How to configure the source code

Please follow these simple steps in order to open and extend the source code while using:

#### Eclipse IDE

1. Download/Clone the source code.
1. Open Eclipse and Choose **File** > **Import...**
1. Select **General** > **Existing Projects into Workspace**.
1. Browse to **select root directory** of the latest source code that you have downloaded.
1. Click **Finish** to successfully import the downloaded project.

#### NetBeans IDE

1. Download/Clone the source code.
1. Open NetBeans and Choose **File** > **New Project...**
1. In **Choose Project** tab: Select **Java** > **Java Project with Existing Sources**.
1. In **Name and Location** tab: Provide your desired **Project Name** and **Project Folder**.
1. In **Existing Sources** tab: Click **Add Folder...** and browse to select root directory of the latest source code that you have downloaded.
1. Click **Finish** to successfully create the downloaded project.

#### Source code overview

There are two projects related to Aspose.Words Java for Apache POI - HWPF and XWPF

- **Aspose.Words vs Apache POI HWPF and XWPF** - Contains the code comparison for features in Apache POI (HWPF and XWPF) and Aspose.Words.
- **More Features of Aspose.Words** - Contains the abundant features of Aspose.Words in comparison with Apache POI HWPF + XWPF for dealing with Microsoft Word and OpenOffice documents.
