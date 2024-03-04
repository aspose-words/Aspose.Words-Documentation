---
title: Sécurité des applications Web lors du chargement des ressources
second_title: Aspose.Words pour .NET
articleTitle: Sécurité des applications Web lors du chargement de ressources externes
linktitle: Sécurité des applications Web lors du chargement de ressources externes
type: docs
description: "Charger des ressources distantes, cela peut être une raison de risques de sécurité. Jetez un œil aux problèmes de sécurité courants et à leurs solutions à l’aide de C#."
weight: 100
url: /fr/net/web-applications-security-when-loading-external-resources/
---

Par défaut, Aspose.Words pour .NET peut charger des ressources distantes telles que des images, des styles CSS ou des documents HTML externes lors de l'importation de documents ou de l'insertion d'images à l'aide de DocumentBuilder. Ce comportement vous permet de traiter vos documents dans tous les détails mais peut être à l'origine de certains risques de sécurité si la bibliothèque fait partie d'une application Web.

Dans cet article, nous examinons les problèmes de sécurité courants pouvant survenir lors du chargement de ressources externes et fournissons des recommandations sur la manière d'éviter de tels problèmes.

{{% alert color="primary" %}}

Aspose.Words ne fonctionne pas comme un logiciel antivirus. Par conséquent, il ne fournit pas d’informations sur la présence de composants malveillants dans le document. Pour garantir la sécurité de vos données, vérifiez vous-même les documents obtenus auprès d'une source externe. À son tour, Aspose.Words fournit des recommandations sur la manière de gérer les problèmes pouvant survenir lors du chargement de ressources externes.

{{% /alert %}}

## Les problèmes de sécurité

Il existe un certain nombre de problèmes de sécurité typiques lors du chargement de ressources externes.

### Divulgation des informations d'identification via des images liées

Sur les hôtes basés sur Windows, les documents contenant des références à des ressources qui utilisent des chemins UNC tels que *'\\example.com\a\b*' seront traités par défaut. Dans un environnement de domaine, l'hôte enverra ses informations d'identification de domaine dans un format haché au serveur spécifié.

Si un attaquant parvient à convaincre un utilisateur ou un serveur de traiter un document avec un tel lien de ressource pointant vers un hôte qu'il contrôle, l'attaquant recevra les informations d'identification de l'utilisateur ou du compte de service au format de hachage NTLM. Ces données peuvent ensuite être réutilisées dans une attaque classique par pass-the-hash, permettant à l'attaquant d'accéder à n'importe quelle ressource en tant qu'utilisateur victime ou compte de service.

Si le compte en question utilise un mot de passe faible ou devinable, l'attaquant pourrait également effectuer une attaque de piratage de mot de passe pour récupérer le mot de passe du compte en vue d'une utilisation malveillante ultérieure.

### Divulgation d'images locales via des images liées

Semblable au cas précédent, le traitement d'un document avec une référence à un fichier image local entraînera l'inclusion de ce fichier dans le document final. Cela peut conduire à la divulgation d’informations sensibles.

### Déni de service

Un attaquant pourrait télécharger un document faisant référence à ou incluant des images extrêmement volumineuses – ce qu'on appelle les "bombes de décompression". Lors du traitement de ces images, la bibliothèque consommera d'énormes quantités de mémoire et de temps CPU.

### Contrefaçon de demande côté Server via un contenu lié

Un attaquant pourrait créer une série de documents contenant des liens intégrés vers des combinaisons courantes d'adresse IP interne et de port, puis les soumettre à un service Web utilisant la bibliothèque Aspose.Words pour traiter les documents.

En fonction du temps mis par le service pour traiter le document, l'attaquant pourrait déterminer si une combinaison IP/Port donnée est filtrée par un pare-feu:

- un temps de traitement plus long indique que le paquet TCP SYN envoyé par le serveur a été abandonné par un pare-feu
- un temps de traitement rapide indique qu'une connexion réussie a été établie

## Solutions aux problèmes de sécurité

Pour résoudre les problèmes décrits ci-dessus et améliorer la sécurité des applications Web, vous pouvez contrôler ou désactiver le chargement des ressources externes à l'aide de [IResourceLoadingCallback](https://reference.aspose.com/words/fr/net/aspose.words.loading/iresourceloadingcallback/).

L'exemple de code suivant montre comment désactiver le chargement des images externes:

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

L'exemple de code suivant montre comment désactiver les ressources distantes:

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

Cet article est basé sur le cabinet de conseil Independent Security Evaluators [rapport](/words/net/web-applications-security-when-loading-external-resources/ise-aspose-report.pdf).

{{% /alert %}}
