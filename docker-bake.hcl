group "all" {
  targets = ["one", "two"]
}

target "one" {
  cache-from = [
    {
      type = "registry",
      ref = "vitalysaraevcoherent/mvn-build-cache:latest"
    }
  ]
  dockerfile = "werf-demo-one/Dockerfile"
  tags = ["vitalysaraevcoherent/werf-demo-one"]
  context = "werf-demo-one"
}

target "two" {
  dockerfile = "werf-demo-two/Dockerfile"
  tags = ["vitalysaraevcoherent/werf-demo-two"]
  context = "werf-demo-two"
  cache-from = [
    {
      type = "registry",
      ref = "vitalysaraevcoherent/mvn-build-cache:latest"
    }
  ]
}

