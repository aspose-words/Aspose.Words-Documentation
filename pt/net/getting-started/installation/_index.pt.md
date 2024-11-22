---
title: Instalação
second_title: Aspose.Words para .NET
articleTitle: Instalação
linktitle: Instalação
description: "Instale Aspose.Words para .NET usando ferramentas Visual Studio como Manage NuGet Packages ou Package Manager Console e o instalador MSI. Use a permissão Full Trust definida em C#."
type: docs
weight: 10
url: /pt/net/installation/
timestamp: 2024-01-27-14-07-04
---

Certifique-se de que sua máquina atenda ao [Requisitos de sistema](/words/pt/net/system-requirements/) antes de começar.

Este artigo explica como instalar Aspose.Words para .NET em seu computador.

## Instale ou atualize Aspose.Words para .NET usando Manage NuGet Packages {#install-or-update-aspose-words-for-net-using-nuget}

NuGet é a maneira mais fácil de baixar e instalar APIs [Aspose.Words para .NET](https://www.nuget.org/packages/Aspose.Words/). Para fazer isso, siga estas etapas:

1. Abra *Microsoft Visual Studio* e *Manage NuGet Packages* no menu para abrir o gerenciador de pacotes
2. Pesquise "aspose" ou "aspose.words" para encontrar o Aspose API desejado<br>
   <img src="/words/net/installation/aspose-words-nuget.png" alt="aspose-palavras-nuget" style="width:800px"/>
3. Selecione o Aspose API desejado e clique em "Instalar"

O API selecionado será baixado e referenciado em seu projeto.

Você também pode atualizar Aspose.Words para .NET para a versão desejada usando *Manage NuGet Packages*.

## Instale ou atualize Aspose.Words usando Package Manager Console

Você também pode instalar ou atualizar Aspose.Words para APIs .NET usando *Package Manager Console*. Para fazer isso, siga estas etapas:

1. Abra *Microsoft Visual Studio* e *Package Manager Console* no menu para abrir o console do gerenciador de pacotes<br>
   <img src="/words/net/installation/aspose-words-nuget-update.png" alt="aspose-palavras-nuget-update" style="width:600px"/>
2. Digite o comando `Install-Package Aspose.Words` e pressione Enter para instalar a versão completa mais recente em seu aplicativo<br>
   <img src="/words/net/installation/aspose-words-nuget-update-2.png" alt="aspose-palavras-nuget-update-2" style="width:600px"/><br>
   {{% alert color="primary" %}}Além disso, você pode adicionar o sufixo `-prerelease` ao comando para especificar que a versão mais recente, incluindo hotfixes, também deve ser instalada.{{% /alert %}}
3. Após o download, você verá mensagens de confirmação<br>
   <img src="/words/net/installation/aspose-words-nuget-istalled.png" alt="aspose-palavras-nuget-istalled" style="width:600px"/><br>
   {{% alert color="primary" %}}Se você não conhece o [Assuma o EULA](https://about.aspose.com/legal/eula/), é recomendável ler a licença referenciada na URL.{{% /alert %}}
4. Agora você pode descobrir que o Aspose.Words foi adicionado e referenciado com sucesso em seu aplicativo para você<br>
   <img src="/words/net/installation/aspose-words-nuget-references.png" alt="aspose-palavras-nuget-referências" style="width:400px"/>

Em *Package Manager Console*, você também pode usar o comando `Update-Package Aspose.Words` para verificar se há atualizações no pacote Aspose.Words e instalá-las, se houver. Você também pode adicionar o sufixo `-prerelease` para atualizar a versão mais recente.

## Instale Aspose.Words para .NET usando o instalador

Aspose.Words para .NET pode ser instalado baixando diretamente o instalador MSI do [seção de downloads](https://releases.aspose.com/words/).

{{% alert color="primary" %}}

Você deve estar logado para baixar o instalador. Se você ainda não está cadastrado, você pode se cadastrar gratuitamente.

{{% /alert %}}

Para instalar Aspose.Words para .NET, siga estas etapas:

1. Baixe `Aspose.Words_{LatestVersion}.msi` do [seção de downloads](https://releases.aspose.com/words/)
2. Clique duas vezes no arquivo baixado, iniciando assim o assistente de configuração, siga as instruções do assistente de configuração<br>
   <img src="/words/net/installation/aspose-words-setup-1.png" alt="aspose-palavras-setup-1" style="width:500px"/>
3. Quando o assistente de configuração concluir a instalação, os arquivos necessários estarão disponíveis na pasta no caminho da pasta fornecido<br>
   <img src="/words/net/installation/aspose-words-setup-4.jpg" alt="aspose-palavras-setup-4" style="width:500px"/>
4. Abra sua solução/projeto em Visual Studio
5. Clique com o botão direito em seu projeto no *Solution Explorer* e adicione a referência aos assemblies instalados
6. Os assemblies instalados Aspose.Words para .NET aparecerão em extensões na seção Assemblies – basta selecionar o componente DLL necessário<br>
   <img src="/words/net/installation/aspose-words-setup-5.png" alt="aspose-palavras-setup-5" style="width:800px"/>
7. Por fim, clique em OK

## Considerações ao executar em um ambiente Server compartilhado

Todos os componentes Aspose .NET são recomendados para serem executados com o conjunto de permissões *Full Trust*. Isso ocorre porque o componente Aspose .NET às vezes precisa de acesso às configurações do registro e aos arquivos localizados em locais diferentes do diretório virtual, como a leitura de fontes. Além disso, os componentes `Aspose.NET` são baseados em classes principais do sistema .NET, algumas das quais também requerem permissão *Full Trust* para serem executadas em alguns casos.

Os provedores de serviços de Internet que hospedam vários aplicativos de empresas diferentes aplicam principalmente o nível de segurança *Confiança Média*. No caso do .NET 2.0, tal nível de segurança pode impor as seguintes restrições, que podem afetar a capacidade do Aspose.Words de funcionar corretamente:

- **RegistryPermission** não está disponível. Isso significa que você não pode acessar o registro, que é necessário para enumerar as fontes instaladas ao renderizar documentos.
- **FileIOPermission** é restrito. Isso significa que você só pode acessar arquivos na hierarquia de diretórios virtuais do seu aplicativo. Isso também significa que as fontes não podem ser lidas durante a exportação.

Por esses motivos especificados acima, é recomendável executar Aspose.Words com permissões Full Trust. Você pode descobrir que alguns recursos da biblioteca funcionarão ao executar tarefas diferentes com confiança Média, e alguns não funcionarão, por exemplo, na renderização. Isso pode estar relacionado a chamadas de processamento de imagem GDI+.
