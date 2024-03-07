---
title: COM Interop aracılığıyla .NET için Aspose.Words
second_title: .NET için Aspose.Words
articleTitle: COM Interop aracılığıyla .NET için Aspose.Words Nasıl Kullanılır
linktitle: COM Interop aracılığıyla .NET için Aspose.Words Nasıl Kullanılır
type: docs
description: "Python, PHP, VBScript, JScript ve diğer programlama dillerinde COM Interop aracılığıyla .NET için Aspose.Words'i kullanın."
weight: 130
url: /tr/net/how-to-use-aspose-words-via-com-interop/
---

Bu konudaki bilgiler, aşağıdaki programlama dillerinden herhangi birinde COM Interop aracılığıyla .NET için Aspose.Words'i kullanmak istediğiniz senaryolar için geçerlidir:

- ASP
- Delphi ([Örnek](https://github.com/aspose-words/Aspose.Words-for-.NET/tree/ReleasePreparation/Showcases/Aspose_Words_for_NET_via_COM_Delphi))
-JScript
- Perl
- PHP
- Güç Oluşturucu
- Python
-VBScript
- Visual Basic

## COM Interop'yle çalışın

.NET için Aspose.Words, .NET Framework'in kontrolü altında yürütülür ve buna yönetilen kod denir. Yukarıdaki dillerin hepsinde yazılan kod .NET Framework dışında çalışır ve buna yönetilmeyen kod denir. Yönetilmeyen kod ile Aspose.Words arasındaki etkileşim, COM Interop adı verilen .NET özelliği aracılığıyla gerçekleşir.

Aspose.Words nesneleri .NET nesneleridir ancak COM Interop aracılığıyla kullanıldıklarında programlama dilinizde COM nesneleri olarak görünürler. Bu nedenle, Aspose.Words'i kullanmaya başlamadan önce COM nesnelerini kendi programlama dilinizde nasıl oluşturacağınızı ve kullanacağınızı bildiğinizden emin olmanız en iyisidir.

Sonunda uzmanlaşmanız gereken konular şunlardır:

- COM nesnelerini kendi programlama dilinizde kullanma. Programlama dili belgelerinize ve bu belgenin ilerleyen kısımlarındaki dile özgü konulara bakın.
- .NET COM Interop tarafından sunulan COM nesneleriyle çalışma. MSDN'de [Yönetilmeyen Kodla Interop Oluşturma](https://learn.microsoft.com/en-us/dotnet/framework/interop/) ve [.NET Framework Bileşenlerini COM'ye Gösterme](https://learn.microsoft.com/en-us/dotnet/framework/interop/exposing-dotnet-components-to-com)'a bakın.
- Aspose.Words belge nesne modeli. Aspose.Words [Geliştirici Kılavuzu](/words/tr/net/developer-guide/) ve [API Reference](https://reference.aspose.com/words/tr/net/)'e bakın.

## COM Interop ile .NET için Aspose.Words'i kaydedin

[Kurulum](/words/tr/net/installation/)'ten sonra, `regasm.exe` yardımcı programını kullanarak COM Interop için Aspose.Words'yi kaydetmeniz gerekir.

`regasm.exe`, .NET Framework SDK'de bulunan bir araçtır. Tüm .NET Framework SDK araçları `%windir%\Microsoft .NET\Framework\<FrameworkVersion>\` dizininde bulunur; örneğin *C:\Windows\Microsoft .NET\Framework\v4.0.30319*.

Tlb dosyasını almak için cmd'de `C:\Windows\Microsoft.NET\Framework\v4.0.30319\RegAsm.exe <installdir>\lib\net40-client\Aspose.Words.dll /tlb /codebase`'i çalıştırın; burada `<installdir>`, Aspose.Words'i yüklediğiniz dizindir, genellikle `%USERPROFILE%\.nuget\packages\aspose.words\`.

## COM Interop aracılığıyla Aspose.Words ile çalışın

### ProgIDs

ProgID, "programatik tanımlayıcı" anlamına gelir, bir nesne oluşturmak için kullanmanız gereken `COM` sınıfının adıdır.

Şu anda Aspose.Words, herkese açık olarak oluşturulabilen dört COM nesnesini tanımlamaktadır. ProgIDs'leri şunlardır:

- ComHelper
- Belge
- Belge Oluşturucu
- Lisans

ProgIDs, kitaplık adı ("Aspose.Words") ve sınıf adından oluşur.

### Tür Kitaplığı

Yükleme sırasında Aspose.Words.tlb (COM türü kitaplık) bilgisayarınıza kopyalanır:

-.NET Framework 4.0'dan **<installdir>\lib\net40-istemci**'ye kadar

Programlama diliniz (örneğin Visual Basic veya Delphi) bir `COM` türü kitaplığına referans vermenize izin veriyorsa, **Aspose.Words.tlb**'e bir referans ekleyin; Nesne Tarayıcınızda tüm Aspose.Words sınıflarını, yöntemlerini, özelliklerini ve numaralandırmalarını görebileceksiniz.

### COM Nesneleri Oluşturma

.NET nesnesinin oluşturulması normal bir COM nesnesinin oluşturulmasına benzer:

**VBScript**

```
Loş yardımcı
Yardımcıyı ayarla = CreateObject("Aspose.Words.ComHelper")
 
```

Oluşturulduktan sonra nesnenin yöntemlerine ve özelliklerine sanki bir `COM` nesnesiymiş gibi erişebilirsiniz:

**VBScript**

```
Loş belge
Belgeyi ayarla = helper.Open("C:\my.doc")
 
```

Bazı yöntemlerin aşırı yüklemeleri vardır ve değişmeden kalan ilk yöntem dışında, COM Interop tarafından kendilerine eklenen sayısal bir son ek ile açığa çıkarılacaklardır. Örneğin, `Document.Save` yöntemi aşırı yüklemeleri `Document.Save`, `Document.Save_2`, `Document.Save_3` vb. haline gelir.

Daha fazla bilgi için bu belgenin ilerisindeki dile özgü makalelere bakın.

### Sarmalayıcı Düzeneği Oluşturma

Aspose.Words sınıflarının, yöntemlerinin ve özelliklerinin çoğunu kullanmanız gerekiyorsa, Aspose.Words'in doğrudan yönetilmeyen koddan kullanılmasını önlemeye yardımcı olacak bir sarmalayıcı derlemesi (C# veya başka bir .NET programlama dili kullanarak) oluşturmayı düşünün.

Aspose.Words'ye referans veren, tüm işi onunla yapan ve yalnızca minimum sınıf ve yöntem kümesini yönetilmeyen koda maruz bırakan bir .NET derlemesi geliştirmek iyi bir yaklaşımdır. Uygulamanız daha sonra yalnızca sarmalayıcı kitaplığınızla çalışmalıdır.

COM Interop aracılığıyla çağırmanız gereken sınıfların ve yöntemlerin sayısını azaltmak, projenizi basitleştirebilir çünkü .NET sınıflarını COM Interop aracılığıyla kullanmak genellikle ileri düzey beceriler gerektirir.