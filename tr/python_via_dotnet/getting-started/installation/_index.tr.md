---
title: Kurulum
second_title: Python via .NET için Aspose.Words
articleTitle: Kurulum
linktitle: Kurulum
description: "Manage NuGet Packages veya Package Manager Console gibi Visual Studio araçlarını ve MSI yükleyicisini kullanarak Python için Aspose.Words'i yükleyin. Full Trust izin kümesini kullanın."
type: docs
weight: 10
url: /tr/python-net/installation/
---

Başlamadan önce makinenizin [sistem gereksinimleri](/words/tr/python-net/system-requirements/)'i karşıladığından emin olun.

Bu makalede, bilgisayarınıza Python via .NET için Aspose.Words'in nasıl kurulacağı açıklanmaktadır.

`pip`, [Python via .NET için Aspose.Words](https://pypi.org/project/aspose-words/) API'lerini indirip kurmanın en kolay yoludur. Bunu yapmak için aşağıdaki komutu çalıştırın:

`pip install aspose-words`

Modül kurulduktan sonra onu Python kodunuzdan kullanabilirsiniz:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
