.class public Lcom/facebook/applinks/FacebookAppLinkResolver;
.super Ljava/lang/Object;
.source "FacebookAppLinkResolver.java"


# static fields
.field private static final APP_LINK_ANDROID_TARGET_KEY:Ljava/lang/String; = "android"

.field private static final APP_LINK_KEY:Ljava/lang/String; = "app_links"

.field private static final APP_LINK_TARGET_APP_NAME_KEY:Ljava/lang/String; = "app_name"

.field private static final APP_LINK_TARGET_CLASS_KEY:Ljava/lang/String; = "class"

.field private static final APP_LINK_TARGET_PACKAGE_KEY:Ljava/lang/String; = "package"

.field private static final APP_LINK_TARGET_SHOULD_FALLBACK_KEY:Ljava/lang/String; = "should_fallback"

.field private static final APP_LINK_TARGET_URL_KEY:Ljava/lang/String; = "url"

.field private static final APP_LINK_WEB_TARGET_KEY:Ljava/lang/String; = "web"


# instance fields
.field private final cachedAppLinks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$000(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    .registers 2

    .prologue
    .line 46
    invoke-static {p0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .registers 3

    .prologue
    .line 46
    invoke-static {p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/applinks/FacebookAppLinkResolver;)Ljava/util/HashMap;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    return-object v0
.end method

.method private static getAndroidTargetFromJson(Lorg/json/JSONObject;)Lbolts/AppLink$Target;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 198
    const-string/jumbo v1, "package"

    invoke-static {p0, v1, v0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 199
    if-nez v2, :cond_b

    .line 211
    :goto_a
    return-object v0

    .line 203
    :cond_b
    const-string/jumbo v1, "class"

    invoke-static {p0, v1, v0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 204
    const-string/jumbo v1, "app_name"

    invoke-static {p0, v1, v0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 205
    const-string/jumbo v1, "url"

    invoke-static {p0, v1, v0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_26

    .line 208
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 211
    :cond_26
    new-instance v1, Lbolts/AppLink$Target;

    invoke-direct {v1, v2, v3, v0, v4}, Lbolts/AppLink$Target;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_a
.end method

.method private static getWebFallbackUriFromJson(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 218
    :try_start_1
    const-string/jumbo v1, "web"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 219
    const-string/jumbo v2, "should_fallback"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 221
    if-nez v2, :cond_14

    move-object p0, v0

    .line 237
    :cond_13
    :goto_13
    return-object p0

    .line 226
    :cond_14
    const-string/jumbo v2, "url"

    const/4 v3, 0x0

    .line 227
    invoke-static {v1, v2, v3}, Lcom/facebook/applinks/FacebookAppLinkResolver;->tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    if-eqz v1, :cond_22

    .line 230
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_21} :catch_26

    move-result-object v0

    .line 234
    :cond_22
    if-eqz v0, :cond_13

    move-object p0, v0

    goto :goto_13

    .line 235
    :catch_26
    move-exception v0

    goto :goto_13
.end method

.method private static tryGetBooleanFromJson(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .registers 4

    .prologue
    .line 257
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result p2

    .line 259
    :goto_4
    return p2

    .line 258
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method private static tryGetStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 246
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object p2

    .line 248
    :goto_4
    return-object p2

    .line 247
    :catch_5
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method public getAppLinkFromUrlInBackground(Landroid/net/Uri;)Lbolts/Task;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lbolts/Task",
            "<",
            "Lbolts/AppLink;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {p0, v0}, Lcom/facebook/applinks/FacebookAppLinkResolver;->getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    .line 73
    new-instance v1, Lcom/facebook/applinks/FacebookAppLinkResolver$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/applinks/FacebookAppLinkResolver$1;-><init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->b(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public getAppLinkFromUrlsInBackground(Ljava/util/List;)Lbolts/Task;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/Map",
            "<",
            "Landroid/net/Uri;",
            "Lbolts/AppLink;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 91
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 92
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 97
    iget-object v4, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    monitor-enter v4

    .line 98
    :try_start_22
    iget-object v1, p0, Lcom/facebook/applinks/FacebookAppLinkResolver;->cachedAppLinks:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/AppLink;

    .line 99
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_22 .. :try_end_2b} :catchall_31

    .line 101
    if-eqz v1, :cond_34

    .line 102
    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 99
    :catchall_31
    move-exception v0

    :try_start_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v0

    .line 104
    :cond_34
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 105
    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    :cond_3f
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 112
    :cond_4a
    invoke-virtual {v7}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 113
    invoke-static {v6}, Lbolts/Task;->a(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 194
    :goto_54
    return-object v0

    .line 116
    :cond_55
    invoke-static {}, Lbolts/Task;->a()Lbolts/Task$TaskCompletionSource;

    move-result-object v8

    .line 118
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 120
    const-string/jumbo v0, "ids"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string/jumbo v0, "fields"

    const-string/jumbo v1, "%s.fields(%s,%s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "app_links"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "android"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "web"

    aput-object v5, v2, v4

    .line 123
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 131
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    const-string/jumbo v2, ""

    const/4 v4, 0x0

    new-instance v5, Lcom/facebook/applinks/FacebookAppLinkResolver$2;

    invoke-direct {v5, p0, v8, v6, v7}, Lcom/facebook/applinks/FacebookAppLinkResolver$2;-><init>(Lcom/facebook/applinks/FacebookAppLinkResolver;Lbolts/Task$TaskCompletionSource;Ljava/util/Map;Ljava/util/HashSet;)V

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 192
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 194
    invoke-virtual {v8}, Lbolts/Task$TaskCompletionSource;->a()Lbolts/Task;

    move-result-object v0

    goto :goto_54
.end method
