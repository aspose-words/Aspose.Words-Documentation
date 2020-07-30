---
title: Text Features Supported on DOC Import
type: docs
weight: 130
url: /net/text-features-supported-on-doc-import/
---

{{% alert color="primary" %}} 

In Aspose.Words DOM all text is represented in the form of Run nodes. A single Run contains not only the string of text but also complex properties which describe how the text appears and behaves in the document. All characters in a Run have identical formatting.

Using Aspose.Words you can insert, move, and remove runs. You can also access and modify all properties of a run.

All formatting of a run is contained within a linked classed called Font.

See the following links in the documentation for further information:

- [Run](/pages/createpage.action?spaceKey=wordsnet&title=Run+Class&linkCreation=true&fromPageId=2595884)
- [Run.Font](/pages/createpage.action?spaceKey=wordsnet&title=Font+Class&linkCreation=true&fromPageId=2595884)
- [Run.Text](/pages/createpage.action?spaceKey=wordsnet&title=Text+Property&linkCreation=true&fromPageId=2595884)

[Jump to this location in the export section](/pages/createpage.action?spaceKey=wordsnet&title=Doc+Export&linkCreation=true&fromPageId=2595884)

{{% /alert %}} 
##### **Characters**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Western Languages |Yes | | |
|East European Languages |Yes | | |
|East Asian Languages |Yes | | |
|Right to Left Languages |Yes | |<p>- [Font.Bidi](/pages/createpage.action?spaceKey=wordsnet&title=Bidi+Property&linkCreation=true&fromPageId=2595884) </p><p>- [Font.BoldBi](/pages/createpage.action?spaceKey=wordsnet&title=BoldBi+Property&linkCreation=true&fromPageId=2595884) </p><p>- [Font.LocaleIdBi](/pages/createpage.action?spaceKey=wordsnet&title=LocaleIdBi+Property&linkCreation=true&fromPageId=2595884)</p>|
|Carriage Return (not a Paragraph Break) |Yes | | |
|Non Breaking Space |Yes | |- [ControlChar.NonBreakingSpace](/pages/createpage.action?spaceKey=wordsnet&title=ControlChar+Class&linkCreation=true&fromPageId=2595884)|
|Non Breaking Hyphen |Yes | |- **ControlChar.NonBreakingHyphen**|
|Soft Hyphen |Yes |This type of hyphen is referred to as an "Optional Hyphen" in Microsoft Word documents. |- **ControlChar.OptionalHyphen**|
|Symbol |Yes | | |
|Tab |Yes | |- [ControlChar.Tab](/pages/createpage.action?spaceKey=wordsnet&title=ControlChar+Class&linkCreation=true&fromPageId=2595884)|
##### **Breaks**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Line Break |Yes | |- [ControlChar.LineBreak](/pages/createpage.action?spaceKey=wordsnet&title=ControlChar+Class&linkCreation=true&fromPageId=2595884)|
|Line Break Clear Type |Yes | | |
|Page Break |Yes | |- [ControlChar.PageBreak](/pages/createpage.action?spaceKey=wordsnet&title=ControlChar+Class&linkCreation=true&fromPageId=2595884)|
|Column Break |Yes | |- [ControlChar.ColumnBreak](/pages/createpage.action?spaceKey=wordsnet&title=ControlChar+Class&linkCreation=true&fromPageId=2595884)|
##### **General Formatting**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Character Style |Yes | |- [Font.Style](/pages/createpage.action?spaceKey=wordsnet&title=Style+Class&linkCreation=true&fromPageId=2595884)|
|Color |Yes | |- [Font.Color](/pages/createpage.action?spaceKey=wordsnet&title=Color+Property&linkCreation=true&fromPageId=2595884)|
|East Asian Typography |Yes | | |
|Highlight Color |Yes | |- [Font.HighlightColor](/pages/createpage.action?spaceKey=wordsnet&title=HighlightColor+Property&linkCreation=true&fromPageId=2595884)|
|Language |Yes | |<p>- [Font.LocaleId](/pages/createpage.action?spaceKey=wordsnet&title=LocaleId+Property&linkCreation=true&fromPageId=2595884) </p><p>- **Font.LocaleIdBi**</p>|
|Do not Check Spelling or Grammar |Yes | |- [Font.NoProofing](/pages/createpage.action?spaceKey=wordsnet&title=NoProofing+Property&linkCreation=true&fromPageId=2595884)|
|Border |Yes | |- [Font.Border](/pages/createpage.action?spaceKey=wordsnet&title=Border+Class&linkCreation=true&fromPageId=2595884)|
|Shading |Yes | |- [Font.Shading](/pages/createpage.action?spaceKey=wordsnet&title=Shading+Class&linkCreation=true&fromPageId=2595884)|
##### **Font**
See the following links in the documentation for further information:

