---
title: Selam Dünya!
second_title: .NET için Aspose.Words'in nasıl kullanılacağına dair basit bir örnek
articleTitle: Selam Dünya!
linktitle: Selam Dünya
description: "C#'deki basitliği ve gücü deneyimlemek için .NET için Aspose.Words'i kullanarak ilk belgenizi desteklenen herhangi bir formatta oluşturun, düzenleyin ve kaydedin."
type: docs
weight: 20
url: /tr/net/hello-world/
timestamp: 2024-01-27-14-07-04
---

Bir "Merhaba Dünya!" kod genellikle ".NET için Aspose.Words" kullanılarak yazılan ilk basit örnektir ve aynı zamanda kaynak kodunu derlemesi veya çalıştırması amaçlanan yazılımın doğru şekilde kurulduğundan emin olmak için bir akıl sağlığı testi olarak da kullanılabilir.

".NET için Aspose.Words" C# kitaplığı, geliştiricilere Word ve Web belgelerini oluşturma, değiştirme, birleştirme, dönüştürme ve karşılaştırma için doğrudan erişim sağlar. PDF, DOCX, DOC, RTF, ODT, EPUB, HTML ve diğer birçok dosya formatı [Desteklenen Belge Formatları](/words/tr/net/supported-document-formats/)'dur.

Below code pasajı şu adımları takip eder:

1. Yeni bir boş [Document](https://reference.aspose.com/words/tr/net/aspose.words/document) oluşturun
1. [DocumentBuilder](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/) sınıfını başlatın
1. Basit [Write](https://reference.aspose.com/words/tr/net/aspose.words/documentbuilder/write/) yöntemini kullanarak belgeye metin ekleyin
1. Bir dosyadan mevcut bir [Document](https://reference.aspose.com/words/tr/net/aspose.words/document/document/)'i açın. Dosya formatını otomatik olarak algılar
1. [Append](https://reference.aspose.com/words/tr/net/aspose.words/document/appenddocument/) belgesi "A" ve "B" belgesinin
1. Çıktıyı PDF olarak [Save](https://reference.aspose.com/words/tr/net/aspose.words/document/save/)

Aşağıdaki kod parçacığı bir "Merhaba Dünya!" ".NET için Aspose.Words" API'inin çalışmasını gösteren örnek:

{{< gist "aspose-words-gists" "542a463e1857480986d18ec296ed43d5" "hello-world.cs" >}}
