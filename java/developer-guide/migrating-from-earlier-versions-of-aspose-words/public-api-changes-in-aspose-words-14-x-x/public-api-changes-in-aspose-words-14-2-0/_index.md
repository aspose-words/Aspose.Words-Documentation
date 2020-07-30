---
title: Public API Changes in Aspose.Words 14.2.0
type: docs
weight: 20
url: /java/public-api-changes-in-aspose-words-14-2-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 14.2.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 
### **Document.AutomaticallyUpdateSyles Added to the Public API**
This option allows to get or set a flag which indicates whether the styles in the document are updated to match the styles in the attached template each time the document is opened in Microsoft Word.

**Usage**

{{< highlight java >}}

 Document doc = new Document();

doc.setAttachedTemplate("MyTemplate.dot");

// True if the styles in the specified document are updated to match the styles in the attached template each time the document is opened.

doc.setAutomaticallyUpdateSyles(true);

doc.save("out.docx");

{{< /highlight >}}

When the document (with this option set) is reopened in Microsoft Word, changes to the styles in the attached template will automatically appear in this document. Also, please note that Aspose.Words does not use this flag to update styles upon document loading.
### **Document.CompatibilityOptions.OptimizeFor Added to the Public API**
This version of Aspose.Words exposes **Document.CompatibilityOptions.OptimizeFor** method and **MsWordVersion** enum which allows to fine-tune Aspose.Words behavior to match particular Microsoft Word version as well as to suppress Microsoft Word compatibility-mode ribbon for Aspose.Words generated documents.

{{< highlight java >}}

 Document doc = new Document();

// Initialize compatibility options to Word 2010 default values.

// OptimizeFor also affects the way the AW is and will be handling MSW-version specific features.

// For example default built-in styles will be a bit different for older MSW versions.

doc.getCompatibilityOptions().optimizeFor(MsWordVersion.WORD_2010);

doc.save("myDocMimickingMsWord2010.docx");

{{< /highlight >}}

The complete list of Microsoft Word version specific nuances across Aspose.Words is not yet available but there are known differences that exist in Layout, Fields and the Model.

One more important effect is that Aspose.Words no longer explicitly writes CompatibilityMode to document settings unless it was not present in the existing document or was explicitly requested through the usage of **Document.CompatibilityOptions.OptimizeFor** method.
### **Hyphenation Support Added**
Aspose.Words' layout engine now supports Hyphenation. However, to be able to use this feature, you must register a hyphenation dictionary as follows:

**Usage**

{{< highlight java >}}

 Document doc = new Document("in.doc");

Hyphenation.registerDictionary("en-US", "C:\\HyphDic\\hyph_en_US.dic");

Hyphenation.registerDictionary("de-CH", "C:\\HyphDic\\hyph_de_CH.dic");

doc.save("out.pdf");

{{< /highlight >}}

[This page lists Hunspell spell checker dictionaries](http://archive.services.openoffice.org/pub/mirror/OpenOffice.org/contrib/dictionaries/) that can be used with Aspose.Words
### **Rendering of DrawingML Inner Shadow Effect**
Starting from 14.2.0 version, Aspose.Words supports rendering of InnerShadow DrawingML effect. Effect can be rendered in two modes:

1. Simplified: In this case blurred edges are simulated using several layers with different transparency.
1. Fine: In this case, blur effect is applied to shadow which gives better result but takes much more time to render.
### **DigitalSignatureUtil.LoadSignatures Method Added to the Public API**
Aspose.Words now supports loading digital signatures from XPS documents. The usage is as follows:

**UC1**

{{< highlight java >}}

 DigitalSignatureCollection signatures = DigitalSignatureUtil.loadSignatures("X:\\test.xps");

System.out.println(signatures.get(0).isValid());

{{< /highlight >}}

**UC2**

{{< highlight java >}}

 InputStream stream = new FileInputStream("X:\\test.xps");

DigitalSignatureCollection signatures = DigitalSignatureUtil.loadSignatures(stream);

System.out.println(signatures.get(0).isValid());

{{< /highlight >}}

This method can also be used to load signatures from DOC, DOCX and ODT files as well. It returns empty collection if file is not signed.
