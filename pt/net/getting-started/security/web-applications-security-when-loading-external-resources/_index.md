---
title: Segurança de aplicativos da Web ao carregar recursos
second_title: Aspose.Words para .NET
articleTitle: Segurança de aplicativos da Web ao carregar recursos externos
linktitle: Segurança de aplicativos da Web ao carregar recursos externos
type: docs
description: "Carregar recursos remotos, isso pode ser motivo de riscos de segurança. Dê uma olhada nos problemas comuns de segurança e suas soluções usando C#."
weight: 100
url: /pt/net/web-applications-security-when-loading-external-resources/
---

Por padrão, Aspose.Words para .NET pode carregar recursos remotos, como imagens, estilos CSS ou documentos HTML externos ao importar documentos ou inserir imagens usando o DocumentBuilder. Este comportamento permite que você processe seus documentos detalhadamente, mas pode ser motivo de alguns riscos de segurança se a biblioteca fizer parte de um aplicativo da web.

Neste artigo, analisamos problemas de segurança comuns que podem surgir ao carregar recursos externos e fornecemos recomendações sobre como evitar tais problemas.

{{% alert color="primary" %}}

Aspose.Words não funciona como software antivírus. Portanto, não fornece informações sobre a presença de componentes maliciosos no documento. Para garantir a segurança dos seus dados, verifique você mesmo os documentos obtidos de uma fonte externa. Por sua vez, o Aspose.Words fornece recomendações sobre como lidar com problemas que podem surgir ao carregar recursos externos.

{{% /alert %}}

## Problemas de segurança

Existem vários problemas típicos de segurança ao carregar recursos externos.

### Divulgação de credenciais por meio de imagens vinculadas

Em hosts baseados em Windows, documentos contendo referências a recursos que usam caminhos UNC, como *'\\example.com\a\b*' serão processados por padrão. Em um ambiente de domínio, isso fará com que o host envie suas credenciais de domínio em formato hash para o servidor especificado.

Se um invasor conseguir convencer um usuário ou servidor a processar um documento com esse link de recurso apontando para um host que ele controla, o invasor receberá as credenciais da conta do usuário ou de serviço no formato hash NTLM. Esses dados podem então ser reutilizados em um ataque clássico de passagem de hash, permitindo que o invasor obtenha acesso a qualquer recurso como usuário vítima ou conta de serviço.

Se a conta em questão usar uma senha fraca ou adivinhada, o invasor poderá adicionalmente realizar um ataque de quebra de senha para recuperar a senha da conta para uso malicioso adicional.

### Divulgação de imagem local por meio de imagens vinculadas

Semelhante ao caso anterior, o processamento de um documento com referência a um arquivo de imagem local resultará na inclusão desse arquivo no documento final. Isso pode levar à divulgação de informações confidenciais.

### Negação de serviço

Um invasor pode fazer upload de um documento que faça referência ou inclua imagens extremamente grandes – as chamadas "bombas de descompressão". Ao processar essas imagens, a biblioteca consumirá grandes quantidades de memória e tempo de CPU.

### Falsificação de solicitação do lado Server por meio de conteúdo vinculado

Um invasor pode criar uma série de documentos contendo links incorporados para combinações comuns de endereço IP interno e porta e, em seguida, enviá-los a um serviço web usando a biblioteca Aspose.Words para processar os documentos.

Com base no tempo que o serviço usa para processar o documento, o invasor pode determinar se uma determinada combinação de IP/Porta é filtrada por um firewall:

- tempo de processamento mais longo indica que o pacote TCP SYN enviado pelo servidor foi descartado por um firewall
- tempo de processamento rápido indica que uma conexão bem-sucedida foi feita

## Soluções de problemas de segurança

Para resolver os problemas descritos acima e melhorar a segurança das aplicações web, você pode controlar ou desabilitar o carregamento de recursos externos usando [IResourceLoadingCallback](https://reference.aspose.com/words/net/aspose.words.loading/iresourceloadingcallback/).

O exemplo de código a seguir mostra como desabilitar o carregamento de imagens externas:

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

O exemplo de código a seguir mostra como desabilitar recursos remotos:

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

Este artigo é baseado na empresa de consultoria Independent Security Evaluators [relatório](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
