---
title: How to  Extract Content Based on Styles
type: docs
weight: 280
url: /java/how-to-extract-content-based-on-styles/
---

{{% alert color="primary" %}} 

This page is no longer maintained. For an updated page, please visit [Working with Styles](http://www.aspose.com/docs/display/wordsjava/Working+with+Styles)

{{% /alert %}} 

You can download the complete source code of the ExtractContentBasedOnStyles sample [here](https://github.com/aspose-words/Aspose.Words-for-Java). 

At a simple level, retrieving the content based on styles from a Word document can be useful to identify, list and count paragraphs and runs of text formatted with a specific style. For example, you may need to identify particular kinds of content in the document, such as examples, titles, references, keywords, figure names, and case studies.

To take this a few steps further, this can also be used to leverage the structure of the document, defined by the styles it uses, to re-purpose the document for another output, such as HTML. This is in fact how the Aspose documentation is built, putting Aspose.Words to the test. A tool built using Aspose.Words takes the source Word documents and splits them into topics at certain heading levels. An XML file is produced using Aspose.Words which is used to build the navigation tree you can see on the left. And then Aspose.Words converts each topic into HTML.

The solution for retrieving text formatted with specific styles in a Word document is typically economical and straightforward using Aspose.Words.
#### **The Solution**
To illustrate how easily Aspose.Words handles retrieving content based on styles, let’s look at an example. In this example, we’re going to retrieve text formatted with a specific paragraph style and a character style from a sample Word document.

At a high level, this will involve:

1. Opening a Word document using the [Aspose.Words.Document](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Document+class) class.
1. Getting collections of all paragraphs and all runs in the document.
1. Selecting only the required paragraphs and runs.

Specifically, we’ll retrieve text formatted with the ‘Heading 1’ paragraph style and the ‘Intense Emphasis’ character style from this sample Word document. 

![todo:image_alt_text](how-to-extract-content-based-on-styles_1.png)

In this sample document, the text formatted with the ‘Heading 1’ paragraph style is ‘Insert Tab’, ‘Quick Styles’ and ‘Theme’, and the text formatted with the ‘Intense emphasis’ character style is the several instances of blue, italicized, bold text such as ‘galleries’ and ‘overall look’.
#### **The Code The implementation of a style-based query is quite simple in the Aspose.Words document object model, as it simply uses tools that are already in place. Two class methods are implemented for this solution: ParagraphsByStyleName – This method retrieves an array of those paragraphs in the document that have a specific style name. RunsByStyleName – This method retrieves an array of those runs in the document that have a specific style name. Both these methods are very similar, the only differences being the node types and the representation of the style information within the paragraph and run nodes. Here is an implementation of ParagraphsByStyleName :**
##### **Example**
*Find all paragraphs formatted with the specified style.*

**Java**

{{< highlight csharp >}}

 public static ArrayList paragraphsByStyleName(Document doc, String styleName) throws Exception

{

    // Create an array to collect paragraphs of the specified style.

    ArrayList paragraphsWithStyle = new ArrayList();

    // Get all paragraphs from the document.

    NodeCollection paragraphs = doc.getChildNodes(NodeType.PARAGRAPH, true);

    // Look through all paragraphs to find those with the specified style.

    for (Paragraph paragraph : (Iterable<Paragraph>) paragraphs)

    {

        if (paragraph.getParagraphFormat().getStyle().getName().equals(styleName))

            paragraphsWithStyle.add(paragraph);

    }

    return paragraphsWithStyle;

}

{{< /highlight >}}

This implementation also uses the [Document.GetChildNodes](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Document.getChildNodes+property) method of the Document class, which returns a collection of all nodes with the specified type, which in this case in all paragraphs.

Note that the second parameter of the [Document.GetChildNodes](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Document.getChildNodes+property) method is set to true. This forces the [Document.GetChildNodes](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Document.getChildNodes+property) method to select from all child nodes recursively, rather than selecting the immediate children only.

It’s also worth pointing out that the paragraphs collection does not create an immediate overhead because paragraphs are loaded into this collection only when you access items in them.

Then, all you need to do is to go through the collection, using the standard foreach operator and add paragraphs that have the specified style to the paragraphsWithStyle array. The Paragraph style name can be found in the [Style.Name](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Style.getName+property) property of the [Paragraph.ParagraphFormat](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Paragraph.getParagraphFormat+property) object.

The implementation of RunsByStyleName is almost the same, although we’re obviously using [NodeType.Run](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.NodeType+Class) to retrieve run nodes. The [Font.Style](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Font.getStyle+property) property of a [Run](http://www.aspose.com/docs/display/wordsjava/com.aspose.words.Run+class) object is used to access style information in the **Run** nodes.
##### **Example**
*Find all runs formatted with the specified style.*

**Java**

{{< highlight csharp >}}

 public static ArrayList runsByStyleName(Document doc, String styleName) throws Exception

{

    // Create an array to collect runs of the specified style.

    ArrayList runsWithStyle = new ArrayList();

    // Get all runs from the document.

    NodeCollection runs = doc.getChildNodes(NodeType.RUN, true);

    // Look through all runs to find those with the specified style.

    for (Run run : (Iterable<Run>) runs)

    {

        if (run.getFont().getStyle().getName().equals(styleName))

            runsWithStyle.add(run);

    }

    return runsWithStyle;

}

{{< /highlight >}}

{{% alert color="primary" %}} 

When both queries are implemented, all you need to do is to pass a document object and specify the style names of the content you want to retrieve:

{{% /alert %}} 
##### **Example**
*Run queries and display results.*

**Java**

{{< highlight csharp >}}

 // Open the document.

Document doc = new Document(dataDir + "TestFile.doc");

// Define style names as they are specified in the Word document.

final String PARA_STYLE = "Heading 1";

final String RUN_STYLE = "Intense Emphasis";

// Collect paragraphs with defined styles.

// Show the number of collected paragraphs and display the text of this paragraphs.

ArrayList paragraphs = paragraphsByStyleName(doc, PARA_STYLE);

System.out.println(java.text.MessageFormat.format("Paragraphs with \"{0}\" styles ({1}):", PARA_STYLE, paragraphs.size()));

for (Paragraph paragraph : (Iterable<Paragraph>) paragraphs)

    System.out.print(paragraph.toString(SaveFormat.TEXT));

// Collect runs with defined styles.

// Show the number of collected runs and display the text of this runs.

ArrayList runs = runsByStyleName(doc, RUN_STYLE);

System.out.println(java.text.MessageFormat.format("\nRuns with \"{0}\" styles ({1}):", RUN_STYLE, runs.size()));

for (Run run : (Iterable<Run>) runs)

    System.out.println(run.getRange().getText());

{{< /highlight >}}
#### **End Result When everything is done, running the sample will display the following output: ![todo:image_alt_text](how-to-extract-content-based-on-styles_2.png) As you can see, this is a very simple example, showing the number and text of the collected paragraphs and runs in the sample Word document.**
