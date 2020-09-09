---
title: Paragraph Features Supported on HTML Export
type: docs
weight: 80
url: /net/paragraph-features-supported-on-html-export/
---

{{% alert color="primary" %}} 

Exported to HTML as &lt;p&gt;. Paragraphs with built-in heading styles are exported as &lt;h1&gt;–&lt;h6&gt; elements.

See the following link in the documentation for further information:

- [HtmlSaveOptions.EpubNavigationMapLevel](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/epubnavigationmaplevel)

[Jump to this location in the import section](/words/net/paragraph-features-supported-on-html-export/)

{{% /alert %}} 

{{% alert color="primary" %}} 

Try Online

You can check the quality of HTML Export and view the results online at this link:

<https://products.aspose.app/words/viewer>

{{% /alert %}} 


##### **General Formatting**
There is a setting to export paragraph styles and formatting as inline CSS (style) only, or as a mix of inline and embedded or linked CSS style sheet (class).

Direct formatting on the paragraph (from ParagraphFormat) is exported as inline CSS (using the style attribute).

Style properties (the style applied in ParagraphFormat.Style) are exported as class styles when the appropriate save option is set and referenced using an embedded or external style sheet (using the class attribute). If inline styles only are exported then all formatting appears on the style attribute.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Paragraph Style|Yes|Note that to properly round-trip styles back to a word document format, an embedded or external style sheet must be used. On HTML import classes defined in the stylesheets are used to create styles. If there is no linked style sheet of either of these kinds then the document is imported with no styles (apart from default Normal style). <br><br>There are plans to provide a safe option to save a document to HTML as pure HTML without CSS styles.|- **HtmlSaveOptions.CssStyleSheetType**|
|Alignment|Yes|Exported as "text-align" paragraph style attribute. <br><br>There are plans to introduce export of "&lt;center&gt; tags as well along with an option to define which type is used on export.| |
|Right to Left Paragraph|Yes|Exported as dir="rtl" attribute on the paragraph.| |
|Bullets and Numbers|Yes|There is a save option to control how lists are exported to HTML.| |
|Outline Level|Planned| | |
|Run Properties for the Paragraph Mark|Planned|Can be implemented with Microsoft Office specific techniques.| |
|Suppress Line Numbers|Planned| | |
|Suppress Hyphenation|Planned| | |

##### **Indents**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Left Indent|Yes|Exported as "margin-left" on style attribute.|- [HtmlSaveOptions.AllowNegativeIndent](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/allownegativeindent)|
|Right Indent|Yes|Exported as "margin-right" on style attribute.| |
|First Line Indent|Yes|Exported as "text-indent" on style attribute.| |
|Hanging Indent|Yes|Exported as a combination of "margin-left" and "text-indent" on style.| |
|Mirror Indents|Yes|Exported as a combination of "margin-left" and "text-indent" on style.| |
|Automatically Adjust Right Indent|N/A| | |

##### **Spacing**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Space Before|Yes|Exported as "margin-top" of the style attribute.| |
|Space After|Yes|Exported as "margin-bottom" of the style attribute.| |
|Space Auto|Yes|Paragraph with auto spacing is exported as margin-top and margin-bottom with explicit spacing based on document defaults.| |
|Line Spacing|Yes|Exported as "line-height" with percent.| |
|No Space between Conforming Paragraphs|Planned| | |

##### **Keeps and Breaks**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Widow/Orphan Control|Yes|This setting is exported as "widows" and "orphans" CSS attributes. <br><br>If this setting is enabled then the paragraph is exported without this attribute set. The default of this attribute is "2" in HTML so is enabled. <br><br>If this setting is disabled then the paragraph is exported with the value "0" for both of these attributes.| |
|Keep With Next|Yes|Exported as style attribute with "page-break-after:avoid".| |
|Keep Lines Together|Yes|Exported as style attribute with "page-break-inside:avoid".| |
|Page Break Before|Yes|Exported as "page-break-before" on style attribute.| |

##### **Text Frames**
Text frames are exported as paragraphs surrounded by a border.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Text Frames|Yes| | |

##### **Tab Stops**
Tab stops are not natively available in HTML. Aspose.Words converts tab stops into a fixed set of non-breaking spaces.

Will be improved later by simulating the correct width. Consider using a borderless table to layout information instead of tab stops when export to HTML is required.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Absolute Position|Planned| | |
|Relative Position|Planned|Can be simulated by calculating the actual position of the tab stop.| |
|Alignment: Left, Center, Right, Decimal, Bar|Planned| | |
|Leader|Planned|Leader characters are currently not exported to HTML.| |

##### **Drop Caps**
A drop cap is a frame which is exported to HTML as a paragraph with borders.

Visually the drop cap looks correct but the main text is moved to the next paragraph. This will be improved when the support of text frames is improved.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Drop Caps|Yes| | |

##### **Borders**
Borders are exported on style attribute as border-xxx-style and border-xxx-width etc.

Normally each side is exported as separate attributes even if all borders of the paragraph are the same formatting.

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Border Sides|Yes| | |
|Shadow|Planned| | |
|3D Frame|Planned| | |
|Style|Yes|Not all line types are supported, only native HTML borders. Such types are converted to the closest line type supported by HTML.| |
|Color|Yes| | |
|Width|Yes| | |
|Distance from Text|Yes|Exported as "padding-xxx".| |

##### **Shading**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Shading|Yes| | |

##### **Asian Typography**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Use Asian Rules for Controlling First and Last Characters|Planned| | |
|Allow Latin Text to Wrap in the Middle of a Word|Planned| | |
|Allow Hanging Punctuation|Planned| | |
|Allow Punctuation at Start of a Line to Compress|Planned| | |
|Automatically Adjust Space between Asian and Latin Text|Planned| | |
|Automatically Adjust Space between Asian Text and Numbers|Planned| | |
|Text Vertical Alignment|Planned| | |

