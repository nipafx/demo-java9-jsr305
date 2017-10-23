# JSR 305 on Java 9

Demo project for [my post _Making JSR 305 Work On Java 9_](https://blog.codefx.org/java/jsr-305-java-9/).

Your options for a non-modular project:

* `mixed_cp_0...`: fails due to missing module for `javax.annotation.Generated`
* `mixed_cp_1...`: adds the module; fails due to split package
* `mixed_cp_2...`: patches the modules; succeeds
* `mixed_cp_3...`: adds a second dependency; succeeds

If you're creating modules:

* `mixed_mp_0...`: depends on two modules; fails due to split package
* `mixed_mp_1...`: patches one of the modules; succeeds
