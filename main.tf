provider "flux" {
  kubernetes = {
    config_path = var.CONFIG_PATH
  }
  git = {
    url = "https://github.com/${var.FLUX_GITHUB_REPO}.git"
    http = {
      username = "git"
      password = var.GITHUB_TOKEN
    }
  }
}
depends_on = [github_repository.terraincognitus]
resource "flux_bootstrap_git" "terraincognitus" {
  path = var.TARGET_PATH

}
