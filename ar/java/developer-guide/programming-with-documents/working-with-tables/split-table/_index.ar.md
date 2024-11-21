---
title: الجدول المقسم Java
second_title: Aspose.Words for Java
articleTitle: الجدول المقسم
linktitle: الجدول المقسم
description: "منضدة الانقسام Java. كيفية تقسيم جدول إلى جدولين منفصلين Java."
type: docs
weight: 100
url: /ar/java/split-table/
timestamp: 2024-01-27-14-07-04
---

A table, represented in the Aspose.Words Document Object Model, تتكون من صفات وخلايا مستقلة، مما يجعل من السهل تقسيم طاولة.

لتلاعب طاولة لتقسيمها إلى طاولتين، نحن فقط بحاجة لنقل بعض الصفوف من الجدول الأصلي إلى الجديد. وللقيام بذلك، علينا أن نختار الصف الذي نريد من خلاله تقسيم الطاولة.

ويمكننا أن نخلق طاولات من الجدول الأصلي باتباع هذه الخطوات البسيطة:

1 Create a clone of the table without cloning the children to keep the moved rows and insert them after the original table
2. بدءا من الصف المحدد، نقل جميع الصفوف اللاحقة إلى هذا الجدول الثاني

ويبين المثال الرمزي التالي كيفية تقسيم جدول إلى جدولين على صف محدد:

{{< gist "aspose-words-gists" "ff5affdcea04dcd20d1b872f9503dbfe" "split-table.java" >}}
