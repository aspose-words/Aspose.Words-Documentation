---
title: Segurança De Aplicações Web Ao Carregar Recursos
second_title: Aspose.Words Para C++
articleTitle: Segurança De Aplicações Web Ao Carregar Recursos Externos
linktitle: Segurança De Aplicações Web Ao Carregar Recursos Externos
type: docs
description: "Carregar recursos remotos, o que pode ser motivo de riscos de segurança. Dê uma olhada nos problemas de segurança comuns e suas soluções em C++."
weight: 50
url: /pt/cpp/web-applications-security-when-loading-external-resources/
timestamp: 2024-01-30-16-22-34
---

Por defeito, Aspose.Words para C++ pode carregar recursos remotos, como imagens, estilos CSS ou documentos externos HTML ao importar documentos ou inserir imagens usando o DocumentBuilder. Esse comportamento permite que você processe seus documentos com todos os detalhes, mas pode ser uma razão de alguns riscos de segurança se a biblioteca fizer parte de um aplicativo da web.

Neste artigo, examinamos os problemas de segurança comuns que podem surgir ao carregar recursos externos e fornecemos recomendações sobre como evitar esses problemas.

{{% alert color="primary" %}}

Aspose.Words não funciona como software antivírus. Portanto, não fornece informações sobre a presença de componentes maliciosos no documento. Para garantir a segurança dos seus dados, verifique você mesmo os documentos obtidos de uma fonte externa. Por sua vez, Aspose.Words fornece recomendações sobre como lidar com problemas que podem surgir ao carregar recursos externos.

{{% /alert %}}

## Questões De Segurança

Existem vários problemas de segurança típicos ao carregar recursos externos.

### Divulgação De Credenciais Através De Imagens Ligadas

Em hosts baseados em Windows, os documentos que contêm referências a recursos que usam caminhos UNC como *'\\example.com\a\b*’ serão processados por padrão. Em um ambiente de domínio, isso fará com que o host envie suas credenciais de domínio em um formato hash para o servidor especificado.

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

Para resolver os problemas acima descritos e melhorar a segurança das aplicações web, pode controlar ou desactivar o carregamento de recursos externos utilizando [IResourceLoadingCallback](https://reference.aspose.com/words/cpp/aspose.words.loading/iresourceloadingcallback/).

O exemplo de código a seguir mostra como desativar o carregamento de imagens externas:

**C++**
{{< highlight cpp >}}
class DisableExternalImagesHandler : public IResourceLoadingCallback
{
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		// Skip external images loading.
		return args->get_ResourceType() == ResourceType::Image
			? ResourceLoadingAction::Skip
			: ResourceLoadingAction::Default;
		}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableExternalImagesHandler = System::MakeObject<LoadOptions>();

disableExternalImagesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableExternalImagesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableExternalImagesHandler);
}
{{< /highlight >}}

O exemplo de código a seguir mostra como desativar recursos remotos:

**C++**
{{< highlight cpp >}}
class DisableRemoteResourcesHandler : public IResourceLoadingCallback
{
	static bool IsLocalResource(const System::String& originalUri)
	{
		// CodePorting.CsToCpp.Native.API can handle only absolute uri
		auto uri = System::MakeObject<System::Uri>(originalUri);
		if (uri->get_IsAbsoluteUri())
		{
			return uri->get_Scheme().Equals(u"file", System::StringComparison::OrdinalIgnoreCase);
		}

		return false;
	}
public:
	ResourceLoadingAction ResourceLoading(System::SharedPtr<ResourceLoadingArgs> args) override
	{
		return IsLocalResource(args->get_OriginalUri())
			? ResourceLoadingAction::Default
			: ResourceLoadingAction::Skip;
	}
};

void LoadDocument(const System::String& documentFilename)
{
	auto disableRemoteResourcesHandler = System::MakeObject<LoadOptions>();

disableRemoteResourcesHandler->set_ResourceLoadingCallback(System::MakeObject<DisableRemoteResourcesHandler>());

	auto doc = System::MakeObject<Document>(documentFilename, disableRemoteResourcesHandler);
}
{{< /highlight >}}

{{% alert color="primary" %}}

Este artigo baseia-se na empresa de consultoria Independent Security Evaluators [relatório](ise-aspose-report.pdf).

{{% /alert %}}
