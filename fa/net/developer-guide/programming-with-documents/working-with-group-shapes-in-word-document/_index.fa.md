---
title: نحوه اضافه کردن شکل Group به سند Word
second_title: Aspose.Words برای .NET
articleTitle: نحوه اضافه کردن شکل Group به یک سند Word
linktitle: کار با اشکال Group در اسناد Word
description: "Group کردن و گروه بندی کردن اشکال با استفاده از C#."
type: docs
weight: 290
url: /fa/net/how-to-add-group-shape-into-a-word-document/
timestamp: 2024-01-27-14-07-04
---

گاهی اوقات لازم است یک group shape را به یک سند Word اضافه کنید. چنین group shape از چندین شکل تشکیل شده است.

در Microsoft Word، می‌توانید با استفاده از دستور/دکمه Group به سرعت یک group shape اضافه کنید. یک شکل فردی در یک گروه را می توان به طور جداگانه منتقل کرد.

در Aspose.Words اضافه کردن group shape با استفاده از کلاس [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) بسیار آسان است. **Shape** به طور جداگانه با استفاده از کلاس [Shape](https://reference.aspose.com/words/net/aspose.words.drawing/shape/) ایجاد می شود و سپس با استفاده از روش [AppendChild](https://reference.aspose.com/words/net/aspose.words/compositenode/appendchild/) به شی [GroupShape](https://reference.aspose.com/words/net/aspose.words.drawing/groupshape/) اضافه می شود.

مثال کد زیر نحوه اضافه کردن یک group shape را به یک سند Word نشان می دهد:

{{< gist "aspose-words" "9a306a41bb6aea8adfcabf5a575c5718" "Examples-CSharp-Programming-Documents-Document-AddGroupShapeToDocument-AddGroupShapeToDocument.cs" >}}

{{% alert color="primary" %}}

در زیر برخی از انواع `Shape` پشتیبانی شده در Aspose.Words آورده شده است:

- مستطیل
- مستطیل گرد
- مستطیل گرد
- بیضی
- الماس
- مثلث
- راست گوشه
- متوازی الاضلاع
- ذوزنقه
- شش ضلعی
- هشت وجهی

برای فهرست کامل، لطفاً کلاس [ShapeType](https://reference.aspose.com/words/net/aspose.words.drawing/shapetype) را بررسی کنید.

{{% /alert %}}
