---
title: Aspose.Words for .NET 5.3.0 Release Notes
type: docs
weight: 20
url: /net/aspose-words-for-net-5-3-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 5.3.0](http://www.aspose.com/downloads/words/net/new-releases/aspose.words-for-.net-5.3.0/)

{{% /alert %}} 

We are happy to announce Aspose.Words for .NET 5.3.0!

- OpenDocument (ODT) import has now reached Beta!
  Smart tags are now supported in DOC, OOXML, RTF and WordML. 
  Aspose.Words now ships with TLB (COM type library) and IDL (Interface Definition Language) to simplify use from unmanaged code. 
  The documentation now includes a topic on using Aspose.Words from PHP, Perl, Python, PowerBuilder and other languages. 
  35 fixes and enhancements. 



It is now possible to load OpenDocument (OpenOffice Writer) documents in Aspose.Words! Aspose.Words will recognize ODT files automatically and also a new enumerated value has been added.

It is now easy to convert ODT to OOXML or any other document format supported by Aspose.Words:

Document doc = new Document(@"C:\MyFile.odt");doc.Save(@"C:\MyFile Out.docx");

Note: Loading OpenDocument is in Beta at the moment. We hope it will come out of Beta in the next Aspose.Words for .NET release.

We hope that the Adobe Buzzword team will be happy since they've been the primary push for ODT support in Aspose.Words. It is interesting to note that ODT to/from Microsoft Word documents conversion is far from trivial because of the a few fundamental differences between the document structures. At the moment the set of ODT features supported by Aspose.Words is limited to features found in Buzzword.



Smart tags in Microsoft Word documents are fragments of text that are marked to have "special meaning" and can have custom data and actions associated with them. A simple example of a smart tag is an address or a stock ticker. When smart tags are enabled in Microsoft Word, you can see them underlined with a pink dotted underline.

While we consider smart tags a rarely used feature (we had no requests from customers to support them), we believe supporting smart tags is an important step towards supporting all custom markup in Microsoft Word documents. There are three distinct forms of custom markup in Microsoft Word documents:

- Smart tags - now fully supported
  Custom XML 
  Structured document tags (content controls) 

Earlier versions of Aspose.Words ignored smart tags (e.g. if you open/save a document in Aspose.Words then any smart tags existing in the document would be lost), but since this version all smart tags and their properties are preserved. Also, there are new public classes and avaialble in the Aspose.Words object model to represent smart tags.

Aspose.Words is the only word processing document library on the market that supports smart tags.

We plan to support custom XML and structured document tags in the next versions of Aspose.Words.



If you look into C:\Program Files\Aspose\Aspose.Words\Bin\net2.0 after installation, you will see Aspose.Words.TLB and Aspose.Words.IDL are now included along with Aspose.Words.DLL.

Having the TLB (Type Library) file is very handy if you want to use Aspose.Words from unmanaged code. If your programming language allows to import or reference type libraries (for example Visual Basic or Delphi), add a reference to Aspose.Words.TLB and you will be able to see and access all Aspose.Words classes, methods and enumerations in the Object Browser.

If you are creating an application in classical ASP using VBScript or in PHP, then having the IDL (Interface Definition Language) file is good, because you can open Aspose.Words.IDL in a Notepad and lookup the enumerated values or method signatures for use from unmanaged code.

: If you want to view/browse a TLB file or convert TLB to IDL, use the Microsoft OleView tool. The easiest way to download it from  .



Aspose.Words is available only in two versions: Aspose.Words for .NET and Aspose.Words for Java, but nevertherless, you can use it from several other programming languages. We have reworked the section in our documentation and included more examples in different languages.



|Issue ID |Component |Summary |
| :- | :- | :- |
|4321 |DOC |Support Smart Tags in DOC |
|5751 |DOC |CharactersWithSpaces built-in document property lost |
|5886 |DOC |“FileCorruptedException” exception occurs during opening document. |
|3992 |DOCX |Support TitlesOfParts and HeadingPairs document properties |
|4479 |DOCX |“System.OverflowException” exception occurs during saving DOCX document. |
|4503 |DOCX |“System.InvalidCastException” occurs during opening DOCX file. |
|5018 |DOCX |“FileCorruptedException” exception occurs during opening DOCX document. |
|5713 |DOCX |Aspose.Words should ignore “*x000d*” in document properties. |
|5833 |DOCX |It takes up to 15 minutes to open DOCX document. |
|5945 |DOCX |Possible problem with generated DOCX files in Word 2003 + Compatibility Pack |
|6083 |DOCX |DOCX created by AW is corrupted to open in MS Word 2007. |
|5905 |HTML |Handle header rows in tables properly |
|928 |Model |Allow custom document properties to link to range or bookmark |
|1505 |Model |BMP image is not inserted correctly into the document |
|5019 |Model |“System.ArgumentException: duplicate” exception occurs during saving document in any format. |
|5767 |Model |List item numbering is incorrect |
|5879 |Model |UseDestinationStyles creates additional style in the destination document. |
|6137 |Model |“NullReferenceException” occurs during Saving Document. |
|5800 |ODT |Text of text boxes and shapes is not exported. |
|5908 |PDF |Parametrize check box simulation in PDF export |
|6079 |PDF |Character category is detected incorrectly |
|6135 |PDF |“System.InvalidCastException” occurs during saving DOC in AsposePdf format. |
|4322 |RTF |Support Smart Tags in RTF |
|4597 |RTF |Encoding is treated incorrectly when loading RTF |
|4628 |RTF |ansicpg keyword is ignored during import for document properties |
|5311 |RTF |Asian RTF files are converted incorrectly using Aspose.Words. |
|5752 |RTF |Characters is swapped with CharactersWithSpaces in RTF load and save |
|5832 |RTF |Japanese characters are spoiled after converting RTF document. |
|5961 |RTF |RTF document hangs on loading |
|1589 |WML |MS Word is capable to read shapes defined in inappropriate places (not conforming with schema). |
|3760 |WML |Aspose.Words doesn’t render the part of WML document. |
|4323 |WML |Support Smart Tags in WordML |
|5934 |WML |“FileCorruptedException” exception occurs during opening WML document. |
|6000 |WML |FormatException: Input string was not in a correct format. |
|6095 |WML |Dates are exported using current culture and that creates invalid WordML |

