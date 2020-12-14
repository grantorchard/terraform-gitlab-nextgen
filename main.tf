resource "vault_jwt_auth_backend" "jwt" {
	path = "jwt"
	jwks_url = "https://gitlab.com/-/jwks"
}

module "nextgen-imagefactory-ubuntu-1804" {
  source = "github.com/grantorchard/terraform-gitlab-projects"
  project_name = "nextgen-imagefactory-ubuntu-18.04"
  group_name = "sc-newstack"
	project_visibility_level = "public"
}

module "nextgen-imagefactory-win2016" {
  source = "github.com/grantorchard/terraform-gitlab-projects"
  project_name = "nextgen-imagefactory-win2016"
  group_name = "sc-newstack"
	project_visibility_level = "public"
}



