provider "kubernetes" {
  host                   = data.aws_eks_cluster.eks.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.eks.certificate_authority[0].data)
  token                  = data.aws_eks_cluster_auth.eks.token
}

resource "kubernetes_namespace" "lanchonete_pedido_namespace" {
  metadata {
    name = local.namespace_pedido
  }

  depends_on = [aws_eks_cluster.eks]
}

resource "kubernetes_secret" "lanchonete_pedido_secret" {
  metadata {
    name      = "pedido-app-secrets"
    namespace = local.namespace_pedido
  }

  data = {
    MONGODB_CONNECTION_STRING_PEDIDO = var.mongodb_connection_string_pedido
  }

  type       = "Opaque"
  depends_on = [aws_eks_cluster.eks]
}

resource "kubernetes_namespace" "lanchonete_produto_namespace" {
  metadata {
    name = local.namespace_produto
  }

  depends_on = [aws_eks_cluster.eks]
}

resource "kubernetes_secret" "lanchonete_produto_secret" {
  metadata {
    name      = "produto-app-secrets"
    namespace = local.namespace_produto
  }

  data = {
    MONGODB_CONNECTION_STRING_PRODUTO = var.mongodb_connection_string_produto
  }

  type       = "Opaque"
  depends_on = [aws_eks_cluster.eks]
}

resource "kubernetes_namespace" "lanchonete_pagamento_namespace" {
  metadata {
    name = local.namespace_pagamento
  }

  depends_on = [aws_eks_cluster.eks]
}

resource "kubernetes_secret" "lanchonete_pagamento_secret" {
  metadata {
    name      = "pagamento-app-secrets"
    namespace = local.namespace_pagamento
  }

  data = {
    POSTGRESQL_CONNECTION_STRING_PAGAMENTO = var.postgresql_connection_string_pagamento
  }

  type       = "Opaque"
  depends_on = [aws_eks_cluster.eks]
}
