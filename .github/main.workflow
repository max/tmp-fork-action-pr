workflow "trigger me on pr" {
  on = "pull_request"
  resolves = "triggered"
}

action "triggered" {
  uses = "docker://alpine"
  runs = ["sh", "-c", "echo i have been triggered"]
}
