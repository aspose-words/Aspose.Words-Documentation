---
title: C#'te Belge Yazdırma
second_title: .NET için Aspose.Words
articleTitle: Bir Belgeyi Programlı Olarak Yazdırma veya İletişim Kutularını Kullanma
linktitle: Bir Belgeyi Programlı Olarak Yazdırma veya İletişim Kutularını Kullanma
description: "Yönetilmeyen XpsPrint API'yi kullanarak veya C#'deki Ayarlar ve Baskı Önizleme İletişim Kutuları ile seçili bir yazıcı aracılığıyla Server'te bir belge yazdırın."
type: docs
weight: 55
url: /tr/net/print-a-document-programmatically-or-using-dialogs/
timestamp: 2024-01-31-14-23-37
---

Bu makalede, Aspose.Words ve `XpsPrint` API kullanılarak ASP.NET veya Windows Hizmeti uygulamasından bir sözcük işlem belgesinin nasıl yazdırılacağı açıklanmaktadır. Ayrıca Ayarlar, Yazdırma önizleme ve Yazdırma ilerleme durumu iletişim kutuları ile bir belgeyi yazdırmanın yöntemlerini gösterir ve bir belgeyi yazdırmak için ilk çağrının süresinin nasıl azaltılacağını açıklar.

## `XpsPrint` API aracılığıyla Server'teki bir Belgeyi Yazdırma

Bu bölüm, Aspose.Words kullanarak bir .NET uygulamasından yönetilmeyen XpsPrint API'ye XPS belgesi göndermek isteyen kullanıcılar için tasarlanmıştır.

### ASP.NET veya Windows Hizmeti uygulamalarında belge yazdırmanın sınırlamaları

Bazı basılı çıktılar üreten bir .NET uygulaması geliştirirken, genellikle *System.Drawing.Printing* ad alanında sağlanan sınıfları veya Windows Sunum Vakfı (WPF) sınıflarını kullanabilirsiniz. Ancak uygulama bir ASP.NET veya Windows Hizmeti uygulamasıysa, Microsoft bu yaklaşımın kullanılmasını önermediğinden yazdırma seçenekleri sınırlıdır. .NET Framework Yazdırma sınıfları hizmetler uygulaması tarafından desteklenmez. Buna genellikle sunucu hizmeti bağlamında çalışan ASP sayfaları da dahildir.

*System.Drawing.Printing* ad alanındaki sınıfların bir Windows hizmeti veya ASP.NET uygulaması veya hizmeti içinde kullanılması desteklenmez ve bunların kullanılmaya çalışılması hizmet performansının düşmesine, çalışma zamanı istisnalarına ve diğer sorunlara neden olabilir. Windows hizmetlerini oluşturmak için WPF'nin kullanımı da aynı şekilde desteklenmez. WPF bir sunum teknolojisi olduğundan, Windows hizmeti, kullanıcı etkileşimini içeren görsel işlemleri gerçekleştirmek için uygun izinlere ihtiyaç duyar. Windows hizmetinin bu tür izinleri yoksa beklenmeyen sonuçlar ortaya çıkabilir.

