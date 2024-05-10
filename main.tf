provider "flux" {
  kubernetes = {
    config_path = var.CONFIG_PATH
  }
  git = {
    url = github_repository.terraincognitus.html_url
    http = {
      username = "git"
      password = var.GITHUB_TOKEN
    }
  }
}

resource "flux_bootstrap_git" "terraincognitus" {
  path = var.TARGET_PATH
}
