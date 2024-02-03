---
title: C#'te Belge Oluşturma veya Yükleme
second_title: .NET için Aspose.Words
articleTitle: Belge Oluşturun veya Yükleyin
linktitle: Belge Oluşturun veya Yükleyin
type: docs
url: /tr/net/create-or-load-a-document/
description: "Boş bir belge oluşturun veya bunu C# kullanarak bir dosyadan veya akıştan yükleyin."
keywords: "create a document c#, load a document c#, create a blank document c#, load a document from file c#, load a document from stream c#, create a document Aspose .NET, load a document Aspose .NET, load formats supported by Aspose.Words .NET"
weight: 10
---

Aspose.Words ile gerçekleştirmek istediğiniz hemen hemen her görev, bir belgenin yüklenmesini içerir. `Document` sınıfı belleğe yüklenen bir belgeyi temsil eder. Belgede, boş bir belge oluşturmanıza veya bunu bir dosyadan veya akıştan yüklemenize olanak tanıyan aşırı yüklenmiş birkaç kurucu bulunur. Belge, Aspose.Words tarafından desteklenen herhangi bir yükleme biçiminde yüklenebilir. Desteklenen tüm yükleme biçimlerinin listesi için [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) numaralandırmasına bakın.

## Yeni bir Belge {#create-a-new-document} Oluştur

Yeni bir boş belge oluşturmak için [Document](https://reference.aspose.com/words/net/aspose.words/document/document/) yapıcısını parametresiz olarak çağıracağız. Programlı olarak bir belge oluşturmak istiyorsanız en basit yol, belge içeriğini eklemek için [DocumentBuilder](https://reference.aspose.com/words/net/aspose.words/documentbuilder/) sınıfını kullanmaktır.

Aşağıdaki kod örneği, belge oluşturucuyu kullanarak nasıl belge oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "16b9cfe5420b6e033f90a45263eef020" "create-docx.cs" >}}

{{% alert color="primary" %}}

Varsayılan değerleri not edin:

- Boş bir belge, varsayılan parametrelere sahip bir bölüm, bir boş paragraf ve bazı belge stilleri içerir. Aslında bu belge Microsoft Word'te "Yeni belge" oluşturmanın sonucuyla aynıdır.
- Belge kağıt boyutu [PaperSize](https://reference.aspose.com/words/net/aspose.words/papersize/).**Letter**'dir.

{{% /alert %}}

## Belge {#load-a-document} Yükleme

Mevcut bir belgeyi [LoadFormat](https://reference.aspose.com/words/net/aspose.words/loadformat/) formatlarından herhangi birinde yüklemek için dosya adını veya akışı Belge oluşturucularından birine iletin. Yüklenen belgenin formatı, uzantısına göre otomatik olarak belirlenir.

### {#load-from-a-file} Dosyasından Yükleme

Bir dosyadan mevcut bir belgeyi açmak için bir dosya adını dize olarak Belge yapıcısına iletin.

Aşağıdaki kod örneği, bir dosyadan belgenin nasıl açılacağını gösterir:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx.cs" >}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

### Akış {#load-from-a-stream}'ten yükleme

Bir akıştan bir belge açmak için, belgeyi içeren bir akış nesnesini Belge yapıcısına iletmeniz yeterlidir.

Aşağıdaki kod örneği, bir belgenin akıştan nasıl açılacağını gösterir:

{{< gist "aspose-words-gists" "5bd617e9ea10953cbdd084bcf3810c02" "load-docx-stream.cs" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

{{% /alert %}}
