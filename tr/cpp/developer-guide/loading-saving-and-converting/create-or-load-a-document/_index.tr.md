---
title: C++ içinde Belge Oluşturma veya Yükleme
second_title: Aspose.Words için C++
articleTitle: Belge Oluşturma veya Yükleme
linktitle: Belge Oluşturma veya Yükleme
type: docs
description: "Boş bir belge oluşturun veya C++ kullanarak bir dosyadan veya akıştan yüklemek için."
keywords: "create a document c++, load a document c++, create a blank document c++, load a document from file c++, load a document from stream c++, create a document Aspose C++, load a document Aspose C++, load formats supported by Aspose.Words C++"
weight: 10
url: /tr/cpp/create-or-load-a-document/
---

Aspose.Words ile gerçekleştirmek istediğiniz hemen hemen her görev, bir belgenin yüklenmesini içerir. `Document` sınıfı belleğe yüklenen bir belgeyi temsil eder. Belge, boş bir belge oluşturmanıza veya bir dosyadan veya akıştan yüklemenize izin veren aşırı yüklenmiş birkaç kurucuya sahiptir. Belge, Aspose.Words tarafından desteklenen herhangi bir yükleme biçiminde yüklenebilir. Desteklenen tüm yükleme biçimlerinin listesi için [LoadFormat](https://reference.aspose.com/words/cpp/aspose.words/loadformat/) numaralandırmasına bakın.

## Yeni Bir Belge Oluştur {#create-a-new-document}

Yeni bir boş belge oluşturmak için [Document](https://reference.aspose.com/words/cpp/class/aspose.words.document) yapıcısını parametresiz olarak çağıracağız. Programlı olarak bir belge oluşturmak istiyorsanız, en basit yol belge içeriği eklemek için [DocumentBuilder](https://reference.aspose.com/words/cpp/class/aspose.words.document_builder) sınıfını kullanmaktır.

Aşağıdaki kod örneği, belge oluşturucuyu kullanarak bir belgenin nasıl oluşturulacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-CreateDocument-CreateDocument.cpp" >}}

{{% alert color="primary" %}}

Varsayılan değerlere dikkat edin:

- Boş bir belge, varsayılan parametrelere sahip bir bölüm, bir boş paragraf ve bazı belge stilleri içerir. Aslında bu belge, Microsoft Word içinde "Yeni belge" nin oluşturulmasının sonucuyla aynıdır.
- Belge kağıdı boyutu [PaperSize](https://reference.aspose.com/words/cpp/aspose.words/papersize/) 'dır.**Letter**.

{{% /alert %}}

## Belge Yükleme

Varolan bir belgeyi `LoadFormat` biçimlerinden herhangi birine yüklemek için dosya adını veya akışı Belge oluşturucularından birine geçirin. Yüklenen belgenin biçimi, uzantısı tarafından otomatik olarak belirlenir.

### Bir Dosyadan Yükleme {#load-from-a-file}

Varolan bir belgeyi bir dosyadan açmak için Belge oluşturucusuna bir dosya adını dize olarak iletin.

Aşağıdaki kod örneği, bir dosyadan bir belgenin nasıl açılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToDisk-OpenDocument.cpp" >}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

### Bir Akıştan Yükleme {#load-from-a-stream}

Bir akıştan belge açmak için, belgeyi içeren bir akış nesnesini Belge oluşturucusuna geçirmeniz yeterlidir.

Aşağıdaki kod örneği, bir akıştan bir belgenin nasıl açılacağını gösterir:

{{< gist "aspose-words-gists" "d55d8631947d283b1f0da99afa06c492" "cpp-Loading-and-Saving-LoadAndSaveToStream-OpeningFromStream.cpp" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını şu adresten indirebilirsiniz: [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-C/tree/master/Examples).

{{% /alert %}}
