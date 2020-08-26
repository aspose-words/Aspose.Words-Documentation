---
title: Hello World Example
type: docs
weight: 30
url: /java/hello-world-example/
---

{{% alert color="primary" %}} 

A "Hello, World" example is traditionally used to introduce features of a programming language or software with a simple use case. Here is the example for LINQ Reporting Engine.

{{% /alert %}} 

Assume, that you have the Sender class defined in your application as follows:

**Java**

{{< highlight csharp >}}

 public class Sender {

    public Sender(String name, String message) {

        _name = name;

        _message = message;

    }

    public String getName() {

        return _name;

    }

    public String getMessage() {

        return _message;

    }

    private String _name;

    private String _message;

}

{{< /highlight >}}

To produce a report containing a message of a concrete sender on its behalf, you can use a template document with the following content.

{{< highlight csharp >}}

 <<[s.getName()]>> says: "<<[s.getMessage()]>>."

{{< /highlight >}}

To build a report from the template, you can use the following source code.

**Java**

{{< highlight csharp >}}

 Document doc = new Document(getMyDir() + "temp_HelloWorld.docx");

Sender sender = new Sender("LINQ Reporting Engine", "Hello World");

ReportingEngine engine = new ReportingEngine();

engine.buildReport(doc, sender, "s");

doc.save(getMyDir() + "out.docx");

{{< /highlight >}}

After the source code is ran, the template document is populated with the data about the sender, and the document becomes a ready report with the following content.

{{< highlight csharp >}}

 LINQ Reporting Engine says: "Hello, World."

{{< /highlight >}}

After the report document is built, you can save it or perform any other tasks on it using [Aspose.Words API](http://www.aspose.com/docs/display/wordsjava/Aspose.Words+for+Java+API+Reference) in your code.
