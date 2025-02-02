---
title: تقسيم الجدول في C#
second_title: Aspose.Words لـ .NET
articleTitle: جدول الانقسام
linktitle: جدول الانقسام
description: "تقسيم الجدول في C#. كيفية تقسيم جدول واحد إلى جدولين منفصلين C#."
type: docs
weight: 100
url: /ar/net/split-table/
timestamp: 2024-01-27-14-07-04
---

يتكون الجدول، الممثل في Aspose.Words Document Object Model، من صفوف وخلايا مستقلة، مما يجعل من السهل تقسيم الجدول.

للتعامل مع جدول لتقسيمه إلى جدولين، نحتاج فقط إلى نقل بعض الصفوف من الجدول الأصلي إلى الجدول الجديد. للقيام بذلك، نحتاج إلى اختيار الصف الذي نريد تقسيم الجدول به.

يمكننا إنشاء جدولين من الجدول الأصلي باتباع الخطوات البسيطة التالية:

1. قم بإنشاء نسخة من الجدول دون استنساخ الأطفال للاحتفاظ بالصفوف المنقولة وإدراجها بعد الجدول الأصلي
2. بدءًا من الصف المحدد، انقل جميع الصفوف اللاحقة إلى هذا الجدول الثاني

يوضح مثال التعليمات البرمجية التالي كيفية تقسيم جدول إلى جدولين في صف معين:

{{< gist "aspose-words-gists" "4ab56c5443822fa44f4cac1f45af32b7" "split-table.cs" >}}
