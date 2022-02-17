---
title: Aspose.Words for .NET 9.2.0 Release Notes
articleTitle: Aspose.Words for .NET 9.2.0 Release Notes
linktitle: Aspose.Words for .NET 9.2.0 Release Notes
description: "Aspose.Words for .NET 9.2.0 Release Notes – learn about the latest updates and fixes."
type: docs
weight: 40
url: /net/aspose-words-for-net-9-2-0-release-notes/
---

{{% alert color="primary" %}}

This page contains release notes for [Aspose.Words for .NET 9.2.0](https://downloads.aspose.com/words/net/new-releases/aspose.words-for-.net-9.2.0/)

{{% /alert %}}

- Performance improvements to the layout and rendering engine.
  No longer relying on GDI+ for text measurements means better server-side conversion to PDF. 
  Support for condensed and expanded text when rendering. 
  Improvements to field update of TOC, REF, PAGEREF, NOTEREF, INCLUDETEXT fields. 
  Ability to easily distinguish templates, documents with digital signatures or encryption before loading them. 
  Ability to access generated list labels and numbers on paragraphs. 
  Breaking changes in the API - all events and delegates are replaced with interfaces. 
  Breaking changes in the API - document loading and saving methods and signatures simplified. 
  About 100 improvements and fixes in all areas of Aspose.Words. 

Here is the complete list of fixes and new features.



Although this release is only a minor version number change from 9.1 to 9.2 we had to include a number of breaking changes in the Aspose.Words public API. These changes had to be made now and I will explain reasons below. We didn't change version number to 10.0 because we have it reserved for something else special which you will see in the due course.

Breaking changes to the public API mean that if you upgrade to Aspose.Words for .NET 9.2 from an earlier version, then some of your code might not compile. 

But the good news is that breaking changes are not going to affect everyone. Also the good news is that all the functionality you used to have earlier is preserved and you only need to make simple mechanical changes to your code to get it compiling again.

We strive to develop new features and grow the public API in such a way that it remains backwards compatibly and you don't need to change the code that you've written. But occasionally this is not feasible or possible. This is one of those occasions and the reasons are:

Old Member || 
New Name || 
Comments ||

property
Document.IsTemplate | deleted | 
New LoadFormat and SaveFormat enum values were added to indicate the document is a template format (e.g. LoadFormat.Doc vs LoadFormat.Dot). |

method
LoadFormat Document.DetectFileFormat(Stream/String) | FileFormatInfo FileFormatUtil.DetectFileFormat(Stream/String) | 
The method for detecting document format without loading a document has been moved into a utility class and now returns more information and detects more file formats. |

constructor
Document(Stream, String)
Document(Stream, String, LoadFormat, String) | Document (Stream, LoadOptions) | 
Document constructors follow the Unified Framework signature now. LoadOptions is the extensible mechanism to control how a document is loaded, for example provide a password or base URI etc. |

constructor
Document(String, LoadFormat, String) | Document(String, LoadOptions) | 
Same as above. |

property
Document.SaveOptions | deleted | 
Save options are now passed as a parameter to the Document.Save methods. |

method
Document.Save(String, SaveFormat, SaveType, HttpResponse) | Document.Save(HttpResponse, String, ContentDisposition, SaveOptions) | 
Signature changed to follow the Aspose Unified Framework pattern. |

enum value
SaveType.OpenInBrowser | ContentDisposition.Inline | 
Enum name changed to follow the unified framework. |

enum value
SaveType.OpenInApplication | ContentDisposition.Attachment | 
Save as above. |

method
Document.SaveToImage(int, int, Stream/String, ImageFormat, ImageOptions)
`  `| Document.Save(Stream/String, SaveOptions) | 
Changed signature to follow the unified pattern. Use the new Document.Save method and SaveFormat.Tiff, SaveFormat.Png etc enums and the ImageSaveOptions object. |

method
Document.SaveToPdf(String)
Document.SaveToXps(String) | Document.Save(String) | 
`  `|

method
Document.SaveToPdf(int, int, Stream/String, PdfOptions) | Document.Save(Stream/String, SaveOptions) | 
Use the new Document.Save method and the PdfSaveOptions object. |

method
Document.SaveToXps(int, int, Stream/String, XpsOptions) | Document.Save(Stream/String, SaveOptions) | 
Use the new Document.Save method and the XpsSaveOptions object. |

class
ImageOptions | SaveImageOptions | 
Unified framework. |

class
PdfOptions | PdfSaveOptions | 
Unified framework. |

class
XpsOptions | XpsSaveOptions | 
Unified framework. |

property
SaveOptions.HtmlExportImagesFolder | HtmlSaveOptons.ImagesFolder | 
Unified framework. The SaveOptions class has been split into several classes one for each save format. All property names have been simplified. |

property
SaveOptions.TxtExportHeadersFooters | TxtSaveOptions.ExportHeadersFooters | 
Same as above. |

property
SaveOptions.PdfExportImagesFolder | LegacyPdfSaveOptions.ImagesFolder | 
Unified framework. This option is for the legacy conversion to PDF using Aspose.Pdf. |

event
Document.NodeInserted
Document.NodeInserting
Document.NodeRemoved
Document.NodeRemoving | propertyDocument.NodeChangingCallback | 
Replaced events with a property.
You need to wrap your event handler methods into a class that implements the new INodeChangingCallback. |

delegate
NodeChangedEventHandler(Object, NodeChangedEventArgs) | interfaceINodeChangingCallback | 
Replaced delegate with an interface to support the above. |

class
NodeChangedEventArgs | classNodeChangingArgs | 
Name changed for consistency with new approach. |

delegate
ReplaceEvaluator(Object, ReplaceEvaluatorArgs) | interfaceIReplacingCallback | 
Replaced delegate with an interface. |

class
ReplaceEvaluatorArgs | classReplacingArgs | 
Name change for consistency. |

method
Range.Replace(Regex, ReplaceEvaluator, Boolean) | methodRange.Replace(Regex, IReplacingCallback, Boolean) | 
`  `|

event
MailMerge.MergeField
MailMerge.MergeImageField | propertyMailMerge.FieldMergingCallback | 
Replaced event with a property. |

delegate
MergeFieldEventHandler(Object, MergeFieldEventArgs)
delegate
MergeImageFieldEventHandler(Object, MergeImageFieldEventArgs) | interfaceIFieldMergingCallbackmethodsFieldMerging(FieldMergingArgs)ImageFieldMerging(ImageFieldMergingArgs) | 
Replaced delegates with an interface. |

class
MergeFieldEventArgs | classFieldMergingArgs | 
Name change for consistency. |

class
MergeImageFieldEventArgs | classImageFieldMergingArgs | 
Name change for consistency. |

event
SaveOptions.HtmlExportFontSaving | propertyHtmlSaveOptions.FontSavingCallback | 
Replaced an event with a property. |

event
SaveOptions.HtmlExportImageSaving | propertyHtmlSaveOptions.ImageSavingCallback | 
Replaced an event with a property. |

event
SaveOptions.PdfExportImageSaving | propertyLegacyPdfSaveOptions.ImageSavingCallback | 
Replaced an event with a property. |

delegate
ExportFontSavingEventHandler | interfaceIFontSavingCallback | 
Replaced a delegate with an interface. |

delegate
ExportImageSavingEventHandler | interfaceIImageSavingCallback | 
Replaced a delegate with an interface. |

class
ExportFontSavingEventArgs | classFontSavingArgs | 
Name change for consistency. |

class
ExportImageSavingEventArgs | classImageSavingArgs | 
Name change for consistency. |
