---
title: Set Page Borders using Aspose.Words
type: docs
weight: 60
url: /java/set-page-borders-using-aspose-words/
---

## **Aspose.Words - Set Page Borders**
Page setup and section properties are encapsulated in the **PageSetup** object that is returned by the **DocumentBuilder.PageSetup** property. The object contains all the page setup attributes of a section (left margin, bottom margin, paper size, and so on) as properties. 

**Java**

{{< highlight csharp >}}

 Document doc = new Document();

DocumentBuilder builder = new DocumentBuilder(doc);

PageSetup pageSetup = builder.getPageSetup();

pageSetup.setTopMargin(ConvertUtil.inchToPoint(0.5));

pageSetup.setBottomMargin(ConvertUtil.inchToPoint(0.5));

pageSetup.setLeftMargin(ConvertUtil.inchToPoint(0.5));

pageSetup.setRightMargin(ConvertUtil.inchToPoint(0.5));

pageSetup.setHeaderDistance(ConvertUtil.inchToPoint(0.2));

pageSetup.setFooterDistance(ConvertUtil.inchToPoint(0.2));

{{< /highlight >}}
## **Download Running Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/releases/view/618874)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Docx4j-v1.0.0)
## **Download Sample Code**
- [CodePlex](https://aspose-wordsjavadocx4j.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/documents/setpageborders/AsposePageBorders.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/tree/master/Plugins/Aspose.Words-for-Java_for_Docx4j/src/main/java/com/aspose/words/examples/asposefeatures/documents/setpageborders/AsposePageBorders.java)

{{% alert color="primary" %}} 

For more details, visit [Specifying Formatting](/words/java/using-documentbuilder-to-modify-a-document/#usingdocumentbuildertomodifyadocument-specifyingformatting).

{{% /alert %}}
