provider "flux" {
  kubernetes = {
    config_path = var.CONFIG_PATH
  }
  git = {
    url = "github.com/${var.FLUX_GITHUB_REPO}.git"
    method = "https"
    http = {
      username = "git"
      password = var.GITHUB_TOKEN
    }
  }
}

resource "flux_bootstrap_git" "this" {
  path = var.TARGET_PATH
}
