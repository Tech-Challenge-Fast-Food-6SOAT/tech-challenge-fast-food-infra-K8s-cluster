provider "kubernetes" {
  host                   = data.aws_eks_cluster.eks.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.eks.token
}

resource "kubernetes_namespace" "lanchonete_namespace" {
  metadata {
    name = local.namespace
  }

  depends_on = [aws_eks_cluster.eks]
}

resource "kubernetes_secret" "lanchonete_secret" {
  metadata {
    name      = "nodejs-app-secrets"
    namespace = local.namespace
  }

  data = {
    MONGODB_URL = var.mongodb_url
  }

  type       = "Opaque"
  depends_on = [aws_eks_cluster.eks]
}
