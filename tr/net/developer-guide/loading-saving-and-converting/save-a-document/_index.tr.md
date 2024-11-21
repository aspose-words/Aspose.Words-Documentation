---
title: Bir Belgeyi C#'e Kaydetme
second_title: .NET için Aspose.Words
articleTitle: Bir Belgeyi Kaydet
linktitle: Bir Belgeyi Kaydet
type: docs
description: "C#'i kullanarak bir belgeyi desteklenen herhangi bir formatta kaydedin."
keywords: "save a document c#, save a document to file c#, save a document to stream c#, save a document Aspose .NET, save formats supported by Aspose.Words .NET"
weight: 20
url: /tr/net/save-a-document/
timestamp: 2024-07-09-19-00-42
---

Aspose.Words ile gerçekleştirmeniz gereken görevlerin çoğu bir belgenin kaydedilmesini içerir. Bir belgeyi kaydetmek için Aspose.Words, [Document](https://reference.aspose.com/words/tr/net/aspose.words/document/) sınıfının [Save](https://reference.aspose.com/words/tr/net/aspose.words/document/save/) yöntemini sağlar. Bir belgenin istemci tarayıcısına gönderilmek üzere bir dosyaya, akışa veya ASP.NET HttpResponse nesnesine kaydedilmesine olanak tanıyan aşırı yüklemeler vardır. Belge, Aspose.Words tarafından desteklenen herhangi bir kaydetme biçiminde kaydedilebilir. Desteklenen tüm kaydetme biçimlerinin listesi için [SaveFormat](https://reference.aspose.com/words/tr/net/aspose.words/saveformat/) numaralandırmasına bakın.

## {#save-a-document-to-a-file} Dosyasına Kaydet

[Save](https://reference.aspose.com/words/tr/net/aspose.words/document/save/) yöntemini bir dosya adıyla kullanmanız yeterlidir. Aspose.Words, belirttiğiniz dosya uzantısından kaydetme biçimini belirleyecektir.

Aşağıdaki kod örneği, bir belgenin dosyaya nasıl yüklenip kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save.cs" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.doc)'ten indirebilirsiniz.

{{% /alert %}}

## Akış {#save-a-document-to-a-stream}'e kaydet

Bir akış nesnesini [Save](https://reference.aspose.com/words/tr/net/aspose.words/document/save/) yöntemine iletin. Bir akışa kaydederken kaydetme biçimini açıkça belirtmek gerekir.

Aşağıdaki kod örneği, bir belgenin akışa nasıl yüklenip kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "load-save-stream.cs" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

{{% /alert %}}

## Bir Belgeyi İstemci Tarayıcısına {#sending-a-document-to-a-client-browser} Gönderme

Bir belgeyi istemci tarayıcısına göndermek için dört parametre alan özel bir aşırı yükleme kullanın: dosya adı, kaydetme biçimi, kaydetme türü ve ASP.NET HttpResponse nesnesi. Belgenin kullanıcıya sunulma şekli, tarayıcıya gönderilen belgenin kendisini doğrudan tarayıcıda mı yoksa dosya uzantısıyla ilişkili uygulamada mı açma seçeneği sunacağını belirleyen [ContentDisposition](https://reference.aspose.com/words/tr/net/aspose.words/contentdisposition/) numaralandırmasıyla temsil edilir.

Aşağıdaki kod örneği, ASP.NET kodundan istemci tarayıcısına bir belgenin nasıl gönderileceğini gösterir:

{{< gist "aspose-words-gists" "6b49e2482a4ca546ffd2b4f9fa642041" "send-to-client-browser.cs" >}}

{{% alert color="primary" %}}

Bu örneğin şablon dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Document.docx)'ten indirebilirsiniz.

{{% /alert %}}

`Save` yönteminin bu aşırı yüklemesi, .NET İstemci Profili DLL'si kullanıldığında kullanılamaz. Bu DLL **net3.5_ClientProfile** klasöründe bulunur. .NET İstemci Profili, **System.Web** gibi derlemeleri hariç tutar, bu nedenle **HttpResponse** kullanılamaz. Bu tamamen tasarım gereğidir.

Bu bir hata olarak ortaya çıkabilir:

**"'Kaydet' yöntemi için aşırı yük yok, '4' parametre alıyor."**

ASP.NET uygulamasında Aspose.Words kullanmanız gerekiyorsa, bu makalede anlatıldığı gibi doğru aşırı yüklemenin mevcut olduğu .NET 2.0 DLL'yi kullanmanız önerilir.

## PCL {#save-a-document-to-pcl}'e kaydet

Aspose.Words, bir belgenin PCL'ye (Yazıcı Komut Dili) kaydedilmesini destekler. Aspose.Words, belgeleri PCL 6 (PCL 6 Enhanced veya PCL XL) formatında kaydedebilir. `PclSaveOptions` sınıfı, bir belgeyi PCL formatında kaydederken ek seçenekleri belirlemek için kullanılabilir.

Aşağıdaki kod örneği, kaydetme seçeneklerini kullanarak bir belgenin PCL'ye nasıl kaydedileceğini gösterir:

{{< gist "aspose-words-gists" "b5a3c7ccb6e79a15c8d9d65e050a881b" "docx-to-pcl.cs" >}}

## Ayrıca bakınız

- ASP.NET [HttpYanıtı](https://docs.microsoft.com/en-us/dotnet/api/system.web.httpresponse?view=netframework-4.8) nesnesi hakkında bilgi
