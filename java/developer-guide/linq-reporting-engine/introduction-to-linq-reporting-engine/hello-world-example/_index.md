---
title: Hello World Example
description: "Create Hello world example to start working with LINQ Reporting Engine to build a report Java."
type: docs
weight: 30
url: /java/hello-world-example/
---

{{% alert color="primary" %}} 

A "Hello, World" example is traditionally used to introduce features of a programming language or software with a simple use case. Here is the example for LINQ Reporting Engine.

{{% /alert %}} 

Assume, that you have the Sender class defined in your application as follows:


{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-linq-Sender-Sender.java" >}}

To produce a report containing a message of a concrete sender on its behalf, you can use a template document with the following content.

{{< highlight csharp >}}
<<[s.getName()]>> says: "<<[s.getMessage()]>>."
{{< /highlight >}}

To build a report from the template, you can use the following source code.

{{< gist "aspose-words-gists" "827e71ccc0b8516a3cfe247b86ce6d4e" "Examples-src-main-java-com-aspose-words-examples-linq-HelloWorld-HelloWorld.java" >}}

After the source code is ran, the template document is populated with the data about the sender, and the document becomes a ready report with the following content.

{{< highlight csharp >}}
LINQ Reporting Engine says: "Hello, World."
{{< /highlight >}}

After the report document is built, you can save it or perform any other tasks on it using [Aspose.Words API](https://apireference.aspose.com/words/java/com.aspose.words/package-summary) in your code.
