#tinker multidex keep patterns:
-keep public class * implements com.tencent.tinker.entry.ApplicationLifeCycle {
    <init>();
    void onBaseContextAttached(android.content.Context);
}

-keep public class * implements com.tencent.tinker.loader.app.ITinkerInlineFenceBridge {
    <init>(...);
    void attachBaseContext(com.tencent.tinker.loader.app.TinkerApplication, android.content.Context);
}

-keep public class * extends com.tencent.tinker.loader.TinkerLoader {
    <init>();
}

-keep public class * extends android.app.Application {
     <init>();
     void attachBaseContext(android.content.Context);
}

-keep public class com.tencent.tinker.loader.NewClassLoaderInjector {
    *;
}
-keep class com.tencent.tinker.loader.shareutil.TinkerLogInlineFence {
    *;
}

-keep class com.tencent.tinker.loader.NewClassLoaderInjector$DispatchClassLoader {
    *;
}

-keep class com.tencent.tinker.entry.TinkerApplicationInlineFence {
    *;
}

-keep class com.tencent.tinker.loader.app.TinkerInlineFenceAction {
    *;
}

-keep class com.tencent.tinker.loader.** {
    *;
}

#your dex.loader patterns here
-keep class com.example.tinkerdemo.SampleApplication {
    <init>();
}
-keep class com.example.tinkerdemo.AppContext {
    <init>();
}