---
title: Segurança De Aplicações Web Ao Carregar Recursos
second_title: Aspose.Words para Java
articleTitle: Segurança De Aplicações Web Ao Carregar Recursos Externos
linktitle: Segurança De Aplicações Web Ao Carregar Recursos Externos
type: docs
description: "Carregar recursos remotos, o que pode ser motivo de riscos de segurança. Dê uma olhada nos problemas de segurança comuns e suas soluções em Java."
weight: 120
url: /pt/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

Por padrão, Aspose.Words Para Java pode carregar recursos remotos, como imagens, CSS estilos ou documentos externos HTML ao importar documentos ou inserir imagens usando o DocumentBuilder. Esse comportamento permite que você processe seus documentos com todos os detalhes, mas pode ser uma razão de alguns riscos de segurança se a biblioteca fizer parte de um aplicativo da web.

Neste artigo, examinamos os problemas de segurança comuns que podem surgir ao carregar recursos externos e fornecemos recomendações sobre como evitar esses problemas.

{{% alert color="primary" %}}

Aspose.Words não funciona como software antivírus. Portanto, não fornece informações sobre a presença de componentes maliciosos no documento. Para garantir a segurança dos seus dados, verifique você mesmo os documentos obtidos de uma fonte externa. Por sua vez, Aspose.Words fornece recomendações sobre como lidar com problemas que podem surgir ao carregar recursos externos.

{{% /alert %}}

## Questões De Segurança

Existem vários problemas de segurança típicos ao carregar recursos externos.

### Divulgação De Credenciais Através De Imagens Ligadas

Em hosts baseados em Windows, os documentos contendo referências a recursos que usam caminhos de UNC como *'\\example.com\a\b*' serão processados por padrão. Em um ambiente de domínio, isso fará com que o host envie suas credenciais de domínio em um formato hash para o servidor especificado.

Se um invasor conseguir convencer um usuário ou servidor a processar um documento com esse link de recurso apontando para um host que ele controla, o invasor receberá as credenciais da conta de usuário ou serviço no formato hash NTLM. Esses dados podem então ser reutilizados em um ataque clássico de pass-the-hash, permitindo que o invasor obtenha acesso a qualquer recurso como usuário vítima ou conta de serviço.

Se a conta em questão utilizar uma palavra-passe fraca ou adivinhável, o intruso poderá, adicionalmente, realizar um ataque de quebra de palavra-passe para recuperar a palavra-passe da conta para posterior utilização maliciosa.

### Divulgação De Imagens Locais Através De Imagens Ligadas

À semelhança do caso anterior, o processamento de um documento com uma referência a um ficheiro de imagem local resultará na inclusão desse ficheiro no documento final. Isso pode levar à divulgação de informações sensíveis.

### Negação de Serviço

Um invasor pode carregar um documento que faça referência ou inclua imagens extremamente grandes – as chamadas "bombas de descompressão". Ao processar essas imagens, a biblioteca consumirá enormes quantidades de memória e CPU tempo.

### Falsificação De Pedidos Do Lado Do Servidor Através De Conteúdos Ligados

Um invasor pode criar uma série de documentos contendo links incorporados para combinações comuns de endereço e porta internos IP e, em seguida, enviá-los a um serviço da web usando a biblioteca Aspose.Words para processar os documentos.

Com base no tempo que o serviço utiliza para processar o documento, o intruso pode determinar se uma determinada combinação IP / porta é filtrada por uma firewall:

- tempo de processamento mais longo indica que o pacote TCP SYN enviado pelo servidor foi descartado por um firewall
- o tempo de processamento rápido indica que uma conexão bem-sucedida foi feita

## Soluções de questões de segurança

Para resolver os problemas acima descritos e melhorar a segurança das aplicações web, pode controlar ou desactivar o carregamento de recursos externos utilizando [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

O exemplo de código a seguir mostra como desativar o carregamento de imagens externas:

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

O exemplo de código a seguir mostra como desativar recursos remotos:

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

Este artigo baseia-se na empresa de consultoria Independent Security Evaluators [relat extraterrio](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

