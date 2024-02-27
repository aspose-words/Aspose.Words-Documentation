---
title: Python'te Belge Oluşturma veya Yükleme
second_title: Python via .NET için Aspose.Words
articleTitle: Belge Oluşturun veya Yükleyin
linktitle: Belge Oluşturun veya Yükleyin
type: docs
url: /tr/python-net/create-or-load-a-document/
description: "Boş bir belge oluşturun veya bunu Python kullanarak bir dosyadan veya akıştan yükleyin."
keywords: "create a document python, load a document python, create a blank document python, load a document from file python, load a document from stream python, create a document Aspose python, load a document Aspose python, load formats supported by Aspose.Words python"
weight: 10
---

Aspose.Words ile gerçekleştirmek istediğiniz hemen hemen her görev, bir belgenin yüklenmesini içerir. [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) sınıfı belleğe yüklenen bir belgeyi temsil eder. Belgede, boş bir belge oluşturmanıza veya bunu bir dosyadan veya akıştan yüklemenize olanak tanıyan aşırı yüklenmiş birkaç kurucu bulunur. Belge, Aspose.Words tarafından desteklenen herhangi bir yükleme biçiminde yüklenebilir. Desteklenen tüm yükleme biçimlerinin listesi için [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) numaralandırmasına bakın.

## Yeni Bir Belge Oluştur

Yeni bir boş belge oluşturmak için [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) yapıcısını parametresiz olarak çağıracağız. Programlı olarak bir belge oluşturmak istiyorsanız en basit yol, belge içeriğini eklemek için [DocumentBuilder](https://reference.aspose.com/words/python-net/aspose.words/documentbuilder/) sınıfını kullanmaktır.

Aşağıdaki kod örneği, belge oluşturucuyu kullanarak nasıl belge oluşturulacağını gösterir:

{{< highlight python >}}
doc = aw.Document()
builder = aw.DocumentBuilder(doc)
            
builder.write("Hello world!")

doc.save(docs_base.artifacts_dir + "out.docx")
{{< /highlight >}}

{{% alert color="primary" %}}

Varsayılan değerleri not edin:

- Boş bir belge, varsayılan parametrelere sahip bir bölüm, bir boş paragraf ve bazı belge stilleri içerir. Aslında bu belge Microsoft Word'te "Yeni belge" oluşturmanın sonucuyla aynıdır.
- Belge kağıt boyutu [PaperSize.LETTER](https://reference.aspose.com/words/python-net/aspose.words/papersize/#letter)'tir.

{{% /alert %}}

## Belge Yükleme

Mevcut bir belgeyi [LoadFormat](https://reference.aspose.com/words/python-net/aspose.words/loadformat/) formatlarından herhangi birinde yüklemek için dosya adını veya akışı [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) yapıcılarından birine iletin. Yüklenen belgenin formatı, uzantısına göre otomatik olarak belirlenir.

### Dosyadan Yükle

Bir dosyadan mevcut bir belgeyi açmak için [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) yapıcısına bir dosya adını dize olarak iletin.

Aşağıdaki kod örneği, bir dosyadan belgenin nasıl açılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpenDocument.py" >}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

### Akıştan Yükleme

Bir akıştan bir belge açmak için, belgeyi içeren bir akış nesnesini [Document](https://reference.aspose.com/words/python-net/aspose.words/document/) yapıcısına iletmeniz yeterlidir.

Aşağıdaki kod örneği, bir belgenin akıştan nasıl açılacağını gösterir:

{{< gist "aspose-words-gists" "e9d8f984dac599756ccb4a64b8c79768" "Examples-DocsExamples-DocsExamples-File Formats and Conversions-base_conversions-OpeningFromStream.py" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-Python-via-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

{{% /alert %}}
