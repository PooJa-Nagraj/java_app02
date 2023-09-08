
aws_eks_cluster_config = {

      "demo-cluster" = {

        eks_cluster_name         = "demo-cluster1"
        eks_subnet_ids = ["subnet-0a9c1aa1911cabc14","subnet-07dc06c0a9d8484e8","subnet-0d5f01e96291ff734","subnet-08cc972af1e1ea338"]
        tags = {
             "Name" =  "demo-cluster"
         }  
      }
}

eks_node_group_config = {

  "node1" = {

        eks_cluster_name         = "demo-cluster"
        node_group_name          = "mynode"
        nodes_iam_role           = "eks-node-group-general1"
        node_subnet_ids          = ["subnet-0a9c1aa1911cabc14","subnet-07dc06c0a9d8484e8","subnet-0d5f01e96291ff734","subnet-08cc972af1e1ea338"]

        tags = {
             "Name" =  "node1"
         } 
  }
}