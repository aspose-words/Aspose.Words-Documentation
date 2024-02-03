---
title: Instalasi
second_title: Aspose.Words untuk Python via .NET
articleTitle: Instalasi
linktitle: Instalasi
description: "Instal Aspose.Words untuk Python menggunakan alat Visual Studio seperti Manage NuGet Packages atau Package Manager Console dan penginstal MSI. Gunakan set izin Full Trust."
type: docs
weight: 10
url: /id/python-net/installation/
---

Pastikan mesin Anda memenuhi [Persyaratan sistem](/words/id/python-net/system-requirements/) sebelum Anda mulai.

Artikel ini menjelaskan cara menginstal Aspose.Words untuk Python via .NET di komputer Anda.

`pip` adalah cara termudah untuk mengunduh dan menginstal API [Aspose.Words untuk Python via .NET](https://pypi.org/project/aspose-words/). Untuk melakukan ini jalankan perintah berikut:

`pip install aspose-words`

Setelah modul diinstal, Anda dapat menggunakannya dari kode Python Anda:

{{< highlight python >}}
# Import Aspose.Words for Python via .NET module
import aspose.words as aw

# Create and save a simple document
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
builder.writeln("Hello Aspose.Words for Python via .NET")

doc.save("C:\\Temp\\out.docx")
{{< /highlight >}}
