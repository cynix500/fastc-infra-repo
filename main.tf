module "eks" {
  # eks 모듈에서 사용할 변수 정의
  source = "./modules/eks-cluster"
  cluster_name = "fast-cluster"
  cluster_version = "1.24"
  vpc_id = "vpc-08e2c543e6a62a7f5"

  private_subnets = ["subnet-031427126103606c8", "subnet-0a90279953f853048"]
  public_subnets  = ["subnet-0fd9d91b701197472", "subnet-02ec6de79fdcf971c"]
}