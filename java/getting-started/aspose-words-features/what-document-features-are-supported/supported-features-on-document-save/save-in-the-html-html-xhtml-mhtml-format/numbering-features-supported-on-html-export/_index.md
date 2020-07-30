---
title: Numbering Features Supported on HTML Export
type: docs
weight: 70
url: /java/numbering-features-supported-on-html-export/
---

{{% alert color="primary" %}} 

Single level lists can be output either as native HTML lists or as ordinary paragraphs. This depends on the properties of the list.

There are plans to introduce an option to control if lists are exported as native or paragraph lists.

[Jump to this location in the import section]()

{{% /alert %}} 

Try Online

You can check the quality of HTML Export and view the results online at this link:

<https://products.aspose.app/words/viewer>


##### **Numbering Definition**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Single Level|Yes|Single level lists can be output either as native HTML lists or as ordinary paragraphs. This depends on the properties of the list. <br><br>There are plans to introduce an option to control if lists are exported as native or paragraph lists.| |
|Multi-Level|Yes|Multiple level lists are always outputted as ordinary paragraphs.| |
|Name|Planned|Can be exported as a List style name.| |

##### **Numbering Level**

|**Feature**|**Supported**|**Comment**|**See Also**|
| :- | :- | :- | :- |
|Label Alignment|Yes|Ordinary paragraphs are used for alignment control in output HTML.| |
|Picture Bullet|Yes|Lists with picture bullets are always outputted as native lists. Other possibilities will be considered to keep formatting more precisely.| |
|Restart Level|Yes|Non-native list items can have a custom label.| |
|Bullet Character|Yes|Only some bullets are supported natively. For others, a list item is exported as spans and style formatting.| |
|Label/Format String|Yes|The only label itself is output. If a label cannot be represented by native HTML list then all the list is exported as ordinary paragraphs. Label formatting string is not output.| |
|Number Format|Yes|Only some number formats are supported natively. For others, a list item is exported as a normal span and direct formatting.| |
|Paragraph Properties|Yes|Output as embedded or as inline style attributes.| |
|Font Properties|Yes|Output as inline styles.| |
|Linked Paragraph Style|Planned| | |
|Starting Value|Yes|Exported as "start" attribute on list item nodes for any lists that do not start at 1.| |
|Text After|Planned| | |

