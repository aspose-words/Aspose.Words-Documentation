---
title: Public API Changes in Aspose.Words 15.8.0
type: docs
weight: 80
url: /net/public-api-changes-in-aspose-words-15-8-0/
---

{{% alert color="primary" %}} 

This page lists public API changes that were introduced in Aspose.Words 15.8.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## Paragraph.InsertField Method Overloads Added

WORDSNET-12080 is now resolved. We have added following overloads of Paragraph.InsertField method. These methods allow inserting a field into an arbitrary point in the paragraph:

**C#**

{{< highlight csharp >}}
public Field InsertField(FieldType,bool,Node,bool);
public Field InsertField(string,Node,bool);
public Field InsertField(string,string,Node,bool);
{{< /highlight >}}

### OutlineOptions.CreateMissingOutlineLevels Property Added

CreateMissingOutlineLevels property is added to OutlineOptions class. Default value for this property is false.

**C#**

{{< highlight csharp >}}
/// <summary>
/// <para>Gets or sets a value determining whether or not to create missing heading levels when the document is
/// exported.</para>
/// <para>Default value for this property is <b>false</b></para>
/// </summary>
public bool CreateMissingOutlineLevels { get;set; }
{{< /highlight >}}

### HtmlFixedSaveOptions.Encoding Property Added

WORDSNET-12178 is now resolved. We have introduced following property in Aspose.Words 15.8.0.

**C#**

{{< highlight csharp >}}
/// <summary>
/// Specifies the encoding to use when exporting to HTML.
/// Default value is <ms><c>new UTF8Encoding(true)</c> (UTF-8 with BOM)</ms><java>'UTF-8' Charset</java>.
/// </summary>
/// <javaName>Encoding(java.nio.charset.Charset)</javaName>
public Encoding Encoding { get; set; }
{{< /highlight >}}

### CustomXmlMarkup Support Fully Removed from Aspose.Words Code

We used to keep CustomXmlMarkup nodes marked as Obsolete, but now it is fully removed as per:
[Custom XML markup is removed when you open a document in Word 2013](http://support.microsoft.com/kb/2761189)

### ODT Charts Rendering Supported

WORDSNET-10052 is now resolved. Starting from 15.8.0 version of Aspose.Words supports rendering of ODT charts upon saving to fixed page formats. Also chart is rendered to image and is displayed when save to flow formats other than ODT and OTT. Still this is the first version of this feature and some features of charts are not supported upon rendering. Currently axis titles, trend lines, error bars are not supported, also stock and surface charts are not fully supported. These features will be supported in the future versions of Aspose.Words.
