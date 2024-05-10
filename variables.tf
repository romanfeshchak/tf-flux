variable "FLUX_GITHUB_REPO" {
  type        = string
  description = "GitHub repository to store Flux manifests"
}

variable "TARGET_PATH" {
  type        = string
  default     = "clusters/my-cluster"
  description = "Flux manifests subdirectory"
}

variable "GITHUB_TOKEN" {
  type        = string
  default     = ""
  description = "The token used to authenticate with the Git repository"
}

variable "PRIVATE_KEY" {
  type        = string
  description = "The private key used to authenticate with the Git repository"
}

variable "CONFIG_PATH" {
  type        = string
  default     = "~/.kube/config"
  description = "The path to the kubeconfig file"
}