---
title: Licenciamento
second_title: Aspose.Words para Java
articleTitle: Licenciamento
linktitle: Licenciamento
description: "Licenciamento Aspose.Words para Android via Java."
type: docs
weight: 60
url: /pt/java/licensing-android/
timestamp: 2024-02-02-12-07-36
---

Às vezes, para estudar melhor o sistema, você deseja mergulhar no código o mais rápido possível. Para tornar isso mais fácil, Aspose.Words fornece planos diferentes para compra ou oferece uma avaliação gratuita e uma licença temporária de 30 dias para avaliação.

{{% alert color="primary" %}}

Observe que há uma série de políticas e práticas gerais que orientam você sobre como avaliar, licenciar e comprar adequadamente nossos produtos. Você pode encontrá-los no [Polofensivas de compra e FAQ](https://purchase.aspose.com/policies/) secção.

{{% /alert %}}

## Avaliação gratuita ou licença temporária

Aspose.Words é um software incrível que os desenvolvedores podem experimentar antes de comprar. Você pode facilmente baixar / instalar Aspose.Words para Java e Aspose.Words para Android via Java [a partir da p@gina de download](https://releases.aspose.com/words/androidjava/) para avaliação.

A versão de avaliação é a mesma que a adquirida – a versão de Avaliação simplesmente se torna licenciada quando você adiciona algumas linhas de código para aplicar a licença.

{{% alert color="primary" %}}

Saiba mais detalhes sobre a Licença de avaliação gratuita ou temporária para Aspose.Words para Android via Java em [a p3gina Licenciatura e subscri](/words/java/licensing/).

{{% /alert %}}

## Licença Adquirida

Após a compra, você precisa aplicar o arquivo de licença ou incluir o arquivo de licença como um recurso incorporado. Esta secção descreve as opções de como isso pode ser feito e também comenta algumas questões comuns.

{{% alert color="primary" %}}

Uma licença é um arquivo de texto simples XML que contém detalhes como nome do produto, Número de desenvolvedores licenciados, data de expiração da assinatura e assim por diante.

O ficheiro é assinado digitalmente, por isso não modifique o ficheiro. Mesmo a adição inadvertida de uma quebra de linha extra no arquivo irá invalidá-lo.

{{% /alert %}}

{{% alert color="primary" %}}

Você precisa definir a licença:

* apenas uma vez por domínio de Aplicação
* antes de usar qualquer outra classe Aspose.Words

{{% /alert %}}

{{% alert color="primary" %}}

Você pode encontrar informações sobre preços no [Informa Sobre Pré](https://purchase.aspose.com/pricing/words/family/) página.

{{% /alert %}}

### Protegendo Sua Licença Adquirida

Depois de adquirir uma licença, você precisa ler atentamente as informações na página [Protegendo A Sua Licença](https://purchase.aspose.com/orders/protecting-your-license-file) para proteger o seu ficheiro de licença. Observe que esta página está disponível para visualização apenas se você tiver uma licença paga.

### Opções De Aplicação De Licença

As licenças podem ser aplicadas a partir de vários locais:

* Caminho explícito
* Um recurso incorporado
* Como uma licença medida – um novo mecanismo de licenciamento

#### Carregando o arquivo de licença

Em Aspose.Words Para Android via Java, a licença pode ser [incorporado como recurso](/words/java/licensing/), ou carregado de um fluxo:

1. Coloque o arquivo de licença em qualquer local em **/mnt/sdcard/**.
1. Crie um fluxo que faça referência ao arquivo.
1. Passe o fluxo (contendo o arquivo de licença) para o método `SetLicense`.

**Java**

{{< highlight java >}}
String dataDir = Environment.getExternalStorageDirectory().getPath() + "/";

// Create a stream object containing the license file
FileInputStream fstream = new FileInputStream(dataDir + "Aspose.Email.Android.Java.lic");

// Instantiate the `License` class
License license = new License();
//Set the license through the stream object
license.setLicense(fstream);
{{< /highlight >}}

Aplicar uma licença de um recurso incorporado. Para acessar a licença como um recurso pelo nome de um arquivo de pacote Android:

1. Adicione o arquivo de licença como um recurso à pasta **res/raw** do seu aplicativo.
   O arquivo de licença deve estar visível na pasta **res/raw**.
1. Acesse / carregue a licença do recurso com o seguinte exemplo de código.

**Java**

{{< highlight java >}}
License license = new License();
InputStream inputStream = getResources().openRawResource(R.raw.license);
license.setLicense(inputStream);
{{< /highlight >}}

#### Aplicar Licença Medida

Aspose.Words permite que os desenvolvedores apliquem a chave medida. Trata-se de um novo mecanismo de licenciamento. O novo mecanismo de licenciamento será utilizado juntamente com o método de licenciamento existente. Os clientes que desejam ser cobrados com base no uso dos recursos API podem usar o licenciamento medido.

**Java**

{{< highlight java >}}
Metered metered = new Metered();
try
{
	// Access the setMeteredKey property and pass public and private keys as parameters
    metered.setMeteredKey(publicKey, privateKey);
	Log.i("Metered License", "Ok. Metered License has been applied successfully.");
}
catch (Exception ex)
{
    ex.printStackTrace();
    Log.e("Metered License", "Setting metered key has failed: " + ex.getMessage());
}
{{< /highlight >}}

### Alterar o nome do ficheiro de licença

O nome do ficheiro de licença não tem de ser 'Aspose.Words.Android.Java.lic'. Você pode renomeá-lo para o que quiser e usar esse nome ao chamar `License.SetLicense`.

### Exception-não é possível encontrar o nome do arquivo da licença

Quando você baixa uma licença que comprou, o arquivo de licença é denominado **Aspose.Words.Android.Java.lic** por padrão. O ficheiro de licença é descarregado através do seu navegador e alguns navegadores reconhecem o ficheiro de licença como XML e acrescentam um.extensão xml para o nome. O ficheiro transferido torna-se **Aspose.Words.Android.Java.lic.XML**.

Quando Microsoft Windows está configurado para Ocultar extensões de tipos de ficheiros conhecidos (infelizmente isto é predefinido na maioria das instalações Windows), o ficheiro de licença é listado como **Aspose.Words.Android.Java.lic** em Windows Explorer. Parece o nome do arquivo esperado. Se você chamar `License.SetLicense` e passar ' Aspose.Words.Android.Java.lic', você verá e exceção porque não existe tal arquivo.

Para resolver o problema, renomeie o arquivo para remover o invisível .extensão xml. Recomendamos que desative a opção" Ocultar extensões " em Microsoft Windows.

## Utilização De Vários Produtos Aspose

Se utilizar vários produtos Aspose numa aplicação, por exemplo Aspose.Words e `Aspose.Cells`, seguem-se algumas dicas úteis.

- Defina a licença para cada produto Aspose separadamente.
  Mesmo se você tiver um único arquivo de licença para todos os componentes, por exemplo 'Aspose.Total.Android.Java.lic', você ainda precisa chamar o método `License.SetLicense` separadamente para cada produto Aspose.
- Use um nome de classe de licença totalmente qualificado.
  Cada produto Aspose tem uma classe `License` no seu namespace. Por exemplo, Aspose.Words tem com.aspose.palavras.Licença e `Aspose.Cells` tem com.aspose.células.Classe de licença. O uso do nome da classe fullyqualified permite evitar qualquer confusão sobre qual licença é aplicada a qual produto.
