function f () { "real" }
Describe "d" {

    BeforeAll {
        Mock f { "mock" }
    }

    It "i" {
        f
        Assert-MockCalled f -Exactly 1
    }

    It "j" {
        f
        Assert-MockCalled f -Exactly 1
    }

    AfterAll {
        Assert-MockCalled f -Exactly 2
    }
}
