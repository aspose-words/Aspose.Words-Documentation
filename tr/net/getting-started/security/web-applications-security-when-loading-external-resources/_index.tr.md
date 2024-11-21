---
title: Kaynakları Yüklerken Web Uygulaması Güvenliği
second_title: .NET için Aspose.Words
articleTitle: Dış Kaynakları Yüklerken Web Uygulamaları Güvenliği
linktitle: Dış Kaynakları Yüklerken Web Uygulamaları Güvenliği
type: docs
description: "Güvenlik risklerinin bir nedeni olabilecek uzak kaynakları yükleyin. C# kullanarak yaygın güvenlik sorunlarına ve bunların çözümlerine göz atın."
weight: 100
url: /tr/net/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

Varsayılan olarak, .NET için Aspose.Words, DocumentBuilder'ı kullanarak belgeleri içe aktarırken veya görüntüler eklerken görüntüler, CSS stilleri veya harici HTML belgeleri gibi uzak kaynakları yükleyebilir. Bu davranış, belgelerinizi tüm ayrıntılarıyla işlemenize olanak sağlar ancak kitaplığın bir web uygulamasının parçası olması durumunda bazı güvenlik risklerinin nedeni olabilir.

Bu yazıda, dış kaynakları yüklerken ortaya çıkabilecek genel güvenlik sorunlarına göz atıyor ve bu tür sorunların nasıl önlenebileceğine dair öneriler sunuyoruz.

{{% alert color="primary" %}}

Aspose.Words antivirüs yazılımı olarak çalışmaz. Bu nedenle belgede kötü amaçlı bileşenlerin varlığı hakkında bilgi vermez. Verilerinizin güvenliğini sağlamak için harici bir kaynaktan alınan belgeleri kendiniz kontrol edin. Buna karşılık Aspose.Words, harici kaynakları yüklerken ortaya çıkabilecek sorunlarla nasıl başa çıkılacağına dair öneriler sağlar.

{{% /alert %}}

## Güvenlik sorunları

Harici kaynaklar yüklenirken bir takım tipik güvenlik sorunları yaşanır.

### Bağlantılı Görseller Aracılığıyla Kimlik Bilgilerinin Açıklanması

Windows tabanlı ana bilgisayarlarda, *'\\example.com\a\b*' gibi UNC yollarını kullanan kaynaklara referanslar içeren belgeler varsayılan olarak işlenecektir. Bir etki alanı ortamında bu, ana bilgisayarın etki alanı kimlik bilgilerini karma biçimde belirtilen sunucuya göndermesine neden olur.

Saldırgan, bir kullanıcıyı veya sunucuyu, kontrol ettiği bir ana bilgisayara işaret eden böyle bir kaynak bağlantısıyla bir belgeyi işlemeye ikna edebilirse, saldırgan, kullanıcı veya hizmet hesabı kimlik bilgilerini NTLM karma biçiminde alacaktır. Bu tür veriler daha sonra klasik bir karma geçiş saldırısında yeniden kullanılabilir ve böylece saldırganın, kurban kullanıcı veya hizmet hesabı olarak herhangi bir kaynağa erişmesine olanak sağlanır.

Söz konusu hesap zayıf veya tahmin edilebilir bir parola kullanıyorsa, saldırgan, daha fazla kötü amaçlı kullanım amacıyla hesap parolasını kurtarmak için ayrıca bir parola kırma saldırısı gerçekleştirebilir.

### Bağlantılı Görseller Aracılığıyla Yerel Görüntü Açıklaması

Önceki duruma benzer şekilde, bir belgenin yerel bir görüntü dosyasına referansla işlenmesi, o dosyanın nihai belgeye dahil edilmesiyle sonuçlanacaktır. Bu, hassas bilgilerin ifşa edilmesine yol açabilir.

### Hizmet Reddi

Bir saldırgan, "dekompresyon bombaları" olarak adlandırılan aşırı büyük resimlere atıfta bulunan veya bunları içeren bir belgeyi yükleyebilir. Bu görüntüleri işlerken kütüphane büyük miktarda bellek ve CPU zamanı tüketecektir.

### Bağlantılı İçerik Yoluyla Server Tarafı Talep Sahteciliği

Saldırgan, ortak dahili IP adresi ve bağlantı noktası kombinasyonlarına gömülü bağlantılar içeren bir dizi belge oluşturabilir ve ardından bunları, belgeleri işlemek için Aspose.Words kitaplığını kullanarak bir web hizmetine gönderebilir.

Saldırgan, hizmetin belgeyi işlemek için kullandığı sürenin uzunluğuna bağlı olarak belirli bir IP/Port kombinasyonunun bir güvenlik duvarı tarafından filtrelenip filtrelenmediğini belirleyebilir:

- daha uzun işlem süresi, sunucu tarafından gönderilen TCP SYN paketinin bir güvenlik duvarı tarafından düşürüldüğünü gösterir
- hızlı işlem süresi başarılı bir bağlantının kurulduğunu gösterir

## Güvenlik Sorunlarının Çözümleri

Yukarıda açıklanan sorunları çözmek ve web uygulamalarının güvenliğini artırmak için [IResourceLoadingCallback](https://reference.aspose.com/words/tr/net/aspose.words.loading/iresourceloadingcallback/)'i kullanarak harici kaynakların yüklenmesini kontrol edebilir veya devre dışı bırakabilirsiniz.

Aşağıdaki kod örneği, harici görüntülerin yüklenmesinin nasıl devre dışı bırakılacağını gösterir:

**.NET**
{{< highlight csharp >}}

public class DisableExternalImagesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        // Skip external images loading.
        return (args.ResourceType == ResourceType.Image)
            ? ResourceLoadingAction.Skip
            : ResourceLoadingAction.Default;
    }
}
...
const string documentFilename = "input.docx";
var disableExternalImagesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableExternalImagesHandler()
};
var doc = new Document(documentFilename, disableExternalImagesOptions);

{{< /highlight >}}

Aşağıdaki kod örneği, uzak kaynakların nasıl devre dışı bırakılacağını gösterir:

**.NET**
{{< highlight csharp >}}

private class DisableRemoteResourcesHandler : IResourceLoadingCallback
{
    public ResourceLoadingAction ResourceLoading(ResourceLoadingArgs args)
    {
        return IsLocalResource(args.OriginalUri)
            ? ResourceLoadingAction.Default
            : ResourceLoadingAction.Skip;
    }

    private static bool IsLocalResource(string fileName)
    {
        DirectoryInfo dirInfo;
        try
        {
            var dirName = Path.GetDirectoryName(fileName);
            if (string.IsNullOrEmpty(dirName))
                return false;
            dirInfo = new DirectoryInfo(dirName);
        }
        catch
        {
            return false;
        }
    
        foreach (DriveInfo d in DriveInfo.GetDrives())
        {
            if (string.Compare(dirInfo.Root.FullName, d.Name, StringComparison.OrdinalIgnoreCase) == 0)
                return d.DriveType != DriveType.Network;
        }
    
        return false;
    }
}
...
var disableRemoteResourcesOptions = new LoadOptions
{
    ResourceLoadingCallback = new DisableRemoteResourcesHandler()
};
var doc = new Document(documentFilename, disableRemoteResourcesOptions);

{{< /highlight >}}

{{% alert color="primary" %}}

Bu makale, danışmanlık firması Independent Security Evaluators [rapor](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf)'e dayanmaktadır.

{{% /alert %}}
