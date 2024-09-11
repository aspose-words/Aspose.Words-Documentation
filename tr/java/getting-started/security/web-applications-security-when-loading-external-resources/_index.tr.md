---
title: Kaynakları Yüklerken Web Uygulama Güvenliği
second_title: Aspose.Words için Java
articleTitle: Dış Kaynakları Yüklerken Web Uygulaması Güvenliği
linktitle: Dış Kaynakları Yüklerken Web Uygulaması Güvenliği
type: docs
description: "Uzak kaynakları yükle, bu güvenlik risklerine bir sebep olabilir. Ortak güvenlik sorunlarına ve çözümlerine bir göz atın Java'da."
weight: 120
url: /tr/java/web-applications-security-when-loading-external-resources/
---

Varsayılan olarak, Aspose.Words için Java uzak kaynakları, örneğin resimleri, CSS stilleri veya harici HTML belgelerini bir belge içeri aktarırken veya görüntüleri eklarken yükleyebilir. Bu davranış belgeleri ayrıntılı olarak işlemenizi sağlar ancak kütüphane bir web uygulamasının parçasıdırsa güvenlik riskleri oluşturur.

Bu makale, dış kaynak yüklerken ortaya çıkabilecek yaygın güvenlik sorunlarına bakıyor ve bu tür problemleri önlemek için tavsiyeler veriyor.

{{% alert color="primary" %}}

Aspose.Words bir antivirüs yazılımı olarak işlev görmez. Bu nedenle, belge içinde kötü amaçlı bileşenlerin varlığı hakkında bilgi sağlamaz. Verilerinizin güvenliğini sağlamak için, bir dış kaynaktan elde edilen belgeleri kendiniz kontrol edin. Buna karşılık, Aspose.Words harici kaynakların yüklenmesinde ortaya çıkabilecek sorunlarla başa çıkmak için nasıl davranılması gerektiği konusunda tavsiyeler sağlar.

{{% /alert %}}

## Güvenlik Sorunları

Dış kaynak yüklerken bir dizi tipik güvenlik sorunu vardır.

### Bağlı Görseller Arasında Kimlik Bilgisi Açıklaması

Başlangıç Windows tabanlı ana bilgisayarlar, UNC yollarını kullanan kaynaklara başvuran belgeler gibi varsayılan olarak işlenecektir * ‘ \\ example.com \ a \ b *. Bir etki alanı ortamında, bu ana bilgisayarın belirtilen sunucuya karma bir biçimde etki alanı kimlik bilgilerini göndermesine neden olacaktır.

Eğer bir saldırgan, bir kullanıcıyı veya sunucuyu, bu tür bir kaynak bağlantısı ile işaretlenmiş bir belgeyi işlemek için ikna edebiliyorsa, saldırgan kullanıcı veya hizmet hesabı kimlik bilgilerini NTLM karması biçiminde alacak. Bu veriler daha sonra bir klasik hash geçme saldırısı ile yeniden kullanılabilir, böylece saldırganın mağdur kullanıcı veya hizmet hesabı olarak herhangi bir kaynağa erişmesine izin verilir.

Soru işlenen hesap zayıf veya tahmin edilebilir bir parolayı kullanıyorsa, saldırgan ayrıca bir parola kırma saldırısı gerçekleştirebilir ve hesabın parolasını kötü amaçlarla tekrar kullanmak için kurtarabilir.

### Yerel Görüntü Açıklama Bağlantılı Görüntülerle

Önceki örnekte olduğu gibi, yerel bir görüntü dosyasına referans içeren bir belgeyi işlemek bu dosyanın son belgeye dahil edilmesine yol açacaktır. Bu hassas bilgilerin açığa çıkarılmasına yol açabilir.

### Hizmet Reddi

Bir saldırgan, ya referans verdi ya da çok büyük resimleri dahil eden bir belgeyi yükleyebilir - bu "boşaltma bombaları" olarak adlandırılan. Bu görüntüleri işlerken, kütüphane büyük miktarda bellek ve CPU zamanı tüketecek.

### Server - Bağlantılı İçerik İle Yanıltıcı İstek

Saldırganlar, iç IP adresi ve bağlantı noktası içeren yaygın kombinasyonlarda gömülü bağlantılar içeren bir dizi belge oluşturabilir, ardından bunları Aspose.Words kütüphanesini kullanarak belgeleri işlemek için bir web hizmetine gönderebilirler.

Hizmetin bir belgeyi işlemek için kullandığı süreye dayalı olarak, bir saldırgan belirli bir IP/port kombinasyonunun bir güvenlik duvarı tarafından filtrelenip filtrelenmediğini belirleyebilir:

- daha uzun işlem süresi, sunucunun gönderdiği TCP SYN paketinin bir güvenlik duvarı tarafından bırakıldığını gösterir
- hızlı işlem süresi başarılı bir bağlantı yapıldığını gösterir

## Güvenlik Sorunlarının Çözümleri

Yukarıda açıklanan sorunları çözmek ve internet uygulamalarının güvenliğini geliştirmek için, [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/) kullanarak harici kaynakların yüklenmesini kontrol edebilir veya devre dışı bırakabilirsiniz.

Aşağıdaki kod örneği, harici resim yüklemesini devre dışı bırakmayı gösterir:

**Java**
{{< highlight csharp >}}
public void loadDocument(String documentFilename) throws Exception
{
	LoadOptions disableExternalImagesOptions = new LoadOptions();
	disableExternalImagesOptions.setResourceLoadingCallback(new DisableExternalImagesHandler());

	Document doc = new Document(documentFilename, disableExternalImagesOptions);
}

public static class DisableExternalImagesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args)
	{
		// Skip external images loading.
		return (args.getResourceType() == ResourceType.IMAGE)
			? ResourceLoadingAction.SKIP
			: ResourceLoadingAction.DEFAULT;
	}
}
{{< /highlight >}}

Aşağıdaki kod örneği uzaktan kaynakların nasıl devre dışı bırakıldığını göstermektedir:

**Java**
{{< highlight csharp >}}
public void loadDocument2(String documentFilename) throws Exception
{
	LoadOptions disableRemoteResourcesOptions = new LoadOptions();
	disableRemoteResourcesOptions.setResourceLoadingCallback(new DisableRemoteResourcesHandler());
	
	Document doc = new Document(documentFilename, disableRemoteResourcesOptions);
}	

private static class DisableRemoteResourcesHandler implements IResourceLoadingCallback
{
	public /*ResourceLoadingAction*/int resourceLoading(ResourceLoadingArgs args) throws Exception
	{
		return isLocalResource(args.getOriginalUri())
			? ResourceLoadingAction.DEFAULT
			: ResourceLoadingAction.SKIP;
	}

	// Simplified code.
	private static boolean isLocalResource(String fileName) throws Exception
	{
		String protocol = null;
	
		URI uri = new URI(fileName);
		if (uri.isAbsolute())
		{
			protocol = uri.getScheme();
		}
		else
		{
			URL url = new URL(fileName);
			protocol = url.getProtocol();
		}
	
		return "file".equalsIgnoreCase(protocol);
	}
}
{{< /highlight >}}

{{% alert color="primary" %}}

Bu makale Bağımsız Güvenlik Değerlendiricileri danışmanlık firmasına dayanıyor [report](ise-aspose-report.pdf)..

{{% /alert %}}

