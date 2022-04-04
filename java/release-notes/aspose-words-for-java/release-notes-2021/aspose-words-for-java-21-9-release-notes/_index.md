---
title: 21.9 Release Notes
second_title: Aspose.Words for Java
articleTitle: Aspose.Words for Java 21.9 Release Notes
linktitle: Aspose.Words for Java 21.9 Release Notes
description: "Aspose.Words for Java 21.9 Release Notes – the latest updates and fixes."
type: docs
weight: 4
url: /java/aspose-words-for-java-21-9-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for Java 21.9](https://repository.aspose.com/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-words/21.9).

{{% /alert %}}

## Major Features

There are 87 improvements and fixes in this regular monthly release. The most notable are:

- License checking is updated to tolerate "suspicious" complex environments.
- Added an ability to get CustomNumberStyleFormat of ListLevel.
- Make it possible to get the string representation of the ListLevel object for the specified index.
- Implemented export of triangular gradients into PDF in native (vector) form.
- Implemented logical structure for comments rendering to PDF.

## Full List of Issues Covering all Changes in this Release (Reported by Java Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-22525 | NumberStyle CUSTOM for LEADING_ZERO formats | New Feature |
| WORDSJAVA-2543 | Aspose.Words 21.3: java.lang.UnsatisfiedLinkError prints to console, when using the library after jarjar repackager. | Bug |
| WORDSJAVA-2585 | java.lang.UnsatisfiedLinkError error occurs in the obfuscated assembly | Bug |
| WORDSJAVA-2596 | Aspose.Words 21.5: java.lang.IllegalArgumentException: bytes cannot be null error occurs in the obfuscated assembly | Bug |
| WORDSJAVA-2604 | Aspose.Words 21.6: Invalid license signature of JarJar-ed jar under Java   1.7 | Bug |
| WORDSJAVA-2612 | Invalid license signature error occurs even without setting license | Bug |
| WORDSJAVA-2617 | JavaFX - java.lang.IllegalStateException: Invalid license signature | Bug |
| WORDSJAVA-2621 | java.lang.ExceptionInInitializerError is thrown Confluence server plugin | Bug |
| WORDSJAVA-2622 | Exception thrown when using maven shade plugin | Bug |
| WORDSJAVA-2626 | java.lang.IllegalStateException: Invalid license signature is thrown on MAC | Bug |
| WORDSJAVA-2627 | java.lang.IllegalStateException: Invalid license signature is thrown on Linux | Bug |
| WORDSJAVA-2628 | java.lang.IllegalStateException: Invalid license signature. when loading a file in Spring boot application | Bug |
| WORDSJAVA-2630 | Quarkus application using Java 11 throws "Invalid license signature" exception | Bug |
| WORDSJAVA-2637 | Regression: WAR application shows: Invalid license signature. Please make sure the license file was not modified. | Bug |
| WORDSJAVA-2639 | java.lang.IllegalStateException is thrown while generating a report from JSON | Bug |
| WORDSJAVA-2640 | Exception Initializing Document Class | Bug |
| WORDSJAVA-2642 | "Invalid license signature" exception is thrown at Linux using   Java 11 | Bug |
| WORDSJAVA-2644 | "Invalid license signature" exception is thrown while setting license at Windows10 and centos7 | Bug |
| WORDSJAVA-2645 | java.lang.IllegalStateException: Invalid license signature | Bug |
| WORDSJAVA-2652 | Regression: exception when instantiating Document object | Bug |
| WORDSNET-22642 | Wrong Replacement of Text Content if Bookmarks in Word DOCM Document are   enclosing each other | Bug |
| WORDSNET-21726 | Comments do not survive two consecutive Document.compare calls | Bug |
| WORDSNET-22026 | Blank page is created after DOCX to PDF conversion | Bug |
| WORDSNET-22587 | Run.Font returns unexpected font family | Bug |
| WORDSNET-22553 | Document comparison: incorrect revision values for content control   differences | Bug |
| WORDSNET-22478 | Page Number is rendered as English Number instead of Thai in output PDF | Bug |
| WORDSNET-22442 | System.IndexOutOfRangeException is thrown when DOC is saved to fixed file   format | Bug |
| WORDSNET-22604 | System.ArgumentException is thrown while re-saving DOCM | Bug |
| WORDSNET-21178 | Part of equation text gets subscripted and misaligned&nbsp; in output PDF | Bug |
| WORDSNET-21718 | Incorrect processing of Comment after comparing doucments | Bug |
| WORDSNET-19443 | A diagonal line in Chart deviates from its original position when   rendering to JPG | Bug |
| WORDSNET-22599 | FindReplaceOptions.ApplyFont does not change the font size of text | Bug |

## Full List of Issues Covering all Changes in this Release (Reported by .NET Users)

|Key|Summary|Category|
| :- | :- | :- |
| WORDSNET-17101 | Optimize the PDF output size for document with multiple gradient filled   shapes | New Feature |
| WORDSNET-22577 | Add feature to read custom properties from PDF | New Feature |
| WORDSNET-22603 | Add the ability to apply 3D effects to the image | New Feature |
| WORDSNET-21742 | Add feature to export language in Tag tab of object properties   (ExportDocumentStructure) | New Feature |
| WORDSNET-17842 | Set Language in PDF Tag Properties | New Feature |
| WORDSNET-18006 | Widow/orphan rule not respected in the PDF output | New Feature |
| WORDSNET-22576 | Unable to SetLicense on Xamarin.iOS when   using SDK Linking | Enhancement |
| WORDSNET-15320 | Document's comment is lost after comparing documents | Bug |
| WORDSNET-22614 | The indentation of the equation changed after converting a Docx to PDF | Bug |
| WORDSNET-22632 | Find and Replace does not work with delete revisions | Bug |
| WORDSNET-22558 | Missed numbering revision when compare paragraphs with equal nsids in   list definitions | Bug |
| WORDSNET-22463 | Performance issue with XML to PDF Conversion | Bug |
| WORDSNET-22572 | Shapes (Images) are lost after RTF to HTML conversion | Bug |
| WORDSNET-18623 | Incorrect keep with next rule handling for a tall table row on converting   to pdf | Bug |
| WORDSNET-22566 | Image is lost when document is saved to DOCX with   Iso29500_2008_Strict | Bug |
| WORDSNET-22574 | Bullet symbol is lost after Inserting HTML to DOCX | Bug |
| WORDSNET-22542 | A Table moves to previous Page during DOCX to PDF conversion | Bug |
| WORDSNET-22516 | Text/row moved to the previous page in converted PDF | Bug |
| WORDSNET-22466 | Insert Image Exif orientation ignored | Bug |
| WORDSNET-22613 | Empty page returns when split document on pages using ExtractPages | Bug |
| WORDSNET-13652 | InsertDocument splits one content control into multiple when document   have section break | Bug |
| WORDSNET-22547 | VbaModuleCollection.Remove does not remove VBA module from document | Bug |
| WORDSNET-22560 | VBA Code is lost after modifying source code | Bug |
| WORDSNET-22541 | VbaProject&nbsp; is removed after   copying modules to existing VbaProject | Bug |
| WORDSNET-22514 | Incorrect expression evaluation for headers and footers in multi-section   data bands for LINQ Reporting Engine | Bug |
| WORDSNET-22636 | Odd square characters are rendered in PDF | Bug |
| WORDSNET-22601 | fldrslt most recent calculated result of the field is empty after DOCX to   RTF Conversion | Bug |
| WORDSNET-22512 | Text wrapping does not take place in PDF | Bug |
| WORDSNET-22611 | DOCX to PDF converting and displaying certain International Characters | Bug |
| WORDSNET-21272 | DataTable of chart is rendered incorrectly in output PDF | Bug |
| WORDSNET-22568 | Distance to the series labels is calculated incorrectly | Bug |
| WORDSNET-22536 | Document.UpdatePageLayout throws System.NullReferenceException | Bug |
| WORDSNET-22459 | NUMPAGES in Textbox is not updated after Joining documents | Bug |
| WORDSNET-22464 | Frame position in the footer is wrong | Bug |
| WORDSNET-22570 | Fix failed performance tests | Bug |
| WORDSNET-22544 | Update Benchmark to use DotNetBenchmark 0.13 | Bug |
| WORDSNET-22435 | Default ContinuosSectionRestart Enum Value & Associated MS Word   Versions | Bug |
| WORDSNET-22551 | Reflection is shifted down if DmlEffectsRenderingModeCore is   "Fine" | Bug |
| WORDSNET-22399 | Comments graphics is not tagged | Bug |
| WORDSNET-21700 | NullReferenceException is thrown when call UpdatePageLayout | Bug |
| WORDSNET-19045 | DOCX to PDF conversion issue with chart rendering | Bug |
| WORDSNET-18088 | DOC to PDF issue with chart rendering | Bug |
| WORDSNET-22668 | System.InvalidCastException occurs upon comparing DOC files | Bug |
| WORDSNET-21976 | Document Comparison-Redlining is not accurate | Bug |
| WORDSNET-22489 | Document.Compare discards formatting changes | Bug |
| WORDSNET-22646 | Aspose.Words.FileCorruptedException is thrown while loading DOC | Bug |
| WORDSNET-21525 | Run.Text does not insert line break for "\r" in table cell | Bug |
| WORDSNET-22308 | Range.Fields.Count returns zero for Word document | Bug |
| WORDSNET-22622 | Document.ExtractPages does not extract the last character of page using   .NET 5.0 | Bug |
| WORDSNET-22561 | Table cell background color is changed in output PDF | Bug |
| WORDSNET-22634 | Calculation error in total number of pages | Bug |
| WORDSNET-22151 | Extra Page is created after DOCX to PDF conversion | Bug |
| WORDSNET-22142 | Multiple fonts in equations not aligned in PDF | Bug |
| WORDSNET-17985 | Document.Compare generates the incorrect output for comments | Bug |
| WORDSNET-22363 | LegendPosition.None does not hide the legend for Column3D chart | Bug |

## Public API and Backward Incompatible Changes

This section lists public API changes that were introduced in Aspose.Words 21.9. It includes not only new and obsoleted public methods, but also a description of any changes in the behavior behind the scenes in Aspose.Words which may affect existing code. Any behavior introduced that could be seen as regression and modifies the existing behavior is especially important and is documented here.

### Added a new public property ListLevel.CustomNumberStyleFormat

Related issue: WORDSNET-22525

A new public property 'CustomNumberStyleFormat' has been added to the 'ListLevel' class:

{{< highlight csharp >}}
/// <summary>
/// Gets the custom number style format for this list level. For example: "a, ç, ĝ, ...".
/// </summary>
public string CustomNumberStyleFormat
{{< /highlight >}}

Use Case:  Explains how to get the custom number style format for the list level.
{{< highlight csharp >}}
Document doc = new Document("in.docx");
ListLevel listLevel = doc.FirstSection.Body.Paragraphs[0].ListFormat.ListLevel;
string customNumberStyleFormat = string.Empty;
if (listLevel.NumberStyle == NumberStyle.Custom)
    customNumberStyleFormat = listLevel.CustomNumberStyleFormat;
{{< /highlight >}}

### Added a new public static method ListLevel.GetEffectiveValue()

Related issue: WORDSNET-22525

A new public static method 'GetEffectiveValue()' has been added to the 'ListLevel' class:
{{< highlight csharp >}}
/// <summary>
/// Reports the string representation of the <see cref="ListLevel"/> object for the specified index
/// of the list item. Parameters specify the <see cref="Words.NumberStyle"/> and an optional format string
/// used when <see cref="NumberStyle.Custom"/> is specified.
/// </summary>
/// <param name="index">The index of the list item (must be in the range from 1 to 32767).</param>
/// <param name="numberStyle">
/// The <see cref="Words.NumberStyle"/> of the <see cref="ListLevel"/> object.
/// </param>
/// <param name="customNumberStyleFormat">
/// The optional format string used when <see cref="NumberStyle.Custom"/> is specified (e.g. "a, ç, ĝ, ...").
/// In other cases, this parameter must be null or empty.
/// </param>
/// <returns>
/// The string representation of the <see cref="ListLevel"/> object, described by the numberStyle parameter and
/// the customNumberStyleFormat parameter, in the list item at the position determined by the index parameter.
/// </returns>
/// <exception cref="ArgumentException">
/// customNumberStyleFormat is null or empty when the numberStyle is custom.-or-
/// customNumberStyleFormat is not null or empty when the numberStyle is non-custom.-or-
/// customNumberStyleFormat is invalid.
/// </exception>
/// <exception cref="ArgumentOutOfRangeException">index is out of range.</exception>
public static string GetEffectiveValue(int index, NumberStyle numberStyle, string customNumberStyleFormat);
{{< /highlight >}}

Use Case: Explains how to get the string representation of the ListLevel object for the specified index of the list item.
{{< highlight csharp >}}
Assert.AreEqual("iv", ListLevel.GetEffectiveValue(4, NumberStyle.LowercaseRoman, null));
Assert.AreEqual("005", ListLevel.GetEffectiveValue(5, NumberStyle.Custom, "001, 002, 003, ..."));
{{< /highlight >}}
