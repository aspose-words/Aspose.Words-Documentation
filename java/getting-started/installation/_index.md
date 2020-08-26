---
title: Installation
type: docs
weight: 110
url: /java/installation/
---

## **Installing Aspose.Words for Java from Maven Repository**
Aspose hosts all Java APIs on [Maven repository](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose). You can easily use Aspose.Words for Java API directly in your Maven Projects with simple configurations.

First, you need to specify Aspose Maven Repository configuration/location in your Maven pom.xml as below:

{{< highlight csharp >}}

 <repositories>

    <repository>

        <id>AsposeJavaAPI</id>

        <name>Aspose Java API</name>

        <url>https://repository.aspose.com/repo/</url>

    </repository>

</repositories>

{{< /highlight >}}

Then define Aspose.Words for Java API dependency in your pom.xml as follows:

{{< highlight csharp >}}

 <dependencies>

    <dependency>

        <groupId>com.aspose</groupId>

        <artifactId>aspose-words</artifactId>

        <version>20.6</version>

        <classifier>jdk17</classifier>

    </dependency>

    <dependency>

        <groupId>com.aspose</groupId>

        <artifactId>aspose-words</artifactId>

        <version>20.6</version>

        <classifier>javadoc</classifier>

    </dependency>

</dependencies>

{{< /highlight >}}

Congratulations! You have successfully defined the Aspose.Words for Java Maven dependency in your Maven project.