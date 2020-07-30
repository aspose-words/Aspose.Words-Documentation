---
title: Aspose.Words for .NET 6.0.0 Release Notes
type: docs
weight: 10
url: /net/aspose-words-for-net-6-0-0-release-notes/
---

{{% alert color="primary" %}} 

This page contains release notes for [Aspose.Words for .NET 6.0.0](http://www.aspose.com/downloads/words/net/new-releases/aspose.words-for-.net-6.0.0/)

{{% /alert %}} 

We celebrate 5 years of Aspose.Words by delivering to you another set of great features in this Aspose.Words for .NET 6.0 release.
# **New Features**
- Direct conversion to PDF
- Printing and imaging
- Saving pages as images
- Full DrawingML support
- MHTML import
- EPUB export (Beta)
# **Rendering Engine**
The main theme of Aspose.Words for .NET 6.0 is the Rendering Engine that finally makes it possible to print, render to images and convert documents to PDF directly.

Word® documents do not contain information about where each page starts and ends and where on the page each element is located. Such documents are called “flow-layout” documents. The task of the Rendering Engine is to take a “flow-layout” document and allocate content into pages to create a “fixed-page” document.

The Aspose.Words Rendering Engine has been designed to format a document into pages with high fidelity to how Microsoft Word would have done it. When pagination is complete, Aspose.Words can render the output into a variety of the “fixed-page” formats. At the moment this includes PDF, printing and imaging. This architecture allows you to convert a document to PDF, print, image or render to a browser and the page will look exactly the same everywhere.

Our work never ends. Although this is version 6.0 for Aspose.Words, it is only “version 1.0” for the Rendering Engine. The list of document features that are rendered well is great, but we are of course to ship more versions that will render documents even better.

I would like to thank the team who worked on the engine painstakingly trying to recreate the many quirks of Microsoft Word’s page layout behavior.I would also like to thank all customers who have been waiting for this feature for 5 years!
# **Direct Conversion to PDF**
It has been possible to convert Word documents to PDF with Aspose.Words for .NET for long time, but it required two components Aspose.Words and Aspose.Pdf operating together. This conversion works well, but the fact that two products are involved has its costs for customers.

With the introduction of the Rendering Engine and making Aspose.Words convert documents to PDF directly it becomes possible to serve our customers much better. Using the Aspose.Words’ direct to PDF conversion gives you the following advantages:

- Improved performance. There is no need to save a document and images into intermediary XML to pass between Aspose.Words and Aspose.Pdf. 
- Better fidelity. Aspose.Words Rendering Engine has been explicitly designed to reproduce Microsoft Word’s way of paginating and printing documents. 
- Simpler code. Convert to PDF with as little as one line of code. The legacy conversion required writing about 20 lines of code. 
- Cleaner deployment. There is no need to find temporary storage for image files to pass between components. 
- Healthier support. Deal with only one support team instead of two if you have any issues. 
- Cheaper. Buy only one component instead of two (unless you are buying Aspose.Total of course). 

To start using direct conversion to PDF in Aspose.Words, see methods.

The legacy conversion that requires Aspose.Words and Aspose.Pdf is still available and will be supported throughout 2009.
# **Printing and Imaging**
Being able to print Word® documents in any server or client application without utilizing Microsoft Word® has been a dream for many and for long. Aspose.Words for .NET 6.0 makes it possible. 

The same document Rendering Engine can output to a .NET Graphics object and it opens endless prospects for Aspose.Words customers:

- Print. Use Aspose.Words simple print methods or completely customize your printing. The default implementation selects a correct paper size, orientation and paper source for every page. A custom implementation can, for example, print at a different scale or print a set of thumbnails on a page. 
- Print Preview.  Aspose.Words printing features integrate seamlessly with the .NET printing and preview classes allowing you to add print preview functionality to your application in minutes. 
- Convert Pages to Images. Save whole document or a range of pages into a multi-frame TIFF file. Save document pages as PNG, JPEG, BMP or EMF files. Specify resolution, quality and compression settings. 
- View. Create images or thumbnails of document pages to any size, scale or rotation to view them in an application or in the browser. 

See the new , , and methods for more information.
# **Full DrawingML Support**
DrawingML is a part of the Office Open XML standard and describes the XML used to store drawing objects in Microsoft Office 2007 documents. Microsoft Word 2007 uses either DrawingML or VML (Vector Markup Language) to store images in documents.

Starting with this release, Aspose.Words for .NET 6.0 supports the full set of DrawingML used by Microsoft Word 2007. It is now possible to use Aspose.Words to load and save OOXML documents with VML as well as with DrawingML. In earlier versions of Aspose.Words support for DrawingML was limited to inline images only.

To benefit from this feature all you need to do is download and use the latest Aspose.Words for .NET.
# **MHTML Import**
MHTML is a “single file web page” format. MHTML is a way to save HTML with all related images and other resources into a single file.

Saving documents as MHTML has been available in Aspose.Words for several months already and the ability to load MHTML files is a logical next step.

Loading and saving documents as MHTML is fully integrated in Aspose.Words. Use constructors to load a file in any format and to save in any format. Also see the and enumerations.
# **EPUB Export (Beta)**
We are happy to announce our initial support for saving documents in the EPUB format.

EPUB is an open standard for eBooks that is rapidly gaining adoption by publishers and distributors. EPUB has been adopted by Adobe as a complement to PDF for reflow-centric eBooks. Specs are available at .
# **Fixes and Enhancements**
Issue ID || 
Component || 
Summary ||

4273 | DOCX | 
Support DrawingML import and export |

6011 | DOCX | 
Images are missed when open DOCX document. |

1351 | HTML | 
Exporting TestNestedFields.doc to HTML or PDF throws an exception. |

6355 | HTML | 
Improve export of paragraphs consisting of spaces |

1106 | Model | 
Wrapping polygons for shapes are ignored. |

6196 | ODT | 
List numbering is incorrect after ODT import for NumberStyle.Arabic. |

6197 | ODT | 
The margin of list numbering is exported incorrectly |

6198 | ODT | 
The table row height is exported incorrectly |

6199 | ODT | 
Superfluous element in the list end |

6200 | ODT | 
Wrong bullet symbol in bulleted list |

6370 | ODT | 
Font setting is not applied to link when save document in ODT format. |

6460 | ODT | 
Page size and margins is not correct when open ODT file. |

5125 | PDF | 
Output widows/orphans control to PDF |

5949 | PDF | 
Support numbering override within one list (PDF, HTML) |

6032 | PDF | 
Support #$UNICODE macro in PDF export |

6338 | PDF | 
Inline boxes are centered in the table cell in DOC but come left aligned in the output PDF. |

6341 | PDF | 
Member of group shape is improperly anchored |

6358 | PDF | 
Remove result of ASK fields from PDF output |

6449 | PDF | 
Page number is misaligned in a footer |

6617 | PDF | 
Label size is output or defaulted incorrectly in some cases. |

1066 | Rendering.PDF | 
Expand/Collapse Top Level modes in Acrobat is not working for our files. |

4647 | Rendering.PDF | 
Complex clipping region rendering to PDF is incorrect |

4652 | Rendering.PDF | 
Some bitmap formats are rendered to PDF incorrectly |

4664 | Rendering.PDF | 
WMF formula rendered to PDF poorly |
