---
title: Simple Bar Graph
type: docs
weight: 10
url: /net/simple-bar-graph/
---

The code sample below insert basic **Bar Graph** in document using [DocumentBuilder](http://www.aspose.com/api/net/words/aspose.words/documentbuilder) class
##### **Example**
**C#**

{{< highlight csharp >}}

 Document doc = new Document();

//Create new document

DocumentBuilder builder = new DocumentBuilder(doc);

// Write text on the document

builder.Write("Simple Bar graph using Aspose.Words \t");

//select the chart type (here chartType is bar)

Shape shape1 = builder.InsertChart(ChartType.Bar, 432, 252);

//save the document

doc.Save("SimpleBarGraph.doc");

{{< /highlight >}}
## **Download Sample Code**
- [Codeplex](https://asposewordsnpoi.codeplex.com/downloads/get/1556915)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/tag/Aspose.WordsFeaturesmissinginNPOIv1.2)
- [Code.MSDN](https://code.msdn.microsoft.com/More-Code-Examples-of-d19b2e19)
## **Download Running Code**
- [Codeplex](https://asposewordsnpoi.codeplex.com/SourceControl/latest#Missing Features of NPOI HWPF and XWPF/Aspose.Words/09-WorkingWithGraphs/09.01-SimpleBarGraph/)
- [Github](https://github.com/asposewords/Aspose.Words-for-.NET/releases/download/Aspose.WordsFeaturesmissinginNPOIv1.2/09.01-SimpleBarGraph.zip)
- [Code.MSDN](https://code.msdn.microsoft.com/More-Code-Examples-of-d19b2e19/view/SourceCode#content)

{{% alert color="primary" %}} 

For more details, visit [DocumentBuilder InsertChart Method](http://www.aspose.com/api/net/words/aspose.words/documentbuilder/methods/insertchart/index).

{{% /alert %}}
