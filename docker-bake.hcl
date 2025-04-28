group "all" {
  targets = ["one", "two"]
}

target "one" {
  cache-from = [
    {
      type = "registry",
      ref = "vitalysaraevcoherent/mvn-build-cache:app-one"
    }
  ]
  cache-to = [
    {
      type = "registry",
      ref = "vitalysaraevcoherent/mvn-build-cache:app-one",
      mode = "max"
    }
  ]

  tags = ["vitalysaraevcoherent/werf-demo-one"]
  context = "werf-demo-one"
}

target "two" {
  tags = ["vitalysaraevcoherent/werf-demo-two"]
  context = "werf-demo-two"
  cache-from = [
    {
      type = "registry",
      ref = "vitalysaraevcoherent/mvn-build-cache:app-two"
    }
  ]
  cache-to = [
    {
      type = "registry",
      ref = "vitalysaraevcoherent/mvn-build-cache:app-two",
      mode = "max"
    }
  ]

}