Aspose.Words [Document](https://reference.aspose.com/words/tr/net/aspose.words/document/) nesnesi, belgeleri yazdırmak için bir [Print](https://reference.aspose.com/words/tr/net/aspose.words/document/methods/print/index) yöntemleri ailesi sağlar. Bu yöntemler, *System.Drawing.Printing* ad alanında tanımlanan .NET yazdırma sınıflarını kullanır. Sunucu tarafı uygulamalarında yazdırmak için bunları başarıyla kullanan birçok Aspose.Words müşterisi var. Yine de bu makale, Microsoft'nin önerileriyle uyumlu, alternatif bir yazdırma yöntemi göstermektedir.

### Server'te Belge Yazdırma Yöntemleri

Belgeleri Microsoft'e göre yazdırmanın doğru yolu, yönetilmeyen XpsPrint API'yi kullanmaktır. Bu API, Windows 7'de, Windows Server 2008 R2'da ve Windows Vista Platform Güncellemesi'nin yüklü olması koşuluyla Windows Vista'de mevcuttur.

Aspose.Words, herhangi bir belgeyi kolayca XPS'ye dönüştürebildiğinden, yalnızca bir XPS belgesini `XpsPrint` API'e aktaran kodu yazmanız yeterlidir. Tek sorun, `XpsPrint` API'in yönetilmemesi ve Platform Invoke teknolojisi hakkında biraz bilgi gerektirmesidir.

Bir belgeyi yazdırmak için Aspose.Words, basit bir Yazdırma yöntemi içeren bir **XpsPrintHelper** sınıfı sağlar; burada yalnızca aşağıdaki parametreleri belirtmeniz gerekir (daha fazla ayrıntı için makale [Belgeyi XPS API ile Yazdır](/words/net/missing-features-in-openxml/)'ine bakın):

- Yazdırmak istediğiniz belge.
- Yazıcı adı.
- İşin adı (isteğe bağlı).
- Programın yazdırma işi tamamlanana kadar beklemesi gerekip gerekmediğini belirten Boolean değeri. Bu nedenle sistem ya belgenin başarıyla yazdırılıp yazdırılmadığını kontrol edecek ya da yazdırma işi gönderildikten hemen sonra geri dönecektir. Son durumda yazdırma işinin başarılı olup olmadığını belirlemek imkansızdır.

Belgeyi gönderirken veya yazdırırken herhangi bir sorunla karşılaşıldığında yöntem bir istisna oluşturacaktır.

Aşağıdaki kod örneği, **XpsPrintHelper** sınıfını kullanarak bir belgenin nasıl yazdırılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintDocViaXpsPrint-PrintDocViaXpsPrint.cs" >}}

Projeyi çalıştırdığınızda, belirtilen yazıcıda örnek bir belge yazdırılır ve yazdırma sonuçlarını görüntülemek için bir konsol penceresi açılır. Yazdırma işi tamamlandığında veya hata oluştuğunda, sistem bir başarı mesajı veya atılan istisnanın metnini görüntüler.

[PageSetup](https://reference.aspose.com/words/tr/net/aspose.words/pagesetup/) sınıfını kullanarak bazı yazdırma ayarlarını da yapabilirsiniz. Örneğin Microsoft Word'de yazıcı tepsileri her bölüm için tanımlanır ve yazıcıya özeldir. Bu nedenle, [FirstPageTray](https://reference.aspose.com/words/tr/net/aspose.words/pagesetup/firstpagetray/) ve [OtherPagesTray](https://reference.aspose.com/words/tr/net/aspose.words/pagesetup/otherpagestray/) özellikleri aracılığıyla her bölüm için bu değerleri programlı olarak değiştirebilirsiniz.

{{% alert color="primary" %}}

Bazı durumlarda bu örneği Aspose.Words olmadan kullanmanız gerekebilir. Örneğin, zaten bir XPS belgeniz varsa ve bunu yalnızca bir ASP.NET veya Windows Hizmeti uygulamasından yazdırmak istiyorsanız. Daha sonra `Print` yöntemini silebilirsiniz.

{{% /alert %}}

**XpsPrintHelper**.**Print** yönteminin iki aşırı yüklemesi vardır. İlk aşırı yükleme, bir [Document](https://reference.aspose.com/words/tr/net/aspose.words/document/) nesnesini alır ve onu XPS formatında bir `MemoryStream`'e kaydeder. İkinci aşırı yük bir `Stream` nesnesini kabul eder. Akışın XPS biçiminde bir belge içermesi gerekir.

Yöntem aşırı yükleme örneklerini [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/download/MissingFeaturesofOpenXMLWordsv1.1/Print.Document.via.XPS.API.zip)'ten indirebilirsiniz.

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

## Ayarlar ve Baskı Önizleme İletişim Kutularıyla Bir Belgeyi Yazdırma

Belgelerle çalışırken genellikle bunları seçilen bir yazıcıya yazdırmak gerekir. Yazdırılan belgenin nasıl görüneceğini görsel olarak incelemek ve ilgili yazdırma seçeneklerini seçmek için bir yazdırma önizleme iletişim kutusunu kullanmak yararlı olacaktır.

Aspose.Words'in yerleşik diyalogları veya formları yoktur ancak .NET **PrintDocument** sınıfını temel alan [AsposeWordsPrintDocument](https://reference.aspose.com/words/tr/net/aspose.words.rendering/asposewordsprintdocument/) sınıfını uygular. Bu sınıfın bir örneği, belgenin önizlemesini görmek ve yazdırmak için **PrintPreviewDialog** formuna aktarılabilir. Ayrıca [YazdırmaÖnizleme İletişim Kutusu](https://docs.microsoft.com/en-us/dotnet/api/system.windows.forms.printpreviewdialog?view=netframework-4.8) sınıfı, yazıcıya aktarılacak çıktıyı tanımlar.

Aşağıdaki örnek, Baskı önizleme ve Ayarlar iletişim kutuları aracılığıyla Aspose.Words'ten bir belge yazdırmak için bu sınıfların nasıl kullanılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialog.cs" >}}

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintPreviewSettingsDialog-PrintPreviewSettingsDialogEvent.cs" >}}

{{% alert color="primary" %}}

**AllowSomePages** özelliği, bu özelliğin değeri True ise, yazdırma için bir sayfa aralığı seçmenizi sağlar. Varsayılan olarak aralıktaki tüm sayfalar yazdırma için seçilir.

{{% /alert %}}

Baskı Önizleme iletişim kutusu ayarlarının görünümünü optimize etmek için **PrintPreviewDialog** sınıfının özelliklerini belirtin.

## Tek Sayfaya Birden Fazla Sayfa Yazdırma

Belgeleri yazdırırken daha fazla esnekliğe sahip olmak her zaman faydalıdır. .NET ve Aspose.Words'yi kullanarak, belgenin yazdırılan sayfada nasıl görüneceğini tanımlayarak özel mantığınızı uygulamak için yazdırma işleminde kolayca ince ayar yapabilirsiniz.

Önceki bölümde olduğu gibi Aspose.Words, .NET **PrintDocument** sınıfını temel alan **MultipagePrintDocument** sınıfını uygular. Bu, mevcut .NET yazdırma altyapısının, yazdırma ve yazdırma önizleme iletişim kutularının belgenin yazdırmadan önce görselleştirilmesini sağlayacak şekilde kullanılabileceği anlamına gelir. **MultipagePrintDocument** sınıfı, birden fazla sayfayı tek bir kağıda yazdırma yeteneği sağlar.

{{% alert color="primary" %}} You can download an example of using the **MultipagePrintDocument** class from [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/releases/tag/MultipagePrintDocumentExample). {{% /alert %}}

Bu kod örneğinin sonucu aşağıda gösterilmiştir:

![print-a-document-programmatically-or-using-dialogs-aspose-words-net](/words/net/print-a-document-programmatically-or-using-dialogs/print-a-document-programmatically-or-using-dialogs-1.png)

## Bir Belgeyi Yazdırırken Yazdırma İlerleme Durumu İletişim Kutusunu Gizleme

Bir belgeyi [Print](https://reference.aspose.com/words/tr/net/aspose.words/document/print/) yöntemiyle yazdırırken Yazdırma İlerleme Durumu İletişim Kutusu görünmüyor. Ancak bu iletişim kutusu başka bir [Print](https://reference.aspose.com/words/tr/net/aspose.words.rendering/asposewordsprintdocument/) yöntemiyle yazdırma sırasında görüntülenir. Bu durumda, Yazdırma iletişim kutusunun görünmesini önlemek için, aşağıdaki örnekte gösterildiği gibi, bu yöntemde geçerli yazıcı ayarlarını ve standart bir yazdırma denetleyicisini belirtmelisiniz:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-PrintProgressDialog-PrintProgressDialog.cs" >}}

Bu örneğin örnek dosyasını [Aspose.Words GitHub](https://github.com/aspose-words/Aspose.Words-for-.NET/blob/master/Examples/Data/Rendering.docx)'ten indirebilirsiniz.

## Bir Belgeyi Yazdırmak İçin İlk Aramanın Süresi Nasıl Azaltılır

Aspose.Words, yazdırma süresini azaltmak için **PrinterSettings**'nin bazı alanlarını okur ve önbelleğe alır. Bunu [CachePrinterSettings](https://reference.aspose.com/words/tr/net/aspose.words.rendering/asposewordsprintdocument/cacheprintersettings/) yöntemini çağırarak başarabilirsiniz. Bu yöntem, eğer daha önce yürütülmediyse, yazdırma başlamadan önce çağrılır. Bu yöntemin çağrıldığı ve çağrılmadığı toplam yazdırma süresinin neredeyse aynı olduğunu unutmayın. Bu yöntemi kullanmanın amacı, [Print](https://reference.aspose.com/words/tr/net/aspose.words/document/print/) yönteminin ilk çağrılma süresini azaltmaktır. Aşağıdaki kod örneği bu yöntemin nasıl kullanılacağını gösterir:

{{< gist "aspose-com-gists" "0b968ac8900f80c11e109dffb105f3da" "Examples-CSharp-Rendering-Printing-Print_CachePrinterSettings-CachePrinterSettings.cs" >}}

## Ayrıca bakınız

- [Windows Vista için Platform Güncellemesi](https://docs.microsoft.com/en-us/windows/win32/win7ip/platform-update-for-windows-vista-overview)
