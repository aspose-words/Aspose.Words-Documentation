---
title: Public API Changes in Aspose.Words 15.1.0
type: docs
weight: 10
url: /java/public-api-changes-in-aspose-words-15-1-0/
---

{{% alert color="primary" %}} 

These page list public API changes that were introduced in Aspose.Words 15.1.0. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as a regression and modifies existing behavior is especially important and is documented here.

{{% /alert %}} 

## HtmlSaveOptions.ExportRoundtripInformation Property Added

We have now added a new public property to HtmlSaveOptions class:

**C#**

{{< highlight csharp >}}
/** 
 Specifies whether to write the roundtrip information when saving to HTML, MHTML or EPUB.
 Default value is <c>true</c> for HTML and <c>false</c> for MHTML and EPUB.
 <p>Saving of the roundtrip information enables to restore document properties such as tab stops,
 comments, headers and footers during the HTML documents loading back into a <see cref="Document"/> object.</p>
 <p>When <c>true</c>, the roundtrip information is exported as -aw-* CSS properties
 of the corresponding HTML elements.</p>
 <p>When <c>false</c>, causes no roundtrip information to be output into produced files.</p>
*/
public final boolean getExportRoundtripInformation()
public final void setExportRoundtripInformation(boolean value)
{{< /highlight >}}

## Spacing and Kerning in WordArt Objects is Supported

Now spacing and kerning in WordArt objects are taken into account during rendering to fixed page formats such as PDF. 

## Public API for SDT Checkbox

We have now opened programmatic access to Checked/Unchecked state of SDT (StructuredDocumentTag) Checkbox through StructuredDocumentTag.Checked property. We have also added capability to create StructuredDocumentTag of type SdtType.Checkbox in the public API.

## Public Fields API v1.0 Announced

We are proud to announce public fields API v1.0 that will be exposed starting from 15.1 release of Aspose.Words. Initially, we have added the following new classes and properties to this API:

### Field Classes and Properties

All FieldXXX classes are now public. Each class corresponds to a certain MS Word field type and provides a number of properties corresponding to arguments, switches and switch arguments of that field. All field types and arguments/switches listed in the specification (except the newest ones appeared in MS Word 2013) are covered that makes it a unique solution on the market.

We have introduced two property types i.e. boolean for stand-alone switches and string for arguments and arguments of switches. In defense of this approach, we can adduce the following: if we treat UI of MS Word as a visual analogue of its API, the field insertion dialog also provides checkboxes for simple switches and textboxes (without any format verification) for the rest. The following rules apply when setting field properties:

- A string property is null when the corresponding argument (or a switch with argument) is missing. A boolean property is true or false depending on whether the corresponding switch is present/absent.
- The engine automatically inserts empty strings if a property affects, say, the third argument and the previous two are missing.
- The engine automatically detects if an argument should be enclosed in double quotes (e.g. it contains whitespace). A user should explicitly define a double quote in a string being assigned only if it is a part of the string.

### FieldFormat class

We have also exposed access to field format switches common for all field types via the **Field.Format**, **Field.Format.NumericFormat**, **Field.Format.DateTimeFormat**, and **Field.Format.GeneralFormats** properties. The user is now able to read or modify field format.

### New Overload of DocumentBuilder.InsertField Method Added

We have introduced the new overload **DocumentBuilder.InsertField(FieldType fieldType, bool updateField)** which allows to insert a field by its type.

### New Paragraph.AppendField Method Added

We have introduced three overloads of the Paragraph.AppendField() method, each corresponding to a DocumentBuilder.InsertField() method with simlar signatures. This is basically to address WORDSNET-3225 (Make it possible to create Fields using DOM (without using DocumentBuilder)). We hope, this will meet the requirement where customers ask for the capability of inserting a field without document builder. Since Field is a facade that bunches up three document nodes (which have other nodes in between), all we managed to come up with is the Paragraph.AppendField() method that enables to avoid the use of DocumentBuilder but basically just duplicates its field insertion functionality. Therefore, we are closing this issue for now, but the customers are welcome to suggest how they would like to see this feature implemented, unless they are satisfied with the aforementioned one. We will consider they suggestions for implementation then.

### New FieldToc.UpdatePageNumbers Method Added

We have added the FieldToc.UpdatePageNumbers() method. Since the FieldToc class, like other field classes, were initially internal, we had to wait until the rest of public fields API is ready.

## Java Baseline is Moved to JDK 1.8 64-bit.

### JDK Options

JDK 1.5 32-bit had used as Aspose.Words Java baseline for long long time. Even JDK 1.4 version had generated for users with ancient environment. Both JDKs are discontinued by Sun/Oracle. Even commercial (non-open) support of JDK 1.5 is dropped about year ago. Starting from January release 15.1 of Aspose.Words, we dropped support of Java 1.4 and 1.5. 

Oracle currently supports jdk 1.6, 1.7 and 1.8. Open support of jdk 1.6 is closed about year ago, but commercial support is still here. There are also few environments (like not very last but still popular versions of Mac OS) that don’t support 1.7 and 1.8, they work on jdk 1.6 only.

### JDK 1.6-1.7-1.8 Small Differences.

Byte code of 1.6, 1.7 and 1.8 is very close. There is no global difference like in 1.4 vs 1.5 vs 1.6. Few language constructs are added in 1.7 and 1.8. Few libraries are updated/bug fixed. Few fonts are rendered differently. Few image formats are rendered differently too due to updated codecs. There are a few hidden changes like JVM optimization.

As a result, we do not need in different JARs for JDK 1.6, 1.7, 1.8 as it was for JDK 1.4, 1.5 and 1.6. The single JDK 1.6 jar is enough for all current java versions.

### Baseline

The very last available Java JDK is 1.8 64-bit which is chosen for development and test baseline. This is becuause of two reasons: 1) it is faster than older versions, so tests and development will be slightly faster. 2) It is stricter than older versions so some bugs we can catch under 1.8 but the bugs don't show under 1.6. However, we use only 1.6 language options, language constructs added in 1.7 and 1.8 are not used. So we can compile 1.8 baseline to 1.6 production JAR for release publication. 
