# GitOps Repository

Argo CD watches this repository and reconciles the Helm release in the EKS cluster. Jenkins updates the image tag in `charts/netflix-app/values.yaml` after a successful CI pipeline.

The initial Service is `LoadBalancer` (AWS typically provisions an NLB). For an ALB-based ingress, configure AWS Load Balancer Controller and switch to the optional Ingress manifest after setting up its IAM permissions.
