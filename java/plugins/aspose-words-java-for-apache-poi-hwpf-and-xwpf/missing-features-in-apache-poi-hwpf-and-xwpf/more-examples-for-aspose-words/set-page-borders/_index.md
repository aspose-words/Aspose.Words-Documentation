---
title: Set Page Borders
type: docs
weight: 20
url: /java/set-page-borders/
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

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/releases/view/618321)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/releases/tag/Aspose.Words_Java_for_Apache_POI_WP-v1.0.0)

## **Download Sample Code**

- [CodePlex](https://asposewordsjavaapachepoi.codeplex.com/SourceControl/latest#src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/setpageborders/AsposePageBorders.java)
- [GitHub](https://github.com/aspose-words/Aspose.Words-for-Java/blob/master/Plugins/Aspose_Words_for_Apache_POI/src/main/java/com/aspose/words/examples/asposefeatures/workingwithdocument/setpageborders/AsposePageBorders.java)

{{% alert color="primary" %}} 

For more details, visit [Specifying Formatting](/words/java/using-documentbuilder-to-modify-a-document/#usingdocumentbuildertomodifyadocument-specifyingformatting).

{{% /alert %}}
