---
title: العمل مع الصور في C++
second_title: Aspose.Words ل C++
articleTitle: العمل مع الصور
linktitle: العمل مع الصور
type: docs
description: "مقدمة لميزة الصورة، وكيفية إنشاء ومعالجة الصورة باستخدام C++."
weight: 300
url: /ar/cpp/working-with-images/
---

Aspose.Words يسمح للمستخدمين بالعمل مع الصور بطريقة مرنة للغاية. في هذه المقالة، يمكنك استكشاف بعض إمكانيات العمل مع الصور فقط.

## كيفية استخراج الصور من مستند

يتم تخزين جميع الصور داخل **Shape** العقد في [Document](https://reference.aspose.com/words/cpp/aspose.words/document/). لاستخراج جميع الصور أو الصور التي لها نوع معين من المستند، اتبع الخطوات التالية:

- استخدم طريقة [GetChildNodes](https://reference.aspose.com/words/cpp/aspose.words/compositenode/getchildnodes/) لتحديد جميع العقد **Shape**.
- كرر من خلال مجموعات العقدة الناتجة.
- تحقق من خاصية [HasImage](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_hasimage/) المنطقية.
- استخراج بيانات الصورة باستخدام خاصية [ImageData](https://reference.aspose.com/words/cpp/aspose.words.drawing/shape/get_imagedata/).
- حفظ بيانات الصورة إلى ملف.

يوضح مثال الكود التالي كيفية استخراج الصور من مستند وحفظها كملفات:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Images-ExtractImagesToFiles-ExtractImagesToFiles.cpp" >}}

## حفظ الصور باسم WMF

Aspose.Words يوفر وظيفة لحفظ جميع الصور المتاحة في مستند إلى [WMF ](https://docs.fileformat.com/image/wmf/)التنسيق أثناء التحويل DOCX إلى RTF.

يوضح مثال الكود التالي كيفية حفظ الصور باسم WMF مع RTF خيارات الحفظ:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Programming-Documents-Document-WorkingWithRtfSaveOptions-SavingImagesAsWmf.cpp" >}}
