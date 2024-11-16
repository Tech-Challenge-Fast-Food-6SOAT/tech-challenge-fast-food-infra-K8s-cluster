locals {
  env                 = "prod"
  region              = "us-east-1"
  zone1               = "us-east-1a"
  zone2               = "us-east-1b"
  eks_name            = "lanchonete-cluster"
  eks_version         = "1.31"
  namespace_pedido    = "lanchonete-pedido"
  namespace_produto   = "lanchonete-produto"
  namespace_pagamento = "lanchonete-pagamento"
}
