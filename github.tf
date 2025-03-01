data "github_repository" "terraform-github-provider" {
  full_name = "harayu-k/terraform-github-provider"
}

resource "github_actions_variable" "example_variable" {
  repository    = data.github_repository.terraform-github-provider.name
  variable_name = "TEST"
  value         = "test"
}
