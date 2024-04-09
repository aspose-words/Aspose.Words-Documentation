---
title: מתקן
second_title: Aspose.Words עבור Python via .NET
articleTitle: מתקן
linktitle: מתקן
description: "התקן Aspose.Words עבור Python באמצעות שימוש Visual Studio כלים כגון Manage NuGet Packages או Package Manager Console ומתקין MSI. השתמש Full Trust רשות"
type: docs
weight: 10
url: /he/python-net/installation/
---

ודא שהמכונה שלך פוגשת [דרישות מערכת](/words/he/python-net/system-requirements/) לפני שתתחיל.

מאמר זה מסביר כיצד להתקין Aspose.Words עבור Python via .NET במחשב שלך.

`pip` הדרך הקלה ביותר להוריד ולהתקין [Aspose.Words עבור Python via .NET](https://pypi.org/project/aspose-words/) API. לעשות את זה כדי להפעיל את הפקודה הבאה:

`pip install aspose-words`

ברגע שהמודול מותקן, אתה יכול להשתמש בו כדי לסכן את שלך Python קוד:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
