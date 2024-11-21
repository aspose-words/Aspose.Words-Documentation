---
title: Segurança de aplicativos Web Ao carregar recursos
second_title: Aspose.Words para Java
articleTitle: Segurança de aplicativos da Web ao carregar recursos externos
linktitle: Segurança de aplicativos da Web ao carregar recursos externos
type: docs
description: "Carregar recursos remotos, que podem ser uma razão de riscos de segurança. Dê uma olhada em questões comuns de segurança e suas soluções em Java."
weight: 120
url: /pt/java/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-27-14-07-04
---

Por padrão, Aspose.Words para Java pode carregar recursos remotos, como imagens, estilos CSS ou documentos HTML externos ao importar documentos ou inserir imagens usando o DocumentBuilder. Este comportamento permite que você processe seus documentos em detalhes completos, mas pode ser uma razão de alguns riscos de segurança se a biblioteca é uma parte de uma aplicação web.

Neste artigo, analisamos questões de segurança comuns que podem surgir ao carregar recursos externos e fornecer recomendações sobre como evitar tais problemas.

{{% alert color="primary" %}}

Aspose.Words não funciona como software antivírus. Portanto, não fornece informações sobre a presença de componentes maliciosos no documento. Para garantir a segurança dos seus dados, verifique os documentos obtidos a partir de uma fonte externa. Por sua vez, Aspose.Words fornece recomendações sobre como lidar com problemas que podem surgir ao carregar recursos externos.

{{% /alert %}}

## Questões de segurança

Há uma série de problemas de segurança típicos ao carregar recursos externos.

### Divulgação Credenciais Via Linked Images

Em Windows- hosts baseados, documentos contendo referências a recursos que usam caminhos UNC como *‘\\example.com\a\b*’ serão processados por padrão. Em um ambiente de domínio, isso fará com que o host envie suas credenciais de domínio em um formato hashed para o servidor especificado.

Se um atacante for capaz de convencer um usuário ou servidor a processar um documento com tal link de recurso apontando para um host que eles controlam, o atacante receberá as credenciais de conta de usuário ou serviço no formato hash NTLM. Tais dados podem então ser reutilizados em um ataque clássico pass-the-hash, permitindo que o atacante obtenha acesso a qualquer recurso como a conta de usuário ou serviço da vítima.

Se a conta em questão usa uma senha fraca ou suportável, o atacante pode adicionalmente realizar um ataque de quebra de senha para recuperar a senha da conta para uso mais malicioso.

### Divulgação de imagem local Via Linked Images

Semelhante ao caso anterior, processar um documento com uma referência a um arquivo de imagem local resultará que o arquivo está sendo incluído no documento final. Isso pode levar à divulgação de informações confidenciais.

### Densidade de Serviço

Um atacante poderia carregar um documento que referenciava ou incluía imagens extremamente grandes – as chamadas "bombas de descompressão". Ao processar essas imagens, a biblioteca consumirá grandes quantidades de memória e tempo de CPU.

### Server-Side Request Forgery Via Linked Content

Um atacante poderia criar uma série de documentos contendo links incorporados para combinações comuns de endereço IP interno e porta, em seguida, enviá-los para um serviço web usando o Aspose.Words biblioteca para processar os documentos.

Com base no tempo que o serviço usa para processar o documento, o atacante pode determinar se uma determinada combinação IP/Port é filtrada por um firewall:

- tempo de processamento mais longo indica que o pacote TCP SYN enviado pelo servidor foi abandonado por um firewall
- tempo de processamento rápido indica que uma conexão bem sucedida foi feita

## Soluções de Problemas de Segurança

Para resolver os problemas descritos acima e para melhorar a segurança de aplicativos web, você pode controlar ou desativar o carregamento de recursos externos usando [IResourceLoadingCallback](https://reference.aspose.com/words/java/com.aspose.words/iresourceloadingcallback/).

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

Este artigo é baseado na empresa de consultoria Independent Security Evaluators [relatório](/words/java/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}