- [Font.Bold](/pages/createpage.action?spaceKey=wordsnet&title=Bold+Property&linkCreation=true&fromPageId=2595884)
- **Font.Italics**
- [Font.Name](/pages/createpage.action?spaceKey=wordsnet&title=Name+Property&linkCreation=true&fromPageId=2595884)
- [Font.NameFarEast](/pages/createpage.action?spaceKey=wordsnet&title=NameFarEast+Property&linkCreation=true&fromPageId=2595884)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Font |Yes | | |
##### **Underline**
See the following link in the documentation for further information:

- [Font.Underline](/pages/createpage.action?spaceKey=wordsnet&title=Underline+Class&linkCreation=true&fromPageId=2595884)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Underline Type |Yes |The underline property is used to both define if the run is underline and with what type of underline is used. |- **Font.Underline**|
|Underline Color |Yes | |- [Font.UnderlineColor](/pages/createpage.action?spaceKey=wordsnet&title=UnderlineColor+Property&linkCreation=true&fromPageId=2595884)|
##### **Text Effects**
See the following link in the documentation for further information:

- [Font](/pages/createpage.action?spaceKey=wordsnet&title=Font+Class&linkCreation=true&fromPageId=2595884)

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Animated Effect |Yes | | |
|Double Strikethrough |Yes | |- [Font.DoubleStrikeThrough](/pages/createpage.action?spaceKey=wordsnet&title=DoubleStrikeThrough+Property&linkCreation=true&fromPageId=2595884)|
|Strikethrough |Yes | |- [Font.StrikeThrough](/pages/createpage.action?spaceKey=wordsnet&title=StrikeThrough+Property&linkCreation=true&fromPageId=2595884)|
|Subscript/Superscript |Yes | |<p>- [Font.Subscript](/pages/createpage.action?spaceKey=wordsnet&title=Subscript+Property&linkCreation=true&fromPageId=2595884) </p><p>- [Font.Superscript](/pages/createpage.action?spaceKey=wordsnet&title=Superscript+Property&linkCreation=true&fromPageId=2595884)</p>|
|Shadow |Yes | |- [Font.Shadow](/pages/createpage.action?spaceKey=wordsnet&title=Shadow+Property&linkCreation=true&fromPageId=2595884)|
|Outline |Yes | |- [Font.Outline](/pages/createpage.action?spaceKey=wordsnet&title=Outline+Property&linkCreation=true&fromPageId=2595884)|
|Emboss |Yes | |- [Font.Emboss](/pages/createpage.action?spaceKey=wordsnet&title=Emboss+Property&linkCreation=true&fromPageId=2595884)|
|Imprint (Engrave) |Yes | |- [Font.Engrave](/pages/createpage.action?spaceKey=wordsnet&title=Engrave+Property&linkCreation=true&fromPageId=2595884)|
|Small Caps |Yes | |- [Font.SmallCaps](/pages/createpage.action?spaceKey=wordsnet&title=SmallCaps+Property&linkCreation=true&fromPageId=2595884)|
|All Caps |Yes | |- [Font.AllCaps](/pages/createpage.action?spaceKey=wordsnet&title=AllCaps+Property&linkCreation=true&fromPageId=2595884)|
|Hidden Text |Yes | |- [Font.Hidden](/pages/createpage.action?spaceKey=wordsnet&title=Hidden+Property&linkCreation=true&fromPageId=2595884)|
|Special Hidden |Yes | | |
|Web Hidden |Yes | | |
##### **Character Spacing**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Scale |Yes | |- [Font.Scaling](/pages/createpage.action?spaceKey=wordsnet&title=Scaling+Property&linkCreation=true&fromPageId=2595884)|
|Expanded/Compressed |Yes | |- [Font.Spacing](/pages/createpage.action?spaceKey=wordsnet&title=Spacing+Property&linkCreation=true&fromPageId=2595884)|
|Vertical Position |Yes | |- [Font.Position](/pages/createpage.action?spaceKey=wordsnet&title=Position+Property&linkCreation=true&fromPageId=2595884)|

