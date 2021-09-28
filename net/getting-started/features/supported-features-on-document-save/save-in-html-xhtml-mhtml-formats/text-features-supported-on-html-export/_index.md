---
title: Text Features Supported on HTML Export
type: docs
weight: 120
url: /net/text-features-supported-on-html-export/
---

{{% alert color="primary" %}} 

Text in different languages is fully supported and can be rendered to formats such as PDF and image with high fidelity.

Exported to HTML as &lt;span&gt; elements.

Each Run node in the model is exported as a separate span to retain formatting properly. Some documents can contain a few runs that are unrequired and can be joined. In the resulting HTML document, this can result in many extra span elements.

There is a method Document.JoinRunsWithSameFormatting to avoid this situation. It can be called before exporting to HTML.

See the following links in the documentation for further information:

- **HtmlSaveOptions.Encoding**
- [Document.JoinRunsWithSameFormatting](https://apireference.aspose.com/words/net/aspose.words/document/methods/joinrunswithsameformatting)

[Jump to this location in the import section](/words/net/text-features-supported-on-html-import/)

{{% /alert %}} 

{{% alert color="primary" %}} 

Try Online

You can check the quality of HTML Export and view the results online at this link:

<https://products.aspose.app/words/viewer>

{{% /alert %}} 


## Characters

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Western Languages|Yes| | |
|East European Languages|Yes| | |
|East Asian Languages|Yes| | |
|Right to Left Languages|Yes|Exported as dir="rtl" attribute on the span.| |
|Carriage Return (not a Paragraph Break)|Yes|Exported as &lt;br&gt; element.| |
|Non-Breaking Space|Yes|Exported as " " entity code.| |
|Non-Breaking Hyphen|Yes|Exported to HTML as entity code "".| |
|Soft Hyphen|Yes|This type of hyphen is referred to as an "Optional Hyphen" in Microsoft Word documents. <br><br>Exported to HTML as the entity code "".| |
|Symbol|Yes|Symbols are exported as encoded characters. <br><br>Depending on the encoding used when saving the document, such symbols may not appear correctly in the output HTML.| |
|Tab|Yes|There is no equivalent of a tab in HTML documents. <br><br>During conversion to HTML, a tab is exported as a series of non-breaking spaces of constant length. Improvement in length calculation is planned.| |

## Breaks

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Line Break|Yes|Exported as <&lt;br>&gt;| |
|Line Break Clear Type|Yes|Clear type "both" is output with this type of break.| |
|Page Break|Yes|Exported as a &lt;br style="page-break-before:always; clear:both"&gt;| |
|Column Break|Yes|Exported as &lt;br style="mso-column-break-before:always; clear:both" &gt; <br><br>There are plans to make it optional since it uses a Microsoft Office specific attribute.| |

## General Formatting

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Character Style|Yes|There is an option to control how character style is exported as inline CSS (style) only, or a mix of inline and embedded or linked CSS style sheet (class). <br><br>Direct formatting on the run (from Font) is exported as inline CSS (using style attribute). Style properties (the style applied in Font.Style) are exported as CSS class styles when the appropriate save option is set and referenced using an embedded or external style sheet (using the class attribute). If inline styles only are exported then all formatting appears on the style attribute. <br><br>Note that to properly round-trip styles back to a word document format, an embedded or external style sheet must be used. On HTML import classes defined in the stylesheets are used to create styles. <br><br>If there is no linked style sheet of either of these kinds then the document is imported with no styles (apart from default Normal style). <br><br>There are plans to provide an option to save a document to HTML as pure HTML without CSS styles.|- **HtmlSaveOptions.CssStyleSheetType**|
|Color|Yes|Exported as color on style attribute.| |
|East Asian Typography|Planned|Some research is needed.| |
|Highlight Color|Yes|Exported as background-color on the span.| |
|Language|Yes|Exported as lang attribute on &lt;span&gt;.|- [HtmlSaveOptions.ExportLanguageInformation]https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/exportlanguageinformation)|
|Do not Check Spelling or Grammar|Planned| | |
|Border|Yes|Exported as border-style, border-width, border-color on &lt;span&gt;. <br><br>Normally each side is exported as separate attributes even though all sides of the border of a run must be the same.| |
|Shading|Yes|Only solid fill is supported, both background and foreground. Others are converted to the nearest color. <br><br>Exported as background-color on &lt;span&gt;.| |

## Font

Bold and italics are exported as font-weight:bold and font-style:italics on style attribute.

There are plans to make an option to export these as simple &lt;b&gt;, &lt;i&gt; tags.

There is an option to control how size is exported. Font can be exported as points or as em units. This allows fonts to be resized automatically by browsers by increasing or decreasing the font size.

Currently, images are not exported in the same relative way. This means that images will not resize when the "Increase Text/Decrease Text" buttons are pressed. These buttons are common in browsers and eReaders.

This feature will be supported in the future.

See the following link in the documentation for further information:

- [HtmlSaveOptions.ExportRelativeFontSize](https://apireference.aspose.com/words/net/aspose.words.saving/htmlsaveoptions/properties/exportrelativefontsize)

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Font|Yes| | |

## Underline

Only single line underline type is supported in native HTML. Exported as "text-decoration:underline". Underline color is not exported.

In CSS 3 different underline types are proposed and may be implemented in the future.

There are plans to make an option to export underline as simple &lt;u&gt; tag.

"Words only" underline type can be simulated by splitting runs and only underlining non-space text.

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Underline Type|N/A| | |
|Underline Color|Yes| | |

## Text Effects

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Animated Effect|Planned| | |
|Double Strikethrough|Yes|Output as single strikethrough as HTML does not have any analogue for double strikethrough.| |
|Strikethrough|Yes|Exported as text-decoration:line-through.| |
|Subscript/Superscript|Yes|Exported as vertical-align:sub and vertical-align:super. <br><br>There are plans to add an option to export these as &lt;sup&gt; and &lt;sub&gt; elements.| |
|Shadow|Planned| | |
|Outline|Yes|Output as bold.| |
|Emboss|Yes|Output as bold with color. Can be improved since in some cases we get white on white.| |
|Imprint (Engrave)|Yes|Output as bold with color. Can be improved since in some cases we get white on white.| |
|Small Caps|Yes|Exported as style="font-variant:small-caps".| |
|All Caps|Yes|Exported as style="text-transform:uppercase".| |
|Hidden Text|Yes|Exported as style="display:none".| |
|Special Hidden|Planned|Special hidden and Web hidden can be made aliases of ordinary Hidden.| |
|Web Hidden|Planned| | |

## Character Spacing

|Feature|Supported|Comment|See Also|
| :- | :- | :- | :- |
|Scale|Planned| | |
|Expanded/Compressed|Yes|Output as absolute values in points: <br><br>style="letter-spacing:XXXpt"| |
|Vertical Position|Yes|Exported as vertical-align:XXXpt.| |

