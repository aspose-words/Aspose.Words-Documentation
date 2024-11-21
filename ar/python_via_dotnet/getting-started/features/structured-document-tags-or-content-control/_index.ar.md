---
title: علامات الوثيقة المنظمة
second_title: Aspose.Words لـ Python via .NET
articleTitle: علامات المستندات المنظمة أو التحكم في المحتوى
linktitle: علامات المستندات المنظمة أو التحكم في المحتوى
description: "قم بتضمين دلالات محددة من قبل العميل بالإضافة إلى سلوكها ومظهرها في مستند باستخدام علامات المستندات المنظمة (SDT أو التحكم في المحتوى) في Python."
type: docs
weight: 50
url: /ar/python-net/structured-document-tags-or-content-control/
timestamp: 2024-01-31-14-23-37
---


تسمح علامات المستندات المنظمة (SDT أو التحكم في المحتوى) بتضمين دلالات محددة من قبل العميل بالإضافة إلى سلوكها ومظهرها في المستند.

يمكن أن يظهر [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) في مستند في الأماكن التالية:

- مستوى الكتلة - بين الفقرات والجداول، كفرع لعقدة [Body](https://reference.aspose.com/words/python-net/aspose.words/body/) أو [HeaderFooter](https://reference.aspose.com/words/python-net/aspose.words/headerfooter/) أو [Comment](https://reference.aspose.com/words/python-net/aspose.words/comment/) أو [Footnote](https://reference.aspose.com/words/python-net/aspose.words.notes/footnote/) أو [Shape](https://reference.aspose.com/words/python-net/aspose.words.drawing/shape/).
- مستوى الصف - بين الصفوف في الجدول، كفرع لعقدة [Table](https://reference.aspose.com/words/python-net/aspose.words.tables/table/).
- مستوى الخلية - بين الخلايا الموجودة في صف الجدول، كفرع لعقدة [Row](https://reference.aspose.com/words/python-net/aspose.words.tables/row/).
- المستوى المضمن - من بين المحتوى المضمن بالداخل، باعتباره تابعًا لـ [Paragraph](https://reference.aspose.com/words/python-net/aspose.words/paragraph/).
- متداخل داخل [StructuredDocumentTag](https://reference.aspose.com/words/python-net/aspose.words.markup/structureddocumenttag/) آخر.

يدعم Aspose.Words إنشاء الأنواع التالية من علامات المستندات المنظمة:

- DropDownList
- ComboBox 
- Checkbox 
- Date 
- BuildingBlockGallery 
- Group 
- `Picture`
- RichText 
- PlainText
