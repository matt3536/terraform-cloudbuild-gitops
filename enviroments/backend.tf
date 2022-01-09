terraform {
  backend "gcs" {
    bucket = "${GOOGLE_PROJECT}-tf-state-dev"
    prefix = "env/dev/state"
  }
}
