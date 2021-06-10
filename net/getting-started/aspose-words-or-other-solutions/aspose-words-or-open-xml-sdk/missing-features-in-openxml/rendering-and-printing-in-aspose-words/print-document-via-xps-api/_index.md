---
title: Print Document via XPS API
type: docs
weight: 10
url: /net/print-document-via-xps-api/
---

This article can be useful to anyone who wants to submit an **XPS** document to the unmanaged XpsPrint API from a .NET application. But the main goal if this article is to show how to print a word processing document from an ASP.NET or Windows Service application using **Aspose.Words** and the **XpsPrint API**.

We have created the **XpsPrintHelper class** with the **Print** method, which is very easy to use. You just need to specify a document that you want to print, a printer name and an optional job name. If there was any problem submitting or printing the document, the method will throw an exception.

The last parameter is a Boolean value that specifies whether the code should wait until the job is printed or return immediately after the print job has been submitted. If you choose to return immediately, then you will not be able to determine whether the document has printed successfully or not in the end.

{{< highlight csharp >}}
try
{
    // Sample infrastructure.
    string exeDir = Path.GetDirectoryName(Assembly.GetExecutingAssembly().Location) + Path.DirectorySeparatorChar;
    string dataDir = new Uri(new Uri(exeDir), @"../Data/").LocalPath;
    //ExStart
    //ExId:XpsPrint_Main
    //ExSummary:Invoke the utility class to print via XPS.
    // Open a sample document in Aspose.Words.
    Aspose.Words.Document document = new Aspose.Words.Document(dataDir + "Print via XPS API.doc");

    // Specify the name of the printer you want to print to.
    const string printerName = @"\\COMPANY\Zeeshan MFC-885CW Printer";

    // Print the document.
    XpsPrintHelper.Print(document, printerName, "test", true);
    //ExEnd
    Console.WriteLine("Printed successfully.");
}
catch (Exception e)
{
    Console.WriteLine(e.ToString());
}
Console.WriteLine("Press Enter.");
Console.ReadLine();
{{< /highlight >}}

## Download Sample Code

- [Codeplex](https://asposeopenxml.codeplex.com/releases/view/617779)
- [Github](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MissingFeaturesofOpenXMLWordsv1.1)
- [Code.MSDN](https://code.msdn.microsoft.com/Missing-Features-in-6a2c882b)
